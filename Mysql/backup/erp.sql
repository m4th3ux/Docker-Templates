-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/08/2025 às 19:07
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `erp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL,
  `pagina` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `acessos`
--

INSERT INTO `acessos` (`id`, `nome`, `chave`, `grupo`, `pagina`) VALUES
(1, 'Home', 'home', 0, 'Sim'),
(2, 'Configurações', 'configuracoes', 0, 'Não'),
(3, 'Usuários', 'usuarios', 1, 'Sim'),
(4, 'Acessos', 'acessos', 2, 'Sim'),
(5, 'Grupos Acesso', 'grupo_acessos', 2, 'Sim'),
(8, 'Funcionários', 'funcionarios', 1, 'Sim'),
(9, 'Fornecedores', 'fornecedores', 1, 'Sim'),
(10, 'Formas de Pagamento', 'formas_pgto', 2, 'Sim'),
(11, 'Cargos', 'cargos', 2, 'Sim'),
(12, 'Frequências', 'frequencias', 2, 'Sim'),
(13, 'Contas à Receber', 'receber', 4, 'Sim'),
(14, 'Contas à Pagar', 'pagar', 4, 'Sim'),
(15, 'Clientes', 'clientes', 1, 'Sim'),
(16, 'Relatório Financeiro', 'rel_financeiro', 4, 'Não'),
(17, 'Relatório Sintético Despesas', 'rel_sintetico_despesas', 4, 'Não'),
(18, 'Relatório Sintético Receber', 'rel_sintetico_receber', 4, 'Não'),
(19, 'Relatório Balanço Anual', 'rel_balanco', 4, 'Não'),
(23, 'Caixas', 'caixas', 7, 'Sim'),
(24, 'Relatório De Caixas', 'rel_caixas', 7, 'Não'),
(25, 'Tarefas', 'tarefas', 32, 'Sim'),
(26, 'Lançar Tarefas', 'lancar_tarefas', 32, 'Não'),
(27, 'Relatório Inadimplentes', 'rel_inadimplementes', 4, 'Não'),
(37, 'Mensalidades', 'mensalidades', 0, 'Sim'),
(38, 'Dispositivos', 'dispositivos', 0, 'Sim'),
(39, 'Editar Baixa Conta', 'editar_conta_paga', 0, 'Não'),
(40, 'Marketing', 'marketing', 30, 'Sim'),
(41, 'Chamados', 'chamados', 0, 'Sim'),
(42, 'Cobranças Recorrentes', 'cobrancas', 4, 'Sim'),
(43, 'Modelos de Contratos', 'modelos_contratos', 29, 'Sim'),
(44, 'Gerar Contratos', 'rel_contratos', 29, 'Sim'),
(45, 'Modelos', 'modelos', 2, 'Sim'),
(46, 'Equipamentos', 'equipamentos', 2, 'Sim'),
(47, 'Serviços', 'servicos', 2, 'Sim'),
(48, 'Marcas', 'marcas', 2, 'Sim'),
(49, 'Categorias', 'categorias', 28, 'Sim'),
(50, 'SubCategorias', 'sub_categorias', 28, 'Sim'),
(51, 'Produtos', 'produtos', 28, 'Sim'),
(52, 'Entradas', 'entradas', 28, 'Sim'),
(53, 'Saídas', 'saidas', 28, 'Sim'),
(54, 'Estoque Baixo', 'estoque', 28, 'Sim'),
(55, 'Produtos Mais Vendidos', 'rel_prod_vendidos', 28, 'Não'),
(56, 'Vendas', 'vendas', 0, 'Sim'),
(57, 'Compras', 'compras', 28, 'Sim'),
(58, 'Lista de Vendas', 'lista_vendas', 4, 'Sim'),
(59, 'Orçamentos', 'orcamentos', 31, 'Sim'),
(60, 'OS', 'os', 33, 'Sim'),
(61, 'Comissões', 'comissoes', 4, 'Sim'),
(62, 'Minhas Comissões', 'minhas_comissoes', 4, 'Sim'),
(63, 'RH', 'rh', 0, 'Sim'),
(64, 'Dados do Site', 'site', 0, 'Sim'),
(65, 'Relatório de Vendas', 'rel_vendas', 4, 'Não'),
(66, 'Grupos disparos', 'grupos_disparos', 30, 'Sim'),
(67, 'Listar Contratos', 'listar_contratos', 29, 'Sim'),
(68, 'Orçamentos Pendentes', 'orcamentos_pendentes', 31, 'Sim'),
(69, 'Orçamentos Aprovados', 'orcamentos_aprovados', 31, 'Sim'),
(70, 'Orçamentos Vencidos', 'orcamentos_vencidos', 31, 'Sim'),
(71, 'Tarefas Clientes', 'tarefas_clientes', 32, 'Sim'),
(72, 'OS Abertas', 'os_abertas', 33, 'Sim'),
(73, 'OS Iniciadas', 'os_iniciadas', 33, 'Sim'),
(74, 'OS Aguardando', 'os_aguardando', 33, 'Sim'),
(75, 'OS Aprovação', 'os_aprovacao', 33, 'Sim'),
(76, 'OS Finalizadas', 'os_finalizadas', 33, 'Sim'),
(77, 'OS Entregues', 'os_entregues', 33, 'Sim'),
(78, 'OS Sem Reparo', 'os_sem_reparo', 33, 'Sim'),
(79, 'OS Não Aprovadas', 'os_nao_aprovadas', 33, 'Sim'),
(80, 'OS Entregues Hoje', 'os_entregues_hoje', 33, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos_sas`
--

CREATE TABLE `acessos_sas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL,
  `pagina` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `acessos_sas`
--

INSERT INTO `acessos_sas` (`id`, `nome`, `chave`, `grupo`, `pagina`) VALUES
(1, 'Home', 'home', 0, 'Sim'),
(2, 'Configurações', 'configuracoes', 0, 'Não'),
(3, 'Usuários', 'usuarios', 1, 'Sim'),
(4, 'Acessos', 'acessos', 2, 'Sim'),
(5, 'Grupos Acesso', 'grupo_acessos', 2, 'Sim'),
(9, 'Fornecedores', 'fornecedores', 1, 'Sim'),
(10, 'Formas de Pagamento', 'formas_pgto', 2, 'Sim'),
(11, 'Cargos', 'cargos', 2, 'Sim'),
(12, 'Frequências', 'frequencias', 2, 'Sim'),
(13, 'Contas à Receber', 'receber', 4, 'Sim'),
(14, 'Contas à Pagar', 'pagar', 4, 'Sim'),
(15, 'Clientes', 'clientes', 1, 'Sim'),
(16, 'Relatório Financeiro', 'rel_financeiro', 4, 'Não'),
(17, 'Relatório Sintético Despesas', 'rel_sintetico_despesas', 4, 'Não'),
(18, 'Relatório Sintético Receber', 'rel_sintetico_receber', 4, 'Não'),
(19, 'Relatório Balanço Anual', 'rel_balanco', 4, 'Não'),
(23, 'Caixas', 'caixas', 7, 'Sim'),
(24, 'Relatório De Caixas', 'rel_caixas', 7, 'Não'),
(25, 'Tarefas', 'tarefas', 0, 'Sim'),
(26, 'Lançar Tarefas', 'lancar_tarefas', 0, 'Não'),
(27, 'Relatório Inadimplentes', 'rel_inadimplementes', 4, 'Não'),
(38, 'Dispositivos', 'dispositivos', 0, 'Sim'),
(39, 'Recursos Sistema', 'recursos', 2, 'Sim'),
(40, 'Planos', 'planos', 0, 'Sim'),
(41, 'Site', 'site', 0, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `anotacoes`
--

CREATE TABLE `anotacoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `msg` text NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `mostrar_home` varchar(5) NOT NULL,
  `privado` varchar(5) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anotacoes`
--

INSERT INTO `anotacoes` (`id`, `titulo`, `msg`, `usuario`, `data`, `mostrar_home`, `privado`, `empresa`) VALUES
(1, 'fdafdafa', '<p>fdafad</p>', 1, '2025-02-03', 'Não', 'Não', 0),
(2, 'Teste', '<p>fdsfadf afd afa fsadf </p>', 1, '2025-02-04', 'Sim ', 'Não', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `registro` varchar(50) DEFAULT NULL,
  `id_reg` int(11) NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `descricao`, `arquivo`, `data_cad`, `registro`, `id_reg`, `usuario`) VALUES
(1, 'fsdfdsf', NULL, '17-03-2025-20-44-51-eu.jpeg', '2025-03-17', 'Conta à Pagar', 28, 1),
(2, 'fsdfdsf', NULL, '17-03-2025-20-44-51-eu.jpeg', '2025-03-17', 'Fornecedor', 3, 1),
(3, 'fsdfdsf', NULL, '17-03-2025-20-44-51-eu.jpeg', '2025-03-17', 'Cliente', 0, 1),
(5, 'fsdfdsf', NULL, '17-03-2025-20-44-51-eu.jpeg', '2025-03-17', 'Fornecedor', 3, 1),
(6, 'fsdfdsf', NULL, '17-03-2025-20-44-51-eu.jpeg', '2025-03-17', 'Cliente', 0, 1),
(8, 'fsdfdsf', NULL, '17-03-2025-20-45-21-eu.jpeg', '2025-03-17', 'Fornecedor', 3, 1),
(9, 'fsdfdsf', NULL, '17-03-2025-20-45-21-eu.jpeg', '2025-03-17', 'Cliente', 0, 1),
(11, 'fsdfdsf', NULL, '17-03-2025-20-45-21-eu.jpeg', '2025-03-17', 'Fornecedor', 3, 1),
(12, 'fsdfdsf', NULL, '17-03-2025-20-45-21-eu.jpeg', '2025-03-17', 'Cliente', 0, 1),
(13, 'teste', NULL, '18-03-2025-19-05-20-eupng.png', '2025-03-18', 'Conta à Receber', 29, 0),
(14, 'teste', NULL, '18-03-2025-19-05-20-eupng.png', '2025-03-18', 'Cliente', 14, 0),
(15, 'teste', NULL, '18-03-2025-19-05-20-eupng.png', '2025-03-18', 'Conta à Receber', 29, 0),
(16, 'teste', NULL, '18-03-2025-19-05-20-eupng.png', '2025-03-18', 'Cliente', 14, 0),
(17, 'ffaf', NULL, '18-03-2025-19-05-34-eu.jpeg', '2025-03-18', 'Conta à Receber', 28, 0),
(18, 'ffaf', NULL, '18-03-2025-19-05-34-eu.jpeg', '2025-03-18', 'Cliente', 14, 0),
(19, 'ffaf', NULL, '18-03-2025-19-05-34-eu.jpeg', '2025-03-18', 'Conta à Receber', 28, 0),
(20, 'ffaf', NULL, '18-03-2025-19-05-34-eu.jpeg', '2025-03-18', 'Cliente', 14, 0),
(21, 'fdsfdsf', NULL, '18-03-2025-19-06-18-eu.jpeg', '2025-03-18', 'Conta à Receber', 28, 0),
(22, 'fdsfdsf', NULL, '18-03-2025-19-06-18-eu.jpeg', '2025-03-18', 'Cliente', 14, 0),
(23, 'fdfdf', NULL, '18-03-2025-19-25-22-eu.jpeg', '2025-03-18', 'Orçamento', 8, 0),
(24, 'fdfdf', NULL, '18-03-2025-19-25-22-eu.jpeg', '2025-03-18', 'Cliente', 14, 0),
(25, 'fdfdf', NULL, '18-03-2025-19-25-22-eu.jpeg', '2025-03-18', 'Orçamento', 8, 0),
(26, 'fdfdf', NULL, '18-03-2025-19-25-22-eu.jpeg', '2025-03-18', 'Cliente', 14, 0),
(27, 'fdsfsd', NULL, '18-03-2025-19-25-39-eupng.png', '2025-03-18', 'Orçamento', 8, 0),
(28, 'fdsfsd', NULL, '18-03-2025-19-25-39-eupng.png', '2025-03-18', 'Cliente', 14, 0),
(29, 'fdfdsf', NULL, '18-03-2025-19-27-10-eu.jpeg', '2025-03-18', 'OS', 17, 0),
(30, 'fdfdsf', NULL, '18-03-2025-19-27-10-eu.jpeg', '2025-03-18', 'Cliente', 14, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `caixas`
--

CREATE TABLE `caixas` (
  `id` int(11) NOT NULL,
  `operador` int(11) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_fechamento` date DEFAULT NULL,
  `valor_abertura` decimal(8,2) NOT NULL,
  `valor_fechamento` decimal(8,2) DEFAULT NULL,
  `quebra` decimal(8,2) DEFAULT NULL,
  `usuario_abertura` int(11) NOT NULL,
  `usuario_fechamento` int(11) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `sangrias` decimal(8,2) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `caixas`
--

