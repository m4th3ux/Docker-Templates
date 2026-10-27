# Tailscale — VPN mesh para acesso remoto ao homelab

Acesso aos recursos do laboratório (agentes de IA, serviços, projetos) a partir
de qualquer lugar, principalmente tablet Android, sem abrir portas no roteador
do lab.

## Topologia

```
tablet (4G/5G) ──▶ tailnet ◀── hetzner (exit node / relay)
                        ◀── lab-router (subnet router) ──▶ 192.168.X.0/24
```

| Nó                 | Papel                                    |
| ------------------ | ---------------------------------------- |
| Hetzner (cloud)    | Nó fixo na nuvem: exit node + relay      |
| Máquina do lab     | Subnet router: expõe a LAN do lab        |
| Tablet Android     | Cliente com o app oficial                |

Plano gratuito: 3 usuários / 100 dispositivos — suficiente para uso pessoal.

## 1. Servidor Hetzner (exit node)

1. No Cloud Console da Hetzner, crie o servidor:
   - **CX22** (x86) ou **CPX11** (ARM) — ambos sobram para esse papel;
   - Ubuntu 24.04 **ou AlmaLinux 9** (ambos suportados; guia cobre os dois), sua chave SSH;
   - Firewall na nuvem: libere apenas SSH (22/TCP) e Tailscale (41641/UDP).
     Sem IP flutuante, sem IPv4 extra.
2. Instale o Tailscale (funciona em Ubuntu/Debian e em AlmaLinux/RHEL):

   ```bash
   curl -fsSL https://tailscale.com/install.sh | sh
   sudo tailscale up --advertise-exit-node
   ```

3. Habilite o encaminhamento de pacotes (necessário para exit node):

   ```bash
   echo 'net.ipv4.ip_forward = 1' | sudo tee /etc/sysctl.d/99-tailscale.conf
   echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
   sudo sysctl --system
   ```

3a. **Só para AlmaLinux/RHEL** — o `firewalld` bloqueia o tráfego
    encaminhado mesmo com forwarding ligado:

   ```bash
   firewall-cmd --permanent --add-masquerade
   firewall-cmd --permanent --add-port=41641/udp
   firewall-cmd --permanent --zone=trusted --add-interface=tailscale0
   firewall-cmd --reload
   ```

   SELinux pode ficar enforcing — o pacote oficial já vem com política.

4. No admin console (https://login.tailscale.com → **Machines**):
   - clique no nó Hetzner → **Edit route settings** → aprovar a rota de saída;
   - **⋯ → Disable key expiry** (nó fixo: evita bloqueio após 180 dias).
5. Opcional: reforce o firewall local do SO (`ufw` no Ubuntu; `firewalld`
   já tratado acima no AlmaLinux) com 22 + 41641/udp apenas.

## 2. Subnet router no laboratório

1. Descubra a sub-rede da sua LAN: `ip route` (ex.: `192.168.1.0/24`).
2. Instale o Tailscale na máquina **sempre ligada** (servidor Docker/NAS/
   host Proxmox — instale direto no host; NAS: use o pacote oficial do
   fabricante quando houver).
3. Habilite IP forwarding (mesmos comandos do passo 1.3).
4. Suba anunciando as rotas da LAN:

   ```bash
   sudo tailscale up --advertise-routes=192.168.1.0/24
   ```

   (se houver VLANs/múltiplas sub-redes, liste todas separadas por vírgula)

5. No admin console, aprove a rota em **Machines → Edit route settings**.
6. Teste a partir de outro nó da tailnet: `ping 192.168.1.X`.

> Alternativa em container: use o `docker-compose.yml` deste template, mas
> **prefira instalação no host** para os papéis de exit node e subnet router.
> Em AlmaLinux/RHEL, reaplique o bloco `firewall-cmd` do passo 3a após o
> primeiro `tailscale up`.

## 3. Tablet Android

1. Instale o **Tailscale** pela Play Store e entre com a mesma conta.
2. Ative a VPN no app (notificação persistente do Android).
3. Se quiser rotear toda a navegação pelo Hetzner (segurança em Wi-Fi de
   hotel/avião): app → **⋮ → Exit nodes** → selecione o nó Hetzner.
4. Acesse os serviços do lab:
   - pelo **IP da LAN** (via subnet router) — comportamento idêntico a estar
     em casa;
   - ou pelo **nome MagicDNS** (`hostname.ts.net`) para máquinas com Tailscale
     instalado.

## 4. Segurança

- **MagicDNS ligado** (admin console → DNS) para usar nomes em vez de IPs.
- **Key expiry**: desative apenas nos nós fixos (Hetzner e lab-router); no
  tablet deixe o padrão (o app re-autentica sozinho).
- **ACLs**: o padrão (dispositivos da sua conta se comunicam) já atende uso
  pessoal.
- **Roteador do lab**: nenhum port forwarding é necessário — nada exposto.
- Trate a tailnet como rede confiável: não compartilhe dispositivos com
  terceiros sem ACL.

## 5. Troubleshooting

| Sintoma                         | Causa provável / correção                                   |
| ------------------------------- | ----------------------------------------------------------- |
| Conexão lenta ou `relay`        | `tailscale status`; libere 41641/UDP no firewall do Hetzner |
| MTU / sites que não abrem       | No Android: ajustar MTU para 1280                           |
| LAN do lab inacessível          | IP forwarding desligado ou rota não aprovada no console     |
| Nó sumiu da tailnet             | Key expirou → `sudo tailscale up` de novo (ou disable expiry) |
| Resetar nó                      | `sudo tailscale down && sudo tailscale up --advertise-routes=...` |

## Referências

- Subnet routers: https://tailscale.com/kb/1019/subnets
- Exit nodes: https://tailscale.com/kb/1103/exit-nodes
- Android: https://tailscale.com/kb/1342/android