INSERT INTO `caixas` (`id`, `operador`, `data_abertura`, `data_fechamento`, `valor_abertura`, `valor_fechamento`, `quebra`, `usuario_abertura`, `usuario_fechamento`, `obs`, `sangrias`, `empresa`) VALUES
(1, 1, '2025-02-03', '2025-02-03', 100.00, 195.00, -5.00, 1, 1, '', NULL, 0),
(2, 20, '2025-02-04', '2025-02-21', 150.00, 150.00, 0.00, 1, 1, '', NULL, 1),
(3, 17, '2025-02-04', '2025-02-21', 50.00, -50.00, 0.00, 17, 1, '', NULL, 1),
(4, 18, '2025-02-04', '2025-02-04', 100.00, 145.00, -5.00, 18, 18, '', NULL, 2),
(6, 21, '2025-02-21', NULL, 0.00, NULL, NULL, 1, NULL, '', NULL, 1),
(7, 17, '2025-05-23', NULL, 60.00, NULL, NULL, 1, NULL, '', NULL, 1),
(8, 1, '2025-07-06', NULL, 195.00, NULL, NULL, 1, NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`, `empresa`) VALUES
(1, 'Administrador', NULL),
(2, 'Comum', NULL),
(5, 'Faxineiro', NULL),
(56, 'Gerente', 1),
(57, 'Tesoureiro', 1),
(58, 'Gerente', 2),
(59, 'Financeiro', 2),
(60, 'Administrador', 2),
(61, 'fafad', 1),
(62, 'aaaa', 1),
(63, 'dsfadfa', 1),
(64, 'Gerente', 8),
(65, 'Técnico', 1),
(66, 'Técnico', 2),
(67, 'Técnico', 8),
(68, 'Técnico', 12),
(69, 'Técnico', 0),
(70, 'Técnico', 4),
(71, 'Técnico', 17),
(72, 'Técnico', 34),
(73, 'Técnico', 44);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `icone` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`, `ativo`, `empresa`, `icone`) VALUES
(18, 'Celular', '21-10-2023-05-19-03-18-04-2023-19-51-26-CELULAR.jpg', 'Sim', 1, 'fas fa-mobile-alt'),
(19, 'Notebook', '21-10-2023-05-20-49-download.png', 'Sim', 1, 'fas fa-laptop'),
(20, 'PC', '21-10-2023-05-23-05-pc2.png', 'Sim', 1, 'fas fa-desktop'),
(21, 'Tablet', '21-10-2023-05-25-00-pngimg.com---tablet_PNG8600.png', 'Sim', 1, 'fas fa-tablet-alt'),
(22, 'Caixa de Som', '21-10-2023-05-18-56-Caixa-Som-Bluetooth-Mini-Speaker-3w.jpg', 'Sim', 1, 'fas fa-volume-up'),
(26, 'Informática', '21-10-2023-05-20-38-downswswload.png', 'Sim', 1, 'fas fa-microchip'),
(27, 'Bateria Celular', '21-10-2023-05-03-23-gran-prime-original11-cf5e225f6264c44d9c15154995103467-640-0.jpg', 'Sim', 1, 'fas fa-battery-full'),
(28, 'Periféricos Celular', '21-10-2023-05-28-44-placa_de_carga_conector_moto_g9.png', 'Sim', 1, 'fas fa-blender-phone'),
(29, 'Película 3D', '21-10-2023-05-21-55-752fbb9b-95cb-453a-adbc-efc07f75844a.png', 'Sim', 1, 'fas fa-tablet-alt'),
(30, 'Película 3D Privacidade', '21-10-2023-05-26-46-pelicula-3D-Privacidade.png', 'Sim', 1, 'fas fa-user-secret'),
(31, 'Fone de Ouvido', '21-10-2023-05-34-42-faa1075c-f616-4bc3-8dff-b0232002e689.png', 'Sim', 1, 'fas fa-headphones'),
(32, 'Fone Bluetooth', '21-10-2023-05-35-03-cfaff441-3098-4871-97e7-7cf85538f20a.png', 'Sim', 1, 'fas fa-bluetooth'),
(33, 'Fone Headset', '21-10-2023-05-35-12-13b3f94d-ad17-4f5c-861d-cc5eb51de10c.png', 'Sim', 1, 'fas fa-headset'),
(34, 'Cartão de Memória', '21-10-2023-05-35-34-128-removebg-preview.png', 'Sim', 1, 'fas fa-memory'),
(35, 'Pen Driver', '21-10-2023-05-36-42-1xg.png', 'Sim', 1, 'fas fa-usb'),
(36, 'Carregador', '21-10-2023-05-37-36-18-04-2023-19-57-26-CARREGADOR-2.jpg', 'Sim', 1, 'fas fa-charging-station'),
(37, 'Carregaodor Veicular', '21-10-2023-05-38-56-carregadorveicularrr.png', 'Sim', 1, 'fas fa-charging-station'),
(38, 'Cabos Celular', '21-10-2023-05-39-11-18-04-2023-19-54-29-CABO-2.jpg', 'Sim', 1, 'fas fa-plug'),
(39, 'Games', '21-10-2023-05-41-16-62-622862_download-free-png-dlpng-transparent-game-controller-png.png', 'Sim', 1, 'fas fa-gamepad'),
(40, 'Automotivo ', '21-10-2023-05-42-38-acessorios-para-montar-som-autom.png', 'Sim', 1, 'fas fa-car'),
(41, 'Capinhas', '21-10-2023-05-43-25-18-04-2023-19-56-22-CAPA-2.jpg', 'Sim', 1, 'fas fa-mobile'),
(42, 'Mouse', '21-10-2023-05-43-51-24f2b0d096a6ede59fc153af6aae857a_470x0_i84040850lso.png', 'Sim', 1, 'fas fa-mouse'),
(43, 'Teclado', '21-10-2023-05-44-27-keyboardmouse.png', 'Sim', 1, 'fas fa-keyboard'),
(44, 'Película Vídro', '21-10-2023-05-44-45-vídro.png', 'Sim', 1, 'fas fa-tablet-alt'),
(45, 'Cooler ', '21-10-2023-05-45-57-710-1.png', 'Sim', 1, 'fas fa-wind'),
(46, 'Adaptador Bluetooth', '21-10-2023-05-47-13-Adaptador-Bluetooth-P2-20200303232446.5972900015.jpg', 'Sim', 1, 'fas fa-bluetooth-b'),
(47, 'Adaptador', '21-10-2023-05-48-53-4813845086_1_large.png', 'Sim', 1, 'fas fa-plug'),
(48, 'Antena Wifi', '21-10-2023-05-49-55-antena-wireless.png', 'Sim', 1, 'fas fa-wifi'),
(49, 'Cabo Auxiliar', '21-10-2023-06-01-09-1jpDZcTnCTLGKJYY4KQWBtREgEqdY0jjscYAI85C.jpg', 'Sim', 1, 'fas fa-headphones-alt'),
(50, 'Cabo Informática', '21-10-2023-06-18-58-2023-10-21_06h18_48.png', 'Sim', 1, 'fas fa-network-wired'),
(51, 'Calculadora', '21-10-2023-06-36-25-2023-10-21_06h33_53.png', 'Sim', 1, 'fas fa-calculator'),
(52, 'Câmera', '21-10-2023-06-38-30-2023-10-21_06h34_04.png', 'Sim', 1, 'fas fa-camera'),
(53, 'Campainha', '21-10-2023-06-41-25-2023-10-21_06h41_12.png', 'Sim', 1, 'fas fa-bell'),
(54, 'Carregaodor Celular', '21-10-2023-06-43-46-6f2202fb-468d-4fdf-8784-6e2b21bc1979.png', 'Sim', 1, 'fas fa-charging-station'),
(55, 'Carregaodor Portátio', '21-10-2023-06-51-34-2023-10-21_06h49_57.png', 'Sim', 1, 'fas fa-charging-station'),
(56, 'Case', '21-10-2023-07-04-17-2023-10-21_07h03_57.png', 'Sim', 1, 'fas fa-suitcase'),
(57, 'Máquina de cabelo', '21-10-2023-07-33-11-2023-10-21_07h26_38.png', 'Sim', 1, 'fas fa-cut'),
(58, 'lanterna', '21-10-2023-07-33-27-2023-10-21_07h26_47.png', 'Sim', 1, 'fas fa-lightbulb'),
(59, 'Mouse pad', '21-10-2023-07-38-49-2023-10-21_07h27_01.png', 'Sim', 1, 'fas fa-mouse-pointer'),
(60, 'Pilha', '21-10-2023-07-45-45-2023-10-21_07h45_15.png', 'Sim', 1, 'fas fa-battery-three-quarters'),
(61, 'Ring light', '21-10-2023-07-47-53-2023-10-21_07h47_34.png', 'Sim', 1, 'fas fa-lightbulb'),
(62, 'Suporte para Celular', '21-10-2023-07-49-20-2023-10-21_07h49_07.png', 'Sim', 1, 'fas fa-mobile'),
(63, 'Cabos', '23-10-2023-07-47-30-d1224087-ac31-448c-b26c-83eccdb87304.png', 'Sim', 1, 'fas fa-plug'),
(64, 'Serviços', '23-10-2023-19-00-37-serviços2.png', 'Sim', 1, 'fas fa-tools'),
(65, 'DVR', 'sem-foto.jpg', 'Sim', 1, 'fas fa-video'),
(66, 'Conectores', 'sem-foto.jpg', 'Sim', 1, 'fas fa-plug'),
(126, 'DVR 2', 'sem-foto.jpg', 'Sim', 1, 'fas fa-laptop'),
(129, 'Categoria 1', 'sem-foto.jpg', 'Sim', 2, 'fas fa-folder'),
(130, 'Teste', 'sem-foto.jpg', 'Sim', 2, 'fas fa-vial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `respondido` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `chamados`
--

INSERT INTO `chamados` (`id`, `empresa`, `data`, `titulo`, `texto`, `status`, `respondido`) VALUES
(1, 1, '2025-03-05', 'Chamado da empresa 1', '<p>\"  dfagf dafadf af a\' fgdagdgadsg fda fasdfaf</p>', 'Aberto', 'Não'),
(3, 2, '2025-03-05', 'fdafa fdsaf dasfdsaf af', '<p>fdsafsadf a fasf as</p>', 'Aberto', 'Sim'),
(4, 1, '2025-03-05', 'Estou com problemas ...', '<p>fdf dsafs fsa fsa fdaf daf as fasd fdfa fa </p>', 'Fechado', 'Não'),
(5, 1, '2025-03-25', 'Titulo chamado', '<p>Aqui é a descrição do chamado</p>', 'Aberto', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamados_respostas`
--

CREATE TABLE `chamados_respostas` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` int(11) NOT NULL,
  `texto` text NOT NULL,
  `chamado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `chamados_respostas`
--

INSERT INTO `chamados_respostas` (`id`, `empresa`, `data`, `hora`, `usuario`, `texto`, `chamado`) VALUES
(1, 2, '2025-03-05', '14:32:30', 1, 'fad fadf ads fasf dsaf asfsaf a', 3),
(2, 1, '2025-03-05', '14:33:26', 1, 'dfa fsa fasf asf sadfads a', 1),
(5, 2, '2025-03-05', '14:59:41', 1, 'fdasf da fffdaf asf a', 3),
(6, 2, '2025-03-05', '15:13:55', 1, 'dfa fsfa fsdaf ', 3),
(7, 1, '2025-03-05', '15:14:17', 1, 'fda fads fdfa fadf ', 1),
(8, 1, '2025-03-05', '15:15:05', 1, 'dfa fdsa faf adf', 1),
(10, 1, '2025-03-05', '15:21:31', 0, 'fdsf fda fdsa fdsaf asdfsa fsdaf afafea fdsafaf a', 1),
(11, 1, '2025-03-05', '20:05:18', 1, 'fda fafsa fdsa fda f', 4),
(12, 1, '2025-03-05', '20:05:38', 0, 'fda dfdsa fdsaf sad fsadfa', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `tipo_pessoa` varchar(15) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `marketing` varchar(5) DEFAULT NULL,
  `senha_crip` varchar(150) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `assinatura` varchar(100) DEFAULT NULL,
  `api_pagamento_cliente` varchar(50) DEFAULT NULL,
  `formas_pgto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `tipo_pessoa`, `data_cad`, `data_nasc`, `usuario`, `complemento`, `empresa`, `marketing`, `senha_crip`, `ativo`, `token`, `foto`, `assinatura`, `api_pagamento_cliente`, `formas_pgto`) VALUES
(1, 'Cliente Teste', '', '(31) 99534-8118', 'cliente1@hotmail.com', 'Rua de Teste', '500', 'Bairro Teste', 'Cidade Teste', 'MG', '30512-660', 'Física', '2025-02-04', '2001-03-05', 7, '60', 1, '', '$2y$10$xVkotyYt1.JImScaZEOTW.gIFIZ5BgXviMhv09ePfB.yaKfLeGYWO', 'Sim', NULL, 'sem-foto.jpg', '1.png', 'Asaas', 'Pix,Boleto'),
(2, 'Cliente emp 2', '', '(31) 99534-8118', 'cliente1@hotmail.com', '', '', '', '', '', '', 'Física', '2025-02-04', NULL, 18, '', 2, NULL, '$2y$10$xVkotyYt1.JImScaZEOTW.gIFIZ5BgXviMhv09ePfB.yaKfLeGYWO', NULL, NULL, 'sem-foto.jpg', NULL, NULL, NULL),
(14, 'Hugo Cliente', '510.565.670-90', '(31) 97527-5084', 'hugocliente@hotmail.com', '', '', '', '', '', '', 'Física', '2025-03-18', '1111-11-11', 1, '', 1, NULL, '$2y$10$jVL22Rqopg2YfzIzKF8UD.TB0Z1aY5U6FQKwojcmmlPftUo3suhPS', 'Sim', '', 'sem-foto.jpg', '14.png', 'Mercado Pago', ''),
(37, 'AAA', '', '(45) 5555-5555', '', '', '', '', '', '', '', 'Física', '2025-07-17', '1111-11-11', 1, '', 1, NULL, '$2y$10$G6GbIFEt0DEVRRQmeSHq/uUYSkANUXrvcIMoSSRHzAAIcpqb3YCje', 'Sim', NULL, 'sem-foto.jpg', NULL, '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_recursos`
--

CREATE TABLE `clientes_recursos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `recurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes_recursos`
--

INSERT INTO `clientes_recursos` (`id`, `empresa`, `recurso`) VALUES
(25, 8, 1),
(26, 8, 5),
(27, 8, 4),
(28, 8, 3),
(29, 8, 6),
(33, 2, 3),
(47, 1, 1),
(48, 1, 5),
(49, 1, 4),
(50, 1, 3),
(51, 1, 6),
(52, 2, 1),
(72, 21, 3),
(73, 21, 4),
(74, 21, 5),
(76, 26, 3),
(77, 27, 3),
(95, 1, 7),
(118, 44, 3),
(119, 44, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cobrancas`
--

CREATE TABLE `cobrancas` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `juros` decimal(8,2) DEFAULT NULL,
  `multa` decimal(8,2) DEFAULT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `data_venc` date NOT NULL,
  `frequencia` varchar(25) NOT NULL,
  `valor_parcela` decimal(8,2) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `parcelas` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `api_pagamento_conta` varchar(50) DEFAULT NULL,
  `pgtos_aceitaveis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cobrancas`
--

INSERT INTO `cobrancas` (`id`, `cliente`, `valor`, `juros`, `multa`, `data`, `usuario`, `obs`, `data_venc`, `frequencia`, `valor_parcela`, `descricao`, `parcelas`, `empresa`, `api_pagamento_conta`, `pgtos_aceitaveis`) VALUES
(10, 1, 970.00, 0.00, 0.00, '2025-03-05', 1, '', '2025-03-05', 'Mensal', 970.00, 'Aluguél', 1, 1, NULL, NULL),
(11, 1, 680.00, 0.00, 0.00, '2025-03-05', 1, '', '2025-03-05', 'Mensal', 680.00, 'Aluguél', 1, 1, NULL, NULL),
(12, 14, 200.00, 0.00, 0.00, '2025-04-21', 1, '', '2025-04-21', 'Mensal', 200.00, 'Teste', 1, 1, NULL, NULL),
(13, 14, 140.00, 0.00, 0.00, '2025-04-21', 1, '', '2025-04-21', 'Diária', 140.00, 'Teste cob', 1, 1, NULL, NULL),
(14, 14, 50.00, 0.00, 0.00, '2025-07-05', 1, '', '2025-07-05', 'Mensal', 50.00, 'Teste cob', 1, 1, NULL, NULL),
(15, 14, 6.00, 0.00, 0.00, '2025-07-05', 1, '', '2025-07-05', 'Mensal', 6.00, 'Cob 2', 1, 1, NULL, NULL),
(16, 14, 7.00, 0.00, 0.00, '2025-07-05', 1, '', '2025-07-05', 'Mensal', 7.00, 'Cob3', 1, 1, NULL, NULL),
(17, 14, 10.00, 0.00, 0.00, '2025-07-05', 1, '', '2025-07-05', 'Mensal', 10.00, 'Cob4', 1, 1, NULL, NULL),
(18, 1, 50.00, 0.00, 0.00, '2025-08-06', 1, '', '2025-08-06', 'Mensal', 50.00, 'Cob MP', 1, 1, 'Mercado Pago', NULL),
(19, 37, 120.00, 0.00, 0.00, '2025-08-06', 1, '', '2025-08-06', 'Mensal', 120.00, 'Cob ASAAS', 1, 1, 'Asaas', NULL),
(20, 1, 65.00, 0.00, 0.00, '2025-08-08', 1, '', '2025-08-08', 'Mensal', 65.00, 'Cobrança Boleto', 1, 1, '', 'Boleto'),
(21, 14, 300.00, 0.00, 0.00, '2025-08-19', 1, '', '2025-08-19', 'Diária', 300.00, 'Cobranca teste', 1, 1, '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra_venda`
--

CREATE TABLE `compra_venda` (
  `id` int(11) NOT NULL,
  `empresa` int(11) NOT NULL,
  `texto` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `logo_rel` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `multa_atraso` decimal(8,2) DEFAULT NULL,
  `juros_atraso` decimal(8,2) DEFAULT NULL,
  `marca_dagua` varchar(5) DEFAULT NULL,
  `assinatura_recibo` varchar(5) DEFAULT NULL,
  `impressao_automatica` varchar(5) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `entrar_automatico` varchar(5) DEFAULT NULL,
  `mostrar_preloader` varchar(5) DEFAULT NULL,
  `ocultar_mobile` varchar(5) DEFAULT NULL,
  `api_whatsapp` varchar(25) DEFAULT NULL,
  `token_whatsapp` varchar(70) DEFAULT NULL,
  `instancia_whatsapp` varchar(70) DEFAULT NULL,
  `alterar_acessos` varchar(5) DEFAULT NULL,
  `dados_pagamento` varchar(100) DEFAULT NULL,
  `abertura_caixa` varchar(5) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `logo_painel` varchar(100) DEFAULT NULL,
  `imagem_assinatura` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `limitar_recursos` varchar(5) DEFAULT NULL,
  `fundo_login` varchar(100) DEFAULT NULL,
  `cidade_sistema` varchar(50) DEFAULT NULL,
  `api_pagamento` varchar(35) DEFAULT NULL,
  `chave_api_asaas` varchar(255) DEFAULT NULL,
  `dias_comissao` int(11) DEFAULT NULL,
  `assinatura_cliente` varchar(5) DEFAULT NULL,
  `alterar_api_whatsapp` varchar(5) DEFAULT NULL,
  `cobrar_automaticamente` varchar(5) DEFAULT NULL,
  `cobrar_duas_vezes` varchar(5) DEFAULT NULL,
  `pagina_entrada` varchar(25) DEFAULT NULL,
  `url_site` varchar(50) DEFAULT NULL,
  `dispositivos` int(11) DEFAULT NULL,
  `mao_obra_orc` varchar(100) DEFAULT NULL,
  `senha_aparelho_orc` varchar(100) DEFAULT NULL,
  `defeito_orc` varchar(100) DEFAULT NULL,
  `avarias_orc` varchar(100) DEFAULT NULL,
  `acessorios_orc` varchar(100) DEFAULT NULL,
  `laudo_orc` varchar(100) DEFAULT NULL,
  `mao_obra_os` varchar(100) DEFAULT NULL,
  `senha_aparelho_os` varchar(100) DEFAULT NULL,
  `defeito_os` varchar(100) DEFAULT NULL,
  `avarias_os` varchar(100) DEFAULT NULL,
  `acessorios_os` varchar(100) DEFAULT NULL,
  `laudo_os` varchar(100) DEFAULT NULL,
  `multi_empresas` varchar(5) DEFAULT NULL,
  `taxa_cartao_api` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`nome`, `email`, `telefone`, `endereco`, `instagram`, `logo`, `icone`, `logo_rel`, `id`, `ativo`, `multa_atraso`, `juros_atraso`, `marca_dagua`, `assinatura_recibo`, `impressao_automatica`, `cnpj`, `entrar_automatico`, `mostrar_preloader`, `ocultar_mobile`, `api_whatsapp`, `token_whatsapp`, `instancia_whatsapp`, `alterar_acessos`, `dados_pagamento`, `abertura_caixa`, `access_token`, `public_key`, `logo_painel`, `imagem_assinatura`, `empresa`, `limitar_recursos`, `fundo_login`, `cidade_sistema`, `api_pagamento`, `chave_api_asaas`, `dias_comissao`, `assinatura_cliente`, `alterar_api_whatsapp`, `cobrar_automaticamente`, `cobrar_duas_vezes`, `pagina_entrada`, `url_site`, `dispositivos`, `mao_obra_orc`, `senha_aparelho_orc`, `defeito_orc`, `avarias_orc`, `acessorios_orc`, `laudo_orc`, `mao_obra_os`, `senha_aparelho_os`, `defeito_os`, `avarias_os`, `acessorios_os`, `laudo_os`, `multi_empresas`, `taxa_cartao_api`) VALUES
('Gestor ERP SAAS', 'contato@hugocursos.com.br', '(31) 97527-5084', '', '', 'logo.png', 'icone.png', 'logo.jpg', 1, 'Sim', 10.00, 10.00, 'Sim', 'Não', 'Não', '', 'Sim', 'Sim', 'Sim', 'menuia', '826e2f0c-6a32-413d-b0b9-af027eec2826', 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Sim', '', 'Sim', 'APP_USR-7645692252055791-101021-ba91ccf6cd290bc3115e3270a30edb1e-131939455', 'APP_USR-187b89d5-08ae-4bf2-8d2b-dd41da0888c4', NULL, NULL, 0, 'Sim', '10-03-2025-11-58-01-fundo_erp.webp', NULL, 'Asaas', '$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjE4NTg0N2I5LTgyMjAtNDBmZC05NGMwLTcyZTUzZGQ0OWFmODo6JGFhY2hfMzlkMjdjZWMtZTYzYi00MDVmLTgwYWItZDExZjVhMzk1MTIx', NULL, NULL, 'Não', NULL, NULL, 'Site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sim', NULL),
('Empresa 1 Teste', 'empresa1@hotmail.com', '(31) 97527-5084', 'Rua X Número 150 Bairro Teste X', 'portal_hugo_cursos', '03-02-2025-22-21-13-LOGO_empresa1.png', '03-02-2025-22-21-13icone-ICONE-LOGO_empresa-1.png', '03-02-2025-22-21-13rel-LOGO-horizontal_EMPRESA1.jpg', 2, 'Sim', 10.00, 10.00, 'Sim', 'Sim', 'Sim', '20.000.000/0000-00', 'Sim', 'Sim', 'Sim', 'menuia', '826e2f0c-6a32-413d-b0b9-af027eec2826', 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Sim', '', 'Sim', '', '', '04-02-2025-11-01-52painel-foto_painel_emp1.png', '', 1, NULL, NULL, 'Belo Horizonte', 'Asaas', '$aact_prod_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OmMxNGVkNjEwLWZmYTAtNGM3Zi04Y2JhLWQ3NmQ3NjlhNGI1NTo6JGFhY2hfMGVkNTZiNmMtMjdlYy00OTkyLWIwMjctNGExYTRlMWM4ODRl', 3, 'Sim', NULL, 'Sim', 'Sim', NULL, 'emp1', 2, 'Mão de Obra', 'Senha do Aparelho', 'Defeito', 'Condições ou Avarias', 'Acessórios', 'Laudo Técnicos', 'Mão de Obra', 'Senha do Aparelho', 'Defeito', 'Condições ou Avarias', 'Acessórios', 'Laudo Técnicos', NULL, 10.50),
('Empresta  apagar 2', 'ccccccccc@hotmail.com', '(21) 02000-000', '', '', '03-02-2025-22-22-26-LOGO_empresa2.png', '03-02-2025-22-22-26icone-ICONE-LOGO_emp_2.png', '03-02-2025-22-22-26rel-LOGO-horizontal_empresa2.jpg', 3, 'Sim', 0.00, 0.00, 'Sim', 'Sim', 'Não', '', 'Sim', 'Sim', 'Sim', 'menuia', '826e2f0c-6a32-413d-b0b9-af027eec2826', 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Não', '', 'Sim', '', '', '03-02-2025-22-22-26painel-logo_horizontal_painel.png', '04-02-2025-18-38-44ass-assinatura.jpg', 2, NULL, NULL, '', '', '', 0, 'Sim', NULL, 'Sim', 'Sim', NULL, 'teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Empresa 1', 'escola@hotmail.com', '(02) 0200-0000', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 5, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', '826e2f0c-6a32-413d-b0b9-af027eec2826', 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'emmp2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Emp 4 teste', 'emp4@hotmail.com', '(00) 00030-000', '', '', 'logo.png', 'icone.png', 'logo.jpg', 8, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', '', 'Sim', 'Sim', 'Sim', 'Não', '826e2f0c-6a32-413d-b0b9-af027eec2826', 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Não', '', 'Sim', '', '', '06-04-2025-20-29-06painel-aprovado.png', '06-04-2025-20-29-06ass-eupng.png', 8, NULL, NULL, '', '', '', 0, 'Sim', NULL, 'Sim', 'Sim', NULL, 'emp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Teste', 'teste@hotmaiol.com', '(02) 0002-0000', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 12, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', NULL, 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Teste', '', '(00) 1414', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 19, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', NULL, 'bBAIhWKDdVyG8xUyjMDCcdt5j0DEqL5gVgNRiKhDNMjOtqnslI', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '444', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('aaaaaaaaaaaa', '', '(54) 61212-1212', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 24, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', NULL, 'bBAIhWKDdVyG8xUyjMDCcdt5j0DEqL5gVgNRiKhDNMjOtqnslI', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sfa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Hugo Test', 'hugotest@hotmaiol.com', '(30) 0000-0000', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 25, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', NULL, 'bBAIhWKDdVyG8xUyjMDCcdt5j0DEqL5gVgNRiKhDNMjOtqnslI', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Empp55', 'emp555@hotmail.com', '(45) 4545-5454', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 42, 'Sim', 0.00, 0.00, 'Sim', 'Não', 'Não', NULL, NULL, NULL, NULL, 'Não', NULL, 'v9t7zpp51nsSCMeqqJWfI4lj8iGG12tyMqW8PwvBH3CojiUaHM', 'Não', NULL, 'Sim', NULL, NULL, '', NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'empp655', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `mostrar_modelos` varchar(5) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contratos`
--

INSERT INTO `contratos` (`id`, `modelo`, `texto`, `mostrar_modelos`, `empresa`) VALUES
(3, 'Procuração', '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>{{TEXTO DADOS}}</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">{{LOCAL}}, {{DATA}}.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\">{{ASSINATURA}}</div><div align=\"center\"><font size=\"2\">_________________________________________<br>{{NOME}}</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', NULL, 1),
(9, 'Modelo de Teste', '<div align=\"center\"><b><font size=\"4\">Título do Contrato</font></b></div><div><br></div><div>texto do contrato<b> {{TEXTO DADOS}}</b></div>', NULL, 1),
(12, 'fdafsdaf', 'fdafdsafa', NULL, 0),
(16, 'Contrato emp 2', 'df fasd fdafaf <br>', NULL, 2),
(17, 'PRESTAÇÃO DE SERVIÇOS', '<h3 data-start=\"299\" data-end=\"336\" align=\"center\"><b><h3 data-start=\"299\" data-end=\"336\"><font size=\"4\"><u>CONTRATO DE PRESTAÇÃO DE SERVIÇOS</u></font></h3></b></h3><p data-start=\"338\" data-end=\"386\">Pelo presente instrumento particular, as partes:</p><p data-start=\"388\" data-end=\"502\"><strong data-start=\"388\" data-end=\"404\">CONTRATANTE:</strong><br data-start=\"404\" data-end=\"407\">Nome: <b>{{NOME EMPRESA}}</b><br data-start=\"434\" data-end=\"437\">CNPJ: <b>{{CNPJ EMPRESA}}</b><br data-start=\"468\" data-end=\"471\">Endereço: <b>{{ENDERECO EMPRESA}}</b></p><p data-start=\"504\" data-end=\"616\"><strong data-start=\"504\" data-end=\"519\">CONTRATADA:</strong><br data-start=\"519\" data-end=\"522\"><b>{{TEXTO DADOS}}</b></p><p data-start=\"504\" data-end=\"616\">Têm entre si, justas e contratadas, as cláusulas e condições a seguir dispostas:</p><h3 data-start=\"705\" data-end=\"729\"><font size=\"3\">CLÁUSULA 1ª – OBJETO</font></h3><p data-start=\"731\" data-end=\"959\">O presente contrato tem como objeto a prestação dos seguintes serviços:<br data-start=\"802\" data-end=\"805\"><strong data-start=\"805\" data-end=\"959\">[Descrever detalhadamente os serviços que serão prestados, ex.: \"Aulas presenciais de inglês para nível básico, com carga horária total de 40 horas.\"]</strong></p><h3 data-start=\"966\" data-end=\"1008\"><font size=\"3\">CLÁUSULA 2ª – OBRIGAÇÕES DA CONTRATADA</font></h3><p data-start=\"1010\" data-end=\"1232\">A CONTRATADA se obriga a:<br data-start=\"1035\" data-end=\"1038\">a) Prestar os serviços descritos na Cláusula 1ª com zelo, diligência e qualidade;<br data-start=\"1119\" data-end=\"1122\">b) Cumprir o cronograma e prazos acordados;<br data-start=\"1165\" data-end=\"1168\">c) Manter sigilo sobre informações confidenciais da CONTRATANTE.</p><h3 data-start=\"1239\" data-end=\"1282\"><font size=\"3\">CLÁUSULA 3ª – OBRIGAÇÕES DA CONTRATANTE</font></h3><p data-start=\"1284\" data-end=\"1547\">A CONTRATANTE se compromete a:<br data-start=\"1314\" data-end=\"1317\">a) Fornecer todas as informações necessárias à execução dos serviços;<br data-start=\"1386\" data-end=\"1389\">b) Efetuar o pagamento na forma e prazos estipulados neste contrato;<br data-start=\"1457\" data-end=\"1460\">c) Cooperar com a CONTRATADA, sempre que necessário, para o bom andamento dos serviços.</p><p data-start=\"504\" data-end=\"616\"><br></p><p data-start=\"504\" data-end=\"616\"><br></p>', NULL, 1),
(18, 'Contrato de Vendas', '<div><b><font size=\"5\">fdafdsaf dfdsf a f</font></b></div><div><br></div><div><b><b>{{TEXTO DADOS}}</b></b></div><div><b><b><br></b></b></div><div><b><b>{{NOME}} <br></b></b></div><div><br></div><div><b>{{LOCAL}}</b></div><div><b><b><br></b></b></div>', NULL, 1),
(19, 'tesstee', '<p>fdfa fdf asfdsf fsadfda fa  <strong>{{TEXTO DADOS}}</strong> {{EMAIL}} fadfadfa fd afaf f {{ENDERECO_COMPLETO}} {{CEP}} {{LOCAL}} fdfaf ads {{DATA}}  fadfsad f {{NOME EMPRESA}} dfafa a <strong>{{PROFISSIONAL}} <br></strong></p><p><strong><br></strong></p><p> {{DEMAIS CONTRATANTES}} <br></p><p><br></p><p> {{DEMAIS CONTRATADOS}} <br></p>', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disparos`
--

CREATE TABLE `disparos` (
  `id` int(11) NOT NULL,
  `campanha` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `data_disparo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dispositivos`
--

CREATE TABLE `dispositivos` (
  `id` bigint(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `appkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `status_api` varchar(100) DEFAULT NULL,
  `horario` datetime DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `dispositivos`
--

INSERT INTO `dispositivos` (`id`, `telefone`, `appkey`, `status`, `status_api`, `horario`, `empresa`) VALUES
(12, '553189241964', 'appkey_67b76756592466.38680855', 'Ativo', 'conectado', NULL, 0),
(19, '553189241964', 'appkey_68067dae57fb42.08854095', 'Ativo', 'conectado', NULL, 1),
(20, NULL, 'appkey_68067db87d1e12.87840875', '', NULL, NULL, 1),
(21, NULL, 'appkey_68067dc2ab8c64.43563929', '', NULL, NULL, 1),
(22, NULL, 'appkey_68067dcd28bc83.25454867', '', NULL, NULL, 1),
(23, NULL, 'appkey_68067dd7508366.17966043', '', NULL, NULL, 1),
(24, NULL, 'appkey_68067de26bacd1.66258444', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `tipo_pessoa` varchar(15) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `dias_teste` int(11) DEFAULT NULL,
  `mensalidade` decimal(8,2) DEFAULT NULL,
  `data_teste` date DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `plano` int(11) DEFAULT NULL,
  `url_site` varchar(100) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `dispositivos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `tipo_pessoa`, `data_cad`, `data_nasc`, `usuario`, `complemento`, `dias_teste`, `mensalidade`, `data_teste`, `ativo`, `plano`, `url_site`, `frequencia`, `dispositivos`) VALUES
(1, 'Empresa 1 Teste', '', '(31) 97527-5084', 'empresa1@hotmail.com', '', '', '', '', '', '', 'Jurídica', '2025-02-03', '2000-11-11', 1, '', 0, 180.00, NULL, 'Sim', 4, 'emp1', 30, 2),
(2, 'Empresta  apagar 2', '', '(21) 0200-0000', 'ccccccccc@hotmail.com', '', '', '', '', '', '', 'Física', '2025-02-03', '1969-12-31', 1, '', 3, 140.00, '2025-03-27', 'Sim', 2, NULL, NULL, NULL),
(4, 'Empresa 1', '', '(02) 0200-0000', 'escola@hotmail.com', '', '', '', '', '', '', 'Jurídica', '2025-02-04', '1969-12-31', 1, '', 0, 120.00, NULL, 'Sim', 1, 'emmp2', 1, 1),
(8, 'Emp 4 teste', '', '(00) 0003-0000', 'emp4@hotmail.com', '', '', '', '', '', '', 'Jurídica', '2025-02-21', '1969-12-31', 1, '', 0, 0.00, NULL, 'Sim', 0, 'emp4', NULL, NULL),
(12, 'Teste', '506.888.340-94', '(02) 0002-0000', 'teste@hotmaiol.com', '', '', '', '', '', '', 'Física', '2025-03-28', '1969-12-31', 1, '', 3, 120.00, '2025-03-31', 'Não', 1, NULL, NULL, NULL),
(21, 'Teste', '', '(00) 1414', '', '', '', '', '', '', '', 'Jurídica', '2025-04-24', '1969-12-31', 1, '', 0, 160.00, '1969-12-31', 'Sim', 3, '444', 30, 1),
(26, 'aaaaaaaaaaaa', '', '(54) 61212-1212', '', '', '', '', '', '', '', 'Jurídica', '2025-04-24', '1969-12-31', 1, '', 0, 140.00, '1969-12-31', 'Sim', 2, 'sfa', 1, 1),
(27, 'Hugo Test', '716.674.660-20', '(30) 0000-0000', 'hugotest@hotmaiol.com', '', '', '', '', '', '', 'Física', '2025-04-28', '1969-12-31', 1, '', 3, 140.00, '2025-05-01', 'Sim', 2, '', 0, 0),
(44, 'Empp55', '', '(45) 4545-5454', 'emp555@hotmail.com', '', '', '', '', '', '', 'Jurídica', '2025-08-06', '1111-11-11', 1, '', 0, 140.00, NULL, 'Sim', 2, 'empp655', 30, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`, `empresa`) VALUES
(2, 228, 3, 'teste', 1, '2025-03-17', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id`, `nome`, `ativo`, `empresa`) VALUES
(9, 'Notebook', 'Sim', 1),
(12, 'Celular', 'Sim', 1),
(16, 'Tablet ', 'Sim', 1),
(17, 'PC', 'Sim', 1),
(19, 'Ciaxa de Som', 'Sim', 1),
(26, 'Equipemento 1', 'Sim', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `formas_pgto`
--

CREATE TABLE `formas_pgto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `taxa` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formas_pgto`
--

INSERT INTO `formas_pgto` (`id`, `nome`, `taxa`, `empresa`) VALUES
(1, 'Dinheiro', 0, NULL),
(2, 'Pix', 0, NULL),
(30, 'Cartão de Crédito 3x', 3, NULL),
(31, 'Cartão de Crédito 6x', 6, NULL),
(32, 'Cartão de Crédito 10x', 10, NULL),
(34, 'Cartão', 0, 1),
(35, 'Boleto', 0, 1),
(36, 'Pix', 0, 1),
(37, 'Dinheiro', 0, 1),
(38, 'Dinheiro', 0, 2),
(39, 'Cartão', 0, 2),
(40, 'Pix', 0, 2),
(41, 'Boleto', 0, 2),
(43, 'Cartão de Débito', 0, 0),
(44, 'Cartão de Crédito', 0, 1),
(45, 'Cartão de Débito', 0, 1),
(46, 'Cartão de Crédito', 0, 2),
(47, 'Cartão de Débito', 0, 2),
(48, 'Pix', 0, 5),
(49, 'Boleto', 0, 5),
(50, 'Cartão de Crédito', 0, 5),
(51, 'Cartão de Débito', 0, 5),
(52, 'Pix', 0, 7),
(53, 'Boleto', 0, 7),
(54, 'Cartão de Crédito', 0, 7),
(55, 'Cartão de Débito', 0, 7),
(56, 'Pix', 0, 4),
(57, 'Boleto', 0, 4),
(58, 'Cartão de Crédito', 0, 4),
(59, 'Cartão de Débito', 0, 4),
(60, 'Pix', 0, 8),
(61, 'Boleto', 0, 8),
(62, 'Cartão de Crédito', 0, 8),
(63, 'Cartão de Débito', 0, 8),
(65, 'Boleto', 0, 0),
(66, 'Cartão de Crédito', 0, 0),
(67, 'Pix', 0, 12),
(68, 'Boleto', 0, 12),
(69, 'Cartão de Crédito', 0, 12),
(70, 'Cartão de Débito', 0, 12),
(71, 'Pix', 0, 17),
(72, 'Boleto', 0, 17),
(73, 'Cartão de Crédito', 0, 17),
(74, 'Cartão de Débito', 0, 17),
(75, 'Pix', 0, 34),
(76, 'Boleto', 0, 34),
(77, 'Cartão de Crédito', 0, 34),
(78, 'Cartão de Débito', 0, 34),
(79, 'Pix', 0, 44),
(80, 'Boleto', 0, 44),
(81, 'Cartão de Crédito', 0, 44),
(82, 'Cartão de Débito', 0, 44);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `pix` varchar(50) DEFAULT NULL,
  `data` date NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `tipo_chave` varchar(100) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `pix`, `data`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `cnpj`, `complemento`, `tipo_chave`, `usuario`, `empresa`) VALUES
(2, 'Fornecedor SAAS', '(20) 0200-0000', 'fornecedorsas@hotmail.com', '', '', '2025-02-03', '', '', '', '', '', '', '', '', NULL, 0),
(3, 'Fornecedor emp 1', '(25) 0555-5502', 'fornecedor1@hotmail.com', '', '', '2025-02-04', '', '', '', '', '', '', '', '', NULL, 1),
(4, 'Fornecedor emp 2', '(61) 00000-0000', 'fornecedor2@hotmail.com', '', '', '2025-02-04', '', '', '', '', '', '', '', '', NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `frequencias`
--

CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL,
  `frequencia` varchar(25) NOT NULL,
  `dias` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `frequencias`
--

INSERT INTO `frequencias` (`id`, `frequencia`, `dias`, `empresa`) VALUES
(2, 'Diária', 1, NULL),
(3, 'Semanal', 7, NULL),
(4, 'Mensal', 30, NULL),
(5, 'Trimestral', 90, NULL),
(6, 'Semestral', 180, NULL),
(7, 'Anual', 365, NULL),
(23, 'Diária', 1, 0),
(24, 'Diária', 1, 1),
(25, 'Semanal', 7, 1),
(26, 'Mensal', 30, 1),
(27, 'Semestral', 180, 1),
(28, 'Anual', 365, 1),
(29, 'Anual', 365, 2),
(30, 'Semestral', 180, 2),
(31, 'Mensal', 30, 2),
(32, 'Diária', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupos_clientes`
--

CREATE TABLE `grupos_clientes` (
  `id` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `grupos_clientes`
--

INSERT INTO `grupos_clientes` (`id`, `empresa`, `grupo`, `cliente`) VALUES
(5, 1, 1, 14),
(7, 1, 2, 1),
(10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupos_disparos`
--

CREATE TABLE `grupos_disparos` (
  `id` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `grupos_disparos`
--

INSERT INTO `grupos_disparos` (`id`, `empresa`, `ativo`, `nome`) VALUES
(1, 1, 'Sim', 'Clientes Frequêntes'),
(2, 1, 'Sim', 'Clientes Inadimplentes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `grupo_acessos`
--

INSERT INTO `grupo_acessos` (`id`, `nome`) VALUES
(1, 'Pessoas'),
(2, 'Cadastros'),
(4, 'Financeiro'),
(7, 'Caixas'),
(28, 'Produtos'),
(29, 'Contratos'),
(30, 'Marketing'),
(31, 'Orçamentos'),
(32, 'Tarefas / Agendas / Lembretes'),
(33, 'Ordem de Serviços');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_acessos_sas`
--

CREATE TABLE `grupo_acessos_sas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `grupo_acessos_sas`
--

INSERT INTO `grupo_acessos_sas` (`id`, `nome`) VALUES
(1, 'Pessoas'),
(2, 'Cadastros'),
(4, 'Financeiro'),
(7, 'Caixas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `tipo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id`, `produto`, `valor`, `quantidade`, `total`, `id_venda`, `funcionario`, `codigo`, `empresa`, `tipo`) VALUES
(1, 155, 18.00, 1, 18.00, 1, 1, NULL, 1, NULL),
(2, 157, 25.00, 1, 25.00, 2, 1, NULL, 1, NULL),
(3, 43, 30.00, 1, 30.00, 3, 1, NULL, 1, NULL),
(4, 45, 20.00, 1, 20.00, 3, 1, NULL, 1, NULL),
(5, 155, 18.00, 1, 18.00, 11, 1, NULL, 1, NULL),
(6, 230, 5000.00, 1, 5000.00, 18, 1, NULL, 2, NULL),
(7, 53, 30.00, 1, 30.00, 22, 1, NULL, 1, NULL),
(8, 92, 50.00, 3, 150.00, 22, 1, NULL, 1, NULL),
(9, 155, 18.00, 1, 18.00, 24, 1, NULL, 1, NULL),
(10, 47, 10.00, 3, 30.00, 25, 1, NULL, 1, NULL),
(11, 155, 18.00, 1, 18.00, 26, 1, NULL, 1, NULL),
(12, 157, 25.00, 1, 25.00, 27, 1, NULL, 1, NULL),
(13, 94, 50.00, 1, 50.00, 30, 1, NULL, 1, NULL),
(14, 47, 10.00, 1, 10.00, 31, 1, NULL, 1, NULL),
(15, 94, 50.00, 1, 50.00, 32, 1, NULL, 1, NULL),
(16, 46, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(17, 157, 25.00, 1, 25.00, 3, 1, NULL, 1, NULL),
(18, 165, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(19, 164, 5.00, 1, 5.00, 3, 1, NULL, 1, NULL),
(20, 47, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(21, 47, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(22, 47, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(23, 157, 25.00, 1, 25.00, 3, 1, NULL, 1, NULL),
(24, 157, 25.00, 1, 25.00, 3, 1, NULL, 1, NULL),
(25, 64, 12.00, 1, 12.00, 4, 1, NULL, 1, NULL),
(26, 65, 15.00, 1, 15.00, 4, 1, NULL, 1, NULL),
(27, 158, 25.00, 1, 25.00, 5, 1, NULL, 1, NULL),
(28, 157, 25.00, 1, 25.00, 6, 1, NULL, 1, NULL),
(29, 155, 18.00, 1, 18.00, 6, 1, NULL, 1, NULL),
(30, 47, 10.00, 1, 10.00, 6, 1, NULL, 1, NULL),
(31, 155, 18.00, 1, 18.00, 8, 1, NULL, 1, NULL),
(32, 155, 18.00, 1, 18.00, 9, 1, NULL, 1, NULL),
(33, 155, 18.00, 1, 18.00, 10, 1, NULL, 1, NULL),
(41, 47, 10.00, 2, 20.00, 17, 1, NULL, 1, NULL),
(42, 155, 18.00, 2, 36.00, 17, 1, NULL, 1, NULL),
(50, 158, 25.00, 1, 25.00, 18, 1, NULL, 1, NULL),
(51, 47, 10.00, 1, 10.00, 18, 1, NULL, 1, NULL),
(52, 164, 5.00, 3, 15.00, 18, 1, NULL, 1, NULL),
(53, 231, 3125.00, 1, 3125.00, 19, 1, NULL, 2, NULL),
(54, 230, 5000.00, 1, 5000.00, 20, 1, NULL, 2, NULL),
(61, 158, 25.00, 1, 25.00, 20, 1, NULL, 1, NULL),
(62, 155, 18.00, 1, 18.00, 20, 1, NULL, 1, NULL),
(63, 155, 18.00, 1, 18.00, 21, 1, NULL, 1, NULL),
(64, 157, 25.00, 1, 25.00, 21, 1, NULL, 1, NULL),
(65, 157, 25.00, 1, 25.00, 22, 1, NULL, 1, NULL),
(66, 155, 18.00, 1, 18.00, 22, 1, NULL, 1, NULL),
(67, 157, 25.00, 1, 25.00, 22, 1, NULL, 1, NULL),
(68, 165, 10.00, 1, 10.00, 23, 1, NULL, 1, NULL),
(73, 164, 5.00, 1, 5.00, 24, 1, NULL, 1, NULL),
(74, 165, 10.00, 1, 10.00, 25, 17, NULL, 1, NULL),
(75, 165, 10.00, 1, 10.00, 26, 17, NULL, 1, NULL),
(76, 164, 5.00, 1, 5.00, 26, 17, NULL, 1, NULL),
(77, 157, 25.00, 1, 25.00, 27, 17, NULL, 1, NULL),
(78, 47, 10.00, 1, 10.00, 27, 17, NULL, 1, NULL),
(79, 46, 10.00, 1, 10.00, 27, 17, NULL, 1, NULL),
(80, 157, 25.00, 1, 25.00, 28, 17, NULL, 1, NULL),
(81, 155, 18.00, 1, 18.00, 28, 17, NULL, 1, NULL),
(82, 157, 25.00, 1, 25.00, 29, 17, NULL, 1, NULL),
(83, 157, 25.00, 1, 25.00, 30, 17, NULL, 1, NULL),
(84, 47, 10.00, 1, 10.00, 31, 17, NULL, 1, NULL),
(85, 47, 10.00, 1, 10.00, 31, 17, NULL, 1, NULL),
(86, 47, 10.00, 1, 10.00, 31, 17, NULL, 1, NULL),
(87, 47, 10.00, 1, 10.00, 32, 17, NULL, 1, NULL),
(88, 47, 10.00, 1, 10.00, 32, 17, NULL, 1, NULL),
(89, 47, 10.00, 1, 10.00, 33, 17, NULL, 1, NULL),
(90, 47, 10.00, 1, 10.00, 33, 17, NULL, 1, NULL),
(91, 46, 10.00, 1, 10.00, 34, 17, NULL, 1, NULL),
(92, 165, 10.00, 3, 30.00, 34, 17, NULL, 1, NULL),
(93, 165, 10.00, 2, 20.00, 35, 1, NULL, 1, NULL),
(94, 165, 10.00, 2, 20.00, 36, 1, NULL, 1, NULL),
(95, 165, 10.00, 3, 30.00, 37, 1, NULL, 1, NULL),
(97, 165, 10.00, 4, 40.00, 41, 1, NULL, 1, NULL),
(108, 158, 25.00, 2, 50.00, 3, 1, NULL, 1, NULL),
(109, 158, 25.00, 3, 75.00, 3, 1, NULL, 1, NULL),
(110, 1, 130.00, 1, 130.00, 3, 1, NULL, 1, NULL),
(111, 47, 10.00, 1, 10.00, 3, 1, NULL, 1, NULL),
(133, 47, 10.00, 1, 10.00, 4, 1, NULL, 1, 'Produto'),
(134, 2, 100.00, 1, 100.00, 4, 1, NULL, 1, 'Serviço'),
(135, 157, 25.00, 1, 25.00, 4, 1, NULL, 1, 'Produto'),
(136, 47, 10.00, 3, 30.00, 5, 1, NULL, 1, 'Produto'),
(137, 155, 18.00, 1, 18.00, 5, 1, NULL, 1, 'Produto'),
(138, 157, 25.00, 1, 25.00, 5, 1, NULL, 1, 'Produto'),
(139, 1, 130.00, 4, 520.00, 5, 1, NULL, 1, 'Serviço'),
(140, 47, 10.00, 1, 10.00, 6, 1, NULL, 1, 'Produto'),
(141, 1, 130.00, 1, 130.00, 6, 1, NULL, 1, 'Serviço'),
(142, 155, 18.00, 1, 18.00, 7, 1, NULL, 1, 'Produto'),
(143, 47, 10.00, 1, 10.00, 7, 1, NULL, 1, 'Produto'),
(144, 1, 130.00, 1, 130.00, 7, 1, NULL, 1, 'Serviço'),
(145, 47, 10.00, 1, 10.00, 11, 1, NULL, 1, 'Produto'),
(146, 155, 18.00, 1, 18.00, 12, 1, NULL, 1, 'Produto'),
(147, 47, 10.00, 1, 10.00, 13, 1, NULL, 1, 'Produto'),
(148, 157, 25.00, 1, 25.00, 14, 1, NULL, 1, 'Produto'),
(149, 46, 10.00, 1, 10.00, 14, 1, NULL, 1, 'Produto'),
(150, 43, 30.00, 1, 30.00, 29, 1, NULL, 1, NULL),
(151, 155, 18.00, 1, 18.00, 34, 1, NULL, 1, 'Produto'),
(152, 155, 18.00, 1, 18.00, 37, 1, NULL, 1, 'Produto'),
(153, 155, 18.00, 1, 18.00, 40, 1, NULL, 1, 'Produto'),
(154, 155, 18.00, 1, 18.00, 43, 1, NULL, 1, 'Produto'),
(155, 155, 18.00, 1, 18.00, 44, 1, NULL, 1, 'Produto'),
(156, 155, 18.00, 1, 18.00, 45, 1, NULL, 1, 'Produto'),
(157, 157, 25.00, 1, 25.00, 46, 1, NULL, 1, 'Produto'),
(158, 157, 25.00, 1, 25.00, 52, 1, NULL, 1, 'Produto'),
(159, 157, 25.00, 1, 25.00, 53, 1, NULL, 1, 'Produto'),
(160, 157, 25.00, 1, 25.00, 55, 1, NULL, 1, 'Produto'),
(161, 157, 25.00, 1, 25.00, 56, 1, NULL, 1, 'Produto'),
(162, 157, 25.00, 1, 25.00, 57, 1, NULL, 1, 'Produto'),
(163, 157, 25.00, 1, 25.00, 59, 1, NULL, 1, 'Produto'),
(164, 157, 25.00, 1, 25.00, 5, 1, NULL, 1, 'Produto'),
(165, 157, 25.00, 1, 25.00, 6, 1, NULL, 1, 'Produto'),
(166, 157, 25.00, 1, 25.00, 7, 1, NULL, 1, 'Produto'),
(167, 157, 25.00, 1, 25.00, 9, 1, NULL, 1, 'Produto'),
(168, 157, 25.00, 1, 25.00, 12, 1, NULL, 1, 'Produto'),
(169, 157, 25.00, 1, 25.00, 12, 1, NULL, 1, 'Produto'),
(170, 157, 25.00, 1, 25.00, 15, 1, NULL, 1, 'Produto'),
(171, 157, 25.00, 1, 25.00, 15, 1, NULL, 1, 'Produto'),
(172, 157, 25.00, 1, 25.00, 17, 1, NULL, 1, 'Produto'),
(173, 157, 25.00, 1, 25.00, 30, 1, NULL, 1, 'Produto'),
(174, 158, 25.00, 1, 25.00, 30, 1, NULL, 1, 'Produto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jornada`
--

CREATE TABLE `jornada` (
  `id` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `data` date NOT NULL,
  `entrada` time NOT NULL,
  `entrada_almoco` time NOT NULL,
  `saida_almoco` time NOT NULL,
  `saida` time NOT NULL,
  `total_horas` time NOT NULL,
  `intervalo` time NOT NULL,
  `hora_extra` time NOT NULL,
  `folga` varchar(5) NOT NULL,
  `feriado` varchar(5) NOT NULL,
  `falta` varchar(5) NOT NULL,
  `data_lanc` date NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `jornada`
--

INSERT INTO `jornada` (`id`, `funcionario`, `data`, `entrada`, `entrada_almoco`, `saida_almoco`, `saida`, `total_horas`, `intervalo`, `hora_extra`, `folga`, `feriado`, `falta`, `data_lanc`, `usuario_lanc`, `empresa`) VALUES
(1, 31, '2025-03-18', '08:00:00', '12:00:00', '14:00:00', '18:00:00', '08:00:00', '02:00:00', '00:00:00', '', '', '', '2025-03-18', 0, 1),
(2, 31, '2025-03-17', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '', 'Sim', '2025-03-18', 0, 1),
(3, 31, '2025-03-15', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '', 'Sim', '2025-03-18', 0, 1),
(4, 31, '2025-03-16', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', 'Sim', '', '2025-03-18', 0, 1),
(5, 31, '2025-03-14', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Sim', '', '', '2025-03-18', 0, 1),
(6, 31, '2025-03-13', '08:00:00', '12:00:00', '13:00:00', '18:00:00', '09:00:00', '01:00:00', '01:00:00', '', '', '', '2025-03-18', 0, 1),
(10, 29, '2025-03-19', '09:00:00', '10:00:00', '12:00:00', '19:00:00', '08:00:00', '02:00:00', '00:00:00', '', '', '', '2025-03-19', 0, 1),
(11, 29, '2025-03-18', '09:00:00', '10:00:00', '11:00:00', '19:00:00', '09:00:00', '01:00:00', '01:00:00', '', '', '', '2025-03-19', 0, 1),
(12, 29, '2025-03-17', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 'Sim', '', '', '2025-03-19', 0, 1),
(13, 29, '2025-03-16', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '', '', 'Sim', '2025-03-19', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marcas`
--

INSERT INTO `marcas` (`id`, `nome`, `ativo`, `empresa`) VALUES
(11, 'Samsung', 'Sim', 1),
(12, 'LG', 'Sim', 1),
(13, 'Apple', 'Sim', 1),
(14, 'Xiaomi', 'Sim', 1),
(16, 'Motorola', 'Sim', 1),
(19, 'Lenovo', 'Sim', 1),
(20, 'CCE', 'Sim', 1),
(23, 'Acer', 'Sim', 1),
(24, 'Outras', 'Sim', 1),
(29, 'DELL', 'Sim', 1),
(31, 'Marca 1', 'Sim', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `marketing`
--

CREATE TABLE `marketing` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `data_envio` date DEFAULT NULL,
  `envios` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `mensagem2` text DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `forma_envio` varchar(50) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `ultimo_registro` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `dispositivo` varchar(35) DEFAULT NULL,
  `total_disparos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `marketing`
--

INSERT INTO `marketing` (`id`, `data`, `data_envio`, `envios`, `titulo`, `mensagem2`, `mensagem`, `arquivo`, `audio`, `forma_envio`, `documento`, `ultimo_registro`, `empresa`, `dispositivo`, `total_disparos`) VALUES
(6, '2025-04-04', NULL, NULL, '📺🔥 PROMOÇÃO EXCLUSIVA 🔥📺', '📺🔥 *PROMOÇÃO EXCLUSIVA 2*🔥📺\r\n\r\n✅ Mais de 10.000 canais (incluindo esportes, filmes e séries)\r\n✅ Canais em HD, Full HD e 4K\r\n✅ Acesso a conteúdos exclusivos\r\n✅ Funciona em Smart TV, TV Box, Celular, PC e Tablet\r\n✅ Suporte rápido e garantia de estabilidade\r\n\r\n🎁 *OFERTA ESPECIAL: * Assinando agora, você mantém o preço atual e ainda ganha dias extras grátis!\r\n\r\n⚡ *TESTE GRÁTIS DISPONÍVEL!* Quer testar antes de assinar? Chame no WhatsApp e peça seu teste grátis!\r\n\r\n📲💬 Me chama no WhatsApp agora mesmo e garanta o seu\r\n\r\n\r\n🚀 _Vagas limitadas! Aproveite antes que acabe!_', '📺🔥 *PROMOÇÃO EXCLUSIVA – IPTV ILIMITADO!*🔥📺\r\n\r\n✅ Mais de 10.000 canais (incluindo esportes, filmes e séries)\r\n✅ Canais em HD, Full HD e 4K\r\n✅ Acesso a conteúdos exclusivos\r\n✅ Funciona em Smart TV, TV Box, Celular, PC e Tablet\r\n✅ Suporte rápido e garantia de estabilidade\r\n\r\n🎁 *OFERTA ESPECIAL: * Assinando agora, você mantém o preço atual e ainda ganha dias extras grátis!\r\n\r\n⚡ *TESTE GRÁTIS DISPONÍVEL!* Quer testar antes de assinar? Chame no WhatsApp e peça seu teste grátis!\r\n\r\n📲💬 Me chama no WhatsApp agora mesmo e garanta o seu\r\n\r\n\r\n🚀 _Vagas limitadas! Aproveite antes que acabe!_', '21-04-2025-11-36-31-04-03-2025-12-29-00-eupng.png', '21-04-2025-11-36-31-04-03-2025-12-29-00-13-07-2023-18-52-36-WhatsApp-Ptt-2023-07-13-at-18.34.03.ogg', NULL, '21-04-2025-11-36-31-04-03-2025-12-29-14-rel_teste_pdf.pdf', NULL, 1, NULL, 0),
(13, '2025-04-04', NULL, NULL, '💥 INDIQUE E GANHE! 💥', 'Olá {cliente} Curtiu nosso IPTV? Então compartilha com os amigos e ainda ganhe um mês grátis! 😱🔥\r\n\r\n👥 *A cada pessoa que você indicar e assinar*, você *ganha +1 mês grátis* no seu plano!\r\n\r\nSem limite de indicações! Quanto mais gente indicar, mais tempo você assiste de graça! 🎉📺\r\n\r\n✅ Canais ao vivo\r\n✅ Filmes, séries, lançamentos\r\n✅ Esportes, lutas, desenhos e muito mais\r\n✅ Qualidade HD/Full HD\r\n✅ Suporte rápido\r\n\r\n🔗 Só falar com a gente e passar os dados do indicado!', 'Olá {cliente} Curtiu nosso IPTV? Então compartilha com os amigos e ainda ganhe um mês grátis! 😱🔥\r\n\r\n👥 *A cada pessoa que você indicar e assinar*, você *ganha +1 mês grátis* no seu plano!\r\n\r\nSem limite de indicações! Quanto mais gente indicar, mais tempo você assiste de graça! 🎉📺\r\n\r\n✅ Canais ao vivo\r\n✅ Filmes, séries, lançamentos\r\n✅ Esportes, lutas, desenhos e muito mais\r\n✅ Qualidade HD/Full HD\r\n✅ Suporte rápido\r\n\r\n🔗 Só falar com a gente e passar os dados do indicado!', '21-04-2025-11-36-21-GESTAO_IMP_4.jpg', '21-04-2025-11-36-21-04-03-2025-12-29-00-13-07-2023-18-52-36-WhatsApp-Ptt-2023-07-13-at-18.34.03.ogg', NULL, '21-04-2025-11-36-21-04-03-2025-12-29-14-rel_teste_pdf.pdf', NULL, 1, NULL, 0),
(16, '2025-04-07', NULL, NULL, 'Teste Campanha', 'Olá {cliente}! Curtiu nossos produtos? Então compartilha com os amigos e ainda GANHE um brinde ou desconto exclusivo! 🎁🔥\r\n\r\n👥 A cada pessoa que você indicar e comprar, você ganha um desconto especial ou brinde na sua próxima compra! 😍\r\n\r\nSem limites! Quanto mais gente você indicar, mais vantagens você acumula! 💰✨\r\n\r\n✅ Produtos de qualidade\r\n✅ Preços acessíveis\r\n✅ Entrega rápida e segura\r\n✅ Atendimento personalizado\r\n✅ Ofertas exclusivas para clientes VIP\r\n\r\n📲 É só chamar a gente e passar os dados do indicado. Bora espalhar essa vantagem! 🚀🛍️', 'Olá {cliente}! Curtiu nossos produtos? Então compartilha com os amigos e ainda GANHE um brinde ou desconto exclusivo! 🎁🔥\r\n\r\n👥 A cada pessoa que você indicar e comprar, você ganha um desconto especial ou brinde na sua próxima compra! 😍\r\n\r\nSem limites! Quanto mais gente você indicar, mais vantagens você acumula! 💰✨\r\n\r\n✅ Produtos de qualidade\r\n✅ Preços acessíveis\r\n✅ Entrega rápida e segura\r\n✅ Atendimento personalizado\r\n✅ Ofertas exclusivas para clientes VIP\r\n\r\n📲 É só chamar a gente e passar os dados do indicado. Bora espalhar essa vantagem! 🚀🛍️', '15-07-2025-13-01-36-Nitro_Wallpaper_5000x2813.jpg', '15-07-2025-13-01-36-04-03-2025-12-29-00-13-07-2023-18-52-36-WhatsApp-Ptt-2023-07-13-at-18.34.03.ogg', 'Clientes Frequêntes', '15-07-2025-13-01-36-04-03-2025-12-29-14-rel_teste_pdf.pdf', NULL, 1, '', 0),
(17, '2025-04-21', NULL, NULL, 'fdafadsfdas ', 'fdafasdfdsa fasd fdsafasd fas👍fads😊😊a👋', 'fdafasdfdsa fasd fdsafasd fas👍fads😊😊a👋', 'sem-foto.png', '', NULL, 'sem-foto.png', NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelos`
--

CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelos`
--

INSERT INTO `modelos` (`id`, `nome`, `ativo`, `marca`, `equipamento`, `empresa`) VALUES
(26, 'E6S', 'Sim', '11', '12', 1),
(36, 'G530 Gran Prime Duos', 'Sim', '11', '12', 1),
(75, 'A01 - A015', 'Sim', '11', '12', 1),
(76, 'A01 CORE - A013  ', 'Sim', '11', '12', 1),
(81, 'A02 - A022', 'Sim', '11', '12', 1),
(118, 'A71 - A715', 'Sim', '11', '12', 1),
(119, 'A72 4G 5G A725 A726', 'Sim', '11', '12', 1),
(291, 'Ideapad - 320', 'Sim', '19', '9', 1),
(301, 'Gp350M', 'Sim', '24', '19', 1),
(302, 'E50PT', 'Sim', '23', '9', 1),
(303, 'a55', 'Sim', 'Acer', 'Celular', 1),
(307, 'Modelo 1', 'Sim', '31', '26', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `data` date NOT NULL,
  `data_entrega` date NOT NULL,
  `dias_validade` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `desconto` int(11) NOT NULL,
  `tipo_desconto` varchar(20) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `total_produtos` decimal(8,2) DEFAULT NULL,
  `total_servicos` decimal(8,2) DEFAULT NULL,
  `funcionario` int(11) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `equipamento` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `defeito` varchar(1000) DEFAULT NULL,
  `condicoes` varchar(2000) DEFAULT NULL,
  `acessorios` varchar(1000) DEFAULT NULL,
  `laudo` varchar(1000) DEFAULT NULL,
  `senha_ap` varchar(50) DEFAULT NULL,
  `mao_obra` decimal(8,2) DEFAULT NULL,
  `vall` decimal(8,2) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `cliente`, `data`, `data_entrega`, `dias_validade`, `valor`, `desconto`, `tipo_desconto`, `subtotal`, `obs`, `status`, `total_produtos`, `total_servicos`, `funcionario`, `frete`, `equipamento`, `marca`, `modelo`, `defeito`, `condicoes`, `acessorios`, `laudo`, `senha_ap`, `mao_obra`, `vall`, `empresa`) VALUES
(1, 13, '2025-03-18', '2025-03-18', 5, 285.00, 5, '%', 330.75, '', 'Aprovado', 100.00, 185.00, 1, 10.00, 'Celular', 'Acer', '303', 'csdaf sadfa fsafdsafdsa fa f', 'fdasfa fdsf asfafds fas', '', '', '', 50.00, 0.00, 1),
(2, 1, '2025-03-18', '2025-03-18', 5, 50.00, 0, '%', 50.00, '', 'Aprovado', 50.00, 0.00, 1, 0.00, '', '', '', '', '', '', '', '', 0.00, 0.00, 1),
(5, 2, '2025-03-18', '2025-03-18', 3, 5200.00, 0, '%', 5200.00, '', 'Aprovado', 5000.00, 200.00, 1, 0.00, '26', '31', '307', '', '', '', '', '', 0.00, 0.00, 2),
(6, 1, '2025-03-18', '2025-03-18', 5, 920.00, 0, '%', 920.00, '', 'Aprovado', 20.00, 900.00, 1, 0.00, '', '', '', '', '', '', '', '', 0.00, 0.00, 1),
(7, 14, '2025-03-18', '2025-03-18', 5, 120.00, 0, '%', 120.00, '', 'Aprovado', 20.00, 100.00, 1, 0.00, 'Celular', 'Acer', '303', '', '', '', '', '', 0.00, 0.00, 1),
(8, 14, '2025-03-18', '2025-03-18', 3, 60.00, 0, '%', 60.00, '', 'Aprovado', 20.00, 40.00, 1, 0.00, '9', '23', '302', '', '', '', '', '', 0.00, 0.00, 1),
(9, 11, '2025-05-29', '2025-05-29', 5, 40.00, 0, '%', 40.00, '', 'Aprovado', 40.00, 0.00, 1, 0.00, '', '', '', '', '', '', '', '', 0.00, 0.00, 1),
(10, 14, '2025-06-10', '2025-06-10', 4, 30.00, 0, '%', 30.00, '', 'Aprovado', 30.00, 0.00, 1, 0.00, '', '', '', '', '', '', '', '', 100.00, 0.00, 1),
(11, 14, '2025-07-15', '2025-07-15', 4, 260.00, 5, '%', 297.00, 'fdafasf', 'Pendente', 30.00, 130.00, 1, 50.00, 'Celular', 'Acer', '303', 'fdsafsa', 'fdafdsafsaf', 'fdafafdsaf', 'dsaff', '123456', 100.00, 0.00, 1),
(12, 14, '2025-08-06', '2025-08-06', 10, 130.00, 0, '%', 130.00, '', 'Pendente', 30.00, 100.00, 1, 0.00, '9', '23', '302', '', '', '', '', '', 0.00, 0.00, 1),
(13, 1, '2025-07-06', '2025-08-06', 5, 30.00, 0, '%', 30.00, '', 'Pendente', 30.00, 0.00, 1, 0.00, '9', '23', '302', '', '', '', '', '', 0.00, 0.00, 1),
(14, 14, '2025-08-19', '2025-08-19', 5, 130.00, 0, '%', 130.00, '', 'Pendente', 30.00, 100.00, 1, 0.00, 'Celular', 'Acer', '303', '', '', '', '', '', 0.00, 0.00, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os`
--

CREATE TABLE `os` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `data` date NOT NULL,
  `data_entrega` date NOT NULL,
  `dias_validade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `desconto` int(11) NOT NULL,
  `tipo_desconto` varchar(20) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `total_produtos` decimal(8,2) NOT NULL,
  `total_servicos` decimal(8,2) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `tecnico` int(11) NOT NULL,
  `laudo` varchar(2000) DEFAULT NULL,
  `condicoes` varchar(2000) DEFAULT NULL,
  `acessorios` varchar(1000) DEFAULT NULL,
  `equipamento` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `mao_obra` decimal(8,2) DEFAULT NULL,
  `val_entrada` decimal(8,2) DEFAULT NULL,
  `vall` decimal(8,2) DEFAULT NULL,
  `defeito` varchar(1000) DEFAULT NULL,
  `dias_garantia` varchar(50) DEFAULT NULL,
  `senha_ap` varchar(50) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `forma_pgto` varchar(20) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `os`
--

INSERT INTO `os` (`id`, `cliente`, `data`, `data_entrega`, `dias_validade`, `valor`, `desconto`, `tipo_desconto`, `subtotal`, `obs`, `status`, `total_produtos`, `total_servicos`, `funcionario`, `frete`, `tecnico`, `laudo`, `condicoes`, `acessorios`, `equipamento`, `marca`, `modelo`, `orcamento`, `mao_obra`, `val_entrada`, `vall`, `defeito`, `dias_garantia`, `senha_ap`, `pago`, `forma_pgto`, `empresa`) VALUES
(1, 13, '2025-03-18', '2025-03-18', 5, 285.00, 5, '%', 330.75, '', 'Entregue', 100.00, 185.00, 1, 10.00, 0, '', 'fdasfa fdsf asfafds fas', '', NULL, NULL, '303', 1, 50.00, NULL, 0.00, 'csdaf sadfa fsafdsafdsa fa f', NULL, '', NULL, NULL, 1),
(2, 1, '2025-03-18', '2025-03-18', NULL, 140.00, 50, '%', 80.00, '', 'Finalizada', 50.00, 65.00, 1, 10.00, 17, '', 'ffasdfdsaf', '', 'Celular', 'Acer', '303', NULL, 25.00, 0.00, 0.00, 'fdfa', '30', '', '', '', 1),
(3, 1, '2025-03-18', '2025-03-18', NULL, 20.00, 0, '%', 20.00, '', 'Finalizada', 20.00, 0.00, 1, 0.00, 17, '', '', '', 'Celular', 'Acer', '303', NULL, 0.00, 0.00, 0.00, 'fdasf afd fafasf ', '', '', 'Sim', '36', 1),
(5, 1, '2025-03-18', '2025-03-18', NULL, 100.00, 0, '%', 100.00, '', 'Entregue', 0.00, 100.00, 1, 0.00, 29, '', '', '', 'Celular', 'Acer', '303', NULL, 0.00, 0.00, 0.00, 'fdafa adfasf ', '', '', '', '', 1),
(6, 1, '2025-03-18', '2025-03-18', NULL, 50.00, 0, '%', 50.00, '', 'Entregue', 20.00, 30.00, 1, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fda fsafdsa ', '', '', '', '', 1),
(7, 1, '2025-03-18', '2025-03-18', NULL, 3.00, 0, '%', 3.00, '', 'Entregue', 3.00, 0.00, 1, 0.00, 29, '', '', '', 'Celular', 'Acer', '303', NULL, 0.00, 0.00, 0.00, 'fadfa ', '', '', '', '', 1),
(8, 1, '2025-03-18', '2025-03-18', NULL, 110.00, 0, '%', 110.00, '', 'Entregue', 0.00, 110.00, 1, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fdafasf', '', '', '', '', 1),
(9, 1, '2025-03-18', '2025-03-18', NULL, 350.00, 0, '%', 350.00, '', 'Entregue', 0.00, 350.00, 1, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fdfda', '', '', '', '', 1),
(10, 1, '2025-03-18', '2025-03-18', NULL, 100.00, 0, '%', 100.00, '', 'Entregue', 0.00, 100.00, 1, 0.00, 29, '', '', '', '19', '24', '301', NULL, 0.00, 0.00, 0.00, 'vfgfd', '', '', '', '', 1),
(11, 1, '2025-03-18', '2025-03-18', NULL, 230.00, 0, '%', 230.00, '', 'Entregue', 0.00, 230.00, 29, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fdsfada', '', '', '', '', 1),
(12, 1, '2025-03-18', '2025-03-18', NULL, 100.00, 0, '%', 100.00, '', 'Entregue', 0.00, 100.00, 29, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fdafadf', '', '', '', '', 1),
(13, 2, '2025-03-18', '2025-03-18', 3, 5200.00, 0, '%', 5200.00, '', 'Entregue', 5000.00, 200.00, 1, 0.00, 0, '', '', '', NULL, NULL, '307', 5, 0.00, NULL, 0.00, '', NULL, '', NULL, NULL, 2),
(14, 2, '2025-03-18', '2025-03-18', NULL, 0.00, 0, '%', 0.00, '', 'Aberta', 0.00, 0.00, 1, 0.00, 29, '', '', '', '26', '31', '307', NULL, 0.00, 0.00, 0.00, 'dfggdfgfddfg', '', '', '', '', 2),
(15, 2, '2025-03-18', '2025-03-18', NULL, 5600.00, 0, '%', 5600.00, '', 'Entregue', 5000.00, 600.00, 1, 0.00, 30, '', '', '', '26', '31', '307', NULL, 0.00, 0.00, 0.00, 'fdsaf', '', '', '', '', 2),
(16, 1, '2025-03-18', '2025-03-18', 5, 920.00, 0, '%', 920.00, '', 'Aberta', 20.00, 900.00, 1, 0.00, 0, '', '', '', NULL, NULL, '', 6, 0.00, NULL, 0.00, '', NULL, '', NULL, NULL, 1),
(17, 14, '2025-03-18', '2025-03-18', 3, 60.00, 0, '%', 60.00, '', 'Aberta', 20.00, 40.00, 1, 0.00, 0, '', '', '', NULL, NULL, '302', 8, 0.00, NULL, 0.00, '', NULL, '', NULL, NULL, 1),
(18, 14, '2025-05-29', '2025-05-29', NULL, 20.00, 0, '%', 20.00, '', 'Aberta', 20.00, 0.00, 1, 0.00, 29, '', 'gfdgfdgd', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fdgdfgf', '', '', 'Sim', '36', 1),
(19, 1, '2025-05-29', '2025-05-29', NULL, 20.00, 0, '%', 20.00, '', 'Aberta', 20.00, 0.00, 1, 0.00, 31, '', 'trwtwtew', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'ggregetw', '', '', 'Sim', '36', 1),
(20, 1, '2025-05-29', '2025-05-29', NULL, 90.00, 0, '%', 90.00, '', 'Entregue', 30.00, 60.00, 1, 0.00, 31, 'fdafa', 'fdafadsf', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, 'fasdfdf', '', '', '', '', 1),
(21, 14, '2025-07-16', '2025-07-16', NULL, 550.00, 5, '%', 522.50, 'fdafadf', 'Aberta', 0.00, 450.00, 1, 0.00, 0, 'fafa', 'fafaf', 'fadfadf', 'Celular', 'Acer', '303', NULL, 100.00, 0.00, 0.00, 'fdafafas', '', '1235', '', '', 1),
(22, 14, '2025-08-06', '2025-03-18', 5, 120.00, 0, '%', 120.00, '', 'Aberta', 20.00, 100.00, 1, 0.00, 0, '', '', '', NULL, NULL, '303', 7, 0.00, NULL, 0.00, '', NULL, '', NULL, NULL, 1),
(23, 14, '2025-08-19', '2025-08-19', NULL, 270.00, 0, '%', 270.00, '', 'Aberta', 20.00, 250.00, 1, 0.00, 31, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, '', '', '', '', '', 1),
(24, 14, '2025-08-19', '2025-08-19', NULL, 200.00, 0, '%', 200.00, '', 'Entregue', 20.00, 180.00, 1, 0.00, 29, '', '', '', '9', '23', '302', NULL, 0.00, 0.00, 0.00, '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_imagens`
--

CREATE TABLE `os_imagens` (
  `id` int(11) NOT NULL,
  `os` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `os_imagens`
--

INSERT INTO `os_imagens` (`id`, `os`, `foto`) VALUES
(1, 3, '18-03-2025-13-15-09-eupng.png'),
(2, 3, '18-03-2025-13-15-46-vendas_orcamentos.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `fornecedor` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `vencimento` date NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `data_lanc` date NOT NULL,
  `forma_pgto` int(11) NOT NULL,
  `frequencia` int(11) NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `referencia` varchar(30) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `multa` decimal(8,2) DEFAULT NULL,
  `juros` decimal(8,2) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `taxa` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_pgto` int(11) NOT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `residuo` varchar(5) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `caixa` int(11) DEFAULT NULL,
  `quant_recorrencia` int(11) DEFAULT NULL,
  `recorrencia_inf` varchar(5) DEFAULT NULL,
  `id_recorrencia` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `alerta` varchar(5) DEFAULT NULL,
  `hora_alerta` time DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `plano_contas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagar`
--

INSERT INTO `pagar` (`id`, `descricao`, `fornecedor`, `funcionario`, `valor`, `vencimento`, `data_pgto`, `data_lanc`, `forma_pgto`, `frequencia`, `obs`, `arquivo`, `referencia`, `id_ref`, `multa`, `juros`, `desconto`, `taxa`, `subtotal`, `usuario_lanc`, `usuario_pgto`, `pago`, `residuo`, `hora`, `hash`, `caixa`, `quant_recorrencia`, `recorrencia_inf`, `id_recorrencia`, `empresa`, `alerta`, `hora_alerta`, `quantidade`, `cliente`, `plano_contas`) VALUES
(1, 'Conta Empresarial', 0, 0, 50.00, '2025-07-15', NULL, '2025-07-15', 34, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 50.00, 1, 0, 'Não', NULL, '12:19:36', NULL, 8, 0, 'Não', NULL, 1, NULL, '08:05:00', NULL, NULL, 3),
(2, 'Conta pessoal', 0, 0, 60.00, '2025-07-15', NULL, '2025-07-15', 34, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 60.00, 1, 0, 'Não', NULL, '12:19:50', NULL, 8, 0, 'Não', NULL, 1, NULL, '08:51:00', NULL, NULL, 1),
(3, 'Conta de Luz', 0, 0, 70.00, '2025-07-15', '2025-07-15', '2025-07-15', 34, 0, '', 'sem-foto.png', 'Conta', NULL, 0.00, 0.00, 0.00, NULL, 70.00, 1, 1, 'Sim', NULL, '12:24:47', NULL, 8, 0, 'Não', NULL, 1, NULL, '08:38:00', NULL, NULL, 2),
(4, 'Devolução Venda', 0, 0, 142.20, '2025-07-15', '2025-07-15', '2025-07-15', 36, 0, NULL, 'sem-foto.png', 'Cancelamento', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '08:01:00', NULL, 0, NULL),
(5, 'Devolução Venda', 0, 0, 140.00, '2025-07-15', '2025-07-15', '2025-07-15', 36, 0, NULL, 'sem-foto.png', 'Cancelamento', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '09:37:00', NULL, 0, NULL),
(6, 'Comissão', 0, 29, 90.90, '2025-08-22', NULL, '2025-08-19', 0, 0, NULL, 'sem-foto.png', 'Comissão', 24, NULL, NULL, NULL, NULL, 90.90, 1, 0, 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '09:21:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar_sas`
--

CREATE TABLE `pagar_sas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `fornecedor` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `vencimento` date NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `data_lanc` date NOT NULL,
  `forma_pgto` int(11) NOT NULL,
  `frequencia` int(11) NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `referencia` varchar(30) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `multa` decimal(8,2) DEFAULT NULL,
  `juros` decimal(8,2) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `taxa` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_pgto` int(11) NOT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `residuo` varchar(5) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `caixa` int(11) DEFAULT NULL,
  `quant_recorrencia` int(11) DEFAULT NULL,
  `recorrencia_inf` varchar(5) DEFAULT NULL,
  `id_recorrencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagar_sas`
--

INSERT INTO `pagar_sas` (`id`, `descricao`, `fornecedor`, `funcionario`, `valor`, `vencimento`, `data_pgto`, `data_lanc`, `forma_pgto`, `frequencia`, `obs`, `arquivo`, `referencia`, `id_ref`, `multa`, `juros`, `desconto`, `taxa`, `subtotal`, `usuario_lanc`, `usuario_pgto`, `pago`, `residuo`, `hora`, `hash`, `caixa`, `quant_recorrencia`, `recorrencia_inf`, `id_recorrencia`) VALUES
(1, 'Conta', 0, 0, 50.00, '2025-02-27', NULL, '2025-02-27', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 50.00, 1, 0, 'Não', NULL, '18:05:21', '', 5, 0, 'Não', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas_site`
--

CREATE TABLE `perguntas_site` (
  `id` int(11) NOT NULL,
  `titulo_pergunta` varchar(150) DEFAULT NULL,
  `descricao_pergunta` text DEFAULT NULL,
  `empresa` int(11) NOT NULL,
  `posicao_pergunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `perguntas_site`
--

INSERT INTO `perguntas_site` (`id`, `titulo_pergunta`, `descricao_pergunta`, `empresa`, `posicao_pergunta`) VALUES
(1, 'O que é o Getor ERP SAAS?', 'O Gestor ERP SAAS, é um sistema ERP (Enterprise Resource Planning) completo, 100% online, desenvolvido para simplificar a gestão de empresas de todos os portes. Ele integra vendas, estoque, financeiro, atendimento ao cliente e muito mais em uma única plat', 0, 1),
(3, 'Como funciona a assinatura?', 'Após escolher seu plano, você será redirecionado para o processo de pagamento. Assim que confirmado, você receberá acesso imediato ao sistema com todas as funcionalidades do pl Assim que confirmado, você receberá acesso imediato ao sistema com todas as fu', 0, 2),
(4, 'Preciso instalar algum software?', 'Não! O Gestor ERP SAAS é 100% baseado na nuvem. Você só precisa de um navegador e conexão com a internet para acessar o sistema de qualquer dispositivo, seja computador, tablet ou smartphone. ', 0, 3),
(5, 'Como funciona a integração com WhatsAppp?', 'Você conecta seu WhatsApp diretamente no sistema através de um simples QR Code. Com isso, você pode realizar campanhas de marketing com envio de disparos em massa, incluindo arquivos, textos e até mesmo áudios personalizados. Além disso, tudo que é gerado', 0, 4),
(6, 'Área de Perguntasss', 'Resposta perguntas', 1, 1),
(7, 'fsdffdf', 'fdafdafaf fdf afa', 0, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos`
--

CREATE TABLE `planos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `clientes` int(11) DEFAULT NULL,
  `usuarios` int(11) DEFAULT NULL,
  `dispositivos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `planos`
--

INSERT INTO `planos` (`id`, `nome`, `valor`, `ativo`, `clientes`, `usuarios`, `dispositivos`) VALUES
(1, 'Plano Bronze', 120.00, 'Sim', 1, 1, 1),
(2, 'Plano Prata', 140.00, 'Sim', 3, 3, 2),
(3, 'Plano Ouro', 160.00, 'Sim', 7, 7, 5),
(4, 'Plano Diamante', 180.00, 'Sim', 0, 0, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos_itens`
--

CREATE TABLE `planos_itens` (
  `id` int(11) NOT NULL,
  `plano` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `planos_itens`
--

INSERT INTO `planos_itens` (`id`, `plano`, `nome`) VALUES
(9, 1, 'Vendas, Estoque e Produtos'),
(11, 1, 'Abertura de Chamados'),
(13, 1, 'Contas à Pagar e Receber'),
(15, 1, 'Gestão de RH'),
(17, 1, 'Api do Whatsapp'),
(18, 1, 'Apis de Pagamentos'),
(20, 1, 'Painel do Cliente'),
(22, 1, 'Assinatura Digital'),
(23, 2, 'Vendas, Estoque e Produtos'),
(25, 2, 'Abertura de Chamados'),
(27, 2, 'Contas à Pagar e Receber'),
(29, 2, 'Gestão de RH'),
(31, 2, 'Api do Whatsapp'),
(32, 2, 'Api de Pagamentos'),
(34, 2, 'Painel do Cliente'),
(36, 2, 'Assinatura Digital'),
(37, 2, 'Cobranças Recorrentes'),
(38, 3, 'Vendas, Estoque e Produtos'),
(40, 3, 'Abertura de Chamados'),
(41, 3, 'Vídeo Tutoriais'),
(42, 3, 'Contas à Pagar e Receber'),
(44, 3, 'Gestão de RH'),
(46, 3, 'Api do Whatsapp'),
(47, 3, 'Api de Pagamentos'),
(49, 3, 'Painel do Cliente'),
(51, 3, 'Assinatura Digital'),
(52, 3, 'Cobranças Recorrentes'),
(53, 3, 'Gestão de Contratos'),
(54, 3, 'Orçamentos'),
(55, 4, 'Vendas, Estoque e Produtos'),
(57, 4, 'Abertura de Chamados'),
(59, 4, 'Contas à Pagar e Receber'),
(61, 4, 'Gestão de RH'),
(63, 4, 'Api do Whatsapp'),
(64, 4, 'Api de Pagamentos'),
(66, 4, 'Painel do Cliente'),
(68, 4, 'Assinatura Digital'),
(69, 4, 'Cobranças Recorrentes'),
(70, 4, 'Gestão de Contratos'),
(71, 4, 'Orçamentos'),
(72, 4, 'Ordem de Serviços'),
(73, 4, 'Marketing Whatsapp'),
(74, 1, 'Limite de 1 Cliente'),
(75, 1, 'Limite de 1 Usuário'),
(76, 2, 'Limite de 3 Clientes'),
(77, 2, 'Limite de 3 Usuários'),
(80, 4, 'Clientes Ilimitados'),
(81, 4, 'Usuários Ilimitados'),
(82, 3, 'Limite de 7 Usuários'),
(83, 3, 'Limite de 7 Clientes'),
(85, 4, '10 Dispositivos Whatsapp'),
(86, 3, '5 Dispositivos Whatsapp'),
(87, 2, '2 Dispositivos Whatsapp'),
(88, 1, '1 Dispositivos Whatsapp'),
(89, 4, 'Site'),
(90, 3, 'Site'),
(91, 2, 'Site');

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos_recursos`
--

CREATE TABLE `planos_recursos` (
  `id` int(11) NOT NULL,
  `plano` int(11) DEFAULT NULL,
  `recurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `planos_recursos`
--

INSERT INTO `planos_recursos` (`id`, `plano`, `recurso`) VALUES
(1, 4, 1),
(5, 2, 3),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 4, 5),
(10, 4, 4),
(11, 4, 3),
(12, 4, 6),
(13, 4, 7),
(14, 3, 7),
(15, 2, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano_contas`
--

CREATE TABLE `plano_contas` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `plano_contas`
--

INSERT INTO `plano_contas` (`id`, `nome`, `empresa`) VALUES
(1, 'Despesas Pessoais', 1),
(2, 'Despesas Residenciais', 1),
(3, 'Despesas Empresariais', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `nivel_estoque` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `sub_categoria` varchar(50) DEFAULT NULL,
  `lucro` decimal(8,2) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `tem_estoque` varchar(5) DEFAULT NULL,
  `vendas` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `valor_lucro` decimal(8,2) DEFAULT NULL,
  `lucro_reais` decimal(8,2) DEFAULT NULL,
  `valor_promocional` decimal(8,2) DEFAULT NULL,
  `mostrar_site` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `valor_compra`, `valor_venda`, `estoque`, `foto`, `ativo`, `nivel_estoque`, `categoria`, `fornecedor`, `sub_categoria`, `lucro`, `descricao`, `tem_estoque`, `vendas`, `empresa`, `valor_lucro`, `lucro_reais`, `valor_promocional`, `mostrar_site`) VALUES
(43, '', 'Gaveta Chip ', 25.00, 30.00, 48, 'sem-foto.jpg', 'Sim', 0, 28, 0, '', NULL, NULL, 'Sim', 4, 1, NULL, NULL, NULL, NULL),
(44, '', 'A10S Película 3D Privacidade', 5.00, 30.00, -6, 'sem-foto.jpg', 'Sim', 0, 30, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(45, 'AL-A155', 'Adaptador Bluetooth C/Cabo P2', 5.00, 20.00, 2, '21-10-2023-05-51-40-download.jpg', 'Sim', 1, 46, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(46, 'ZJT-V-OTG', 'Adaptador OTG USB P/TYPE C', 3.00, 10.00, 1, '21-10-2023-05-53-10-4813845086_1_large.png', 'Sim', 0, 47, 0, '', NULL, NULL, 'Sim', 3, 1, NULL, NULL, NULL, NULL),
(47, 'A-60U', 'ADAPTADOR TIPO C PARA USB', 2.50, 10.00, 10, '21-10-2023-05-58-00-514L3rxOMvS._AC_UF1000,1000_QL80.png', 'Sim', 0, 47, 0, '', NULL, NULL, 'Sim', 114, 1, NULL, NULL, NULL, NULL),
(48, '', 'Antena WiFi', 15.00, 30.00, 2, 'sem-foto.jpg', 'Sim', 1, 48, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(49, 'le-9014', 'Cabo Automotivo 500Amp', 25.00, 50.00, 1, '21-10-2023-05-59-44-4386fafab2c443c0565e7a15f446119b.jpg', 'Sim', 0, 40, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(50, 'LE-804-3', 'Cabo Auxiliar P2 - P2 / 3M', 4.00, 12.00, 2, '21-10-2023-06-02-26-018-1111_01-d4c60ee6e18b45e72116.png', 'Sim', 0, 49, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(51, 'LE-9015,LK-U04', 'CABO DE BATERIA P/CARRO 800AMP', 30.00, 80.00, 0, '21-10-2023-06-03-03-4386fafab2c443c0565e7a15f446119b.jpg', 'Sim', 0, 40, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(52, 'BM62', 'CABO ESPECIAL CARREGA RAOIDO USB V8 1M', 15.00, 30.00, 2, '21-10-2023-06-04-02-2023-10-21_06h03_43.png', 'Sim', 0, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(53, 'BM68', 'CABO ESPECIAL CARREGA RAPIDO USB TYPE-C', 15.00, 30.00, 0, '21-10-2023-06-04-39-2023-10-21_06h03_43.png', 'Sim', 0, 38, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(54, 'H102-2', 'CABO HMASTON 1M 4.8A IPHONE', 5.50, 25.00, 8, '21-10-2023-06-06-07-2023-10-21_06h05_00.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(55, 'H102-3', 'CABO HMASTON 1M 4.8A TYPE-C', 5.50, 25.00, 10, '21-10-2023-06-07-24-2023-10-21_06h05_00.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(56, 'H102-1', 'CABO HMASTON 1M 4.8A V8', 5.50, 25.00, 9, '21-10-2023-06-08-00-2023-10-21_06h05_00.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(57, 'H136-2', 'CABO HMASTON 4.8A 2M IPHONE', 8.50, 30.00, 3, '21-10-2023-06-08-55-2023-10-21_06h08_18.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(58, 'H136-3', 'CABO HMASTON 4.8A 2M TYPE-C', 8.50, 30.00, 2, '21-10-2023-06-09-43-2023-10-21_06h08_18.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(59, 'H136-1', 'CABO HMASTON 4.8A 2M V8', 8.50, 30.00, 3, '21-10-2023-06-10-20-2023-10-21_06h08_18.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(60, 'LE-902', 'Cabo impressora 1.5m', 6.00, 15.00, 2, '21-10-2023-06-11-32-2023-10-21_06h11_03.png', 'Sim', 0, 49, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(61, 'KD305', 'CABO KAIDI 1M / USB ~ V8 ( Garantia 3mes)', 15.00, 25.00, 14, '21-10-2023-06-12-07-2023-10-21_06h11_14.png', 'Sim', 1, 38, 15, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(62, 'KD306', 'CABO KAIDI 1M / USB ~ IPHONE ( Garantia 3mes)', 7.00, 25.00, 6, '21-10-2023-06-12-38-2023-10-21_06h11_14.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(63, 'KD-TC30', 'CABO KAIDI 1M / USB~TYPE-C ( Garantia 3mes)', 8.50, 25.00, 4, '21-10-2023-06-15-16-2023-10-21_06h11_14.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(64, 'LE-5513', 'CABO P10 MACHO +P2 MACHO 3M', 5.00, 12.00, 9, '21-10-2023-06-16-20-018-1111_01-d4c60ee6e18b45e72116.png', 'Sim', 1, 49, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(65, 'CBX-ARCA30', 'CABO P2/2RCA', 3.50, 15.00, 1, '21-10-2023-06-17-24-2023-10-21_06h16_33.png', 'Sim', 1, 49, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(66, 'XC-CF-01', 'Cabo pra CPU', 7.00, 15.00, 0, '21-10-2023-06-19-46-2023-10-21_06h18_48.png', 'Sim', 1, 50, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(67, 'BM-8626', 'Cabo Premium / 1M / USB - IPHONE (BMAX)', 5.50, 25.00, 5, '21-10-2023-06-20-40-2023-10-21_06h20_06.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(68, 'BM-8627', 'Cabo Premium / 1M / USB - TYPE-C (BMAX)', 5.50, 25.00, 5, '21-10-2023-06-21-16-2023-10-21_06h20_06.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(69, 'BM-8625', 'Cabo Premium / 1M / USB V8 (B-MAX)', 5.50, 25.00, 2, '21-10-2023-06-22-28-2023-10-21_06h20_06.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(70, 'BM-8629', 'Cabo Premium / 2M / USB - IPHONE (BMAX)', 7.00, 30.00, 2, '21-10-2023-06-22-55-2023-10-21_06h20_06.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(71, 'BM-8630', 'Cabo Premium / 2M / USB - TYPE-C (BMAX)', 7.00, 30.00, 2, '21-10-2023-06-23-25-2023-10-21_06h20_06.png', 'Sim', 0, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(72, 'BM-8628', 'Cabo Premium / 2M / USB - V8 (B-MAX)', 7.00, 30.00, 2, '21-10-2023-06-23-58-2023-10-21_06h20_06.png', 'Sim', 0, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(73, '', 'CABO TURBO / V8', 30.00, 18.00, 45, '21-10-2023-06-25-27-2023-10-21_06h24_05.png', 'Sim', 5, 38, 15, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(74, '', 'CABO TURBO / TYPE-C', 20.00, 18.00, 20, '21-10-2023-06-26-12-2023-10-21_06h24_05.png', 'Sim', 5, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(75, '', 'CABO TURBO / IPHONE', 3.00, 18.00, 20, '21-10-2023-06-27-10-2023-10-21_06h24_05.png', 'Sim', 5, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(76, 'SJX04', 'Cabo Turbo Type-c Para Iphone / 1M / PD 6A ( Hmast', 8.00, 30.00, 3, '21-10-2023-06-28-01-2023-10-21_06h27_33.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(77, 'LE-847', 'Cabo TYPE-C Para TYPE-C / PD 3A / 1M ( IT.BLUE )', 5.00, 30.00, 3, '21-10-2023-06-28-59-2023-10-21_06h28_33.png', 'Sim', 1, 38, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(78, 'KP-HD009', 'CADDY HD 12,7 MM KNUP', 15.00, 30.00, 1, '21-10-2023-06-29-53-2023-10-21_06h29_39.png', 'Sim', 0, 26, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(79, 'KP-HD010', 'CADDY HD 9,5 MM KNUP', 14.00, 30.00, 2, '21-10-2023-06-30-27-2023-10-21_06h29_39.png', 'Sim', 0, 26, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(80, 'TN07', 'Caixa De Som Alto Falante Bluetooth 8W, LED RGB,Re', 55.00, 100.00, 0, '21-10-2023-06-31-21-2023-10-21_06h31_07.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(81, 'A-6036', 'CAIXA DE SOM BLUTOOTH', 27.00, 60.00, 2, '21-10-2023-06-32-50-2023-10-21_06h31_52.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(82, 'AL-1182', 'Caixa De Som Portátil Bluetooth', 25.00, 60.00, 2, '21-10-2023-06-33-18-2023-10-21_06h32_01.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(83, 'XDG-96', 'Caixa De Som Potátil Bluetooth Com LED RGB ( XTRAD', 115.00, 220.00, 1, '21-10-2023-06-34-58-2023-10-21_06h33_45.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(84, 'AL-3098', 'CAIXA DE SOM PRA COMPUTADOR', 12.00, 30.00, 2, '21-10-2023-06-35-41-2023-10-21_06h33_50.png', 'Sim', 0, 26, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(85, 'DS-12V', 'CALCULADORA', 12.00, 26.00, 2, '21-10-2023-06-37-00-2023-10-21_06h33_53.png', 'Sim', 0, 51, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(86, '837 / KA-1171', 'CALCULADORA SOLAR', 15.00, 30.00, 2, '21-10-2023-06-37-51-2023-10-21_06h33_53.png', 'Sim', 0, 51, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(87, 'SC-B2', 'Camera IP / 1080P / WIFI / Sistema YOOSEE ( IT.BLU', 55.00, 150.00, 2, '21-10-2023-06-38-59-2023-10-21_06h33_57.png', 'Sim', 0, 52, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(88, 'KP-CA127', 'CAMERA IP 3 ANTENAS ipega', 78.00, 180.00, 2, '21-10-2023-06-39-33-2023-10-21_06h34_00.png', 'Sim', 0, 52, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(89, 'SC-B13', 'CAMERA MINMEI SPEED DOME2,5', 165.00, 350.00, 2, '21-10-2023-06-40-07-2023-10-21_06h34_04.png', 'Sim', 0, 52, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(90, 'SD-171A', 'CAMPAINHA', 17.00, 40.00, 2, '21-10-2023-06-42-03-2023-10-21_06h34_08.png', 'Sim', 0, 53, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(91, '', 'Capa Para Celular A Prova D\' Água', 4.00, 15.00, 3, '21-10-2023-06-42-32-2023-10-21_06h34_12.png', 'Sim', 0, 41, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(92, 'FKT-1105', 'CARREGADOR FAM 2.1A +CABO 1M IPHONE COM ANATEL', 16.50, 50.00, 1, '21-10-2023-06-44-47-2023-10-21_06h34_16.png', 'Sim', 1, 54, 0, '', NULL, NULL, 'Sim', 3, 1, NULL, NULL, NULL, NULL),
(93, 'FKT-110C', 'CARREGADOR FAM 2.1A +CABO 1M TYPE-C COM ANATEL', 16.50, 50.00, 1, '21-10-2023-06-45-18-2023-10-21_06h34_16.png', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', 2, 1, NULL, NULL, NULL, NULL),
(94, 'FKT-1108', 'CARREGADOR FAM 2.1A +CABO 1M V8 COM ANATEL', 16.50, 50.00, 1, '21-10-2023-06-46-00-2023-10-21_06h34_16.png', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', 6, 1, NULL, NULL, NULL, NULL),
(95, 'Y45-2', 'CARREGADOR HMASTON 2USB 3.1A CABO IPHONE', 10.50, 40.00, 7, '21-10-2023-06-47-22-2023-10-21_06h46_32.png', 'Sim', 1, 54, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(96, 'Y45-3', 'CARREGADOR HMASTON 2USB 3.1A CABO TYPE-C ', 10.50, 40.00, 5, '21-10-2023-06-48-23-2023-10-21_06h46_32.png', 'Sim', 1, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(97, 'Y45-1', 'CARREGADOR HMASTON 2USB 3.1A CABO V8', 10.50, 40.00, 3, '21-10-2023-06-49-24-2023-10-21_06h46_32.png', 'Sim', 1, 54, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(98, '', 'CARREGADOR HMASTON DE CARRO 3.1A IPHONE', 15.00, 25.00, 2, '21-10-2023-06-50-26-2023-10-21_06h49_54.png', 'Sim', 0, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(99, '', 'CARREGADOR HMASTON DE CARRO 3.1A TYPE-C', 15.00, 25.00, 2, '21-10-2023-06-50-48-2023-10-21_06h49_54.png', 'Sim', 0, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(100, '', 'CARREGADOR HMASTON DE CARRO 3.1A V8', 15.00, 25.00, 2, '21-10-2023-06-51-07-2023-10-21_06h49_54.png', 'Sim', 0, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(101, 'PN951', 'CARREGADOR PORTATIL 10000mAh ( HMASTON )', 39.00, 120.00, 0, '21-10-2023-06-52-04-2023-10-21_06h49_57.png', 'Sim', 1, 55, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(102, 'PN952', 'CARREGADOR PORTATIL 5000mAh ( HMASTON )', 39.00, 80.00, 2, '21-10-2023-06-52-42-2023-10-21_06h49_57.png', 'Não', 1, 55, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(103, 'LE-U300', 'CARREGADOR UNIVERSAL', 7.00, 20.00, 3, '21-10-2023-06-56-03-2023-10-21_06h55_44.png', 'Sim', 1, 36, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(104, 'LE-527', 'Carregador Veicular 3.4A / 2USB / LELONG', 8.00, 40.00, 0, '21-10-2023-06-56-54-carregadorveicularrr.png', 'Sim', 0, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(105, 'LE-528', 'Carregador Veicular Com Cabo IPHONE ( IT.BLUE )', 12.00, 40.00, 1, '21-10-2023-06-57-43-2023-10-21_06h54_44.png', 'Sim', 1, 37, 0, '', NULL, NULL, 'Sim', 2, 1, NULL, NULL, NULL, NULL),
(106, 'LE-525', 'Carregador Veicular Com Cabo V8 ( IT.BLUE )', 12.00, 40.00, 2, '21-10-2023-06-58-29-2023-10-21_06h54_44.png', 'Sim', 1, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(107, 'AL-MO-16', 'CARTAO DE MEMORIA 16GB', 18.00, 40.00, 3, '21-10-2023-06-59-06-16-removebg-preview.png', 'Sim', 1, 34, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(108, 'AL-MO-32', 'CARTAO DE MEMORIA 32GB', 22.00, 50.00, 0, '21-10-2023-06-59-49-031f984e-6b9a-4702-a87f-1e71a96a50b6.png', 'Sim', 1, 34, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(109, 'HM-M64', 'CARTAO DE MEMORIA 64GB', 38.00, 80.00, 1, '21-10-2023-07-00-35-159686-removebg-preview.png', 'Sim', 1, 34, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(110, 'AL-MO-8', 'CARTAO DE MEMORIA 8GB', 15.00, 30.00, 3, '21-10-2023-07-02-10-2023-10-21_07h01_54.png', 'Sim', 1, 34, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(111, 'BM755', 'CASE HD 2.5 USB 2.0', 16.00, 30.00, 2, '21-10-2023-07-04-58-2023-10-21_07h03_57.png', 'Sim', 0, 56, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(112, 'LY19', 'Fone Bluetooth HMASTON', 29.00, 70.00, 2, '21-10-2023-07-07-42-2023-10-21_07h05_33.png', 'Sim', 0, 32, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(113, 'FO15', 'Fone de ouvido PMCELL', 8.50, 20.00, 8, '21-10-2023-07-08-14-2023-10-21_07h05_36.png', 'Sim', 1, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(114, 'LY-101PRO', 'Fone De Ouvido Bluetooth 5.3 Bateria Até 6 horas (', 28.00, 80.00, 1, '21-10-2023-07-08-45-2023-10-21_07h05_40.png', 'Sim', 0, 32, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(115, 'EJ-39', 'FONE DE OUVIDO COM MICROFONE HMASTON MOD IPHON', 5.00, 20.00, 13, '21-10-2023-07-09-21-2023-10-21_07h05_43.png', 'Sim', 2, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(116, 'EJ-S8', 'FONE DE OUVIDO COM FIO COM MICROFONE HMASTON', 5.00, 20.00, 12, '21-10-2023-07-09-55-2023-10-21_07h05_47.png', 'Sim', 2, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(117, 'LE-2406', 'Fone De Ouvido Gamer Bluetooth 5.0 Com LED / Conec', 49.00, 120.00, 2, '21-10-2023-07-10-35-2023-10-21_07h05_51.png', 'Sim', 0, 32, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(119, 'KP-455A', 'Fone De Ouvido Gamer Com LED Para PC, PS4, X-ONE ,', 82.00, 160.00, 1, '21-10-2023-07-12-31-2023-10-21_07h05_54.png', 'Sim', 0, 33, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(120, 'MAX-0201', 'FONE DE OUVIDO. LELONG', 7.00, 22.00, 8, '21-10-2023-07-15-50-2023-10-21_07h05_59.png', 'Sim', 1, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(121, 'A-302', 'FONE GAME', 29.00, 70.00, 1, '21-10-2023-07-16-19-2023-10-21_07h06_03.png', 'Sim', 0, 33, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(122, 'FO11', 'Fone PMCELL', 5.00, 18.00, 19, '21-10-2023-07-16-59-2023-10-21_07h06_06.png', 'Sim', 5, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(123, 'AL-X7', 'Fone Pra Iphone .Bluetooth . EAR X', 10.00, 30.00, 1, '21-10-2023-07-17-31-2023-10-21_07h06_09.png', 'Sim', 0, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(124, 'CB16', 'FONTE PARA IPHONE 12 HMASTON 20W', 16.00, 30.00, 3, '21-10-2023-07-18-38-2023-10-21_07h06_14.png', 'Sim', 1, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(125, 'KP-517', 'FONTE ATX 200W', 58.00, 100.00, 2, '21-10-2023-07-21-28-2023-10-21_07h06_18.png', 'Sim', 0, 26, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(126, 'Y05', 'Fonte Carregador 2 USB , 3.1A / Hmaston', 8.50, 25.00, 4, '21-10-2023-07-22-23-2023-10-21_07h06_21.png', 'Sim', 1, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(127, 'Y08-4', 'Fonte Carregador Turbo 30W / SAÍDA TYPE-C PD30W (H', 16.00, 30.00, 2, '21-10-2023-07-22-58-2023-10-21_07h06_25.png', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(128, 'KP-526', 'FONTE PARA PC 350W', 78.00, 120.00, 1, '21-10-2023-07-24-32-2023-10-21_07h23_52.png', 'Sim', 0, 26, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(129, '', 'Mini 2 JBL Caixa De Som Portátil Bluetooth / Com A', 32.00, 65.00, 1, '21-10-2023-07-25-49-2023-10-21_07h23_56.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(130, 'S15-1 V8', 'KIT DE CARREGADOR DE CARRO 2USB CABO V8 3.4A', 13.00, 40.00, 2, '21-10-2023-07-27-24-2023-10-21_07h26_31.png', 'Sim', 0, 37, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(131, 'LEY-214', 'KIT TECLADO COM MOUSE / COM FIO / LEHMOX', 26.00, 60.00, 2, '21-10-2023-07-32-16-Untitled.png', 'Sim', 1, 43, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(132, 'DL-120', 'MAQUINA DE CORTA CABELO', 23.00, 80.00, 1, '21-10-2023-07-33-59-2023-10-21_07h26_38.png', 'Sim', 0, 57, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(133, 'KA-8502', 'Mini Caixa De Som Com Bluetooth', 20.00, 40.00, 2, '21-10-2023-07-34-41-2023-10-21_07h26_41.png', 'Sim', 1, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(134, 'KA-887', 'Mini Caixa De Som Portátil Bluetooth', 15.00, 30.00, 5, '21-10-2023-07-35-16-2023-10-21_07h26_44.png', 'Sim', 0, 22, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(135, 'BM8400', 'Mini Lanterna Recarregavel / Com ZOOM / B-MAX', 12.00, 30.00, 2, '21-10-2023-07-36-05-2023-10-21_07h26_47.png', 'Sim', 0, 58, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(136, 'MS01', 'Mouse COM FIO', 6.00, 15.00, 6, '21-10-2023-07-36-42-2023-10-21_07h26_51.png', 'Sim', 1, 42, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(137, 'AG-280', 'MOUSE COM FIO LTOMEX', 12.00, 25.00, 3, '21-10-2023-07-37-13-2023-10-21_07h26_54.png', 'Sim', 0, 42, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(138, 'KP-MU003', 'MOUSE LED COM FIO', 8.00, 25.00, 2, '21-10-2023-07-37-52-2023-10-21_07h26_58.png', 'Sim', 0, 42, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(139, 'M-IN2', 'MOUSE PAD PROMOCAO', 2.50, 10.00, 2, '21-10-2023-07-39-20-2023-10-21_07h27_01.png', 'Sim', 0, 59, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(140, 'GZM386', 'MOUSE SEM FIO KNUP', 16.00, 35.00, 2, '21-10-2023-07-40-45-2023-10-21_07h27_04.png', 'Sim', 0, 42, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(141, 'SHA-08', 'Mouse Sem Fio / Hmaston', 15.00, 35.00, 2, '21-10-2023-07-42-41-2023-10-21_07h42_26.png', 'Sim', 0, 42, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(142, 'AL-8U-32', 'PENDRIVE USB / 32GB', 21.00, 45.00, 2, '21-10-2023-07-43-39-2023-10-21_07h42_54.png', 'Sim', 1, 35, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(143, 'AL-8U-4', 'PENDRIVE USB / 4GB', 11.00, 22.00, 2, '21-10-2023-07-44-15-2023-10-21_07h42_54.png', 'Sim', 1, 35, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(144, 'AL-8U-8', 'PENDRIVE USB / 8GB', 14.00, 32.00, 3, '21-10-2023-07-44-53-2023-10-21_07h42_54.png', 'Sim', 1, 35, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(145, 'KP-BT2032', 'PILHA BOTAO DE LITIO 2032', 5.00, 10.00, 15, '21-10-2023-07-46-51-2023-10-21_07h45_15.png', 'Sim', 3, 60, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(146, '', 'Ring light 12 pol com tripe 2.1M BRANCO', 58.00, 120.00, 0, '21-10-2023-07-48-17-2023-10-21_07h47_34.png', 'Sim', 0, 61, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(147, 'CJ20', 'Suporte Veicular Universal / Hmaston', 6.00, 12.00, 1, '21-10-2023-07-50-33-2023-10-21_07h50_02.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(148, 'KP-SP029', 'SUPORTE DE CELULAR knup', 7.00, 28.00, 1, '21-10-2023-07-51-57-2023-10-21_07h50_06.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(149, 'BMG-16', 'Suporte De Celular / Para Cama , Mesa / Material D', 15.00, 30.00, 2, '21-10-2023-07-52-51-2023-10-21_07h50_10.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(150, 'BM-T01', 'Teclado Pra Computador / USB Com Fio / BMAX', 22.00, 44.00, 1, '21-10-2023-07-53-20-Untitled.png', 'Sim', 1, 43, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(151, 'CJ-350', 'SUPORTE PARA CAROO H\'MASTON', 5.00, 12.00, 2, '21-10-2023-07-54-24-2023-10-21_07h50_02.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(152, 'LE-055', 'Suporte para Moto Lelong', 12.00, 25.00, 1, '21-10-2023-07-56-12-2023-10-21_07h56_00.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(153, 'KA-5088', 'Carregador por Indução', 30.00, 70.00, 1, '21-10-2023-07-57-26-2023-10-21_07h57_09.png', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(154, 'LE-023', 'Supoert para Celular IT-BLUE', 12.00, 28.00, 1, '21-10-2023-08-16-00-suporte_carro_automotivo_veicula.png', 'Sim', 0, 62, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(155, 'LT-SK003', 'ADAPTADOR PLACA DE SOM', 8.00, 18.00, 0, '21-10-2023-08-18-10-Adaptador-Audio-Placa-De-Som-USB.png', 'Sim', 0, 47, 0, '', NULL, NULL, 'Sim', 46, 1, NULL, NULL, NULL, NULL),
(156, '', 'Car Receiver ', 8.00, 25.00, 1, '21-10-2023-08-19-33-4756481326_1.webp', 'Sim', 0, 46, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(157, '1234', 'Adaptador Type-c Para HDMI', 15.00, 25.00, 3, '21-10-2023-08-21-10-file.png', 'Sim', 0, 47, 0, '', NULL, '', 'Sim', 19, 1, 0.00, 0.00, 0.00, NULL),
(158, '123', 'Adaptador USB LAN', 8.00, 25.00, 36, '21-10-2023-08-22-09-mayber.png', 'Sim', 0, 47, 0, '', NULL, '', 'Sim', 48, 1, 0.00, 0.00, 0.00, NULL),
(159, '', 'Kit Bateria e o cabo para carregar - Xbox One', 15.00, 40.00, 2, '21-10-2023-08-23-58-51FHDmtA28L._AC_UF1000,1000_QL80.png', 'Sim', 0, 39, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(160, 'KA-393-YT', 'Carregador typo-C Original', 8.00, 30.00, 2, '21-10-2023-08-27-01-18-04-2023-19-57-09-CARREGADOR-1.jpg', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(161, '', 'Carregador Iphone Typo C e Iphone', 16.00, 50.00, 1, '21-10-2023-08-28-26-D_NQ_NP_997343-MLB51716241663_09.png', 'Sim', 0, 54, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(162, '', 'fone de ouvido stereo headphone', 4.00, 12.00, 1, '21-10-2023-08-30-01-49062c31eee20cc14f5d3c0164be5e0e.png', 'Sim', 0, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(163, '', 'Fone Sasmung Original', 8.00, 30.00, 4, '21-10-2023-08-31-30-76134139-320-320.png', 'Sim', 0, 31, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(164, '12345', 'Adaptador V8 Para Typo C', 4.00, 5.00, 42, '21-10-2023-08-33-16-a0451593e537905c49fda4e6a0a322a2.png', 'Sim', 0, 47, 0, '', NULL, 'Perfeito para quem usa headset com microfone separado. O adaptador P2 para P3 transforma a conexão de áudio estéreo (fone + microfone) em uma única entrada, compatível com notebooks, consoles e celulares com entrada única. Som limpo e sem ruídos!', 'Sim', 6, 1, 0.00, 0.00, 0.00, ''),
(165, '555', 'Adaptador P2 Para Iphone', 4.00, 10.00, 26, '21-10-2023-08-34-23-7174a035ca1d655efda6e5f8dd1d1ea0.png', 'Sim', 0, 47, 0, '', NULL, 'Compatível com mais de 150 países, o adaptador universal de tomada é o item indispensável para suas viagens. Permite conectar dispositivos com diferentes padrões de plugues em tomadas internacionais com segurança e praticidade. Compacto e leve, cabe em qu', 'Sim', 115, 1, 0.00, 0.00, 0.00, 'Sim'),
(166, '', 'Cabo OTG com Cabo', 3.00, 10.00, 50, '21-10-2023-08-35-36-qwsdqwsws.png', 'Não', 0, 47, 0, '', NULL, 'Conecte seu notebook ou PC a uma TV, monitor ou projetor com facilidade. Esse adaptador USB para HDMI transmite vídeo e áudio em alta definição (até 1080p), ideal para apresentações, vídeos ou ampliar sua área de trabalho. Compacto e fácil de usar, basta ', 'Sim', NULL, 1, 0.00, 0.00, 0.00, 'Sim'),
(167, '', 'Cabo P2 P10', 5.00, 12.00, 5, '21-10-2023-08-39-08-180_cabo_p2_x_p10_3_metros_3m_es.png', 'Sim', 0, 49, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(168, '', 'Cabo USB MAcho e Fêmea', 5.00, 15.00, 1, '21-10-2023-08-40-26-cabo_extensor_usb_de_1_5_metros.png', 'Sim', 0, 49, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(169, '', 'Cabo Y Vga Duplica Sinal 1 Entrada M x 2 Saídas F', 8.00, 15.00, 1, '21-10-2023-08-41-50-3971293328_1_large.png', 'Sim', 0, 50, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(170, '', 'Cabo VGA', 8.00, 20.00, 1, '21-10-2023-08-43-18-cabo-rgb-para-monitor-180-metros.png', 'Sim', 0, 50, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(171, '', 'iphone 12 Película 3D Privcidade', 5.00, 30.00, 3, '21-10-2023-09-37-44-c154390b618a808d7192264fe1d7acc8.webp', 'Sim', 0, 30, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(172, '', 'Iphone 12 Película 3D', 5.00, 25.00, 2, '21-10-2023-09-47-51-pelicula-de-vidro-3d---escolher-modelo-com-vendedor-no-whatsapp-pkm1cpfz87.webp', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(173, '', 'A30 Película 3D', 15.00, 25.00, 14, '21-10-2023-10-02-32-18-04-2023-19-51-13-PELICULA.jpg', 'Sim', 1, 29, 15, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(174, '', 'IPhone 11/XR 3D', 0.00, 25.00, 10, '23-10-2023-07-26-13-752fbb9b-95cb-453a-adbc-efc07f75844a.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(175, '', 'IPhone 12 / 12 Pro 3D', 0.00, 25.00, 10, '23-10-2023-07-26-52-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(176, '', 'IPhone 6/6S/7/8 Película 3D', 0.00, 25.00, 50, '23-10-2023-07-44-24-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(177, '', 'IPhone 6 Plus/6S Plus/7 Plus/8 Plus Película 3D', 0.00, 25.00, 50, '23-10-2023-07-46-18-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(178, '', 'IPhone X/XS/11 Pro Película 3D', 0.00, 25.00, 50, '23-10-2023-07-46-59-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(179, '', 'Cabo de Rede', 2.00, 10.00, 4, '23-10-2023-07-48-33-10666948397345f368f9b888700.73695966.1597411227_l.png', 'Sim', 0, 63, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(180, '', 'Iphone XS Max/11 Pro max Película 3D', 0.00, 25.00, 50, '23-10-2023-07-49-11-752fbb9b-95cb-453a-adbc-efc07f75844a.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(181, '', 'A11/M11 Pléicula 3D', 0.00, 25.00, 50, '23-10-2023-07-49-40-752fbb9b-95cb-453a-adbc-efc07f75844a.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(182, '', 'A01 / M01 Pelícila 3D', 30.00, 25.00, 52, '23-10-2023-07-50-24-752fbb9b-95cb-453a-adbc-efc07f75844a.png', 'Sim', 0, 29, 3, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(183, '', 'A02S/A03S Pelícila 3D', 0.00, 25.00, 50, '23-10-2023-07-50-48-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(184, '', 'A12/M12 Pelícila 3D', 0.00, 25.00, 50, '23-10-2023-07-51-20-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(185, '', 'A10/10S/M10 Pleícula 3D', 24.00, 25.00, 55, '23-10-2023-07-52-46-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(186, '', 'A20 / A50 / A50S / A30S Película 3D', 0.00, 25.00, 1, '23-10-2023-07-53-10-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(187, '', 'A21 / A21S Película 3D', 0.00, 25.00, -1, '23-10-2023-07-53-36-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(188, '', 'M51 / M62 Película 3D', 0.00, 25.00, 50, '23-10-2023-07-54-11-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(192, '', 'Moto G8 Play/One Película 3D', 0.00, 25.00, 50, '23-10-2023-07-56-30-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(193, '', 'MI 9T/ 9 Pro Película 3D', 0.00, 25.00, 50, '23-10-2023-07-57-48-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(194, '', 'Xiaomi Note 10/10 Pro Máx 10S Película 3D', 0.00, 25.00, 50, '23-10-2023-07-58-40-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(199, '', 'MOTO E20/E30/E40/E22/E22S/E32/Z2 PLAY/ Z3 PLAY Pel', 0.00, 25.00, 50, '23-10-2023-08-01-12-3d.png', 'Sim', 0, 29, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(200, '', 'Capinha j7 Prime', 2.50, 15.00, 3, '23-10-2023-18-40-18-capa_tpu_borda_anti_impacto_ipho.png', 'Sim', 0, 41, 0, '17', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(201, '', 'Transferenica DeDados de aparelho', 0.00, 20.00, 0, '23-10-2023-19-01-37-serviços2.png', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(202, '', 'Criar Conta Facebook', 0.00, 10.00, 0, '24-10-2023-09-25-05-facebook-logo-blue-circle-large-transparent-png.png', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(203, '', 'Criar Conta Whatsapp', 0.00, 10.00, 0, '24-10-2023-09-25-36-Sem-título.jpg', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(204, '', 'Criar Conta Instagram', 0.00, 10.00, 0, '24-10-2023-09-26-17-logo-instagram-png-fundo-transparente.webp', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(205, '', 'Capinha Redmi 9A / 9', 5.00, 15.00, 1, 'sem-foto.jpg', 'Sim', 0, 41, 0, '17', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(206, '', 'Criar Conta Gmail', 0.00, 10.00, 0, '18-01-2024-11-05-18-gogle.png', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(207, '', 'Capinha Redmi Note 8 Amarela', 5.00, 30.00, 1, 'sem-foto.jpg', 'Sim', 0, 41, 0, '4', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(208, '', 'Capinha Redmi Note 8 Trasparente', 2.50, 15.00, 5, 'sem-foto.jpg', 'Sim', 0, 41, 0, '26', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(209, '', 'DVR 4 Canais INtelbras', 0.00, 290.00, 3, 'sem-foto.jpg', 'Sim', 0, 65, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(210, '', 'DVR 8 Canais Intelbras', 0.00, 450.00, 3, 'sem-foto.jpg', 'Sim', 0, 65, 0, '28', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(211, '', 'DVR 16 Canais Intelbras ', 0.00, 590.00, 9, 'sem-foto.jpg', 'Sim', 0, 65, 0, '28', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(212, '', 'Câmera Bullet Intelbras 720P', 0.00, 120.00, 10, 'sem-foto.jpg', 'Sim', 0, 52, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(213, '', 'Câmera  Dome 720P Intelbras', 0.00, 90.00, 7, 'sem-foto.jpg', 'Sim', 0, 52, 0, '', NULL, NULL, 'Sim', NULL, 1, NULL, NULL, NULL, NULL),
(214, '', 'Conector P4 Alimentação', 0.00, 3.00, 40, 'sem-foto.jpg', 'Sim', 0, 66, 0, '', NULL, NULL, 'Sim', 1, 1, NULL, NULL, NULL, NULL),
(226, '', 'Remoção de vírus (Celular)', 0.00, 20.00, 0, '22-02-2024-10-27-33-vírus.png', 'Sim', 0, 64, 0, '', NULL, NULL, 'Não', NULL, 1, NULL, NULL, NULL, NULL),
(227, '0000', 'teste \"', 0.00, 50.00, 0, 'sem-foto.jpg', 'Sim', 0, 126, 0, '', NULL, NULL, 'Sim', 0, 1, NULL, NULL, NULL, NULL),
(228, '0156454545', 'Teste', 0.00, 0.00, 3, '17-03-2025-17-02-49-eupng.png', 'Sim', 0, 126, 0, '38', NULL, '', 'Sim', NULL, 1, 0.00, 0.00, 0.00, NULL),
(230, '0515451545', 'Produto Teste', 50.00, 5000.00, 198, 'sem-foto.jpg', 'Sim', 10, 130, 0, '40', NULL, '', 'Sim', 2, 2, 0.00, 0.00, 0.00, NULL),
(231, '123', 'Teste', 25.00, 3125.00, 99, 'sem-foto.jpg', 'Sim', 0, 129, 0, '', NULL, '', 'Sim', 0, 2, 25.00, 0.00, 0.00, NULL),
(232, '12345', 'fdasfasfadf', 20.00, 2200.00, 0, 'sem-foto.jpg', 'Sim', 0, 129, 0, '', NULL, '', 'Sim', NULL, 2, 10.00, 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_orc`
--

CREATE TABLE `produtos_orc` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `os` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos_orc`
--

INSERT INTO `produtos_orc` (`id`, `produto`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`) VALUES
(1, 43, 1, 1, 2, 40.00, 80.00, NULL),
(2, 44, 1, 1, 1, 20.00, 20.00, NULL),
(4, 43, 2, 1, 1, 30.00, 30.00, NULL),
(5, 45, 2, 1, 1, 20.00, 20.00, NULL),
(6, 43, 3, 1, 1, 30.00, 30.00, NULL),
(7, 44, 3, 1, 1, 30.00, 30.00, NULL),
(8, 43, 4, 1, 1, 30.00, 30.00, NULL),
(9, 228, NULL, 1, 2, 25.00, 50.00, 2),
(10, 226, NULL, 1, 1, 20.00, 20.00, 3),
(11, 226, NULL, 1, 1, 20.00, 20.00, 4),
(13, 226, NULL, 1, 1, 20.00, 20.00, 6),
(14, 214, NULL, 1, 1, 3.00, 3.00, 7),
(15, 230, 5, 1, 1, 5000.00, 5000.00, NULL),
(16, 230, NULL, 1, 1, 5000.00, 5000.00, 15),
(17, 45, 6, 1, 1, 20.00, 20.00, NULL),
(18, 45, 7, 1, 1, 20.00, 20.00, NULL),
(19, 45, 8, 1, 1, 20.00, 20.00, NULL),
(21, 165, NULL, 1, 2, 10.00, 20.00, 18),
(22, 165, NULL, 1, 2, 10.00, 20.00, 19),
(23, 165, NULL, 1, 3, 10.00, 30.00, 20),
(26, 165, 9, 1, 4, 10.00, 40.00, NULL),
(27, 43, 10, 1, 1, 30.00, 30.00, NULL),
(28, 43, 11, 1, 1, 30.00, 30.00, NULL),
(29, 228, NULL, 1, 1, 0.00, 0.00, 21),
(30, 43, 12, 1, 1, 30.00, 30.00, NULL),
(31, 44, 13, 1, 1, 30.00, 30.00, NULL),
(32, 43, 14, 1, 1, 30.00, 30.00, NULL),
(33, 226, NULL, 1, 1, 20.00, 20.00, 23),
(34, 226, NULL, 1, 1, 20.00, 20.00, 24);

-- --------------------------------------------------------

--
-- Estrutura para tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `forma_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `referencia` varchar(30) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `multa` decimal(8,2) DEFAULT NULL,
  `juros` decimal(8,2) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `taxa` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `residuo` varchar(5) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `caixa` int(11) DEFAULT NULL,
  `tipo_chave` varchar(50) DEFAULT NULL,
  `acessar_painel` varchar(5) DEFAULT NULL,
  `quant_recorrencia` int(11) DEFAULT NULL,
  `id_recorrencia` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `ref_pix` varchar(100) DEFAULT NULL,
  `alerta` varchar(5) DEFAULT NULL,
  `hora_alerta` time DEFAULT NULL,
  `data_alerta` date DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `recorrencia` varchar(5) DEFAULT NULL,
  `parcela_sem_juros` decimal(10,2) DEFAULT NULL,
  `troco` decimal(9,2) DEFAULT NULL,
  `garantia_venda` varchar(20) DEFAULT NULL,
  `tipo_desconto` varchar(10) DEFAULT NULL,
  `total_venda` decimal(10,2) DEFAULT NULL,
  `valor_restante` decimal(10,2) DEFAULT NULL,
  `forma_pgto_restante` int(11) DEFAULT NULL,
  `data_restante` date DEFAULT NULL,
  `cancelada` varchar(25) DEFAULT NULL,
  `hora_alerta2` time DEFAULT NULL,
  `data_alerta2` date DEFAULT NULL,
  `dispositivo` varchar(35) DEFAULT NULL,
  `valor_custo` decimal(10,2) DEFAULT NULL,
  `data_assinatura` date DEFAULT NULL,
  `api_pagamento_conta` varchar(50) DEFAULT NULL,
  `pgtos_aceitaveis` varchar(100) DEFAULT NULL,
  `taxa_cartao_api_receber` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `receber`
--

INSERT INTO `receber` (`id`, `descricao`, `cliente`, `valor`, `vencimento`, `data_pgto`, `data_lanc`, `forma_pgto`, `frequencia`, `obs`, `arquivo`, `referencia`, `id_ref`, `multa`, `juros`, `desconto`, `taxa`, `subtotal`, `usuario_lanc`, `usuario_pgto`, `pago`, `residuo`, `hora`, `hash`, `caixa`, `tipo_chave`, `acessar_painel`, `quant_recorrencia`, `id_recorrencia`, `empresa`, `ref_pix`, `alerta`, `hora_alerta`, `data_alerta`, `parcela`, `recorrencia`, `parcela_sem_juros`, `troco`, `garantia_venda`, `tipo_desconto`, `total_venda`, `valor_restante`, `forma_pgto_restante`, `data_restante`, `cancelada`, `hora_alerta2`, `data_alerta2`, `dispositivo`, `valor_custo`, `data_assinatura`, `api_pagamento_conta`, `pgtos_aceitaveis`, `taxa_cartao_api_receber`) VALUES
(1, 'Venda - Parcela 1/5', 14, 5.00, '2025-08-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 5.00, 1, NULL, 'Não', NULL, '19:33:14', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:55:00', NULL, 1, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL),
(2, 'Venda - Parcela 2/5', 14, 5.00, '2025-09-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 5.00, 1, NULL, 'Não', NULL, '19:33:14', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:55:00', NULL, 2, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL),
(3, 'Venda - Parcela 3/5', 14, 5.00, '2025-10-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 5.00, 1, NULL, 'Não', NULL, '19:33:14', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:55:00', NULL, 3, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL),
(4, 'Venda - Parcela 4/5', 14, 5.00, '2025-11-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 5.00, 1, NULL, 'Não', NULL, '19:33:14', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:55:00', NULL, 4, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL),
(5, 'Venda - Parcela 5/5', 14, 5.00, '2025-12-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 5.00, 1, NULL, 'Não', NULL, '19:33:14', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:55:00', NULL, 5, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL),
(6, 'Nova Venda', 14, 25.00, '2025-08-08', '2025-08-08', '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 25.00, 1, 1, 'Sim', NULL, '19:49:13', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:42:00', NULL, NULL, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.00, NULL, NULL, NULL, NULL),
(7, 'Nova Venda', 1, 10.00, '2025-08-08', '2025-08-08', '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 25.00, 1, 1, 'Sim', NULL, '19:49:25', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:35:00', NULL, NULL, NULL, NULL, 0.00, '', 'reais', 25.00, 15.00, 35, '2025-08-08', NULL, NULL, NULL, NULL, 15.00, NULL, NULL, NULL, NULL),
(8, 'Nova Venda (Restante)', 1, 15.00, '2025-08-08', '2025-08-08', '2025-08-08', 35, NULL, NULL, 'sem-foto.png', 'Venda', 7, NULL, NULL, 0.00, NULL, 25.00, 1, 1, 'Sim', NULL, '19:49:25', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:35:00', NULL, NULL, NULL, NULL, 0.00, '', 'reais', 25.00, 10.00, 35, '2025-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Nova Venda', 14, 25.00, '2025-08-15', '0000-00-00', '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 25.00, 1, 0, 'Não', NULL, '19:55:09', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:31:00', NULL, NULL, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.00, NULL, NULL, NULL, NULL),
(10, 'Venda - Parcela 1/3', 14, 16.67, '2025-08-08', NULL, '2025-08-08', 44, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.67, 1, NULL, 'Não', NULL, '19:56:39', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:21:00', NULL, 1, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(11, 'Venda - Parcela 2/3', 14, 16.67, '2025-09-08', NULL, '2025-08-08', 44, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.67, 1, NULL, 'Não', NULL, '19:56:39', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:21:00', NULL, 2, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(12, 'Venda - Parcela 3/3', 14, 16.67, '2025-10-08', NULL, '2025-08-08', 44, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.67, 1, NULL, 'Não', NULL, '19:56:39', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:21:00', NULL, 3, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(13, 'Venda - Parcela 1/3', 14, 16.66, '2025-08-08', NULL, '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.66, 1, NULL, 'Não', NULL, '19:59:23', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:42:00', NULL, 1, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(14, 'Venda - Parcela 2/3', 14, 16.66, '2025-09-08', NULL, '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.66, 1, NULL, 'Não', NULL, '19:59:23', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:42:00', NULL, 2, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(15, 'Venda - Parcela 3/3', 14, 16.68, '2025-10-08', NULL, '2025-08-08', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.68, 1, NULL, 'Não', NULL, '19:59:23', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:42:00', NULL, 3, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL),
(16, 'Venda - Parcela 1/2', 14, 12.50, '2025-08-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 12.50, 1, NULL, 'Não', NULL, '20:02:36', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:15:00', NULL, 1, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.50, NULL, NULL, NULL, NULL),
(17, 'Venda - Parcela 2/2', 14, 12.50, '2025-09-08', NULL, '2025-08-08', 34, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 12.50, 1, NULL, 'Não', NULL, '20:02:36', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:15:00', NULL, 2, NULL, NULL, 0.00, '', 'reais', 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.50, NULL, NULL, NULL, NULL),
(19, 'Conta 100 - Parcela 1', 14, 50.00, '2025-08-19', '2025-08-19', '2025-08-19', 34, 0, NULL, 'sem-foto.png', 'Conta', 0, 0.00, 0.00, 0.00, 0.00, 50.00, 1, 1, 'Sim', NULL, '13:21:26', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 20.00),
(20, 'Conta 100 - Parcela 2', 14, 50.00, '2025-09-19', NULL, '2025-08-19', 34, 0, NULL, 'sem-foto.png', 'Conta', 0, NULL, NULL, NULL, NULL, 50.00, 1, NULL, 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 20.00),
(21, 'Teste', 14, 5.00, '2025-08-19', '2025-08-19', '2025-08-19', 34, 1, '', 'sem-foto.png', 'Conta', NULL, 0.00, 0.00, 0.00, 0.00, 5.00, 1, 1, 'Sim', NULL, '13:21:54', NULL, 8, NULL, NULL, 0, NULL, 1, NULL, NULL, '08:57:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', 15.00),
(22, 'Teste', 14, 5.00, '2025-08-20', NULL, '2025-08-19', 34, 1, NULL, 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Não', NULL, '13:21:54', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '08:29:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', 15.00),
(23, 'Cobranca teste (1)', 14, 300.00, '2025-08-20', '2025-08-19', '2025-08-19', 36, 1, NULL, 'sem-foto.png', 'Cobrança', 21, NULL, NULL, NULL, NULL, 300.00, 1, 1, 'Sim', NULL, '13:34:51', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '10:43:00', NULL, 1, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', 50.00),
(24, 'Cobranca teste (1)', 14, 300.00, '2025-08-21', NULL, '2025-08-19', NULL, 1, NULL, NULL, 'Cobrança', 21, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Não', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '122926398952', NULL, '08:18:00', NULL, 2, 'Sim', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', 50.00),
(25, 'Conta 120 ', 14, 120.00, '2025-08-19', NULL, '2025-08-19', 34, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 120.00, 1, 0, 'Não', NULL, '14:07:42', NULL, 8, NULL, NULL, 0, NULL, 1, '122399019997', NULL, '09:27:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', 0.00),
(26, 'Conta tessst', 0, 65.00, '2025-08-19', NULL, '2025-08-19', 34, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 65.00, 1, 0, 'Não', NULL, '15:45:09', NULL, 8, NULL, NULL, 0, NULL, 1, '122932061704', NULL, '10:48:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Mercado Pago', 'Pix', 10.50),
(27, 'Novo Serviço', 14, 200.00, '2025-08-19', '2025-08-19', '2025-08-19', 0, NULL, NULL, 'sem-foto.png', 'Serviço', 24, NULL, NULL, NULL, NULL, NULL, 1, 1, 'Sim', NULL, '19:01:30', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:21:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL),
(28, 'Venda - Parcela 1/3', 14, 16.66, '2025-08-19', NULL, '2025-08-19', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.66, 1, NULL, 'Não', NULL, '20:35:24', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:19:00', NULL, 1, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.66, NULL, NULL, NULL, NULL),
(29, 'Venda - Parcela 2/3', 14, 16.66, '2025-09-19', NULL, '2025-08-19', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.66, 1, NULL, 'Não', NULL, '20:35:24', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:19:00', NULL, 2, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.66, NULL, NULL, NULL, NULL),
(30, 'Venda - Parcela 3/3', 14, 16.68, '2025-10-19', NULL, '2025-08-19', 36, NULL, NULL, 'sem-foto.png', 'Venda', NULL, NULL, NULL, 0.00, NULL, 16.68, 1, NULL, 'Não', NULL, '20:35:24', NULL, 8, NULL, NULL, NULL, NULL, 1, NULL, NULL, '09:19:00', NULL, 3, NULL, NULL, 0.00, '', 'reais', 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.68, NULL, NULL, NULL, NULL),
(31, 'Conta Teste', 0, 200.00, '2025-08-19', NULL, '2025-08-19', 34, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 200.00, 1, 0, 'Não', NULL, '20:37:54', NULL, 8, NULL, NULL, 0, NULL, 1, 'pay_dvnga8247h3o0tr0', NULL, '10:32:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Asaas', '', 10.50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `receber_sas`
--

CREATE TABLE `receber_sas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `forma_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `referencia` varchar(30) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `multa` decimal(8,2) DEFAULT NULL,
  `juros` decimal(8,2) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `taxa` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `residuo` varchar(5) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `caixa` int(11) DEFAULT NULL,
  `tipo_chave` varchar(50) DEFAULT NULL,
  `acessar_painel` varchar(5) DEFAULT NULL,
  `quant_recorrencia` int(11) DEFAULT NULL,
  `id_recorrencia` int(11) DEFAULT NULL,
  `ref_pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `receber_sas`
--

INSERT INTO `receber_sas` (`id`, `descricao`, `cliente`, `valor`, `vencimento`, `data_pgto`, `data_lanc`, `forma_pgto`, `frequencia`, `obs`, `arquivo`, `referencia`, `id_ref`, `multa`, `juros`, `desconto`, `taxa`, `subtotal`, `usuario_lanc`, `usuario_pgto`, `pago`, `residuo`, `hora`, `hash`, `caixa`, `tipo_chave`, `acessar_painel`, `quant_recorrencia`, `id_recorrencia`, `ref_pix`) VALUES
(1, 'Conta teste', 1, 0.01, '2025-02-03', '2025-02-11', '2025-02-04', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 0.01, 1, 0, 'Sim', NULL, '18:56:15', NULL, 0, NULL, '', 0, NULL, '100945126019'),
(2, 'Mensalidade', 1, 150.00, '2025-02-04', '2025-02-04', '2025-02-04', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 150.00, 1, 1, 'Sim', NULL, '19:18:28', NULL, 0, NULL, '', 0, NULL, NULL),
(3, 'Mensalidade', 1, 0.01, '2025-02-04', '2025-02-04', '2025-02-04', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 0.01, 1, 0, 'Sim', NULL, '20:12:31', NULL, 0, NULL, '', 0, NULL, '100945126019'),
(4, 'Teste', 2, 300.00, '2025-02-04', '0000-00-00', '2025-02-04', 0, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 300.00, 1, 0, 'Não', NULL, '20:34:46', NULL, 0, NULL, '', 0, NULL, ''),
(6, 'Conta teste pgto', 1, 436.99, '2025-02-14', '2025-02-14', '2025-02-14', 2, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 436.99, 1, 0, 'Sim', NULL, '13:15:23', '1393335', 0, NULL, '', 0, NULL, '102345603532'),
(7, 'Teste conta sas', 1, 5.00, '2025-03-11', '2025-03-11', '2025-03-11', 2, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 5.00, 1, 0, 'Sim', NULL, '19:28:36', '1506554', 5, NULL, '', 0, NULL, 'pay_wdx0czye9gp2u4tj'),
(8, 'Testes 2', 1, 5.00, '2025-03-11', '2025-03-11', '2025-03-11', 2, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 5.00, 1, 0, 'Sim', NULL, '19:49:50', '1506688', 5, NULL, '', 0, NULL, 'pay_wdx0czye9gp2u4tj'),
(9, 'Tsst', 1, 5.00, '2025-03-11', '2025-03-11', '2025-03-11', 2, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 5.00, 1, 0, 'Sim', NULL, '19:59:43', '1506699', 5, NULL, '', 0, NULL, 'pay_wdx0czye9gp2u4tj'),
(10, 'Tessst', 1, 436.99, '2025-03-11', '2025-03-11', '2025-03-11', 2, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 436.99, 1, 0, 'Sim', NULL, '20:15:25', '1506758', 5, NULL, '', 0, NULL, '102345603532'),
(46, 'Mensalidade SAAS', 25, 140.00, '2025-04-24', '2025-04-24', '2025-04-24', NULL, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Sim', NULL, '18:20:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Mensalidade SAAS', 26, 140.00, '2025-04-24', '2025-04-24', '2025-04-24', NULL, 1, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Sim', NULL, '18:39:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Mensalidade SAAS', 26, 140.00, '2025-04-25', '2025-04-24', '2025-04-24', 2, 1, NULL, 'sem-foto.png', 'Mensalidade', NULL, 0.00, 0.00, 0.00, 0.00, 140.00, 1, 1, 'Sim', NULL, '18:40:26', NULL, 5, NULL, NULL, NULL, NULL, NULL),
(51, 'Mensalidade SAAS', 27, 140.00, '0000-00-00', NULL, '2025-04-28', NULL, 0, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Não', NULL, '10:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'aaa', 27, 25.00, '2025-04-28', '2025-04-28', '2025-04-28', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 25.00, 1, 1, 'Sim', NULL, '10:47:30', NULL, 5, NULL, NULL, 0, NULL, NULL),
(56, 'Mensalidade SAAS', 30, 180.00, '2025-04-29', NULL, '2025-04-29', NULL, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 180.00, 1, NULL, 'Sim', NULL, '22:03:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Mensalidade SAAS', 31, 180.00, '2025-04-29', NULL, '2025-04-29', NULL, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 180.00, 1, NULL, 'Sim', NULL, '22:04:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Mensalidade SAAS', 33, 160.00, '2025-04-29', NULL, '2025-04-29', NULL, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 160.00, 1, NULL, 'Sim', NULL, '22:07:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Mensalidade SAAS', 34, 120.00, '2025-04-29', '2025-04-29', '2025-04-29', 65, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 120.00, 1, NULL, 'Sim', NULL, '22:09:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Mensalidade SAAS', 4, 120.00, '2025-05-28', NULL, '2025-05-28', NULL, 1, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 120.00, 1, NULL, 'Não', NULL, '20:43:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Testee', 1, 100.00, '2025-06-30', NULL, '2025-07-02', 1, 0, '', 'sem-foto.png', 'Conta', NULL, NULL, NULL, NULL, NULL, 100.00, 1, 0, 'Não', NULL, '23:27:23', '1977273', 5, NULL, NULL, 0, NULL, 'pay_fdr1ofq922tx7f75'),
(77, 'Mensalidade SAAS', 42, 140.00, '2025-08-06', '2025-08-07', '2025-08-06', 1, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Sim', NULL, '11:26:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Mensalidade SAAS', 43, 140.00, '2025-08-06', '2025-08-07', '2025-08-06', 1, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Sim', NULL, '11:31:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Mensalidade SAAS', 44, 140.00, '2025-08-06', '2025-08-21', '2025-08-06', 1, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Sim', NULL, '11:34:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Mensalidade SAAS', 44, 140.00, '2025-09-06', NULL, '2025-08-06', NULL, 30, NULL, 'sem-foto.png', 'Mensalidade', NULL, NULL, NULL, NULL, NULL, 140.00, 1, NULL, 'Não', NULL, '11:34:12', '2075005', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `recursos`
--

CREATE TABLE `recursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `chave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `recursos`
--

INSERT INTO `recursos` (`id`, `nome`, `chave`) VALUES
(1, 'Marketing Whatsapp', 'marketing_whats'),
(3, 'Cobranças Recorrentes', 'cobrancas_rec'),
(4, 'Gestão de Contratos', 'gestao_contratos'),
(5, 'Orçamentos', 'orcamentos_rec'),
(6, 'OS Ordens de Serviços', 'os_rec'),
(7, 'Site', 'site');

-- --------------------------------------------------------

--
-- Estrutura para tabela `recursos_site`
--

CREATE TABLE `recursos_site` (
  `id` int(11) NOT NULL,
  `titulo_recurso` varchar(150) DEFAULT NULL,
  `icone_recurso` varchar(100) DEFAULT NULL,
  `descricao_recurso` varchar(255) DEFAULT NULL,
  `empresa` int(11) NOT NULL,
  `posicao_recurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `recursos_site`
--

INSERT INTO `recursos_site` (`id`, `titulo_recurso`, `icone_recurso`, `descricao_recurso`, `empresa`, `posicao_recurso`) VALUES
(3, 'Aumente suas Vendas', 'fas fa-chart-line', 'Controle completo do processo de vendas, desde o orçamento até a entrega, com relatórios detalhados para tomar as melhores decisões.', 0, 1),
(4, 'Controle Financeiro', 'fas fa-coins', 'Gerencie contas a pagar e receber, fluxo de caixa, conciliação bancária e muito mais, tudo em um só lugar.', 0, 2),
(5, 'Estoque Inteligente', 'fas fa-boxes', 'Controle de estoque em tempo real, com alertas de estoque mínimo, gestão de fornecedores e controle de validade.', 0, 3),
(6, 'Atendimento ao Cliente', 'fas fa-headset', 'Integração com WhatsApp, gestão de chamados e histórico completo de interações para um atendimento personalizado.', 0, 4),
(7, 'Gestão de Equipe', 'fas fa-users-cog', 'Controle de produtividade, metas, comissões e muito mais para maximizar o desempenho da sua equipe.', 0, 5),
(8, 'Contratos e Serviços', 'fas fa-file-contract', 'Gestão completa de contratos, ordens de serviço e agendamentos para otimizar seus processos.', 0, 6),
(9, 'Item 1', 'fas fa-chart-line', 'Texto item 1 aqui', 1, 1),
(10, 'Item 2', 'fas fa-cogs', 'Texto Item 2', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `saidas`
--

INSERT INTO `saidas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`, `empresa`) VALUES
(1, 229, 2, 'Teste', 1, '2025-03-17', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sangrias`
--

CREATE TABLE `sangrias` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `caixa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sangrias`
--

INSERT INTO `sangrias` (`id`, `usuario`, `valor`, `data`, `hora`, `caixa`) VALUES
(1, 1, 50.00, '2025-02-03', '17:58:25', 1),
(2, 17, 100.00, '2025-02-04', '17:58:21', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `comissao` int(11) DEFAULT NULL,
  `dias` int(11) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `mostrar_site` varchar(5) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `valor`, `comissao`, `dias`, `ativo`, `empresa`, `foto`, `mostrar_site`, `descricao`) VALUES
(1, 'SOFTWARE C/ BAKUP', 130.00, 0, 3, 'Sim', 1, '15-07-2025-16-08-00-bakup.jpg', 'Sim', 'afa dfaf da fdsaf dsaf a fadsf fafda fdsa ffa afa dfaf da fdsaf dsaf a fadsf fafda fdsa ffa'),
(2, 'SOFTWARE S/ BACKUP', 100.00, 0, 2, 'Sim', 1, '15-07-2025-16-08-35-soft.jpg', 'Sim', ''),
(3, 'TROCA DE TELA', 0.00, 0, 3, 'Sim', 1, '15-07-2025-16-09-58-troca_tela.webp', 'Sim', ''),
(4, 'TROCA DE BATERIA', 0.00, 0, 0, 'Sim', 1, '15-07-2025-16-09-32-troca-bateria.webp', 'Sim', ''),
(5, 'FORMATAÇÃO', 300.00, 0, 0, 'Sim', 1, '15-07-2025-16-06-34-formatacao.jpg', 'Sim', 'afa dfaf da fdsaf dsaf a fadsf fafda fdsa ffa afa dfaf da fdsaf dsaf a fadsf fafda fdsa ffa'),
(7, 'AUTO FALANTE', 250.00, 0, 0, 'Sim', 1, '15-07-2025-16-05-40-autofalante.webp', 'Sim', 'aqui vai uma descricao de teste para essa aula, vou por também outras descrições semelhantes de teste para essa aula, vou por também  de teste para essa aula, vou por também'),
(8, 'TROCA CONECTOR DE CARGA', 180.00, 0, 0, 'Sim', 1, '15-07-2025-16-09-04-troca_conect.jpg', 'Sim', ''),
(9, 'CHOQUE NA BATERIA', 450.00, 0, 1, 'Sim', 1, '15-07-2025-16-06-10-choque.jpg', 'Não', ''),
(16, 'HARD RESET', 30.00, 0, 5, 'Sim', 1, '15-07-2025-16-07-21-reset.jpg', 'Sim', ''),
(20, 'Serviço', 200.00, 50, 10, 'Sim', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos_orc`
--

CREATE TABLE `servicos_orc` (
  `id` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `os` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `equipamento` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos_orc`
--

INSERT INTO `servicos_orc` (`id`, `servico`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`, `cliente`, `data`, `equipamento`, `modelo`, `subtotal`) VALUES
(1, 1, 1, 1, 1, 130.00, 130.00, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 1, 1, 1, 55.00, 55.00, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 3, 1, 1, 100.00, 100.00, 5, 1, '2025-03-18', NULL, NULL, 100.00),
(4, 4, 3, 1, 1, 0.00, 0.00, 5, 1, '2025-03-18', NULL, NULL, 100.00),
(5, 1, 4, 1, 1, 130.00, 130.00, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, NULL, 1, 1, 30.00, 30.00, 2, 1, '2025-03-18', NULL, NULL, 80.00),
(7, 10, NULL, 1, 1, 35.00, 35.00, 2, 1, '2025-03-18', NULL, NULL, 80.00),
(8, 9, NULL, 1, 1, 0.00, 0.00, 3, 1, '2025-03-18', NULL, NULL, 20.00),
(9, 9, NULL, 1, 1, 0.00, 0.00, 4, 1, '2025-03-18', NULL, NULL, 120.00),
(10, 10, NULL, 1, 1, 0.00, 0.00, 5, 1, '2025-03-18', NULL, NULL, 100.00),
(11, 9, NULL, 1, 1, 30.00, 30.00, 6, 1, '2025-03-18', NULL, NULL, 50.00),
(12, 8, NULL, 1, 1, 0.00, 0.00, 7, 1, '2025-03-18', NULL, NULL, 3.00),
(13, 10, NULL, 1, 1, 50.00, 50.00, 8, 1, '2025-03-18', NULL, NULL, 110.00),
(14, 8, NULL, 1, 1, 60.00, 60.00, 8, 1, '2025-03-18', NULL, NULL, 110.00),
(15, 3, NULL, 1, 1, 350.00, 350.00, 9, 1, '2025-03-18', NULL, NULL, 350.00),
(16, 2, NULL, 1, 1, 100.00, 100.00, 10, 1, '2025-03-18', NULL, NULL, 100.00),
(17, 9, NULL, 29, 1, 230.00, 230.00, 11, 1, '2025-03-18', NULL, NULL, 230.00),
(18, 2, NULL, 29, 1, 100.00, 100.00, 12, 1, '2025-03-18', NULL, NULL, 100.00),
(19, 20, 5, 1, 1, 200.00, 200.00, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, NULL, 1, 3, 200.00, 600.00, 15, 2, '2025-03-18', NULL, NULL, 5600.00),
(21, 3, 6, 1, 3, 300.00, 900.00, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 2, 7, 1, 1, 100.00, 100.00, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 9, 8, 1, 1, 40.00, 40.00, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 9, NULL, 1, 1, 0.00, 0.00, 18, 14, '2025-05-29', NULL, NULL, 20.00),
(25, 8, NULL, 1, 1, 0.00, 0.00, 19, 1, '2025-05-29', NULL, NULL, 20.00),
(26, 8, NULL, 1, 1, 60.00, 60.00, 20, 1, '2025-05-29', NULL, NULL, 90.00),
(27, 1, 11, 1, 1, 130.00, 130.00, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 9, NULL, 1, 1, 450.00, 450.00, 21, 14, '2025-07-16', NULL, NULL, 522.50),
(29, 2, 12, 1, 1, 100.00, 100.00, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 4, 12, 1, 1, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 4, 13, 1, 1, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 2, 14, 1, 1, 100.00, 100.00, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 7, NULL, 1, 1, 250.00, 250.00, 23, 14, '2025-08-19', NULL, NULL, 270.00),
(34, 8, NULL, 1, 1, 180.00, 180.00, 24, 14, '2025-08-19', NULL, NULL, 200.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `botao1` varchar(80) DEFAULT NULL,
  `botao2` varchar(80) DEFAULT NULL,
  `botao3` varchar(80) DEFAULT NULL,
  `item1` varchar(100) DEFAULT NULL,
  `item2` varchar(100) DEFAULT NULL,
  `item3` varchar(100) DEFAULT NULL,
  `titulo_recursos` varchar(255) DEFAULT NULL,
  `titulo_perguntas` varchar(255) DEFAULT NULL,
  `titulo_rodape` varchar(255) DEFAULT NULL,
  `descricao_rodape` text DEFAULT NULL,
  `botao_rodape` varchar(100) DEFAULT NULL,
  `link_rodape` varchar(255) DEFAULT NULL,
  `logo_topo` varchar(5) DEFAULT NULL,
  `fundo_topo` varchar(100) DEFAULT NULL,
  `fundo_topo_mobile` varchar(100) DEFAULT NULL,
  `descricao_site` text DEFAULT NULL,
  `video_site` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `site`
--

INSERT INTO `site` (`id`, `empresa`, `logo`, `titulo`, `subtitulo`, `botao1`, `botao2`, `botao3`, `item1`, `item2`, `item3`, `titulo_recursos`, `titulo_perguntas`, `titulo_rodape`, `descricao_rodape`, `botao_rodape`, `link_rodape`, `logo_topo`, `fundo_topo`, `fundo_topo_mobile`, `descricao_site`, `video_site`) VALUES
(1, 0, '28-03-2025-15-23-57-03.png', 'Transforme a Gestão do Seu Negócio HOJE MESMO!', 'O Gestor ERP SAAS é a solução completa que você precisa para controlar vendas, estoque, financeiro e muito mais em um único sistema intuitivo e poderoso.', 'Começar Agora', 'Saiba Mais', 'Acessar Painel', 'Comece a usar em minutos', 'Pagamento seguro', 'Suporte dedicado', 'Por Que Escolher o Gestor ERP SAAS?', 'Perguntas Frequentes', 'Pronto para Revolucionar a Gestão do Seu Negócio?', 'Não perca mais tempo com processos manuais e desorganizados. O Gestor ERP SAAS oferece tudo que você precisa para crescer com eficiência e controle total. ', 'Começar Agora', '#plans', 'Sim', '21-04-2025-21-06-44-erp_fundo_op.png', '22-04-2025-11-11-44-erp_fundo_mobile.jpg', NULL, NULL),
(2, 1, '28-03-2025-15-23-57-03.png', '', '', '', 'Saiba Mais', 'Painel Cliente', 'item 1', 'item 2', 'item 3', 'Titulo do recursos', 'TItulo da área perguntas', 'Titulo Rodapé', 'Link', 'Rodapé', 'link', 'Não', '21-04-2025-21-06-04-fundo_sit.png', '21-04-2025-21-25-48-banner_mobile.jpg', '<p><span style=\"font-weight: normal;\">fdf daf das fda fdsaf a fsadf dsafa faf ffaaf adf afsad fa fas f fda dfsaf adf sadf af adf fa afa&nbsp;&nbsp;</span></p><p><span style=\"font-weight: normal;\">fdas fdsafads</span></p><p><span style=\"font-weight: normal;\">fdsafasdfdsa fsadf</span></p>', 'https://www.youtube.com/embed/vsvIi2j98ZE?si=iS-stCuyd-leVkY3'),
(3, 2, '01-04-2025-22-30-31-fundo_adv.jpg', 'Teste emp 2', 'dASSFDSA ', 'AFDFA ', 'DFAFAS', 'FA F', 'FDA FA', 'FDAF', 'FDAFA', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(4, 8, 'sem-foto.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sub_categorias`
--

INSERT INTO `sub_categorias` (`id`, `nome`, `ativo`, `foto`, `empresa`) VALUES
(17, 'Azul', 'Sim', NULL, 1),
(26, 'Trasparente', 'Sim', NULL, 1),
(27, 'preta', 'Sim', NULL, 1),
(28, 'Rosa', 'Sim', NULL, 1),
(38, 'Rosa2', 'Sim', NULL, 1),
(40, 'Subcategoria 1', 'Sim', NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `hora_mensagem` time DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `prioridade` varchar(25) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `recorrencia` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tarefas`
--

INSERT INTO `tarefas` (`id`, `usuario`, `usuario_lanc`, `data`, `hora`, `hora_mensagem`, `descricao`, `status`, `hash`, `prioridade`, `titulo`, `recorrencia`, `empresa`) VALUES
(1, 17, 1, '2025-02-04', '18:00:00', '17:00:00', 'Testess', 'Concluída', NULL, 'Baixa', 'Teste', 0, 1),
(4, 17, 1, '2025-02-04', '18:00:00', '17:00:00', 'Testess', 'Agendada', '2033678', 'Baixa', 'Teste', 0, NULL),
(5, 17, 1, '2025-02-04', '18:00:00', '17:00:00', 'Testess', 'Agendada', '2033679', 'Baixa', 'Teste', 0, 0),
(6, 41, 1, '2025-07-28', '23:50:00', '00:00:00', '', 'Concluída', NULL, 'Baixa', 'AAA', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tarefas_clientes`
--

CREATE TABLE `tarefas_clientes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `hora_mensagem` time DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `prioridade` varchar(25) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `recorrencia` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tarefas_clientes`
--

INSERT INTO `tarefas_clientes` (`id`, `usuario`, `usuario_lanc`, `data`, `hora`, `hora_mensagem`, `descricao`, `status`, `hash`, `prioridade`, `titulo`, `recorrencia`, `empresa`) VALUES
(1, 1, 1, '2025-08-19', '15:20:00', '12:15:00', 'fdsaf das fdafdafda', 'Concluída', '2114771', 'Baixa', 'Teste', 0, 1),
(2, 37, 1, '2025-08-19', '16:00:00', '12:18:00', 'fa afa fda sda fasfasfaf asdf adsf ', 'Agendada', '2114775', 'Alta', 'Teste 2', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tarefas_sas`
--

CREATE TABLE `tarefas_sas` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `hora_mensagem` time DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `prioridade` varchar(25) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `recorrencia` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tarefas_sas`
--

INSERT INTO `tarefas_sas` (`id`, `usuario`, `usuario_lanc`, `data`, `hora`, `hora_mensagem`, `descricao`, `status`, `hash`, `prioridade`, `titulo`, `recorrencia`, `empresa`) VALUES
(1, 1, 1, '2025-07-28', '23:50:00', '00:00:00', '', 'Concluída', NULL, 'Baixa', 'Teste', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `temp_texto`
--

CREATE TABLE `temp_texto` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `empresa` int(11) DEFAULT NULL,
  `cabecalho` varchar(5) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `ip` varchar(35) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `assinatura` varchar(30) DEFAULT NULL,
  `conta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `temp_texto`
--

INSERT INTO `temp_texto` (`id`, `texto`, `empresa`, `cabecalho`, `cliente`, `ip`, `data`, `hora`, `modelo`, `assinatura`, `conta`) VALUES
(1, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Quarta-Feira, 19 de Marco de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/14.png\" style=\"margin-top:25px\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Hugo Cliente</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 14, '::1', '2025-03-24', '12:02:10', '3', '', NULL),
(8, '<div><b><font size=\"5\">fdafdsaf dfdsf a f</font></b></div><div><br></div><div><b><b>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</b></b></div><div><b><b><br></b></b></div><div><b><b>Hugo Cliente <br></b></b></div><div><br></div><div><b>Belo Horizonte</b></div><div><b><b><br></b></b></div>', 1, 'Sim', 14, NULL, NULL, NULL, '18', '', NULL),
(9, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Cliente Teste, , , , nascido(a) em 05/03/2001, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à Rua de Teste, 500, bairro Bairro Teste, município de Cidade Teste –MG – CEP: 30512-660, email: cliente1@hotmail.com, telefone: (31) 99534-8118</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Segunda-Feira, 24 de Marco de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/1.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Cliente Teste</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 1, '::1', '2025-03-24', '12:01:53', '3', '', NULL),
(10, '<h3 data-start=\"299\" data-end=\"336\" align=\"center\"><b><h3 data-start=\"299\" data-end=\"336\"><font size=\"4\"><u>CONTRATO DE PRESTAÇÃO DE SERVIÇOS</u></font></h3></b></h3><p data-start=\"338\" data-end=\"386\">Pelo presente instrumento particular, as partes:</p><p data-start=\"388\" data-end=\"502\"><strong data-start=\"388\" data-end=\"404\">CONTRATANTE:</strong><br data-start=\"404\" data-end=\"407\">Nome: <b>Empresa 1 Teste</b><br data-start=\"434\" data-end=\"437\">CNPJ: <b>20.000.000/0000-00</b><br data-start=\"468\" data-end=\"471\">Endereço: <b>Rua X Número 150 Bairro Teste X</b></p><p data-start=\"504\" data-end=\"616\"><strong data-start=\"504\" data-end=\"519\">CONTRATADA:</strong><br data-start=\"519\" data-end=\"522\"><b>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</b></p><p data-start=\"504\" data-end=\"616\">Têm entre si, justas e contratadas, as cláusulas e condições a seguir dispostas:</p><h3 data-start=\"705\" data-end=\"729\"><font size=\"3\">CLÁUSULA 1ª – OBJETO</font></h3><p data-start=\"731\" data-end=\"959\">O presente contrato tem como objeto a prestação dos seguintes serviços:<br data-start=\"802\" data-end=\"805\"><strong data-start=\"805\" data-end=\"959\">[Descrever detalhadamente os serviços que serão prestados, ex.: \"Aulas presenciais de inglês para nível básico, com carga horária total de 40 horas.\"]</strong></p><h3 data-start=\"966\" data-end=\"1008\"><font size=\"3\">CLÁUSULA 2ª – OBRIGAÇÕES DA CONTRATADA</font></h3><p data-start=\"1010\" data-end=\"1232\">A CONTRATADA se obriga a:<br data-start=\"1035\" data-end=\"1038\">a) Prestar os serviços descritos na Cláusula 1ª com zelo, diligência e qualidade;<br data-start=\"1119\" data-end=\"1122\">b) Cumprir o cronograma e prazos acordados;<br data-start=\"1165\" data-end=\"1168\">c) Manter sigilo sobre informações confidenciais da CONTRATANTE.</p><h3 data-start=\"1239\" data-end=\"1282\"><font size=\"3\">CLÁUSULA 3ª – OBRIGAÇÕES DA CONTRATANTE</font></h3><p data-start=\"1284\" data-end=\"1547\">A CONTRATANTE se compromete a:<br data-start=\"1314\" data-end=\"1317\">a) Fornecer todas as informações necessárias à execução dos serviços;<br data-start=\"1386\" data-end=\"1389\">b) Efetuar o pagamento na forma e prazos estipulados neste contrato;<br data-start=\"1457\" data-end=\"1460\">c) Cooperar com a CONTRATADA, sempre que necessário, para o bom andamento dos serviços.</p><p data-start=\"504\" data-end=\"616\"><br></p><p data-start=\"504\" data-end=\"616\"><br></p>', 1, 'Sim', 14, '::1', '2025-03-24', '12:06:13', '17', '', NULL),
(30, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Cliente Teste, , , , nascido(a) em 05/03/2001, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à Rua de Teste, 500, bairro Bairro Teste, município de Cidade Teste –MG – CEP: 30512-660, email: cliente1@hotmail.com, telefone: (31) 99534-8118</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Terca-Feira, 15 de Julho de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/1.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Cliente Teste</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 1, '127.0.0.1', '2025-07-15', '20:29:25', '3', '1.png', 8),
(31, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Cliente Teste, , , , nascido(a) em 05/03/2001, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à Rua de Teste, 500, bairro Bairro Teste, município de Cidade Teste –MG – CEP: 30512-660, email: cliente1@hotmail.com, telefone: (31) 99534-8118</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Terca-Feira, 15 de Julho de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/1.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Cliente Teste</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 1, '127.0.0.1', '2025-07-15', '20:42:23', '3', '1.png', 9),
(32, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º 510.565.670-90, sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Terca-Feira, 15 de Julho de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/14.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Hugo Cliente</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 14, '127.0.0.1', '2025-07-15', '20:46:27', '3', '', 10),
(33, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º 510.565.670-90, sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Terca-Feira, 15 de Julho de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/14.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Hugo Cliente</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 14, NULL, NULL, NULL, '3', '', 0),
(35, '<h3 data-start=\"299\" data-end=\"336\" align=\"center\"><b><h3 data-start=\"299\" data-end=\"336\"><font size=\"4\"><u>CONTRATO DE PRESTAÇÃO DE SERVIÇOS</u></font></h3></b></h3><p data-start=\"338\" data-end=\"386\">Pelo presente instrumento particular, as partes:</p><p data-start=\"388\" data-end=\"502\"><strong data-start=\"388\" data-end=\"404\">CONTRATANTE:</strong><br data-start=\"404\" data-end=\"407\">Nome: <b>Empresa 1 Teste</b><br data-start=\"434\" data-end=\"437\">CNPJ: <b>20.000.000/0000-00</b><br data-start=\"468\" data-end=\"471\">Endereço: <b>Rua X Número 150 Bairro Teste X</b></p><p data-start=\"504\" data-end=\"616\"><strong data-start=\"504\" data-end=\"519\">CONTRATADA:</strong><br data-start=\"519\" data-end=\"522\"><b>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º , sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</b></p><p data-start=\"504\" data-end=\"616\">Têm entre si, justas e contratadas, as cláusulas e condições a seguir dispostas:</p><h3 data-start=\"705\" data-end=\"729\"><font size=\"3\">CLÁUSULA 1ª – OBJETO</font></h3><p data-start=\"731\" data-end=\"959\">O presente contrato tem como objeto a prestação dos seguintes serviços:<br data-start=\"802\" data-end=\"805\"><strong data-start=\"805\" data-end=\"959\">[Descrever detalhadamente os serviços que serão prestados, ex.: \"Aulas presenciais de inglês para nível básico, com carga horária total de 40 horas.\"]</strong></p><h3 data-start=\"966\" data-end=\"1008\"><font size=\"3\">CLÁUSULA 2ª – OBRIGAÇÕES DA CONTRATADA</font></h3><p data-start=\"1010\" data-end=\"1232\">A CONTRATADA se obriga a:<br data-start=\"1035\" data-end=\"1038\">a) Prestar os serviços descritos na Cláusula 1ª com zelo, diligência e qualidade;<br data-start=\"1119\" data-end=\"1122\">b) Cumprir o cronograma e prazos acordados;<br data-start=\"1165\" data-end=\"1168\">c) Manter sigilo sobre informações confidenciais da CONTRATANTE.</p><h3 data-start=\"1239\" data-end=\"1282\"><font size=\"3\">CLÁUSULA 3ª – OBRIGAÇÕES DA CONTRATANTE</font></h3><p data-start=\"1284\" data-end=\"1547\">A CONTRATANTE se compromete a:<br data-start=\"1314\" data-end=\"1317\">a) Fornecer todas as informações necessárias à execução dos serviços;<br data-start=\"1386\" data-end=\"1389\">b) Efetuar o pagamento na forma e prazos estipulados neste contrato;<br data-start=\"1457\" data-end=\"1460\">c) Cooperar com a CONTRATADA, sempre que necessário, para o bom andamento dos serviços.</p><p data-start=\"504\" data-end=\"616\"><br></p><p data-start=\"504\" data-end=\"616\"><br></p>', 1, 'Sim', 14, '::1', '2025-08-06', '14:22:00', '17', '', 0),
(36, '<p class=\"\" \"\"\"msonormal\"\"\"\"\"=\"\" center\"\"=\"\" align=\"center\"><strong><span style=\"\" \"\"\"font-size:22.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"\"\"\"\"=\"\"><font size=\"4\"><u>PROCURAÇÃO</u></font></span></strong></p><div><font size=\"2\"><strong>Hugo Cliente, , , , nascido(a) em 11/11/1111, inscrito(a) no CPF sob o n.º 510.565.670-90, sob identidade n.º , filho de  e , residente e domiciliado(a) à , , bairro , município de  – – CEP: , email: hugocliente@hotmail.com, telefone: (31) 97527-5084</strong></font><strong> </strong><font size=\"2\">por este instrumento de mandato nomeia e constitui seu(ua) procurador(a) o(a) advogado(a) <strong>{{PROFISSIONAL}},</strong> para o fim de representar o(s) outorgante(s) perante qualquer Juízo, instância ouTribunal, conferindo-lhes poderes gerais da cláusula “ad judicia” e aindapoderes especiais para propor ações de qualquer natureza, inclusive penais, requerer, contestar, transigir, desistir, confessar, recorrer, representar,oferecer queixa-crime ou resposta à acusação, fazer arrazoados, requererjustificações, interpelações e/ou notificações cíveis e criminais, oferecerrepresentação criminal, produzir provas, acompanhar diligências, fazer acordosou compromissos, receber e dar quitação, requerer e levantar alvarás judiciais,indicar bens à penhora, requerer compensação tributária, nos limites previstosna legislação brasileira, podendo substabelecer com ou sem reservas de iguaispoderes, podendo, em seu nome, requerer gratuidade de justiça, tudo omais que se fizer necessário para o fiel desempenho do presente mandato, dandotudo por bom, firme e valioso.</font></div><div align=\"\" \"center\"\"\"=\"\"><br></div><div align=\"center\"><font size=\"2\">Belo Horizonte, Quarta-Feira, 06 de Agosto de 2025.</font></div><div align=\"center\"><br></div><div align=\"center\"><br></div><div align=\"center\"><img src=\"http://localhost/erp/painel/images/assinaturas/14.png\" alt=\"Imagem da Assinatura\"></div><div align=\"center\"><font size=\"2\">_________________________________________<br>Hugo Cliente</font></div><div align=\"center\"><font size=\"2\">Outorgante</font><br></div>', 1, 'Sim', 14, NULL, NULL, NULL, '3', '', 28);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `senha_crip` varchar(130) NOT NULL,
  `nivel` varchar(25) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `comissao` decimal(9,2) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `pix` varchar(100) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `acessar_painel` varchar(5) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `mostrar_registros` varchar(5) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `tipo_chave` varchar(100) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `valor_hora` decimal(10,2) DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  `jornada_horas` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `senha_crip`, `nivel`, `ativo`, `telefone`, `endereco`, `foto`, `data`, `comissao`, `id_ref`, `pix`, `token`, `data_nasc`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `acessar_painel`, `cpf`, `mostrar_registros`, `complemento`, `tipo_chave`, `empresa`, `salario`, `valor_hora`, `hora_entrada`, `hora_saida`, `jornada_horas`) VALUES
(1, 'Hugo Freitas', 'contato@hugocursos.com.br', '', '$2y$10$cAgaNs5AFhB4tBCyvYf6eO8HLqNJa.2Rm0SC8fs8cxE151JbjSBLq', 'Administrador', 'Sim', '(31) 97527-5084', '', 'sem-foto.jpg', '2025-02-01', NULL, 0, NULL, 'd13137c94f6a73a5a25c8af54a69c6d4efa1f36258c6bdd076bb4eada8fe2bf8', '1996-01-01', '', '', '', '', '', 'Sim', NULL, 'Sim', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Gerente SAAS', 'gerente@hotmail.com', '', '$2y$10$1k0gtweYlk/TML2r1hYYiOEOmY3ZVJ5ExumzkKa3qDjHhQ9DCWhzC', 'Comum', 'Sim', '(31) 9999-9999', '', 'sem-foto.jpg', '2025-02-03', NULL, 0, '', NULL, NULL, '', '', '', '', '', 'Sim', '', 'Sim', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Empresa 1 Teste', 'empresa1@hotmail.com', '', '$2y$10$hv9BIji0TXw6zyjUur6FM.ms4XCc2H/vdQXtwCXAGW5jeDeFjF.s6', 'Administrador', 'Sim', '(31) 97527-5084', '', 'sem-foto.jpg', '2025-02-03', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(18, 'Empresa 2', 'empresa2@hotmail.com', '', '$2y$10$WtFy4cY4wTObWC7E8gwHvedrWqOPxZkFit9vXbpKNExUihb9cCxg2', 'Administrador', 'Sim', '(00) 3200-0000', '', 'sem-foto.jpg', '2025-02-03', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, NULL),
(20, 'Teste', 'teste1@hotmail.com', '', '$2y$10$ZBIBka6dCLYeLpIWkwnHAuHE2ttvA5Dh4VBdgiqPkC58MB98jH3Su', 'Gerente', 'Sim', '(31) 99222-2222', '', 'sem-foto.jpg', '2025-02-04', 50.00, 0, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', '', 'Sim', '', '', 1, 200.00, 20.00, '08:00:00', '08:00:00', '08:00:00'),
(21, 'Gerente', 'gerente2@hotmail.com', '', '$2y$10$05zUCtDR4kLpaPSPM.xYm.mN3PNGf1bZb48xBhDYerf/tkyDu7W0y', 'Tesoureiro', 'Sim', '(01) 1111-1111', '', 'sem-foto.jpg', '2025-02-04', 10.00, 0, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(22, 'Gerente emp 2', 'gerenteemp2@hotmail.com', '', '$2y$10$d0.BC.5cSEVqVc4VpGr.t.kyUoqthkssVawRzx1Wdh272UoOZNALy', 'Gerente', 'Sim', '(02) 0000-0000', '', 'sem-foto.jpg', '2025-02-04', NULL, 0, '', NULL, NULL, '', '', '', '', '', 'Sim', '', 'Sim', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(23, 'Escola X', 'escola@hotmail.com', '', '$2y$10$LGL2J4uhDOiZzpau0yqSSOktaJvHdmRcJgU9zmvjM5IoTVquJI87a', 'Administrador', 'Sim', '(02) 0200-0000', '', 'sem-foto.jpg', '2025-02-04', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 4, NULL, NULL, NULL, NULL, NULL),
(27, 'Emp 4 teste', 'emp4@hotmail.com', '', '$2y$10$9xgqAIpuNQrh2WpL/fXSV.ZW3sC426t.dACwX1XZ3xoQ1sSwsTPmC', 'Administrador', 'Sim', '(00) 0003-0000', '', 'sem-foto.jpg', '2025-02-21', NULL, 8, NULL, NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 8, NULL, NULL, NULL, NULL, NULL),
(28, 'Gerente', 'gerente444@hotmail.com', '', '$2y$10$nTlwtuHgQKO.a89bHV163urTXvIJRxzu1LAW9zNo.4IeOk.CTy2B.', 'Gerente', 'Sim', '(02) 0000-0000', '', 'sem-foto.jpg', '2025-02-21', NULL, NULL, '', NULL, NULL, '', '', '', '', '', 'Sim', '', 'Sim', '', '', 8, NULL, NULL, NULL, NULL, NULL),
(29, 'Tecnico Teste', 'tecnico@hotmail.com', '', '$2y$10$NnLF/wA4A1UU6ykL9G9XXuVPTHaHOoBRTpgF7qYxcSNQpwG649ASK', 'Técnico', 'Sim', '(20) 0000-0000', '', 'sem-foto.jpg', '2025-03-18', 50.50, NULL, 'chave pix teste', NULL, '1111-11-11', '', '', '', '', '', 'Sim', '', '', '', 'Telefone', 1, 2500.00, 25.00, '09:00:00', '19:00:00', '08:00:00'),
(30, 'Técnico para testes', 'tec@hotmail.com', '', '$2y$10$E4oIbNVlPplc2.Zkr1Rh.eOv3EP9qzuunU2y38ekxLBC5mmkdzM5G', 'Técnico', 'Sim', '(00) 0200-0000', '', 'sem-foto.jpg', '2025-03-18', 10.00, NULL, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', '', 2, NULL, NULL, NULL, NULL, NULL),
(31, 'Fun novo', 'funcnovo@hotmail.com', '', '$2y$10$Dc7ef49i8SVr9UPSu8Ju3.dbPQuVQ9cxb5MJKd/V.hzTTAcE00P72', 'Técnico', 'Sim', '(00) 0002-0000', '', 'sem-foto.jpg', '2025-03-18', 0.00, NULL, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', '', 1, 5200.00, 150.00, '08:00:00', '18:00:00', '08:00:00'),
(35, 'Teste', 'teste@hotmaiol.com', '', '$2y$10$rmVTtoquI1fkIA5jM4uUqeTAvICiKQqrmcDZyrGJBwL4wOqFOM0MK', 'Administrador', 'Não', '(02) 0002-0000', '', 'sem-foto.jpg', '2025-03-28', NULL, 12, NULL, NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 12, NULL, NULL, NULL, NULL, NULL),
(37, 'Teste', 'testeapagar@hotmail.com', '', '$2y$10$jBW4pZ4TrxyrndbTH8ZH..zj8aRO0dRy.EV9pnKpnrTyzptRM.IUu', 'Gerente', 'Sim', '(31) 99534-8118', '', 'sem-foto.jpg', '2025-04-04', NULL, NULL, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', '', 'Sim', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(41, 'aa', 'aaaaassssa@hotmail.com', '', '$2y$10$990oDrCvkORA49tsDlnIIepvwjyYasldzSkQP2.Jz.VM9irgyrsNK', 'Técnico', 'Sim', '(41) 1111-1111', '', 'sem-foto.jpg', '2025-04-04', 0.00, NULL, '', NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', '', 1, 0.00, 0.00, '00:00:00', '00:00:00', '00:00:00'),
(47, 'Teste', '', '', '$2y$10$tync8OROP.usUEUOLgn0ienh5Lz3CZE4/QGQggATCobCW6Du8VyUa', 'Administrador', 'Sim', '(00) 1414', '', 'sem-foto.jpg', '2025-04-24', NULL, 21, NULL, NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 21, NULL, NULL, NULL, NULL, NULL),
(52, 'aaaaaaaaaaaa', '', '', '$2y$10$E5O8fJq56.D5JQ/pvD5cfu6me1R06wejj7d9fS6SULweJ.6FXy7ce', 'Administrador', 'Sim', '(54) 61212-1212', '', 'sem-foto.jpg', '2025-04-24', NULL, 26, NULL, NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 26, NULL, NULL, NULL, NULL, NULL),
(53, 'Hugo Test', 'hugotest@hotmaiol.com', '', '$2y$10$el05QN1blFPsOFMQvk9a6u5g.n2v/bD96TEOqSA2HdRa2OB2lfMAq', 'Administrador', 'Sim', '(30) 0000-0000', '', 'sem-foto.jpg', '2025-04-28', NULL, 27, NULL, NULL, '1969-12-31', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 27, NULL, NULL, NULL, NULL, NULL),
(70, 'Empp55', 'emp555@hotmail.com', '', '$2y$10$.pHNHAOZGP7706AeTmlel.DE3Xfptw9CiCn0SCxHIJ.MoNqKXq4Om', 'Administrador', 'Sim', '(45) 4545-5454', '', 'sem-foto.jpg', '2025-08-06', NULL, 44, NULL, NULL, '1111-11-11', '', '', '', '', '', 'Sim', NULL, NULL, '', NULL, 44, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios_permissoes`
--

INSERT INTO `usuarios_permissoes` (`id`, `usuario`, `permissao`) VALUES
(45, 36, 1),
(46, 36, 2),
(47, 36, 3),
(48, 36, 4),
(49, 36, 5),
(50, 36, 8),
(51, 36, 9),
(52, 36, 10),
(53, 36, 11),
(54, 36, 12),
(55, 36, 13),
(56, 36, 14),
(57, 36, 15),
(58, 36, 16),
(59, 36, 17),
(60, 36, 18),
(61, 36, 19),
(62, 36, 23),
(63, 36, 24),
(64, 36, 25),
(65, 36, 26),
(66, 36, 27),
(67, 36, 36),
(68, 20, 1),
(69, 20, 25),
(70, 20, 8),
(71, 20, 12),
(72, 21, 1),
(73, 21, 2),
(74, 21, 3),
(75, 21, 4),
(76, 21, 5),
(77, 21, 8),
(78, 21, 9),
(79, 21, 10),
(80, 21, 11),
(81, 21, 12),
(82, 21, 13),
(83, 21, 14),
(84, 21, 15),
(85, 21, 16),
(86, 21, 17),
(87, 21, 18),
(88, 21, 19),
(89, 21, 23),
(90, 21, 24),
(91, 21, 25),
(92, 21, 26),
(93, 21, 27),
(94, 21, 37),
(95, 21, 38),
(97, 29, 1),
(98, 29, 2),
(99, 29, 3),
(100, 29, 4),
(101, 29, 5),
(102, 29, 8),
(103, 29, 9),
(104, 29, 10),
(105, 29, 11),
(106, 29, 12),
(107, 29, 13),
(108, 29, 14),
(109, 29, 15),
(110, 29, 16),
(111, 29, 17),
(112, 29, 18),
(113, 29, 19),
(114, 29, 23),
(115, 29, 24),
(116, 29, 25),
(117, 29, 26),
(118, 29, 27),
(119, 29, 37),
(120, 29, 38),
(121, 29, 39),
(122, 29, 40),
(123, 29, 41),
(124, 29, 42),
(125, 29, 43),
(126, 29, 44),
(127, 29, 45),
(128, 29, 46),
(129, 29, 47),
(130, 29, 48),
(131, 29, 49),
(132, 29, 50),
(133, 29, 51),
(134, 29, 52),
(135, 29, 53),
(136, 29, 54),
(137, 29, 55),
(138, 29, 56),
(139, 29, 57),
(140, 29, 58),
(141, 29, 59),
(142, 29, 60),
(143, 29, 61),
(144, 29, 62),
(145, 41, 39),
(146, 41, 60),
(147, 41, 63);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_permissoes_sas`
--

CREATE TABLE `usuarios_permissoes_sas` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios_permissoes_sas`
--

INSERT INTO `usuarios_permissoes_sas` (`id`, `usuario`, `permissao`) VALUES
(1, 7, 1),
(2, 7, 2),
(3, 7, 3),
(4, 7, 4),
(5, 7, 5),
(6, 7, 9),
(7, 7, 10),
(8, 7, 11),
(9, 7, 12),
(10, 7, 13),
(11, 7, 14),
(12, 7, 15),
(13, 7, 16),
(14, 7, 17),
(15, 7, 18),
(16, 7, 19),
(17, 7, 23),
(18, 7, 24),
(19, 7, 25),
(20, 7, 26),
(21, 7, 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `link`, `ordem`) VALUES
(1, 'Como Trabalhar com a campanha de Marketing', 'https://www.youtube.com/watch?v=8KYf5fHvPsI', 1),
(3, 'Como utilizar o sistema', 'https://www.youtube.com/watch?v=8KYf5fHvPsI', 2),
(4, 'Vídeo do drive incorporado', 'https://drive.google.com/file/d/1hh5pHrAaiVYFRMnqVX_kzCwilzzMJRZ1/preview?usp=sharing', 3),
(5, 'tetf', 'fsgsdgsg', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `acessos_sas`
--
ALTER TABLE `acessos_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `anotacoes`
--
ALTER TABLE `anotacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chamados_respostas`
--
ALTER TABLE `chamados_respostas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes_recursos`
--
ALTER TABLE `clientes_recursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `compra_venda`
--
ALTER TABLE `compra_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disparos`
--
ALTER TABLE `disparos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `frequencias`
--
ALTER TABLE `frequencias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupos_clientes`
--
ALTER TABLE `grupos_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupos_disparos`
--
ALTER TABLE `grupos_disparos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_acessos_sas`
--
ALTER TABLE `grupo_acessos_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os_imagens`
--
ALTER TABLE `os_imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar_sas`
--
ALTER TABLE `pagar_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `perguntas_site`
--
ALTER TABLE `perguntas_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `planos_itens`
--
ALTER TABLE `planos_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `planos_recursos`
--
ALTER TABLE `planos_recursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receber_sas`
--
ALTER TABLE `receber_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `recursos_site`
--
ALTER TABLE `recursos_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sangrias`
--
ALTER TABLE `sangrias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tarefas_clientes`
--
ALTER TABLE `tarefas_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tarefas_sas`
--
ALTER TABLE `tarefas_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `temp_texto`
--
ALTER TABLE `temp_texto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_permissoes_sas`
--
ALTER TABLE `usuarios_permissoes_sas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `acessos_sas`
--
ALTER TABLE `acessos_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `anotacoes`
--
ALTER TABLE `anotacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de tabela `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `chamados_respostas`
--
ALTER TABLE `chamados_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `clientes_recursos`
--
ALTER TABLE `clientes_recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `compra_venda`
--
ALTER TABLE `compra_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `disparos`
--
ALTER TABLE `disparos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `dispositivos`
--
ALTER TABLE `dispositivos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `frequencias`
--
ALTER TABLE `frequencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `grupos_clientes`
--
ALTER TABLE `grupos_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `grupos_disparos`
--
ALTER TABLE `grupos_disparos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `grupo_acessos_sas`
--
ALTER TABLE `grupo_acessos_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de tabela `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `marketing`
--
ALTER TABLE `marketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `os_imagens`
--
ALTER TABLE `os_imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pagar_sas`
--
ALTER TABLE `pagar_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `perguntas_site`
--
ALTER TABLE `perguntas_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `planos`
--
ALTER TABLE `planos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `planos_itens`
--
ALTER TABLE `planos_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `planos_recursos`
--
ALTER TABLE `planos_recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `receber_sas`
--
ALTER TABLE `receber_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `recursos_site`
--
ALTER TABLE `recursos_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sangrias`
--
ALTER TABLE `sangrias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sub_categorias`
--
ALTER TABLE `sub_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tarefas_clientes`
--
ALTER TABLE `tarefas_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tarefas_sas`
--
ALTER TABLE `tarefas_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `temp_texto`
--
ALTER TABLE `temp_texto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes_sas`
--
ALTER TABLE `usuarios_permissoes_sas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
