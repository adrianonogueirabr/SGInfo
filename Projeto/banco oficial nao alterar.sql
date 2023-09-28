-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 03:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminfor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cliente_cli`
--

CREATE TABLE `tbl_cliente_cli` (
  `NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_PESSOA_CLI` varchar(20) NOT NULL,
  `TXT_CPF_CNPJ_CLI` varchar(16) NOT NULL,
  `TXT_RAZAO_CLI` varchar(100) NOT NULL,
  `TXT_FANTASIA_CLI` varchar(100) DEFAULT NULL,
  `DTA_NASCIMENTO_CLI` date DEFAULT NULL,
  `TXT_TELEFONE_CLI` varchar(20) NOT NULL,
  `TXT_RAMAL_CLI` varchar(10) DEFAULT NULL,
  `TXT_FAX_CLI` varchar(20) DEFAULT NULL,
  `TXT_EMAIL_CLI` varchar(100) NOT NULL,
  `TXT_SITE_CLI` varchar(100) DEFAULT NULL,
  `NUM_CEP_CLI` int(8) UNSIGNED DEFAULT NULL,
  `TXT_LOGRADOURO_CLI` varchar(100) DEFAULT NULL,
  `NUM_NUMERO_CLI` int(10) UNSIGNED DEFAULT NULL,
  `TXT_COMPLEMENTO_CLI` varchar(50) DEFAULT NULL,
  `TXT_REFERENCIA_CLI` varchar(50) DEFAULT NULL,
  `TXT_BAIRRO_CLI` varchar(50) DEFAULT NULL,
  `TXT_CIDADE_CLI` varchar(50) DEFAULT NULL,
  `TXT_ESTADO_CLI` char(2) DEFAULT NULL,
  `TXT_IM_CLI` varchar(20) DEFAULT NULL,
  `TXT_IE_CLI` varchar(20) DEFAULT NULL,
  `TXT_RG_CLI` varchar(20) DEFAULT NULL,
  `TXT_CONTATO_CLI` varchar(50) DEFAULT NULL,
  `TXT_OBSERVACAO_CLI` text DEFAULT NULL,
  `DTH_ALTERACAO_CLI` datetime DEFAULT NULL,
  `DTH_REGISTRO_CLI` datetime DEFAULT NULL,
  `VAL_SALDO_CLI` double(8,2) DEFAULT NULL,
  `TXT_TITULOABERTO_CLI` varchar(3) DEFAULT NULL,
  `TXT_ATIVO_CLI` varchar(3) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cliente_cli`
--

INSERT INTO `tbl_cliente_cli` (`NUM_ID_CLI`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_PESSOA_CLI`, `TXT_CPF_CNPJ_CLI`, `TXT_RAZAO_CLI`, `TXT_FANTASIA_CLI`, `DTA_NASCIMENTO_CLI`, `TXT_TELEFONE_CLI`, `TXT_RAMAL_CLI`, `TXT_FAX_CLI`, `TXT_EMAIL_CLI`, `TXT_SITE_CLI`, `NUM_CEP_CLI`, `TXT_LOGRADOURO_CLI`, `NUM_NUMERO_CLI`, `TXT_COMPLEMENTO_CLI`, `TXT_REFERENCIA_CLI`, `TXT_BAIRRO_CLI`, `TXT_CIDADE_CLI`, `TXT_ESTADO_CLI`, `TXT_IM_CLI`, `TXT_IE_CLI`, `TXT_RG_CLI`, `TXT_CONTATO_CLI`, `TXT_OBSERVACAO_CLI`, `DTH_ALTERACAO_CLI`, `DTH_REGISTRO_CLI`, `VAL_SALDO_CLI`, `TXT_TITULOABERTO_CLI`, `TXT_ATIVO_CLI`) VALUES
(00001, 00002, 'FISICA', '34721371268', 'VIVIANE SALDANHA OLIVEIRA', 'VIVIANE SALDANHA OLIVEIRA', '1950-01-01', '92991366550', '0', '', 'vso.saldanha@hotmail.com', 'ni', 69050970, 'AV DJALMA BATISTA', 1661, 'sl 806 e 807', 'shopping millenio', 'CHAPADA', 'MANAUS', 'AM', '', '', '', 'VIVIANE', 'CONSULTORIO MEDICO , REDE VSO - SENHA V1V1@N3VSO - SERVIDOR(192.168.1.100) IMPRESSORA epson s305(192.168.1.101) E DADOS COMPARTILHADOS IMPRESSORA HP1102W(192.168.1.110)', '2021-03-18 00:00:00', '2015-08-13 00:00:00', 0.00, 'SIM', 'SIM'),
(00002, 00002, 'FISICA', '40484105124', 'ELENICE', 'ELENICE', '2000-01-01', '92991330706', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', 'ELENICE', 'FILHO CAIO VICTOR - 92994065428', '2015-08-13 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00003, 00002, 'FISICA', '28675774893', 'CIRILO', 'CIRILO', '2000-01-01', '92991488777', '0', '', 'cirilo.mika@bol.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', 'CIRILO', 'JANETE - 92991792477\r\nMATEUS - 9299255005\r\nSENHA WIFI MIREYA10', '2015-08-13 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00004, 00002, 'FISICA', '38528337448', 'WELLINGTON', 'WELLINGTON', '2000-01-01', '9221212121', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'CUNHADO DO ANDERSON', '2015-08-13 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00005, 00002, 'JURIDICA', '16793636000178', 'OFICINA SPEED CAR', 'OFICINA SPEED CAR', '1950-01-01', '9236530450', '0', '', 'vinicius@oficinamultitec.com.br', 'www.oficinamultitec.com.br', 69030540, 'RUA PARAGUACU', 206, '', 'prox ao cigs', 'VILA DA PRATA', 'MANAUS', 'S', '', '', '', 'VINICIUS - 92994689368', 'REDE MULTITEC SENHA MULTITEC15201', '2019-01-10 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00006, 00002, 'FISICA', '02815552906', 'THAIS', 'THAIS', '2000-01-01', '92981563156', '0', '', 'naotem@naotem.com.br', 'NI', 0, 'NI', 0, 'NI', 'NI', 'NI', 'MANAUS', 'AM', '', '', '', 'NI', 'ESPOSA VINICIUS DA MULTITEC', '2015-08-13 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00007, 00002, 'FISICA', '25131052572', 'HUMBERTO MACEDO', 'HUMBERTO MACEDO', '2000-07-11', '92991747370', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2015-08-13 00:00:00', '2015-08-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00008, 00002, 'FISICA', '13401750100', 'LAINNA OLIVEIRA FERREIRA', 'LAINNA OLIVEIRA FERREIRA', '1994-09-12', '9232281530', '0', '', 'lainna.oliveira@mardisa.com.br', '', 69086503, 'TRAVESSA B10 QUADRA B18 LOT CIDADE LESTE', 0, '', '', 'SAO JOSE', 'MANAUS', 'AM', '', '', '262004843', '', '', '2015-11-25 00:00:00', '2015-11-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00009, 00002, 'FISICA', '71752994272', 'DAVI DA SILVA FREITAS', 'DAVI DA SILVA FREITAS', '1981-10-15', '9232281500', '0', '', 'davi.freitas@mardisa.com.br', '', 69097769, 'RUA LUIS AGUIAR', 24, 'CJ OSVALDO FROTA II', '', 'CIDADE NOVA', 'MANAUS', 'AM', '', '', '', '', '', '2015-11-25 00:00:00', '2015-11-25 00:00:00', 50.00, 'NAO', 'SIM'),
(00010, 00002, 'FISICA', '80529399253', 'ANTONIEL SILVA DOS SANTOS', 'ANTONIEL SILVA DOS SANTOS', '1984-05-01', '92981187569', '0', '', 'garantia.mao@mardisa.com.br', '', 69045000, 'RUA DR ABILIO ALENCAR', 9, 'QUADRA 7', '', 'PLANALTO', 'MANAUS', 'AM', '', '', '', 'ANTONIEL SANTOS', '', '2016-03-02 00:00:00', '2016-03-02 00:00:00', 0.00, 'NAO', 'SIM'),
(00011, 00002, 'FISICA', '061473090210', 'FERNANDO FEITOZA DA SILVA', 'FERNANDO FEITOZA DA SILVA', '1977-12-10', '987729498', '0', '', 'fernando.feitoza@mardisa.com.br', '', 69041030, 'AV CANDIDO PORTINARI', 57, 'RESIDENCIAL PORTINARI', '', 'TARUMA', 'MANAUS', 'AM', '', '', '13244353', 'FERNANDO', '', '2016-03-15 00:00:00', '2016-03-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00012, 00002, 'FISICA', '07839618200', 'ADELSON MAIA DA SILVA', 'ADELSON MAIA DA SILVA', '1960-11-23', '999812637', '0', '', 'adelson.maia@mardisa.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-03-24 00:00:00', '2016-03-24 00:00:00', 0.00, 'NAO', 'SIM'),
(00013, 00002, 'FISICA', '79615708291', 'ADRIANO NOGUEIRA DO NASCIMENTO', 'ADRIANO NOGUEIRA DO NASCIMENTO', '1985-10-06', '92991494069', '0', '', 'adriano_nogueira22@hotmail.com', '', 69047070, 'RUA NATIVIDADE', 170, 'B', 'PROX MERCADINHO MORUMBI RANCHOS', 'REDENCAO', 'MANAUS', 'AM', '', '', '17928745', 'ADRIANO', '', '2016-03-24 00:00:00', '2016-03-24 00:00:00', 0.00, 'NAO', 'SIM'),
(00014, 00002, 'FISICA', '74289349234', 'ROGERIO DOS SANTOS BRANCHES', 'ROGERIO DOS SANTOS BRANCHES', '1982-06-15', '92994349234', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-04-22 00:00:00', '2016-04-22 00:00:00', 0.00, 'NAO', 'SIM'),
(00015, 00002, 'FISICA', '57645830808', 'JOHNSON ABREU', 'JOHNSON ABREU', '2016-01-01', '55 92 9256-5848', '0', '', 'johnson.abreu@toyolex.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-05-14 00:00:00', '2016-05-14 00:00:00', 0.00, 'NAO', 'SIM'),
(00016, 00002, 'FISICA', '16699363506', 'DYMME ', 'DYMME ', '2016-01-01', '92992855779', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-05-15 00:00:00', '2016-05-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00017, 00002, 'FISICA', '04121114116', 'RG', 'RG', '2016-01-01', '99999999999', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', 'MECANICO DA MARDISA, CONHECIDO POR RG', '2016-06-17 00:00:00', '2016-06-17 00:00:00', 0.00, 'NAO', 'SIM'),
(00018, 00002, 'FISICA', '06489281287', 'MARIO SERGIO DA S. CALHEIRO', 'MARIO SERGIO DA S. CALHEIRO', '2016-01-01', '92991705187', '0', '', 'naotem@naotem.com.br', '', 69045330, 'RUA COCHABAMBA', 2, 'PROX PANIFICADORA JOSIANE', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2016-07-04 00:00:00', '2016-07-04 00:00:00', 0.00, 'NAO', 'SIM'),
(00019, 00002, 'FISICA', '27233929700', 'MURIEL GOES', 'MURIEL GOES', '2016-01-01', '92992652985', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2016-07-14 00:00:00', '2016-07-14 00:00:00', 0.00, 'NAO', 'SIM'),
(00020, 00002, 'FISICA', '61409995291', 'CLAUDIO REGIS FERREIRA LIMA', 'CLAUDIO REGIS FERREIRA LIMA', '2016-01-01', '992615577', '0', '', 'claudio.lima@mardisa.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-07-20 00:00:00', '2016-07-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00021, 00002, 'FISICA', '15605605844', 'FABRICIO MOTOBOY', 'FABRICIO MOTOBOY', '2016-01-01', '984372148', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', '', '', '2016-08-04 00:00:00', '2016-08-04 00:00:00', 0.00, 'NAO', 'SIM'),
(00022, 00002, 'FISICA', '90813954754', 'VANESSA DOM PEDRO', 'VANESSA DOM PEDRO', '2016-01-01', '982777647', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2016-08-24 00:00:00', '2016-08-24 00:00:00', 0.00, 'NAO', 'SIM'),
(00023, 00002, 'FISICA', '98860177324', 'RUAN JIMME', 'RUAN JIMME', '0000-00-00', '92993455385', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-09-06 00:00:00', '2016-09-06 00:00:00', 0.00, 'NAO', 'SIM'),
(00024, 00002, 'FISICA', '82698325291', 'SHIRLENE DOS SANTOS PEREIRA', 'SHIRLENE DOS SANTOS PEREIRA', '1986-03-28', '992062338', '0', '', 'shirlene.pereira@mardisa.com.br', '', 69096390, 'RUA SAO JOAQUIM ANTIGA RUA 8', 0, '', '', '', 'MANAUS', 'AM', '', '', '18353878', '', '', '2016-09-14 00:00:00', '2016-09-14 00:00:00', 0.00, 'NAO', 'SIM'),
(00025, 00002, 'FISICA', '82950891454', 'ANDERSON TAVARES', 'ANDERSON TAVARES', '2016-01-01', '99498-0471', '0', '', 'naotem@naotem.com.br', '', 69047070, 'RUA NATIVIDADE', 170, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 0.00, 'NAO', 'SIM'),
(00026, 00006, 'FISICA', '72587458234', 'JOSEMAR FERREIRA FRANCO', 'JOSEMAR FERREIRA FRANCO', '1982-05-11', '991957406', '0', '', 'josemar.franco@mardisa.com.br', '', 0, 'RUA 188', 4, '', '', '', 'MANAUS', 'AM', '', '', '15927911', '', '', '2016-10-10 00:00:00', '2016-10-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00027, 00002, 'FISICA', '98215757901', 'DANIEL MARQUES', 'DANIEL MARQUES', '2016-01-01', '92984078625', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2016-10-19 00:00:00', '2016-10-19 00:00:00', 0.00, 'SIM', 'SIM'),
(00028, 00002, 'FISICA', '28726455005', 'TALITA FARHAT', 'TALITA FARHAT', '2016-01-01', '9291175028', '0', '', 'talita.farhat@mardisaautos.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', '', '', '2016-10-26 00:00:00', '2016-10-26 00:00:00', 0.00, 'NAO', 'SIM'),
(00029, 00002, 'FISICA', '10716052598', 'ITALO VASCONCELOS', 'ITALO VASCONCELOS', '1952-02-01', '92981121859', '0', '', 'italo.vasconcelos@mardisaautos.com.br', 'ni', 0, 'NI', 0, 'okslen 2p shop ponta negra', 'ni', 'NI', 'MANAUS', 'AM', '', '', '', 'NI', 'rede wireless osklen senha OsKlEn-IB roteador Admin senha OsKlEn-IB ip 192.168.100.1 ip roteador\r\n', '2017-10-06 00:00:00', '2016-12-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00030, 00002, 'FISICA', '48415556411', 'ALEMAO', 'ALEMAO', '2016-01-01', '92992806774', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2017-01-17 00:00:00', '2017-01-17 00:00:00', 0.00, 'NAO', 'SIM'),
(00031, 00002, 'FISICA', '53836325810', 'JAILSON - PORTEIRO', 'JAILSON - PORTEIRO', '2016-01-01', '9232281515', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'NI', '', '', '', '', '', '2017-02-09 00:00:00', '2017-02-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00032, 00002, 'FISICA', '89718511121', 'ERICA BANDEIRA', 'ERICA BANDEIRA', '1950-01-01', '9299915151', '0', '', 'erica.bandeira@mardisa.com.br', '', 69037057, 'ALAMEDA ALASKA ', 271, 'residencial mirante do rio negro', '', 'CJ ITAPURANGA', 'MANAUS', 'AM', '', '', '', '', '', '2020-07-10 00:00:00', '2017-03-03 00:00:00', 0.00, 'NAO', 'SIM'),
(00033, 00002, 'FISICA', '72648143947', 'FABIANA LUIZ', 'FABIANA LUIZ', '2017-01-01', '9293407340', '0', '', 'fabiana.luiz@landroverway.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2017-03-20 00:00:00', '2017-03-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00034, 00002, 'FISICA', '04648597788', 'MARCOS LAND ROVER', 'MARCOS LAND ROVER', '2017-01-01', '9281462474', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2017-03-28 00:00:00', '2017-03-28 00:00:00', 0.00, 'NAO', 'SIM'),
(00035, 00002, 'FISICA', '10812486021', 'VICTOR MONTENEGRO', 'VICTOR MONTENEGRO', '1950-01-01', '996096253', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2017-03-29 00:00:00', '2017-03-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00036, 00002, 'FISICA', '62231183331', 'ROSIMEIRE MAGALHAES', 'ROSIMEIRE MAGALHAES', '1950-01-01', '559288024613', '0', '', 'naotem@naotemcom.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2017-04-25 00:00:00', '2017-04-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00037, 00002, 'FISICA', '37757280150', 'CHRISTIAN CESAR', 'CHRISTIAN CESAR', '1950-01-01', '993899077', '0', '', 'christian.cesar@landroverway.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2017-06-09 00:00:00', '2017-06-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00038, 00002, 'FISICA', '34445951234', 'SONIMAR LIMA DE SALES', 'SONIMAR LIMA DE SALES', '1973-03-15', '92991223079', '0', '', 'sonimar.lima@mardisa.com.br', '', 69070530, 'RUA BENTO JOSE DE LIMA', 263, '', '', 'EDUCANDOS', 'MANAUS', 'AP', '', '', '09085190', '', '', '2017-09-11 00:00:00', '2017-09-11 00:00:00', 0.00, 'NAO', 'SIM'),
(00039, 00002, 'FISICA', '32316950906', 'EVERTON COSTA', 'EVERTON COSTA', '1950-01-01', '92991944059', '0', '', 'everton.costa@landroverway.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', 'bematech 581852 - mac 	00:07:25:29:98:80', '2020-10-31 00:00:00', '2018-03-12 00:00:00', 0.00, 'NAO', 'SIM'),
(00040, 00002, 'FISICA', '18349121645', 'GEANE EYLER', 'GEANE EYLER', '1950-01-01', '92991570619', '0', '', 'naotem@naotem.com.br', '', 0, 'RUA IGUATU ', 412, 'em oficina de bicicleta', '', '', 'MANAUS', 'AM', '', '', '', '', 'Amiga do eyler', '2018-03-14 00:00:00', '2018-03-14 00:00:00', 0.00, 'NAO', 'SIM'),
(00041, 00002, 'FISICA', '44376112763', 'ITALO SERGIO', 'ITALO SERGIO', '1950-01-01', '92982528469', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2018-03-21 00:00:00', '2018-03-21 00:00:00', 0.00, 'NAO', 'SIM'),
(00042, 00002, 'FISICA', '80215443411', 'MAURO CANHOTO', 'MAURO CANHOTO', '1950-01-02', '993661942', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', '', '', '2018-04-18 00:00:00', '2018-04-18 00:00:00', 0.00, 'NAO', 'SIM'),
(00043, 00002, 'FISICA', '13804881173', 'VALDICLAY - LAND ROVER', 'VALDICLAY - LAND ROVER', '1950-01-01', '92991521316', '0', '', 'agendamento.mao@landroverway.com.br', '', 0, 'AV DJALMA BATISTA', 0, '', '', 'SAO GERALDO', 'MANAUS', 'AM', '', '', '', '', '', '2018-06-13 00:00:00', '2018-06-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00044, 00002, 'FISICA', '57176674000', 'PAULO AMIGO DO SANTOS', 'PAULO AMIGO DO SANTOS', '1966-02-13', '92994816989', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'CLIENTE POSSUI UM LENOVO IDEAPAD COM SSD 32GB, COMPROU UM PENDRIVER ONDE FOI INSTALADO TODOS OS PROGRAMAS, MESMO ASSIM UNIDADE C FICOU COM 3GB DISPONIVEL SOMENTE. ', '2018-10-31 00:00:00', '2018-10-23 00:00:00', 0.00, 'NAO', 'SIM'),
(00045, 00002, 'FISICA', '17793995023', 'RAI (DANI)', 'RAI (DANI)', '1950-01-01', '92992376806', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2018-12-10 00:00:00', '2018-12-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00046, 00002, 'FISICA', '08846590031', 'CARLOS AR CONDICIONADO MARDISA', 'CARLOS AR CONDICIONADO MARDISA', '1950-01-01', '92981595412', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2019-01-22 00:00:00', '2019-01-22 00:00:00', 0.00, 'NAO', 'SIM'),
(00047, 00002, 'FISICA', '48649873006', 'KELLY BOX MANAUS', 'KELLY BOX MANAUS', '1950-01-02', '092994796559', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', '', '', '2019-03-19 00:00:00', '2019-03-19 00:00:00', 0.00, 'NAO', 'SIM'),
(00048, 00002, 'FISICA', '57469505059', 'DYME ONNYL', 'DYME ONNYL', '1950-01-01', '92855779', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'S', '', '', '', '', '', '2019-06-10 00:00:00', '2019-06-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00049, 00002, 'FISICA', '75811368097', 'MARCIA', 'MARCIA', '2017-01-01', '9291527931', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', '', 'AM', '', '', '', '', '', '2020-01-13 00:00:00', '2020-01-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00050, 00002, 'FISICA', '57163369069', 'ANDERSON SERRAO', 'ANDERSON SERRAO', '1950-01-01', '092984094777', '0', '', 'anderson_a_serrao@hotmail.com', '', 69047441, 'SÃ£O VICENTE DE PAULA', 1421, 'brasil gas distribuidora', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', 'ANDERSON', '', '2020-01-21 00:00:00', '2020-01-21 00:00:00', 0.00, 'NAO', 'SIM'),
(00051, 00002, 'FISICA', '00000000091', 'MAYANA SILVA DA SILVA', 'MAYANA SILVA DA SILVA', '2020-02-28', '9291462990', '0', '', 'mayasilva036@gmail.com', '', 69047150, 'RUA INDEPENDENCIA ', 84, '', 'serralheria ', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', 'veio pelo olx', '2020-02-28 00:00:00', '2020-02-28 00:00:00', 0.00, 'NAO', 'SIM'),
(00052, 00002, 'FISICA', '14850388124', 'ALVANIR MAGALHAES', 'ALVANIR MAGALHAES', '2020-03-01', '9292326182', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2020-03-03 00:00:00', '2020-03-03 00:00:00', 0.00, 'NAO', 'SIM'),
(00053, 00002, 'FISICA', '12309867823', 'MARCO CARDENAS', 'MARCO CARDENAS', '2020-03-12', '92984420378', '0', '', 'naotem@naotem.com.br', '', 69015522, 'RUA RIO ITU', 65, 'b lot piorini', 'travessa rua rio yavari com rua rio itu ', 'TERRA NOVA', 'MANAUS', 'AM', '', '', '', '', 'pelo facebook', '2020-03-12 00:00:00', '2020-03-12 00:00:00', 0.00, 'NAO', 'SIM'),
(00054, 00002, 'FISICA', '65412478520', 'AILANA SOUSA', 'AILANA SOUSA', '2020-03-16', '092994656538', '0', '', 'ailana.sousa@mardisa.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2020-03-16 00:00:00', '2020-03-16 00:00:00', 0.00, 'NAO', 'SIM'),
(00055, 00002, 'FISICA', '01324657894', 'EDICARLOS LOPES', 'EDICARLOS LOPES', '2020-03-24', '09292227230', '0', '', 'naotem@naotem.com.br', '', 69049310, 'RUA 14', 0, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', 'Ex funcionario da Pateo Manaus', '2020-03-24 00:00:00', '2020-03-24 00:00:00', 0.00, 'NAO', 'SIM'),
(00056, 00002, 'FISICA', '99570923083', 'DEBORA MAYARA FERREIRA BECKMAN', 'DEBORA MAYARA FERREIRA BECKMAN', '2020-04-04', '92993271746', '0', '', 'naotem@naotem.com.br', '', 69047010, 'RUA GURUPI', 1930, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', 'ATRAVEZ DO KILSON WHATSAPP', '2020-04-07 00:00:00', '2020-04-07 00:00:00', 0.00, 'NAO', 'SIM'),
(00057, 00002, 'FISICA', '76934474074', 'HELLAYNE FERNANDES', 'HELLAYNE FERNANDES', '2020-04-20', '92994242918', '0', '', 'naotem@naotem.com.br', '', 69038140, 'RUA FLORESTAL', 35, '', '', ' LíRIO DO VALE', 'MANAUS', 'AM', '', '', '', '', 'Hellayne Corretora de Seguros - America Ford', '2020-04-20 00:00:00', '2020-04-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00058, 00002, 'FISICA', '70825529042', 'MARDISA - JULIANA', 'MARDISA - JULIANA', '2020-04-22', '92991101321', '0', '', 'naotem@naotem.com.br', '', 69035230, 'RUA NATAL', 0, 'morro do compensao', 'beco proximo a um poste', 'COMPENSA', 'MANAUS', 'AM', '', '', '', '', 'funcionaria da mardisa', '2020-04-22 00:00:00', '2020-04-22 00:00:00', 0.00, 'NAO', 'SIM'),
(00059, 00002, 'FISICA', '47204070054', 'ERICA TOYOLEX', 'ERICA TOYOLEX', '2020-05-12', '092996027485', '0', '', 'naotem@naotem.com.br', '', 69079350, 'RUA PEDRO ALEXANDRE', 0, '', 'px ao colégio tiradentes', 'PETROPOLIS', 'MANAUS', 'AM', '', '', '', '', 'irma do edmilson da funilaria', '2020-05-12 00:00:00', '2020-05-12 00:00:00', 0.00, 'NAO', 'SIM'),
(00060, 00002, 'FISICA', '41480735000', 'GILBERT DE SOUZA SILVA', 'MARIA D M FEMININO NASCIMENTO', '2020-05-15', '09295359865', '0', '', 'naotem@naotem.com.br', '', 69047070, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'olx', '2020-05-15 00:00:00', '2020-05-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00061, 00002, 'FISICA', '85767434506', 'SANDRO WILLIS', 'SANDRO WILLIS', '2020-05-26', '92991515129', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'funcionario da mardisa', '2020-05-27 00:00:00', '2020-05-27 00:00:00', 0.00, 'NAO', 'SIM'),
(00062, 00002, 'FISICA', '38866036013', 'ESMERALDO YANO - WAY MANAUS', 'ESMERALDO YANO - WAY MANAUS', '2020-05-27', '92991140077', '0', '', 'esmeraldo.yano@landroverway.com.br', '', 69045570, 'RUA VIENA ', 12, '', '', 'PLANALTO', 'MANAUS', 'AM', '', '', '', '', '', '2020-07-15 00:00:00', '2020-05-27 00:00:00', 0.00, 'NAO', 'SIM'),
(00063, 00002, 'FISICA', '68641144064', 'OTAVIO CARNEIRO', 'OTAVIO CARNEIRO', '2020-06-29', '092994556542', '0', '', 'naotem@naotem.com.br', '', 69053190, 'RUA CHAVES RIBEIRO', 203, '', '', 'SAO GERALDO', 'MANAUS', 'AM', '', '', '', '', 'seu otavio mardisa veiculos', '2020-06-29 00:00:00', '2020-06-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00064, 00006, 'FISICA', '17701292004', 'VALMIR GONCALVES DE OLIVEIRA FILHO', 'VALMIR GONCALVES DE OLIVEIRA FILHO', '2020-07-15', '09292758564', '0', '', 'naotem@naotem.com.br', '', 69047070, 'RUA RAFAEL ASSAYAG', 112, '', 'na empresa maris vest', 'ALVORADA 1', 'MANAUS', 'S', '', '', '', 'VALMIR', 'olx | realizada a configuracao da pasta do computador onde possui as duas impressoras ploter instalada. ip dele fixo 192.168.0.240 usuario user senha 123456', '2022-06-24 00:00:00', '2020-07-15 00:00:00', 0.00, 'SIM', 'SIM'),
(00065, 00002, 'FISICA', '82566817057', 'MARCOS GRAFICA', 'MARCOS GRAFICA', '2020-07-16', '09291418340', '0', '', 'naotem@naotem.com.br', '', 69086110, 'RUA TAPEROA', 0, 'portao azul final da rua', '', 'ALVORADA 1', 'MANAUS', 'AM', '', '', '', '', 'amigo do maris vest', '2020-07-17 00:00:00', '2020-07-17 00:00:00', 0.00, 'NAO', 'SIM'),
(00066, 00007, 'FISICA', '72845892808', 'ANA PAULA', 'ANA PAULA', '2020-07-17', '9299510-2067', '0', '', 'anapaula@hotmail.com', '', 69047070, 'RUA NATIVIDADE', 0, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', '', '2020-07-17 00:00:00', '2020-07-17 00:00:00', 0.00, 'NAO', 'SIM'),
(00067, 00007, 'FISICA', '12345678900', 'DEBORAH ABECASSIS DE OLIVEIRA', 'DEBORAH ABECASSIS DE OLIVEIRA', '2020-07-23', '92981498232', '0', '', 'naotem@naotem.com.br', '', 69047070, 'AVENIDA VIA LACTEA', 0, '', '', 'ALEIXO', 'MANAUS', 'S', '', '', '', '', '', '2020-07-27 00:00:00', '2020-07-23 00:00:00', 0.00, 'NAO', 'SIM'),
(00068, 00007, 'FISICA', '01234567810', 'LUCIO JANDER LIMA PRESTES', 'LUCIO JANDER LIMA PRESTES', '2020-07-28', '92994221801', '0', '', 'naotem@hotmail.com', '', 69043150, 'RUA ABILIO ALENCAR', 43, '', '', 'ALVORADA', 'MANAUS', 'AM', '', '', '', '', 'INDICAÃ‡ÃƒO VALMIR', '2020-07-28 00:00:00', '2020-07-28 00:00:00', 0.00, 'NAO', 'SIM'),
(00069, 00002, 'FISICA', '02602011037', 'FABIO CAMPOS DE OLIVEIRA', 'FABIO CAMPOS DE OLIVEIRA', '2020-07-29', '092984563660', '0', '', 'naotem@naotem.com.br', '', 69028100, 'RUA DINAMARCA', 173, '', 'proximo nilton lins', 'FLORES', 'MANAUS', 'AM', '', '', '', '', 'contato via olx', '2020-07-29 00:00:00', '2020-07-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00070, 00002, 'FISICA', '85121436220', 'MONICA DE SA PINHEIRO', 'MONICA DE SA PINHEIRO', '2020-08-10', '09299977779', '0', '', 'naotem@naotem.com.br', 'https://otorhinus.com/', 69053030, 'AV. RIO MADEIRA', 380, '', '', 'NOSSA SRA. DAS GRACAS', 'MANAUS', 'AM', '', '', '', '', 'cliente de contrato de manutencao, conta polissonografia: otorhinuspolissono@gmail.com senha A1polissono20, impressora l4611 sala espera 192.168.0.190', '2021-03-09 00:00:00', '2020-08-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00071, 00002, 'FISICA', '44435864070', 'JESSICA FRANCA', 'JESSICA FRANCA', '2020-08-11', '092981664214', '0', '', 'naotem@naotem.com.br', '', 69043470, 'RUA LUIS JORGE', 45, '', '', 'NOVA ESPERANCA', 'MANAUS', 'AM', '', '', '', '', 'cliente do dyme', '2020-08-11 00:00:00', '2020-08-11 00:00:00', 0.00, 'NAO', 'SIM'),
(00072, 00007, 'FISICA', '01478523689', 'ALDENIRA AZEVEDO', 'ALDENIRA AZEVEDO', '2020-08-12', '92991802312', '0', '', 'naotem@hotmail.com', '', 69099063, 'RUA ADALTO FERNANDES', 28, '', '', 'CONJUNTO AMAZONINO MENDES', 'MANAUS', 'S', '', '', '', '', '', '2020-08-12 00:00:00', '2020-08-12 00:00:00', 0.00, 'NAO', 'SIM'),
(00073, 00002, 'FISICA', '34719751440', 'LEANDERSON CALDAS VIEIRA', 'LEANDERSON CALDAS VIEIRA', '2020-08-19', '092992610344', '0', '', 'naotem@naotem.com.br', '', 69058335, 'RUA PROFESSORA OLGA DE MELO', 3, '', '', 'FLORES', 'MANAUS', 'AM', '', '', '', '', 'olx', '2020-08-19 00:00:00', '2020-08-19 00:00:00', 0.00, 'NAO', 'SIM'),
(00074, 00002, 'FISICA', '07430030041', 'FERNANDA DIRLEY', 'FERNANDA DIRLEY', '2020-08-31', '929292929229', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2020-08-31 00:00:00', '2020-08-31 00:00:00', 0.00, 'NAO', 'SIM'),
(00075, 00002, 'FISICA', '47718161072', 'MARIO FABIANO', 'MARIO FABIANO', '2020-09-20', '092984083659', '0', '', 'naotem@naotem.com.br', '', 69033240, 'RUA SAO JOAO', 409, '', 'maskate', 'SAO JORGE', 'MANAUS', 'AM', '', '', '', '', 'CUNHADO FABIANO DA MARDISA', '2020-09-20 00:00:00', '2020-09-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00076, 00002, 'FISICA', '37110960005', 'ADEMIR RODRIGUES', 'ADEMIR RODRIGUES', '2020-09-25', '092991858448', '0', '', 'naotem@naotem.com.br', '', 0, 'RUA RAFAEL ASSAYAG', 116, 'loja malha digital', 'maris vest', 'ALVORADA 1', 'MANAUS', 'AM', '', '', '', '', '', '2020-09-25 00:00:00', '2020-09-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00077, 00002, 'FISICA', '61648764002', 'THAYANA PANTOJA', 'THAYANA PANTOJA', '2020-10-01', '034640344345', '0', '', 'naotem@naotem.com.br', '', 69047270, 'RUA SAO FRANCISCO', 6, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', '', '2020-10-01 00:00:00', '2020-10-01 00:00:00', 0.00, 'NAO', 'SIM'),
(00078, 00002, 'FISICA', '21097740021', 'GILBERTO', 'GILBERTO', '2020-10-13', '092995129425', '0', '', 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2020-10-13 00:00:00', '2020-10-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00079, 00002, 'FISICA', '07357494004', 'LEONARDO DOS SANTOS SEVALHO ', 'LEONARDO DOS SANTOS SEVALHO ', '2020-10-19', '092984164689', '0', '', 'naotem@naotem.com.br', '', 69063010, 'RUA BENJAMIN CONSTANT', 304, '', '', 'PETRÃ³POLIS', 'MANAUS', 'AM', '', '', '', '', '20km ida e volta de casa', '2020-10-19 00:00:00', '2020-10-19 00:00:00', 0.00, 'NAO', 'SIM'),
(00080, 00002, 'JURIDICA', '52228850000145', '33 AUTOMOVEIS', '33 AUTOMOVEIS', '2020-11-10', '092991599994', '0', '', 'naotem@naotem.com.br', 'av. max teixeira, n 4000 - cidade nova, manaus - am, 69090-002', 69090002, 'AV MAX TEIXEIRA', 4000, 'fundos posto atem', 'depois do supermercado atacadao', 'CIDADE NOVA', 'MANAUS', 'AM', '', '', '', 'PAULA REGIO', 'indicacao haulisson. possui Rede live Tim 3116 2g senha bCDRfCGC , impressora laserjet pro m15w via wifi ip 192.168.1.8, 1 hp laserjet 1006 via usb(problemas) e 1 hp multifuncional deskjet ink 2130', '2020-11-10 00:00:00', '2020-11-10 00:00:00', 0.00, 'NAO', 'SIM'),
(00081, 00006, 'JURIDICA', '92384486000127', 'J PAULISTANO', 'J PAULISTANO', '2020-11-11', '092994568024', '0', '', 'naotem@naotem.com.br', '', 69068010, 'AV. SILVES', 1423, '', 'ao lado da intelbras', 'RAIZ', 'MANAUS', 'AM', '', '', '', 'RUTH', 'cliente indicado pelo kleiton, principal | \\\\SERVIDOR | usuario: jpaulistano senha 130133NOKIA | Senha master 654321 siscom | impressora em rede brother hl1210w - 192.168.0.58 - nome final 3874D1 | rede netvirtua1423', '2021-04-29 00:00:00', '2020-11-11 00:00:00', 0.00, 'NAO', 'SIM'),
(00082, 00002, 'JURIDICA', '18450299000222', 'AF COSTA ALIMENTOS', 'AF COSTA ALIMENTOS', '2020-11-12', '092996090051', '0', '', 'naotem@naotem.com.br', '', 69055010, 'RUA ABELARDO BARBOSA', 327, 'dentro da amazonas eletromecanica', 'amazonas eletromecanica', 'ALEIXO', 'MANAUS', 'AM', '', '', '', 'RICARDO HENRIQUE', 'indicacao kleiton', '2020-11-12 00:00:00', '2020-11-12 00:00:00', 0.00, 'NAO', 'SIM'),
(00083, 00002, 'FISICA', '92376512392', 'RAYNER MONTEIRO', 'RAYNER MONTEIRO', '2020-11-25', '092981120510', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, 'restaurante papagaio', '', '', 'MANAUS', 'AM', '', '', '', '', 'WIFI JHB senha crefin00 | usuario de sistema stefany senha 100692 | driver da impressora dentro da pasta c:\\syacom\\util | realizar backup da pasta c:\\arquivos e programas\\firebird para posteriormente instalar driver firebird e odbc 64bits que estao na pasta util substituir os arquivos da pasta c:\\arquivos e programas\\ firebird\\ pelo backup junto com pasta do sistema c:\\syacom | instalar certficado que encontrase na pasta C', '2020-12-26 00:00:00', '2020-11-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00084, 00002, 'FISICA', '12354258745', 'MECIANO FEITOSA', 'MECIANO FEITOSA', '2020-11-25', '092984150614', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'amigo da paula', '2020-11-25 00:00:00', '2020-11-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00085, 00002, 'FISICA', '44804063013', 'THYARA GONZALES', 'THYARA GONZALES', '2020-11-28', '092981397425', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'NAMORADA FABIANO MARDISA AUTOS', '2020-11-28 00:00:00', '2020-11-28 00:00:00', 0.00, 'NAO', 'SIM'),
(00086, 00002, 'FISICA', '01578418205', 'FELIPE MARTINS', 'FELIPE MARTINS', '2020-12-09', '092992307389', NULL, NULL, 'naotem@naotemj.com.br', '', 69057510, 'TRAVESSA E', 17, '', '', 'NOSSA SENHORA DAS GRACAS', 'MANAUS', 'AM', '', '', '', '', 'designer', '2020-12-09 00:00:00', '2020-12-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00087, 00002, 'FISICA', '52168258007', 'HUGO GADELHA', 'HUGO GADELHA', '2020-12-21', '092995257548', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2020-12-21 00:00:00', '2020-12-21 00:00:00', 0.00, 'NAO', 'SIM'),
(00088, 00002, 'FISICA', '01578418287', 'JAQUELINE MARDISA', 'JAQUELINE MARDISA', '2021-02-02', '092981120637', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2021-02-02 00:00:00', '2021-02-02 00:00:00', 0.00, 'NAO', 'SIM'),
(00089, 00002, 'FISICA', '01578418209', 'ELENILSON DE SENA GARCIA', 'ELENILSON DE SENA GARCIA', '2021-02-24', '991031241', NULL, NULL, 'naotem@naotem.com.br', '', 69097771, 'RUA GUARAQUECABA', 18, '', 'torre de telefonia', 'CIDADE NOVA', 'MANAUS', 'AM', '', '', '', '', 'amigo do dirley, igreja', '2021-02-25 00:00:00', '2021-02-25 00:00:00', 0.00, 'NAO', 'SIM'),
(00090, 00002, 'FISICA', '01578418204', 'ANA PAULA FERREIRA DE OLIVEIRA', 'ANA PAULA FERREIRA DE OLIVEIRA', '2021-03-05', '09292988436', NULL, NULL, 'anapaula.ferreira@mardisa.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', 'mardisa automoveis', '2021-03-05 00:00:00', '2021-03-05 00:00:00', 0.00, 'NAO', 'SIM'),
(00091, 00002, 'FISICA', '20138911217', 'MARCELO SILVEIRA', 'MARCELO SILVEIRA', '2021-03-15', '981502230', NULL, NULL, 'marcelo.silveira@mardisa.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2021-03-15 00:00:00', '2021-03-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00092, 00002, 'FISICA', '20138911210', 'JHULY LIMA', 'JHULY LIMA', '2021-03-17', '092988262291', NULL, NULL, 'naotem@naotem.com.br', '', 69047661, 'RUA PROFESSOR CARLOS MUNIZ', 251, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', 'amiga do rai', '2021-03-17 00:00:00', '2021-03-17 00:00:00', 0.00, 'NAO', 'SIM'),
(00093, 00002, 'FISICA', '74429310220', 'FABIA ALLYNE FERREIRA DOURADO', 'FABIA ALLYNE FERREIRA DOURADO', '2021-03-22', '92984253445', NULL, NULL, 'fabia.allyne@americaford.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'cliente da america ford', '2021-03-22 00:00:00', '2021-03-22 00:00:00', 0.00, 'NAO', 'SIM'),
(00094, 00002, 'JURIDICA', '09898778909887', 'FC MOTORS', 'FC MOTORS', '2021-04-01', '98962838829', NULL, NULL, 'naotem@naotem.com.br', '', 69015615, 'AV. ARQUITETO JOSÃ© HENRIQUES B. RODRIGUES', 2882, '', 'passando detran antes chegar no via nort', 'COLÃ´NIA TERRA NOVA', 'MANAUS', 'S', '', '', '', 'LUCELIA', 'impressora EPSON M3170( setor administrativo, ip 192.168.0.102, usuario e senha admin, mac adress 38:9d:92:a8:3d:14 )\r\nimpressora EPSON L6190( setor vendas, ip 192.168.0.101, usuario e senha nao conf, mac adress 38:1a:52:4f:bb:47) ambas com ip fixo configurado via dhcp no roteador 192.168.0.1 usuario e senha admin.', '2021-04-05 00:00:00', '2021-04-01 00:00:00', 0.00, 'NAO', 'SIM'),
(00095, 00002, 'FISICA', '09898778909880', 'DANIELE DE MENEZES BARREIROS', 'DANIELE DE MENEZES BARREIROS', '2021-04-09', '984101365', NULL, NULL, 'naotem@naotem.com.br', '', 69073490, 'RUA DIAGONAL', 67, '', '', 'BETANIA', 'MANAUS', 'AM', '', '', '', '', 'olx', '2021-04-09 00:00:00', '2021-04-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00096, 00002, 'FISICA', '79615708293', 'VERA LUCIA MARTINS', 'VERA LUCIA MARTINS', '2021-04-14', '991285017', NULL, NULL, 'naotem@naotem.com.br', '', 69053000, 'AV DJALMA BATISTA', 482, 'direcao centro', '', 'NOSSA SRA. DAS GRACAS', 'MANAUS', 'AM', '', '', '', '', '', '2021-04-15 00:00:00', '2021-04-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00097, 00002, 'FISICA', '79615708213', 'NADIA DUARTE DE OLIVEIRA', 'NADIA DUARTE DE OLIVEIRA', '2021-04-17', '092991900729', NULL, NULL, 'naotem@naotem.com.br', '', 69040670, 'RUA DUARTE DA COSTA', 469, '', '', 'DOM PEDRO', 'MANAUS', 'AM', '', '', '', '', 'indicacao kleiton', '2021-04-18 00:00:00', '2021-04-18 00:00:00', 0.00, 'NAO', 'SIM'),
(00098, 00002, 'FISICA', '79615807291', 'PAULO MORAIS', 'PAULO MORAIS', '2021-05-13', '092995018230', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'amigo dirley', '2021-05-13 00:00:00', '2021-05-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00099, 00002, 'FISICA', '79615708299', 'ROSSANA DUARTE', 'ROSSANA DUARTE', '2021-06-07', '9291150949', NULL, NULL, 'naotem@naotem.com.br', '', 69040000, 'AV PEDRO TEIXEIRA', 1001, 'bloco e apto 104', 'em frente ao carrefour', 'DOM PEDRO 1', 'MANAUS', 'AM', '', '', '', '', 'indicacao nadia', '2021-06-07 00:00:00', '2021-06-07 00:00:00', 0.00, 'NAO', 'SIM'),
(00100, 00002, 'FISICA', '79612708294', 'CARLO FARIA DA SILVA', 'CARLO FARIA DA SILVA', '2021-06-08', '92992814149', NULL, NULL, 'naotem@naotem.com.br', '', 69048550, 'RUA C12', 439, 'final da rua, bairro ajuricava', '', 'ALVORADA', 'MANAUS', 'AM', '', '', '', '', 'olx', '2021-06-08 00:00:00', '2021-06-08 00:00:00', 0.00, 'NAO', 'SIM'),
(00101, 00002, 'FISICA', '79615708292', 'HADISON SEMINOVOS', 'HADISON SEMINOVOS', '2021-06-29', '092982020267', NULL, NULL, 'naotem@naotem.com.br', '', 69020140, 'AV DUQUE DE CAXIAS ', 495, 'sw prime', 'ao lado tabernaculo veÃ­culos ', 'CENTRO', 'MANAUS', 'AM', '', '', '', '', '', '2021-06-29 00:00:00', '2021-06-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00102, 00002, 'FISICA', '79657898265', 'JAMIL MARDISA', 'JAMIL MARDISA', '2021-06-29', '92982738236', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2021-06-29 00:00:00', '2021-06-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00103, 00002, 'FISICA', '78614697281', 'YVES MIQUEIAS PEREIRA DA SILVA', 'YVES MIQUEIAS PEREIRA DA SILVA', '2021-07-02', '092994549838', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'sindacta iv', '2021-07-01 00:00:00', '2021-07-01 00:00:00', 0.00, 'NAO', 'SIM'),
(00104, 00002, 'FISICA', '79865428739', 'DIRCEU', 'DIRCEU', '2021-09-29', '92981762082', NULL, NULL, 'oidirceumoda@hotmail.com', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2021-09-29 00:00:00', '2021-09-29 00:00:00', 0.00, 'NAO', 'SIM'),
(00105, 00002, 'FISICA', '36587917054', 'WHISTON MELO', 'WHISTON MELO', '2021-10-14', '92992091322', NULL, NULL, 'naotem@naotemcom.br', '', 0, 'RUA VENEZUELA', 630, 'na padaria 3 irmaos', 'padaria 3 irmaos', 'TANCREDO NEVES', 'MANAUS', 'AM', '', '', '', '', '', '2021-10-14 00:00:00', '2021-10-14 00:00:00', 0.00, 'NAO', 'SIM'),
(00106, 00002, 'FISICA', '45691195069', 'DIEGO OLIVEIRA', 'DIEGO OLIVEIRA', '2021-12-03', '092981590104', NULL, NULL, 'diego.oliveira@parvi.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'funcionario da america', '2021-12-02 00:00:00', '2021-12-02 00:00:00', 0.00, 'NAO', 'SIM'),
(00107, 00002, 'FISICA', '79615287632', 'FRANCILENE DOS SANTOS ARAUJO', 'FRANCILENE DOS SANTOS ARAUJO', '2021-12-13', '995128055', NULL, NULL, 'naotem@naotem.com.br', '', 69088701, 'RUA B SANTA INES', 149, 'portao azul grande', '', 'JORGE TEIXEIRA', 'MANAUS', 'AM', '', '', '', 'FRANCILENE', 'IndicaÃ§Ã£o dyme', '2021-12-13 00:00:00', '2021-12-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00108, 00002, 'FISICA', '78512478413', 'SANTINHO MARDISA', 'SANTINHO MARDISA', '2021-12-15', '98984658967', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2021-12-15 00:00:00', '2021-12-15 00:00:00', 0.00, 'NAO', 'SIM'),
(00109, 00002, 'FISICA', '79615708234', 'WALDYONEYA RIBEIRO DA SILVA', 'WALDYONEYA RIBEIRO DA SILVA', '2022-01-20', '92991538908', NULL, NULL, 'naotem@naotem.com.br', '', 69040120, 'AV PADRE MONTEIRO DE NORONHA', 381, 'cd reserva da cidade bloco 7 apt 203', 'sup atack', 'CIDADE NOVA', 'MANAUS', 'AM', '', '', '', '', 'olx do reserva', '2022-01-20 00:00:00', '2022-01-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00110, 00002, 'FISICA', '78514857129', 'SHELLEY S SA FERNANDES', 'SHELLEY S SA FERNANDES', '2022-01-24', '92991912204', NULL, NULL, 'naotem@naotem.com.br', '', 69037063, 'ALAMEDA ALBANIA', 50, 'cd ilhas gregas', '', 'PONTA NEGRA', 'MANAUS', 'AM', '', '', '', '', 'irma caio vitor', '2022-01-24 00:00:00', '2022-01-24 00:00:00', 0.00, 'NAO', 'SIM'),
(00111, 00002, 'FISICA', '46578216549', 'ALCINEI ', 'ALCINEI ', '2022-01-26', '92984903365', NULL, NULL, 'naotem@naotem.com.br', '', 69047030, 'RUA ITUITABA', 47, '', '', 'REDENCAO', 'MANAUS', 'AM', '', '', '', '', 'amigo do dime', '2022-01-26 00:00:00', '2022-01-26 00:00:00', 0.00, 'NAO', 'SIM'),
(00112, 00002, 'JURIDICA', '09876545678236', 'CLÃ­NICA AMAZON HOUSE', 'CLÃ­NICA AMAZON HOUSE', '2022-03-06', '092981186335', NULL, NULL, 'monicaventuramedvet@outlook.com', '', 69028120, 'RUA FORMOSA', 45, 'clÃ­nica veterinaria', '', 'FLORES', 'MANAUS', 'AM', '', '', '', 'DRA MONICA', 'Bloco 1 CD reserva', '2022-03-06 00:00:00', '2022-03-06 00:00:00', 0.00, 'NAO', 'SIM'),
(00113, 00006, 'FISICA', '46578541247', 'NATANAEL CORDEIRO', 'NATANAEL CORDEIRO', '2022-03-27', '81986352896', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2022-03-30 00:00:00', '2022-03-30 00:00:00', 0.00, 'NAO', 'SIM'),
(00114, 00002, 'JURIDICA', '09876545678232', 'UROCLIN', 'UROCLIN', '2022-04-05', '92982069708', NULL, NULL, 'naotem@naotem.com.br', '', 69025025, 'AVENIDA NHAMUNDA', 90, '', '', 'CENTRO', 'MANAUS', 'AM', '', '', '', 'JESSICA DA RECEPCAO', 'impressora epson l3250 wifi ip 192.168.15.159 / wifi luis carlos 2 e 5g senha uroclin16 / indicacao junior / senha impressora XAAB300122', '2022-04-06 00:00:00', '2022-04-06 00:00:00', 0.00, 'NAO', 'SIM'),
(00115, 00002, 'FISICA', '00011144452', 'MAIARA BRITO', 'MAIARA BRITO', '2022-06-20', '92992686881', NULL, NULL, 'naotem@naotem.com.br', '', 69028140, 'AV PADRE MONTEIRO DE NORONHA', 381, 'bl18 ap 504', '', 'FLORES', 'MANAUS', 'AM', '', '', '', '', '', '2022-06-20 00:00:00', '2022-06-20 00:00:00', 0.00, 'NAO', 'SIM'),
(00116, 00002, 'FISICA', '45875412587', 'MARTINIANO ALVES MORAES FILHO', 'MARTINIANO ALVES MORAES FILHO', '2022-06-30', '92996079608', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2022-06-30 00:00:00', '2022-06-30 00:00:00', 0.00, 'NAO', 'SIM'),
(00117, 00002, 'FISICA', '12465485475', 'VALCILENE DAVID', 'VALCILENE DAVID', '2022-07-08', '92981430040', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, 'bl 18 ap 204', '', '', 'MANAUS', 'S', '', '', '', '', '', '2022-07-09 00:00:00', '2022-07-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00118, 00002, 'FISICA', '85643053055', 'MARIANA OTORHINUS', 'MARIANA OTORHINUS', '2023-02-09', '92991511749', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2023-02-09 00:00:00', '2023-02-09 00:00:00', 0.00, 'NAO', 'SIM'),
(00119, 00002, 'FISICA', '12345674215', 'FABIO PARVI LOCADORA', 'FABIO PARVI LOCADORA', '2023-03-07', '92945874587', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', '', '2023-03-07 00:00:00', '2023-03-07 00:00:00', 0.00, 'NAO', 'SIM'),
(00120, 00002, 'FISICA', '23658425342', 'DAVI LIMA', 'DAVI LIMA', '2023-05-15', '92991830108', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'funcionario alinhamento da jeep', '2023-05-15 00:00:00', '2023-05-15 00:00:00', 0.00, 'SIM', 'SIM'),
(00121, 00002, 'FISICA', '24245171006', 'GIVANILDO GALDINO', 'GIVANILDO GALDINO', '2023-06-13', '81997438883', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'S', '', '', '', '', '', '2023-06-13 00:00:00', '2023-06-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00122, 00002, 'JURIDICA', '42799768000117', 'PREMIUM AVIATION SERVICOS AUXILIARES DE TRANSPORTES AEREOS LTDA', 'PREMIUM AVIATION', '2021-07-21', '92984581453', NULL, NULL, 'comercial@grupopremiumbr.com', 'www.grupopremiumbr.com', 69028380, 'RUA YOLANDA D URSO', 505, 'sala a', '', 'FLORES', 'MANAUS', 'AM', '', '', '', 'ANA PAULA', '', '2023-06-13 00:00:00', '2023-06-13 00:00:00', 0.00, 'NAO', 'SIM'),
(00123, 00002, 'FISICA', '88755281010', 'GILSON FERREIRA ', 'GILSON FERREIRA ', '2023-08-07', '9295340943', NULL, NULL, 'naotem@naotem.com.br', '', 69030060, 'YELLOW MALL - AV. DARCY VARGAS, 1746 - CHAPADA, MANAUS - AM, ', 1740, '', 'posto de gasolina shell', 'CHAPADA', 'MANAUS', 'AM', '', '', '', '', 'amigo da nadia', '2023-08-08 00:00:00', '2023-08-08 00:00:00', 0.00, 'NAO', 'SIM'),
(00124, 00002, 'FISICA', '87117615044', 'JOAM', 'JOAM', '2023-08-08', '92954654851', NULL, NULL, 'naotem@naotem.com.br', '', 0, '', 0, '', '', '', 'MANAUS', 'AM', '', '', '', '', 'amigo cibelle da jeep', '2023-08-08 00:00:00', '2023-08-08 00:00:00', 0.00, 'NAO', 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contrato_cm`
--

CREATE TABLE `tbl_contrato_cm` (
  `NUM_ID_CM` int(10) UNSIGNED NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(10) UNSIGNED ZEROFILL NOT NULL,
  `NUM_EQUIPAMENTOS_CM` int(10) UNSIGNED DEFAULT NULL,
  `DTA_INICIO_CM` date NOT NULL,
  `DTA_TERMINO_CM` date NOT NULL,
  `VAL_VALOR_CM` double(8,2) NOT NULL,
  `NUM_DIAPAGAMENTO_CM` int(10) UNSIGNED DEFAULT NULL,
  `TXT_ATIVO_CM` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_contrato_cm`
--

INSERT INTO `tbl_contrato_cm` (`NUM_ID_CM`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `NUM_EQUIPAMENTOS_CM`, `DTA_INICIO_CM`, `DTA_TERMINO_CM`, `VAL_VALOR_CM`, `NUM_DIAPAGAMENTO_CM`, `TXT_ATIVO_CM`) VALUES
(1, 0000000006, 0000000001, 0, '2020-10-01', '2021-10-01', 150.00, 5, 'NAO'),
(2, 0000000006, 0000000070, 0, '2020-10-01', '2021-11-04', 250.00, 5, 'NAO'),
(3, 0000000006, 0000000122, 0, '2023-06-13', '2024-06-12', 300.00, 20, 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_empresa_emp`
--

CREATE TABLE `tbl_empresa_emp` (
  `NUM_ID_EMP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_PESSOA_EMP` char(1) NOT NULL,
  `TXT_CPFCNPJ_EMP` varchar(16) NOT NULL,
  `TXT_RAZAO_EMP` varchar(100) NOT NULL,
  `TXT_FANTASIA_EMP` varchar(100) NOT NULL,
  `DTA_FUNDACAO_EMP` date NOT NULL,
  `TXT_TELEFONE_EMP` varchar(20) NOT NULL,
  `TXT_RAMAL_EMP` varchar(10) NOT NULL,
  `TXT_FAX_EMP` varchar(20) NOT NULL,
  `TXT_EMAIL_EMP` varchar(100) NOT NULL,
  `TXT_SITE_EMP` varchar(100) NOT NULL,
  `NUM_CEP_EMP` int(8) UNSIGNED NOT NULL,
  `TXT_LOGRADOURO_EMP` varchar(100) NOT NULL,
  `NUM_NUMERO_EMP` int(10) UNSIGNED NOT NULL,
  `TXT_COMPLEMENTO_EMP` varchar(50) NOT NULL,
  `TXT_BAIRRO_EMP` varchar(50) NOT NULL,
  `TXT_CIDADE_EMP` varchar(50) NOT NULL,
  `TXT_ESTADO_EMP` char(2) NOT NULL,
  `TXT_IM_EMP` varchar(20) NOT NULL,
  `TXT_IE_EMP` varchar(20) NOT NULL,
  `TXT_RG_EMP` varchar(20) DEFAULT NULL,
  `VAL_MULTA_EMP` double(8,2) NOT NULL,
  `VAL_JUROS_EMP` double(8,2) NOT NULL,
  `DTA_REGISTRO_EMP` date NOT NULL,
  `DTA_ALTERACAO_EMP` date DEFAULT NULL,
  `TXT_ATIVO_EMP` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_empresa_emp`
--

INSERT INTO `tbl_empresa_emp` (`NUM_ID_EMP`, `TXT_PESSOA_EMP`, `TXT_CPFCNPJ_EMP`, `TXT_RAZAO_EMP`, `TXT_FANTASIA_EMP`, `DTA_FUNDACAO_EMP`, `TXT_TELEFONE_EMP`, `TXT_RAMAL_EMP`, `TXT_FAX_EMP`, `TXT_EMAIL_EMP`, `TXT_SITE_EMP`, `NUM_CEP_EMP`, `TXT_LOGRADOURO_EMP`, `NUM_NUMERO_EMP`, `TXT_COMPLEMENTO_EMP`, `TXT_BAIRRO_EMP`, `TXT_CIDADE_EMP`, `TXT_ESTADO_EMP`, `TXT_IM_EMP`, `TXT_IE_EMP`, `TXT_RG_EMP`, `VAL_MULTA_EMP`, `VAL_JUROS_EMP`, `DTA_REGISTRO_EMP`, `DTA_ALTERACAO_EMP`, `TXT_ATIVO_EMP`) VALUES
(00001, 'F', '79615708291', 'ADRIANO NOGUEIRA DO NASCIMENTO', 'ADMINFOR SOLUCOES EM INFORMATICA', '2010-01-01', '(092)98826-2291', '', '', 'contato@adminfor.com.br', 'www.adminfor.com.br', 69047070, 'RUA NATIVIDADE', 170, '', 'REDENCAO', 'MANAUS', 'AM', '', '', '17928745', 5.00, 0.50, '2015-06-07', NULL, 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipamento_equip`
--

CREATE TABLE `tbl_equipamento_equip` (
  `NUM_ID_EQUIP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO` int(5) UNSIGNED NOT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_TIPO_EQUIP` varchar(20) NOT NULL,
  `TXT_SETOR_EQUIP` varchar(50) NOT NULL,
  `TXT_NOMEREDE_EQUIP` varchar(50) DEFAULT NULL,
  `TXT_DESCRICAO_EQUIP` varchar(50) DEFAULT NULL,
  `TXT_LOGIN_EQUIP` varchar(20) NOT NULL,
  `TXT_SENHA_EQUIP` varchar(20) NOT NULL,
  `TXT_UTILIZADORES_EQUIP` varchar(50) DEFAULT NULL,
  `NUM_HD_EQUIP` int(10) UNSIGNED DEFAULT NULL,
  `TXT_TIPO_ARMAZENAMENTO_EQUIP` varchar(10) DEFAULT NULL,
  `TXT_PROCESSADOR_EQUIP` varchar(20) DEFAULT NULL,
  `NUM_MEMORIA_EQUIP` float UNSIGNED DEFAULT NULL,
  `TXT_TIPO_MEMORIA_EQUIP` varchar(10) DEFAULT NULL,
  `TXT_PLACAMAE_EQUIP` varchar(20) DEFAULT NULL,
  `TXT_MONITOR_EQUIP` varchar(20) DEFAULT NULL,
  `TXT_APLICATIVOS_EQUIP` varchar(50) DEFAULT NULL,
  `NUM_NFE_EQUIP` int(10) UNSIGNED DEFAULT NULL,
  `DTH_REGISTRO_EQUIP` datetime NOT NULL,
  `TXT_MARCA_EQUIP` varchar(50) DEFAULT NULL,
  `TXT_MODELO_EQUIP` varchar(50) DEFAULT NULL,
  `TXT_SERIAL_EQUIP` varchar(30) DEFAULT NULL,
  `TXT_OBSERVACAO_EQUIP` text DEFAULT NULL,
  `DTA_GARANTIA_EQUIP` date DEFAULT NULL,
  `TXT_ATIVO_EQUIP` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_equipamento_equip`
--

INSERT INTO `tbl_equipamento_equip` (`NUM_ID_EQUIP`, `TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_EQUIP`, `TXT_SETOR_EQUIP`, `TXT_NOMEREDE_EQUIP`, `TXT_DESCRICAO_EQUIP`, `TXT_LOGIN_EQUIP`, `TXT_SENHA_EQUIP`, `TXT_UTILIZADORES_EQUIP`, `NUM_HD_EQUIP`, `TXT_TIPO_ARMAZENAMENTO_EQUIP`, `TXT_PROCESSADOR_EQUIP`, `NUM_MEMORIA_EQUIP`, `TXT_TIPO_MEMORIA_EQUIP`, `TXT_PLACAMAE_EQUIP`, `TXT_MONITOR_EQUIP`, `TXT_APLICATIVOS_EQUIP`, `NUM_NFE_EQUIP`, `DTH_REGISTRO_EQUIP`, `TXT_MARCA_EQUIP`, `TXT_MODELO_EQUIP`, `TXT_SERIAL_EQUIP`, `TXT_OBSERVACAO_EQUIP`, `DTA_GARANTIA_EQUIP`, `TXT_ATIVO_EQUIP`) VALUES
(00001, 2, 00003, 00002, 'DESKTOP', 'RESIDENCIA', 'DESKTOP-CIRILO', 'EQUIP NOVO, UTILIZADO PARA FINS DOMESTICOS', 'cirilo', 'sem senha', 'MATEUS,CIRILO,', 1000, NULL, 'I5 3.2GHZ', 6, NULL, 'LENOVO', '0', 'NI', 0, '2015-08-14 00:00:00', 'LENOVO', 'NI', '', NULL, NULL, 'SIM'),
(00002, 4, 00005, 00002, 'NOTEBOOK', 'ESTOQUE', 'NOTE-MULTITEC5', 'NOTEBOOK UTILIZADO PARA O SETOR DE ESTOQUE', 'multitec', 'multitec', 'EQUIPE DO ESTOQUE', 500, NULL, 'I3 1.7GHZ', 4, NULL, 'LENOVO', '0', '', 0, '2015-09-04 00:00:00', 'LENOVO', 'L40-70', 'PE00Y2TV', NULL, NULL, 'SIM'),
(00003, 4, 00005, 00002, 'NOTEBOOK', 'CONSULTORIA TECNICA', 'NOTE-MULTITEC4', 'NOTEBOOK UTILIZADO PARA O SETOR DE CONSULTORIA TEC', 'multitec', 'multitec', 'CONSULTORES TECNICOS', 500, NULL, 'I3 1.7GHZ', 4, NULL, 'LENOVO', '0', '', 0, '2015-09-04 00:00:00', 'LENOVO', 'L40-70', 'PE00Y276', NULL, NULL, 'SIM'),
(00004, 4, 00005, 00002, 'NOTEBOOK', 'CONSULTORIA TECNICA', 'NOTE-MULTITEC3', 'NOTEBOOK UTILIZADO PARA O SETOR DE CONSULTORIA TEC', 'multitec', 'multitec', 'CONSULTORES TECNICOS', 500, NULL, 'I3 1.7GHZ', 4, NULL, 'LENOVO', '0', '', 0, '2015-09-04 00:00:00', 'LENOVO', 'L40-70', 'PE00Y258', NULL, NULL, 'SIM'),
(00005, 5, 00005, 00002, 'SERVIDOR', 'ADMINISTRACAO', 'DESK-MULTITEC1', 'SERVIDOR SYSTEM SERVICE CAR', 'multitec', 'multitec', 'ADMINISTRADOR', 500, NULL, 'I3 3.40GHZ', 4, NULL, 'ASUS', '0', '', 0, '2015-09-04 00:00:00', 'PADRAO', 'PADRAO', 's/n', NULL, NULL, 'SIM'),
(00006, 5, 00005, 00002, 'DESKTOP', 'ESTOQUE DE PECAS', 'DESK-MULTITEC2', 'DESKTOP UTILIZADO PARA CONTROLE DE ESTOQUE', 'multitec', 'multitec', 'ESTOQUE DE PECAS', 2000, NULL, 'AMD SEMPRON 2.10GHZ', 4, NULL, '', '0', '', 0, '2015-09-04 00:00:00', 'PADRAO', 'PADRAO', 's/n', NULL, NULL, 'SIM'),
(00007, 9, 00002, 00002, 'DESKTOP', 'RESIDENCIA', 'DESK-CAYO', 'DESKTOP UTILIZADO PARA ASSUNTOS DOMESTICS', 'cayo', 'sem senha', '', 500, NULL, 'CORE 2 DUO 2.35GHZ', 4, NULL, 'ASUS', '0', '', 0, '2015-10-21 00:00:00', 'ASUS', 'PADRAO', '', NULL, NULL, 'SIM'),
(00008, 14, 00001, 00002, 'NOTEBOOK', 'RECEPCAO CLINICA', 'RECEPCAO-02', 'EQUIP UTILIZADO P/ AUTORIZACAO DE EXAMES', 'viviane', '12345', 'LENE', 520, NULL, 'I3 4005 1.7GHZ', 4, NULL, 'HP', '0', 'NI', 0, '2015-11-06 00:00:00', 'HP ', 'PAVILION', 'BRJ4040PDH', NULL, NULL, 'SIM'),
(00009, 5, 00001, 00002, 'NOTEBOOK', 'RESIDENCIA', '', '', 'desconhecido', 'desconhecido', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2015-11-06 00:00:00', 'TOSHIBA', 'SATELITE L655D-S5164', '4B097475W', NULL, NULL, 'SIM'),
(00010, 3, 00009, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NOTE-DAVI', 'NOTEBOOK UTILIZADO PARA TRABALHOS DE CASA', 'davi', 'sem senha', '', 520, NULL, 'I7 2.2GHZ', 6, NULL, 'ACER', '0', '', 0, '2015-11-25 00:00:00', 'ACER', 'V3-571-9423', '24860711595', NULL, NULL, 'SIM'),
(00011, 2, 00008, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NOTE-LAINNA', 'NOTEBOOK UTILIZADO PARA TRABALHOS DE CASA', 'lainna', 'sem senha', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2015-11-25 00:00:00', 'ACER', 'E1-510-2455', '', NULL, NULL, 'SIM'),
(00012, 5, 00010, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USER-PC', 'NOTEBOOK UTILIZADO PARA TRABALHOS DE CASA', 'user', 'sem senha', '', 500, NULL, 'INTEL CELEROM 1.8GHZ', 4, NULL, '', '0', '', 0, '2016-03-02 00:00:00', 'ACER', 'E1-531-2608', 'NXM22AL008319D494695', NULL, NULL, 'SIM'),
(00013, 11, 00011, 00002, 'NOTEBOOK', 'RESIDENCIA', 'FERNANDO-PC', 'NOTEBOOK UTILIZADO PARA O TRABALHO', 'fernando', 'sem senha', 'FERNANDO', 320, NULL, 'INTEL PENTIUM 1.87GH', 3, NULL, '', '0', '', 0, '2016-03-15 00:00:00', 'TOSHIBA', 'SATELITE L645-S4026', '7A250178W', NULL, NULL, 'SIM'),
(00014, 11, 00012, 00002, 'NOTEBOOK', 'RESIDENCIA', 'ADELSON-PC', 'NOTEBOOK UTILIZADO PARA O TRABALHO', 'usuario', '19611123', 'NI', 140, NULL, 'PENTIUM DUAL 2.16GHZ', 2, NULL, 'LG', '0', 'NI', 0, '2016-03-24 00:00:00', 'LG', 'R410', '906BZDQ006914', NULL, NULL, 'SIM'),
(00015, 9, 00013, 00002, 'NOTEBOOK', 'INFORMATICA', ' N92MMADRIANO', 'NOTEBOOK UTILIZADO PARA O TRABALHO', 'adriano', 'manu2012', 'ADRIANO', 500, NULL, 'I5 2.6GHZ', 4, NULL, 'LENOVO', '0', 'OFFICE 2016, DREAMWEAVER CS5, FILEZZILA, NOTEPAD++', 0, '2016-03-24 00:00:00', 'LENOVO', 'E431', '', NULL, NULL, 'SIM'),
(00016, 9, 00005, 00002, 'NOTEBOOK', 'ADMINISTRACAO', 'SPEEDCAR-NOTE1', 'NOTEBOOK UTILIZADO NO SETOR ADMINISTRATIVO', 'speedcar', 'speedcar', '', 1000, NULL, 'I3 2.0 GHZ', 4, NULL, 'LENOVO', '0', 'SHARMAQ, OFFICE 2010, ', 0, '2016-04-01 00:00:00', 'LENOVO', 'G40-80', 'PE01V0V2', NULL, NULL, 'SIM'),
(00017, 11, 00014, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USUARIO-PC', 'NOTEBOOK USADO, BATERIA N OK, TECLA SETA DIREITA P', 'usuario', '123456789', 'ROGERIO', 150, NULL, 'INTEL ATOM 1.67GHZ', 2, NULL, 'NI', '0', 'NI', 0, '2016-04-22 00:00:00', 'EMACHINES', 'NAV51', 'lxale0x0608190c9851601', NULL, NULL, 'SIM'),
(00018, 13, 00015, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'NOTEBOOK PARA TRABALHOS DOMESTICOS', 'johnson', 'sem senha', 'NI', 500, NULL, 'AMD E-350 1.6GHZ', 2, NULL, 'SONY', '0', 'NI', 0, '2016-05-14 00:00:00', 'SONY', 'VPCYB25AB', '275455423001597', NULL, NULL, 'SIM'),
(00019, 5, 00016, 00002, 'NOTEBOOK', 'RESIDENCIA', '', '', 'user', 'sem senha', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2016-05-15 00:00:00', 'ACER', '5250-0639', '', NULL, NULL, 'SIM'),
(00020, 5, 00001, 00002, 'DESKTOP', 'SALA DE EXAMES', 'USUARIO-PC', 'AUXILIAR MEDICO EM EXAMES', 'USUARIO', 'SEM SENHA', 'KEVIN', 500, NULL, 'I3-2100 3.10GHZ', 4, NULL, 'ASROCKH61M-DGS P1.50', '0', 'OFFICE 2007, ERO-SCAN, NISTAGMUS, WINAUDIO,VIDEONI', 0, '2016-06-16 00:00:00', 'GENERICO', 'PADRAO', 'NI', NULL, NULL, 'SIM'),
(00021, 5, 00017, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'UTILIZADO PARA TRABALHOS ESCOLARES', 'RG', 'rg', '', 520, NULL, 'I3 2.30GHZ', 4, NULL, 'ACER', '0', '', 0, '2016-06-17 00:00:00', 'ACER', 'ASPIRE E1-471-6690', 'NXM0QAL03731564B37600', NULL, NULL, 'SIM'),
(00022, 8, 00018, 00002, 'DESKTOP', 'RESIDENCIA', '', 'DESKTOP PARA PLANILHAS E ACESSOS A INTERNET', 'padrao', 'sem senha', 'MARIO', 1000, NULL, 'DUAL CORE 2.7GHZ', 2, NULL, 'ASROCK N68S', '0', 'OFFICE 2007', 0, '2016-07-04 00:00:00', 'PADRAO', 'PADRAO', 'sem serial', NULL, NULL, 'SIM'),
(00023, 2, 00019, 00002, 'NOTEBOOK', 'RESIDENCIA', 'THIAGOMURIEL', 'NOTEBOOK USADO PARA ATIVIDADES E TRABALHOS ESCOLAR', 'muriel', 'SEM SENHA', '', 500, NULL, 'INTEL CEL N2830 2.16', 4, NULL, 'HP', '0', 'BANCO CAIXA, OFFICE 2010', 0, '2016-07-14 00:00:00', 'HP', '15-1039WM', '5cd4282xr8', NULL, NULL, 'SIM'),
(00024, 5, 00020, 00002, 'NOTEBOOK', 'RESIDENCIA', 'KAMILAKAROLINE', 'NOTEBOOK USADO PARA ATIVIDADES E TRABALHOS ESCOLAR', 'KAMILEKAROLINE', 'SEM SENHA', 'NI', 450, NULL, 'I5-2450M 2.5GHZ', 4, NULL, 'NI', '0', 'COREL DRAW5,OFFICE 2007', 0, '2016-07-20 00:00:00', 'SAMSUNG', 'NP300E4A', 'HNMW9QCC200543L', NULL, NULL, 'SIM'),
(00025, 5, 00010, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USUARIO-PC', 'NOTEBOOK USADO PARA ATIVIDADES E TRABALHOS ESCOLAR', 'usuario', 'SEM SENHA', 'NI', 465, NULL, 'I3 M380 2.54GHZ', 2, NULL, 'NI', '0', 'NI', 0, '2016-08-01 00:00:00', 'SAMSUNG', 'RV411', '', NULL, NULL, 'SIM'),
(00026, 13, 00021, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'NOTEBOOK USADO PARA ATIVIDADES E TRABALHOS ESCOLAR', 'usuario', 'lunadynoolhuda', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2016-08-04 00:00:00', 'ITAUTEC', 'INFOWAY NOTE A7520', '4005707100275', NULL, NULL, 'SIM'),
(00027, 2, 00022, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'NOTEBOOK USADO PARA ATIVIDADES E TRABALHOS ESCOLAR', 'usuario', 'sem senha', '', 500, NULL, 'I3-3217U 1.8GHZ', 4, NULL, 'ACER', '0', '', 0, '2016-08-24 00:00:00', 'ACER', 'E1-570-6467', 'nxmepal013341229923400', NULL, NULL, 'SIM'),
(00028, 5, 00023, 00002, 'NOTEBOOK', 'RESIDENCIA', '', '', 'nao tem', 'naotem', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2016-09-06 00:00:00', '', '', '', NULL, NULL, 'SIM'),
(00029, 5, 00010, 00002, 'NOTEBOOK', 'RESIDENCIA', 'CIBELLY-PC', 'NOTEBOOK USADO PARA TRABALHOS DOMESTICOS', 'cibelly', 'cibelly', 'NI', 320, NULL, 'INT PENT P6100 2GHZ', 3, NULL, 'NI', '0', 'COREL X7, X8 EPSON L200, L1200, OFFICE 2010, KIES', 0, '2016-09-08 00:00:00', 'ACER', 'ASPIRE 5742Z-4629', 'lxr4p0220111628d981601', NULL, NULL, 'SIM'),
(00030, 5, 00024, 00002, 'NOTEBOOK', 'RESIDENCIA', 'SHIRLENE-PC', 'NOTEBOOK USADO PARA TRABALHOS DOMESTICOS', 'shirlene', 'elo1601', 'NI', 500, NULL, 'I3 M350 2.27GHZ', 4, NULL, 'HP', '0', 'OFFICE 2007, AVAST, COREL  X6, SKYPE', 0, '2016-09-14 00:00:00', 'HP', 'DV52070US', 'cnu0350lg4', NULL, NULL, 'SIM'),
(00031, 15, 00001, 00002, 'NOTEBOOK', 'RECEPCAO CLINICA', 'NOTE-RECEPCAO1', 'EQUIP UTILIZADO P/ AUTORIZACAO DE EXAMES', 'viviane', '12345', 'MARYJANE', 520, NULL, 'AMD E1-2100 1GHZ', 2, NULL, 'NI', '0', 'NI', 0, '2016-09-16 00:00:00', 'LENOVO', 'G405', '07898915961126', NULL, NULL, 'SIM'),
(00032, 9, 00007, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-6EDL20M', 'EQUIPAMENTO PARA USO DOMESTICO', 'humberto', 'sem senha', '', 520, NULL, 'I3-2310M 2.10GHZ', 3, NULL, 'ITAUTEC', '0', 'OFFICE 2016, AUTOCAD 2016, HP 3636', 0, '2016-09-23 00:00:00', 'ITAUTEC', 'W7535', '', NULL, NULL, 'SIM'),
(00033, 14, 00004, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-SMV4CQV', 'NOTEBOOK USADO PARA TRABALHOS DOMESTICOS', 'USUARIO', 'sem senha', 'WELLINGTON', 500, NULL, 'I3 4010 1.7GHZ', 4, NULL, 'NI ', '0', 'HP3050 DJ J610,OFFICE2010, ', 0, '2016-10-01 00:00:00', 'ACER', 'ASPIRE E1-572X6_BR448', 'LXRN0080052303E52B9501', 'AO INSTALAR WINDOWS 10, APRESENTA ERRO, PRECISA INSTALAR WINDOWS EM OUTRO EQUIPAMENTO E COLOCAR HD NESTE.', NULL, 'SIM'),
(00034, 9, 00026, 00006, 'NOTEBOOK', 'RESIDENCIA', 'N92MMJOSEMAR', 'EQUIPAMENTO UTILIZADO PARA TRABALHOS DOMESTICOS', 'josemar', '986532', '', 500, NULL, 'I5 2450M 2.5GHZ', 4, NULL, '', '0', 'OFFICE 2010, DROPBOX. CUTE PDF, NERO 7, NTI MEDIA ', 0, '2016-10-10 00:00:00', 'ACER', 'E1-571-6824', 'nxm21al009307b3c3f9501', NULL, NULL, 'SIM'),
(00035, 2, 00027, 00002, 'NOTEBOOK', 'RESIDENCIA', 'BELINHA', 'NOTEBOOK UTILIZADO PARA ATIVIDADES DOMESTICAS', 'belinha', 'sem senha', '', 320, NULL, 'INT PEN P6200 2.13GH', 3, NULL, '', '0', '', 0, '2016-10-19 00:00:00', 'LG', 'LGC400', 'mez63555707', NULL, NULL, 'SIM'),
(00036, 1, 00028, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'NOTEBOOK USADO PARA TRABALHOS DOMESTICOS', 'sem usuario', 'sem senha', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2016-10-26 00:00:00', 'POSITIVO', 'AUREUM', '1a028xp7v', NULL, NULL, 'SIM'),
(00037, 6, 00029, 00002, 'DESKTOP', 'CAIXA', 'OKSLEN-IDEA', 'EQUIPAMENTO UTILIZADO NO CAIXA DA EMPRESA', 'okslen', 'sem senha', '', 0, NULL, 'I5', 4, NULL, 'LENOVO', '0', 'OFFICE, JAVA, ANTIVIRUS,', 0, '2016-12-10 00:00:00', 'LENOVO', '', '', NULL, NULL, 'SIM'),
(00038, 2, 00019, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'NOTEBOOK UTILIZAO PARA TRABALHOS DOMESTICOS', 'ni', 'ni', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2016-12-16 00:00:00', 'ACER', 'V5-471-6620', 'NXM7GAL002337184056200', NULL, NULL, 'SIM'),
(00039, 6, 00030, 00002, 'NOTEBOOK', 'RESIDENCIA', 'ANDREW-PC', 'NOTEBOOK UTILIZADO PARA TRABALHOS DOMESTICOS', 'andrew', 'sem senha', '', 520, NULL, 'AMD -E450 1.65GHZ', 2, NULL, 'SONY', '0', 'PADRAO', 0, '2017-01-17 00:00:00', 'SONY', 'PCG-31311X', '2755190030089974', NULL, NULL, 'SIM'),
(00040, 1, 00011, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'EQUIPAMENTO UTILIZADO PARA ATIVIDADES DOMESTICAS', 'usuario', 'sem senha', '', 0, NULL, '', 0, NULL, '', '0', '', 0, '2017-02-01 00:00:00', 'ITAUTEC', 'INFO WAY NOTE A7520', '4006547000276', NULL, NULL, 'SIM'),
(00041, 1, 00031, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'EQUIPAMENTO UTILIZADO PARA ATIVIDADES DOMESTICAS', 'nao informado', 'nao informado', 'NI', 500, NULL, 'NI', 2, NULL, 'NI', '0', 'NI', 0, '2017-02-09 00:00:00', 'POSITIVO', 'POSITIVO DUO ZK3010', '1AF38TN7V', NULL, NULL, 'SIM'),
(00042, 9, 00010, 00002, 'DESKTOP', 'RESIDENCIA', '', 'EQUIPAMENTO UTILIZADO PARA ATIVIDADES DOMESTICAS', 'Usuario', 'sem senha', '', 0, NULL, '', 0, NULL, '', '', '', 0, '2017-02-21 00:00:00', '', '', '', NULL, NULL, 'SIM'),
(00043, 11, 00032, 00002, 'ALLINONE', 'RESIDENCIA', 'ERICA-PC', 'UTILIZADO PARA ATIVIDADES COMERCIAIS', 'erica', '12345', 'ERICA', 500, NULL, 'AME350 1.6GHZ', 2, NULL, 'NI', 'NI', 'OFFCE 2007, JAVA, EPSON XP211 214 216,', 0, '2017-03-03 00:00:00', 'ACER', 'AZ1100', 'NI', NULL, NULL, 'SIM'),
(00044, 11, 00006, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NOTE-THAIS', 'UTILIZADO PARA TRABALHOS DOMESTICOS', 'thais vignolia', 'sem senha', '', 320, NULL, 'AMD-E 350 / 160GHZ', 2, NULL, '', '', 'OFFICE 2016', 0, '2017-03-13 00:00:00', 'HP', 'PAVILION DM1', '', NULL, NULL, 'SIM'),
(00045, 9, 00006, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'UTILIZADO PARA TRABALHOS DOMESTICOS', 'thais', 'sem senha', 'THAIS', 1000, NULL, 'I5-3317U 1.7GHZ', 8, NULL, 'ASUS', '', 'OFFICE 2016', 0, '2017-03-15 00:00:00', 'ASUS', 'S550C', '', NULL, NULL, 'SIM'),
(00046, 11, 00033, 00002, 'DESKTOP', 'ESCRITORIO', '', 'UTILIZADO PARA TRABALHOS COMERCIAIS', 'usuario', 'sem senha', '', 1000, NULL, 'PENTIUM G4400 3.3GHZ', 4, NULL, 'ASUS H110', '', 'OFFICE 2010', 0, '2017-03-20 00:00:00', 'PADRAO', '', '', NULL, NULL, 'SIM'),
(00047, 1, 00034, 00002, 'NOTEBOOK', 'RESIDENCIA', 'HP-HP', 'EQUIPAMENTO UTILIZADO PARA ATIVIDADES DOMESTICAS', 'Thais&Marcos', 'sem senha', 'THAIS, MARCOS', 520, NULL, 'I3-2330M 2.20GHZ', 4, NULL, 'HP', 'NI', 'NI', 0, '2017-03-28 00:00:00', 'HP', 'DV4-4140US', '5CG1391BV5', NULL, NULL, 'SIM'),
(00048, 11, 00035, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'EQUIPAMENTO UTILIZADO PARA ATIVIDADES DOMESTICAS', 'victor', 'narizinho', '', 320, NULL, 'INTEL PENTIUM', 3, NULL, '', '', '', 0, '2017-03-29 00:00:00', 'TOSHIBA', 'SATELITE T135-S1305', '', NULL, NULL, 'SIM'),
(00049, 11, 00036, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USUARIO-PC', 'EQUIPAMENTO UTILIZADO EM TAREFAS DOMESTICAS', 'usuario', 'sem senha', 'NI', 460, NULL, 'I3-3217U 1.8GHZ', 4, NULL, 'NI', 'NI', 'NI', 0, '2017-04-25 00:00:00', 'ACER', 'ASPIRE V5-471-6620', 'NXM7GAL002338192526200', NULL, NULL, 'SIM'),
(00050, 6, 00037, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'EQUIPAMENTO UTILIZADO EM TAREFAS DOMESTICAS', 'administrador', 'sem senha', 'NI', 160, NULL, 'DUAL CORE 2.3G T4500', 2, NULL, 'CCE', 'NI', 'NI', 0, '2017-06-09 00:00:00', 'CCE', 'D40-AM5', 'PROTEAM05830', NULL, NULL, 'SIM'),
(00051, 14, 00038, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-DRHSO579', 'UTILIZADO PARA ACESSO A EMAILS, PLANILHAS E SISTEM', 'SONIMAR', 'SEM SENHA', 'SONIMAR', 120, NULL, 'INTEL CEL N3060 1.6G', 2, NULL, 'LENOVO ', 'NI', 'OFFICE 2010', 0, '2017-09-11 00:00:00', 'LENOVO', 'IDEAPAD 110', 'PE02JT2L', 'SSD', NULL, 'SIM'),
(00052, 15, 00002, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'EQUIPAMENTO UTILIZADO PARA TRABALHOS ESCOLARES', 'usuario', 'sem senha', 'CAIO ', 0, NULL, '', 0, NULL, '', '', '', 0, '2017-10-16 00:00:00', 'HP', 'HPG42 -230 BR', 'BRH0B0099P', NULL, NULL, 'SIM'),
(00053, 6, 00039, 00002, 'NOTEBOOK', 'RESIDENCIA', 'MARIALUIZA-PC', 'NOTEBOOK UTILIZADO PARA FINS DOMESTICOS', 'usuario', 'sem senha', 'NI', 500, NULL, 'DUALCORE 2.3GHZ', 2, NULL, 'NI', 'NI', 'NI', 0, '2018-03-12 00:00:00', 'CCE INFO', 'GT23B SERIA A', 'BNQMCG00GTOLL400V0A', NULL, NULL, 'SIM'),
(00054, 11, 00040, 00002, 'DESKTOP', 'RESIDENCIA', '', 'NOTEBOOK UTILIZADO PARA FINS DOMESTICOS', 'usuario', 'sem senha', '', 500, NULL, 'INTEL ATOM D525 1.8', 2, NULL, '', '', 'OFFICE, HP DESKJET 1118, ADOBE READER', 0, '2018-03-14 00:00:00', 'POSITIVO', 'PADRAO', 'SEM SERIAL', NULL, NULL, 'SIM'),
(00055, 15, 00041, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-P9O1PKNM', 'UTILIZADO PARA TRABALHOS NA CLINICA VETERINARIA', 'gabrielavalencamedve', 'gabi9907', 'GABRIELA', 64, NULL, 'INT CEL N3060 1.6GHZ', 2, NULL, '', '', 'OFFICE 2016', 0, '2018-03-21 00:00:00', 'ACER', 'AO1-431M-C49H', '64400709426', NULL, NULL, 'SIM'),
(00056, 5, 00042, 00002, 'DESKTOP', 'RESIDENCIA', '', 'UTILIZADO PARA TRABALHOS COMUNS', 'usuario', 'nao tem', '', 500, NULL, '', 0, NULL, '', '', '', 0, '2018-04-18 00:00:00', '', '', 'BRG040F1TX', NULL, NULL, 'SIM'),
(00057, 14, 00000, 00002, 'NOTEBOOK', 'RECEPCAO CLINICA', 'DESKTOP-NDOS7SR', 'EQUIP UTILIZADO P/ AUTORIZACAO DE EXAMES', 'USUARIO', 'SEM SENHA', 'NEILA', 1024, NULL, 'I3-6006U 2.0GHZ', 4, NULL, 'NI', 'NI', 'OFFICE 2016, ANTIVIRUS, TEAMVIEW', 0, '2018-05-30 00:00:00', 'DELL', 'DELL ', '4XDM5LS', NULL, NULL, 'SIM'),
(00058, 5, 00001, 00002, 'SERVIDOR', 'RECEPCAO CLINICA', 'SERVIDOR', 'SERVIDOR DE DADOS E ARQUIVOS CLINICA | RECEPCAO', 'administrador', '12345', 'RECEPCIONISTA', 500, NULL, 'I3 3220 3.3GHZ', 4, NULL, 'NI', 'NI', 'DOCTOR ', 0, '2018-06-04 00:00:00', 'GENERICO', 'PADRAO', 'NI', NULL, NULL, 'SIM'),
(00059, 15, 00043, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-NT0VM68', 'ATIVIDADES ESCOLARES', 'marcilene', 'sem senha', '', 500, NULL, 'I3 M370 2.4GHZ', 3, NULL, '', '', '', 0, '2018-06-13 00:00:00', 'ACER', '4739-6477', '14313190776', NULL, NULL, 'SIM'),
(00060, 14, 00032, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-B32MCO9E', 'ESCRITORIO TRANSPORTADORA', 'bandeira transporte', '8074', '', 1000, NULL, 'I5 7200U 2.5GHZ', 8, NULL, '', '', '', 0, '2018-06-13 00:00:00', 'ACER', 'A515-51-51UX', '81267823095', NULL, NULL, 'SIM'),
(00061, 6, 00042, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USUARIO-PC', 'ATIVIDADES MUSICAIS', 'usuario ', 'sem senha', 'NI', 320, NULL, 'I3 M330 2.13GHZ', 2, NULL, 'NI', 'NI', 'FREERIP MP3 CONVR 5, OFFICE 2007, AVG, ITUNE, CYB ', 0, '2018-06-19 00:00:00', 'HP', 'G62', 'NI', NULL, NULL, 'SIM'),
(00062, 1, 00042, 00002, 'ALLINONE', 'RESIDENCIA', 'DESKTOP-9TLCG3A', 'ATIVIDADES MUSICAIS', 'alessandra', 'Lek@1730', 'ALESSANDRA', 1024, NULL, 'I3 5015 2.10GHZ', 4, NULL, 'NI', 'NI', 'EPSON L375, OFFICE 2016, ', 0, '2018-06-19 00:00:00', 'ACER', 'AZ1-751BR12', 'DQB31AL003636E72949501', NULL, NULL, 'SIM'),
(00063, 5, 00001, 00002, 'NOTEBOOK', 'CONSULTORIO', 'VIVIANESALDANHA', 'UTILIZADO PARA ATENDIMENTO MEDICO', 'VIVIANE', 'SEM SENHA', 'VIVIANE', 0, NULL, 'NI', 0, NULL, 'NI', 'NI', 'NI', 0, '2018-07-19 00:00:00', 'HP', 'NI', 'NI', NULL, NULL, 'SIM'),
(00064, 14, 00013, 00002, 'NOTEBOOK', 'RESIDENCIA', 'SEM NOME', 'PARA ATIVIDADES DOMESTICAS', 'adriano', '123456', 'ADRIANO NOHERA', 1024, NULL, 'I3 2.5GHZ 3020', 8, NULL, 'ACER', '19POL', 'OFFICE 2010, AUTOCAD, LEAGUE OF LEGENDS', 2646578, '2018-10-15 00:00:00', 'DELL', 'DELL 2030', '12547996548547', NULL, NULL, 'SIM'),
(00065, 14, 00000, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-6IJSPM2V', 'TRABALHOS DOMÃ©STICOS, PENDRIVER 16GB SEMPRE CONEC', 'usuario', 'sem senha', 'USUARIO', 32, NULL, 'INTEL CEL N3350 1.1 ', 2, NULL, 'LENOVO', '', 'OFFICE 2013, ANTIVIRUS, HP D110, PEND16GB ARQ', 0, '2018-10-23 00:00:00', 'LENOVO', 'IDEAPAD 81A4 ', 'YD03JM73', NULL, NULL, 'SIM'),
(00066, 11, 00045, 00002, 'NOTEBOOK', 'RESIDENCIA', 'USUARIO-PC', 'ATIVIDADES DOMESTICAS', 'USUARIO', 'SEM SENHA', 'RAI', 500, NULL, 'PEN DUAL CORE 2.30GH', 4, NULL, '', '', '', 0, '2018-12-10 00:00:00', 'POSITIVO', '5450', '4A041WV9R', NULL, NULL, 'SIM'),
(00067, 14, 00046, 00002, 'DESKTOP', 'RESIDENCIA', 'SANDRYELY_ESTAMPARIA', 'REGISTRO DE SERVICOS EFETUADOS', 'usuario', 'sem senha', 'CARLOS', 420, NULL, 'INTEL CEL 847 1.10GH', 4, NULL, 'NI', 'NI', 'NI', 0, '2019-01-22 00:00:00', 'POSITIVO', 'GENERICO', '40030356', NULL, NULL, 'SIM'),
(00068, 14, 00001, 00002, 'NOTEBOOK', 'RECEPCAO', 'DESKTOP-NDOS7SR', 'UTILIZADO PARA AUTORIZACAO DE PROCEDIMENTOS CONVEN', 'usuario', 'sem senha', 'NEILA', 1000, NULL, 'I3 6006U 2.0GHZ', 4, NULL, 'DELL', '', '', 0, '2019-01-25 00:00:00', 'DELL', '', '', NULL, NULL, 'SIM'),
(00069, 14, 00043, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES DOMESTICAS', 'USUARIO', 'SEM SENHA', 'VALDICLAY', 500, NULL, '', 2, NULL, 'LENOVO', '', 'OFFICE', 0, '2019-03-11 00:00:00', 'LENOVO', 'IDEAPAD 110', 'PE02JS58', NULL, NULL, 'SIM'),
(00070, 14, 00047, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NAO TEM', 'TRABALHOS E ATIVIDADES DOMESTICAS', 'kelly', 'sem senha', 'KELLY AZEVEDO', 500, NULL, 'INTEL CELERON', 4, NULL, '', '', '', 0, '2019-03-19 00:00:00', 'ACER', 'ASPIRE ES 15', '', NULL, NULL, 'SIM'),
(00071, 6, 00048, 00002, 'NOTEBOOK', 'RESIDENCIA', 'ROBSON-PC', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'robson', 'sobrallemos', 'DYME ONNYL', 500, NULL, 'INTEL CEL 1037 1.80 ', 2, NULL, 'NI', 'NI', 'COREL DRAW X6 | OFFICE 2010 | AUTO CAD 2012 | ', 0, '2019-06-10 00:00:00', 'COMPAQ', 'PRESSARIO CQ-18', 'NQ0002IB002502', NULL, NULL, 'SIM'),
(00072, 5, 00048, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'DYME ONNYL', 500, NULL, 'I5 430M 2.2GHZ', 3, NULL, 'HP', '', 'COREL DRAW X6 | OFFICE 2010 | ', 0, '2019-07-08 00:00:00', 'HP', 'PAVILION DM4 1055BR', 'BRQ048F21W', NULL, NULL, 'SIM'),
(00073, 14, 00032, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'VENDA DE CAMINHOES MARDISA', 'erica', 'sem senha', 'ERICA BANDEIRA', 1000, NULL, 'I3', 4, NULL, '', '', 'OFFICE 2013', 0, '2019-07-08 00:00:00', 'SAMSUNG', '', '', NULL, NULL, 'SIM'),
(00074, 5, 00048, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'DYME ONNYL', 500, NULL, 'DUAL CORE AMD E450', 4, NULL, 'ACER', '16', '', 0, '2019-09-19 00:00:00', 'ACER', 'ASPIRE 5250-0639', 'LXRJY0205620402D821601', NULL, NULL, 'SIM'),
(00075, 14, 00032, 00002, 'NOTEBOOK', 'ESCRITORIO BANDEIRA TRANSPORTE', 'NOTEBOOK', 'PLANILHAS, RELATORIOS E SCANNER DE DOCUMENTOS', 'usuario', 'sem senha', 'ASSISTENTE', 1000, NULL, 'I3 CORE 7020U', 4, NULL, 'ACER', '16', 'OFFICE 2013, SCANNER EPSON PERFECTION V19', 0, '2019-09-24 00:00:00', 'ACER', 'ASSPIRE 3 A-315-53-333H', '', NULL, NULL, 'SIM'),
(00076, 9, 00025, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'maria fernanda matos', '1306', 'LUAN', 1000, NULL, 'I3', 4, NULL, 'POSITIVO', '14', '', 0, '2019-10-07 00:00:00', 'POSITIVO', 'NTB MOTION I341TA', '4A720WB12', NULL, NULL, 'SIM'),
(00077, 14, 00001, 00002, 'DESKTOP', 'RESIDENCIA', 'DESKTOP-9R38VR4', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', ' SEM SENHA', 'NETO', 1024, NULL, 'I7 7700 3.6GHZ', 8, NULL, '  ', 'NI', 'OFFICE 2013', 0, '2020-01-07 00:00:00', 'DELL', 'INSPIRON 3268', 'DDBRFM2', 'PROGRAMA POSSUI O VIRTUAL BOX COM UMA MAQUINA VIRUTAL DO WINDOWS 7 PARA O CNES, POSSUI PLACA DE VIDEO GT610', NULL, 'SIM'),
(00078, 5, 00050, 00002, 'DESKTOP', 'RESIDENCIA', 'ANDERSON-PC', 'TRABALHOS E ATIVIDADES ESCOLARES', 'anderson', 'sem senha', 'ANDERSON', 500, NULL, 'AMD SEMPROM 145 2.8G', 2, NULL, 'ASROCK N68-VS3 FX', 'NI', 'OFFICE 2013', 0, '2020-01-21 00:00:00', 'GENERICO', 'GENERICO', 'NI', NULL, NULL, 'SIM'),
(00079, 14, 00051, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-E94UO2N7', 'TRABALHOS E OUTRAS ATIVIDADES DE FACULDADE', 'mayana', 'sem senha', 'MAYANA SILVA', 1000, NULL, 'I3-7020 2.30GHZ', 4, NULL, 'NI', 'NI', 'MICROSOFT OFFICE 2013', 0, '2020-02-28 00:00:00', 'ACER', 'ASPIRE 3 A315-53-333H', 'NXHFMAL0029449E0DE9501', NULL, NULL, 'SIM'),
(00080, 14, 00052, 00002, 'NOTEBOOK', 'ESCRITORIO', '', 'PLANILHAS, RELATORIOS E SCANNER DE DOCUMENTOS', 'karollyne', 'sem senha', 'ALVANIR', 1000, NULL, '', 4, NULL, 'SAMSUNG', '', 'OFFICE 2016', 0, '2020-03-03 00:00:00', 'SAMSUNG', 'NP300E5L-KF2BR', '08089QBJB00794Z', NULL, NULL, 'SIM'),
(00081, 14, 00053, 00002, 'DESKTOP', 'RESIDENCIA', 'DESKTOP-D8NKDH7', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'MARCO CARDENAS', 500, 'IDE', 'I3-3220 3.30GHZ', 4, 'DDR3', 'NI ', 'NI', 'OFFICE 2013', 0, '2020-03-12 00:00:00', 'POSITIVO', 'NI', '1A706V04Z', '', '2022-04-01', 'SIM'),
(00082, 1, 00054, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'ailana', 'manaus', 'AILANA', 500, NULL, 'I5-5005U 2GHZ', 4, NULL, ' ', 'NI', 'NI', 0, '2020-03-16 00:00:00', 'SAMSUNG', 'NP300E5K', '07QP9QAHA01274W', '.', NULL, 'SIM'),
(00083, 14, 00027, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'DANIEL', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-03-21 00:00:00', 'HP', '15-R017DX', 'CND428C065H', NULL, NULL, 'SIM'),
(00084, 14, 00055, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LENOVO-PC', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'Usuario', 'sem senha', 'EDICARLOS', 500, NULL, 'I3 - 3110M 2.4GHZ', 4, NULL, 'NI', 'NI', 'OFFICE 2013 | ANNYDESK | AVG ANTIVIRUS', 0, '2020-03-24 00:00:00', 'LENOVO', 'IDEAPAD G400S', 'PE00FF6L', NULL, NULL, 'SIM'),
(00085, 1, 00056, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'DEBORA', 320, NULL, 'DUAL CORE C60', 2, NULL, '', '', '', 0, '2020-04-07 00:00:00', 'ASUS', 'X45U', 'D1NDB201414602B', NULL, NULL, 'SIM'),
(00086, 14, 00057, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'HEllayne fernandes', 'sem senha', 'HELLAYNE', 240, NULL, 'I3 - 7100 - 2.4GHZ', 6, NULL, 'NI  ', 'NI', 'MICROSOFT OFFICE 2013', 0, '2020-04-20 00:00:00', 'DELL', 'INSPIRON 15 ST GQWL6F2', '36455373758', 'PARA FORMATAR USAR OUTRO EQUIPAMENTO COMPATIVEL E COLOCAR HD. ADCIONADO SSD 26/11/2020, PARA ATUALIZAR BIOS BAIXAR A MESMA EXECUTAR NO CMD COM O NOME E O COMANDO /FORCEIT', NULL, 'SIM'),
(00087, 1, 00058, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'JULIANA', 320, NULL, 'AMD DUAL CORE E1', 2, NULL, '', '', '', 0, '2020-04-22 00:00:00', 'ASPIRE', 'ASPIRE V5-123-3824', '42600484179', NULL, NULL, 'SIM'),
(00088, 14, 00059, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'pin pessoal', 'ERICA', 1024, NULL, 'I3-8130U', 4, NULL, 'LENOVO', 'NI', 'NI', 0, '2020-05-12 00:00:00', 'LENOVO', 'IDEAPAD S145', '81XN0002BR', NULL, NULL, 'SIM'),
(00089, 14, 00060, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'GIL', 1000, NULL, 'A12-9720P 3.60GHZ', 8, NULL, 'ACER', 'NI', 'NI', 0, '2020-05-15 00:00:00', 'ACER', 'ASPIRE5 A515-41G-1480', '90619229595', NULL, NULL, 'SIM'),
(00090, 14, 00061, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', '1327', 'SANDRO', 1000, NULL, 'I5-8265U 1.8GHZ', 8, NULL, 'LENOVO', '', '', 0, '2020-05-27 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE05QARW', NULL, NULL, 'SIM'),
(00091, 14, 00062, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'Usuario', 'sem senha', 'YANO', 500, NULL, 'I5-2410 2.30GHZ', 4, NULL, 'NI', 'NI', 'NI', 0, '2020-05-27 00:00:00', 'SAMSUNG', 'NP-RV420-AD1BR', 'HFK19KABA00197J', NULL, NULL, 'SIM'),
(00092, 14, 00039, 00002, 'DESKTOP', 'RECEPCAO CASA CAFE', 'CASACAFE', 'SERVIDOR DE APLICACAO', 'user', 'sem senha', 'GERENTE', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-06-16 00:00:00', 'GENERICO', '', '', NULL, NULL, 'SIM'),
(00093, 14, 00063, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'OTAVIO', 1000, NULL, 'I7-7500 2.7GHZ', 8, NULL, '', '', '', 0, '2020-06-29 00:00:00', 'ACER', 'A515-51G-72DB', '', NULL, NULL, 'SIM'),
(00094, 14, 00062, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'yuji', 'sem senha', 'YUJI', 500, NULL, 'AMD E-350 1.6GHZ', 4, NULL, '', '', '', 0, '2020-07-15 00:00:00', 'TOSHIBA', 'SATELITE L745D-S4220BN', '7B442392W', NULL, NULL, 'SIM'),
(00095, 14, 00064, 00002, 'DESKTOP', 'ESCRITORIO GRAFICA', 'NI', 'CRIACAO DE DESENHOS PARA ESTAMPAS', 'usuario', 'sem senha', 'VILSON', 220, NULL, 'I3 1.2GHZ', 8, NULL, ' ', 'NI', 'NI', 0, '2020-07-15 00:00:00', 'GENERICO', 'NI', 'NI', 'SSD KINGSTON 220', NULL, 'SIM'),
(00096, 14, 00065, 00002, 'DESKTOP', 'IMPRESSAO ', 'DESKTOP-5K2M4BE', 'CRIACAO DE DESENHOS PARA ESTAMPAS', 'GABRIEL', 'SEM SENHA', 'DESIGNER GRAFICO', 0, NULL, 'I5-3470 3.2GHZ', 16, NULL, 'NI', 'NI', 'COREL DRAW 19 | OFFICE 2019 | PHOTOSHOP 19', 0, '2020-07-17 00:00:00', 'GENERICO', 'NI', 'NI', NULL, NULL, 'SIM'),
(00097, 13, 00038, 00002, 'NOTEBOOK', 'ESCRITORIO', '', 'PLANILHAS, RELATORIOS E SCANNER DE DOCUMENTOS', 'Sonimar', 'sem senha', 'SONIMAR', 0, NULL, 'PENT DUA CORE 2.3G', 2, NULL, '', '', '', 0, '2020-07-17 00:00:00', 'ACER', 'EMACHINES D728-4896', 'LXND0080011080EFAC2500', NULL, NULL, 'SIM'),
(00098, 1, 00066, 00007, 'NOTEBOOK', 'RECEPCAO', '', 'REGISTRO PESSOAL', 'PAULA', 'SEM SENHA', 'ANA PAULA', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-07-17 00:00:00', '', '', '', NULL, NULL, 'SIM'),
(00099, 5, 00064, 00006, 'DESKTOP', 'RECEPCAO', 'NI', 'SERVIÃ‡OS GRAFICA', 'usuario', 'sem senha', 'VALMIR', 400, NULL, 'CORE 2 DUO 2.93GHZ', 4, NULL, 'NI', 'NI', 'COREL DRAW 19 | OFFICE 2013 | PHOTOSHOP 19', 0, '2020-07-20 00:00:00', 'DELL', 'OPTIPLEX 380', '2LVY0Q1', NULL, NULL, 'SIM'),
(00100, 14, 00067, 00007, 'ALLINONE', 'RESIDENCIA', 'NI', 'ATIVIDADES ESCOLARES E REDES SOCIAIS', 'USUARIO', 'SEM SENHA', 'DEBORAH', 500, NULL, 'AMD E1-6010 1.35GHZ', 4, NULL, 'NI', 'NI', 'OFFICE 2013', 0, '2020-07-23 00:00:00', 'HP', 'HP 18 ALL IN ONE PC', 'BRJ533WJD2', 'EQUIPAMENTO PRECISA INSTALAR DRIVER DE VIDEO DO FABRICANTE ASSIM QUE TERMINAR INSTALACAO DO WINDOWS.', NULL, 'SIM'),
(00101, 14, 00064, 00007, 'NOTEBOOK', 'RECEPCAO', 'DESKTOP-M4KC19B', 'SERVIÃ‡OS GRAFICA', 'USUARIO', 'Pretinho30', 'VALMIR', 1000, NULL, 'I5-421OU 1.7GHZ', 8, NULL, '', '', '', 0, '2020-07-28 00:00:00', 'DELL', 'DELL INSPIRON 3542', 'FTTQVC2', 'ESPOSA VALMIR.', NULL, 'SIM'),
(00102, 15, 00068, 00007, 'NOTEBOOK', 'RECEPCAO', 'DESKTOP-QR61D2T', 'SERVIÃ‡OS GRAFICA', 'CAROL', 'NAO TEM', 'LUCIO JANDER', 500, NULL, 'I3-6006 2.0GHZ', 4, NULL, 'NI', 'NI', 'COREL DRAW, OFFICE 2013, PHOTOSHOP', 0, '2020-07-28 00:00:00', 'LENOVO', 'IDEAPAD 320-15IKB TYPE 80YH', 'PE03KN3M', 'ULTIMA FORMATACAO FEITA PELO ATENDENTE', NULL, 'SIM'),
(00103, 1, 00069, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'USUARIO', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-07-29 00:00:00', 'SEMP TOSHIBA', '', '', '', NULL, 'SIM'),
(00104, 15, 00009, 00007, 'DESKTOP', 'RECEPCAO DA IGREJA', 'DESKTOP-VL347PP', 'UTILIZADO PARA AUXILIAR NO CULTO', 'IASDCDI', 'NAO TEM', 'DAVI FREITAS', 80, NULL, 'AMD PHENON IIX2 3.2G', 4, NULL, 'POSITIVO', 'NI', 'OFFICE 2013 | DORO 1.92 | VLC MEDIA PLAYER | ADOBE', 0, '2020-08-05 00:00:00', 'MULTILASER', 'NI', 'NI', 'POSSUI PLACA DE VIDEO AMD RADEON HD6450 1GB DE RAM DDR3', NULL, 'SIM'),
(00105, 15, 00070, 00002, 'NOTEBOOK', 'SALA DE ESPERA / FATURAMENTO', 'OTO-FATURA01', 'REGISTRO DE ATENDIMENTO / FATURAMENTO', 'Faturamento', 'sem senha', 'AYEZHA, THAMIRES', 1000, NULL, 'I5-8265U 1.6GHZ', 8, NULL, 'NI', 'NI', 'OFFICE 2013 | PYRAMIDE | VIRTUAL BOX WIN7', 0, '2020-08-10 00:00:00', 'DELL', 'VOSTRO 3583', 'H76V643', 'UTILIZA WIFI | IMPRESSORA EPSON51A370| NECESSARIO INSTALACAO E CONFIGURACAO DO VIRTUAL BOX COM MAQUINA VIRTUAL WINODOWS 7, POIS SERÃ¡ NECESSARIO PARA UTILIZACAO DO CNESS QUE SOMENTE FUNCIONA NO WINDOWS 7. NAO FOI POSSIVEL INSTALACAO DO WINDOWS 7 POIS O EQUIPAMENTO NAO FUNCIONAVA', NULL, 'SIM'),
(00106, 15, 00070, 00002, 'NOTEBOOK', 'RECEPCAO ', 'OTO-RECEPCAO01', 'AUTORIZACAO DE EXAMES, CONSULTA, IMPRESSAO DE NOTA', 'USUARIO', 'SEM SENHA', 'RECEPCIONISTA', 1000, NULL, 'I5-7200 2.5GHZ', 4, NULL, 'NI', 'NI', 'OFFICE 2013 | ', 0, '2020-08-10 00:00:00', 'DELL', 'VOSTRO 3583', '7L1SVN2', 'IMPRESSORA L395 SERIES', NULL, 'SIM'),
(00107, 14, 00070, 00002, 'NOTEBOOK', 'AGENDAMENTO', 'DESKTOP-HKTUOGG', 'AGENDAMENTO DE CONSULTA E EXAMES', 'OTORHINUS', 'SEM SENHA', 'AGENDAMENTO', 1000, 'IDE', 'I5 - 7200 2.50GHZ', 8, 'DDR4', 'NI ', 'NI', 'OFFICE 2013 ', 0, '2020-08-10 00:00:00', 'DELL', 'VOSTRO 3583', '5JYFQM2', 'IMPRESSORA EPSON L395 ALTERADO QTD MEMORIA PARA 8GB', '2018-04-15', 'SIM'),
(00108, 15, 00071, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'JESSICA', 230, NULL, 'PENTIUM P6100 2GHZ', 3, NULL, 'NI', 'NI', 'NI', 0, '2020-08-11 00:00:00', 'ACER', 'ASPIRE 5742Z-4629', 'LXR4P0220111628D741601', 'TECLA FN SOLTA', NULL, 'SIM'),
(00109, 1, 00062, 00007, 'DESKTOP', 'RECEPCAO', '', 'REGISTRO PESSOAL', 'NAO TEM', 'NAO TEM', 'ALDENIRA AZEVEDO', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-08-12 00:00:00', '', '', '', '', NULL, 'SIM'),
(00110, 14, 00072, 00007, 'DESKTOP', 'RECEPCAO', 'NI', 'REGISTRO PESSOAL', 'NAO TEM', 'NAO TEM', 'ALDENIRA AZEVEDO', 320, NULL, 'CORE 2 DUO 2.4GHZ', 3, NULL, 'NI', 'NI', 'NI', 0, '2020-08-12 00:00:00', 'GENERICO', 'NI', 'NI', 'HOUVE UMA TROCA DE PLACA MAE, POREM CONTINUOU COM DEFEITO TROCAMOS MEMORIA, FONTE E PROCESSADOR', NULL, 'SIM'),
(00111, 14, 00073, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-BBDKSTJ', 'PARA ATIVIDADE ESCOLARES E TRABALHOS', 'leanderson', 'sem senha', 'LEANDERSON', 1000, NULL, 'I3-5005 2.0GHZ', 4, NULL, 'NI', 'NI', 'ADOBE READER, AVAST, OFFICE 2016, ', 0, '2020-08-19 00:00:00', 'SONY VAIO', 'VJF153F11X', '7260HMWBN', '', NULL, 'SIM'),
(00112, 14, 00074, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'AUXILIAR OS CULTOS REALIZADOS NA IGREJA', 'wandi', 'sem senha', 'FERNANDA', 0, NULL, '', 3, NULL, '', '', '', 0, '2020-08-31 00:00:00', 'ACER', 'EMACHINES D732-6643', 'LXNBP01006104080E12500', 'EQUIPAMENTO SERÃ UTILIZADO PARA AUXILIAR NOS CULTOS.', NULL, 'SIM'),
(00113, 1, 00058, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PARA ATIVIDADE ESCOLARES, REDES SOCIAIS', 'usuario', 'sem senha', 'JULIANA', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-09-10 00:00:00', 'SAMSUNG', 'NP370E4K', 'BA6811345A10', '', NULL, 'SIM'),
(00114, 14, 00041, 00002, 'NOTEBOOK', 'ESCRITORIO', 'LAPTOP-RFQ1MKPK', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'italo sergio', '@mel2019', 'ITALO', 256, NULL, 'I5-8265U 1.60GHZ', 8, NULL, '', '', '', 0, '2020-09-15 00:00:00', 'SAMSUNG', 'NP730XBE', '094S9QAN600186E', 'SSD 256', NULL, 'SIM'),
(00115, 15, 00075, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-F58B8LQ', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'MARIO', 'SENHA PESSOAL', 'MARIO', 1000, NULL, 'I5-8265 1.6GHZ', 8, NULL, '', '', '', 0, '2020-09-20 00:00:00', 'DELL', '', '', 'NAO CONSEGUI ANOTAR SERVICE TAG', NULL, 'SIM'),
(00116, 1, 00075, 00002, 'DESKTOP', 'RESIDENCIA', 'NI', 'ATIVIDADES ESCOLARES E REDES SOCIAIS', 'usuario', 'sem senha', 'MARIO', 500, NULL, 'NI', 4, NULL, 'NI', 'NI', 'NI', 0, '2020-09-20 00:00:00', 'POSITIVO', 'C4500B', '4A592KF7Q', 'EQUIPAMENTO COM LACRE', NULL, 'SIM'),
(00117, 15, 00070, 00002, 'NOTEBOOK', 'SALA DE EXAMES', 'OTO-EXAMES01', 'AUXILIAR MEDICOS NA EXECUCAO DE EXAMES', 'OTORHINUS', 'OTORHINUS', 'MEDICOS', 1000, NULL, 'I5-8265U 1.6GHZ', 8, NULL, '', '', '', 0, '2020-09-23 00:00:00', 'DELL', 'VOSTRO 3583', '42VBV53', '', NULL, 'SIM'),
(00118, 5, 00064, 00002, 'DESKTOP', 'RECEPCAO', 'NI', 'DESIGN E CRIACAO DE ARTES', 'valmir', 'sem senha', 'VALMIR', 256, NULL, 'I3 540 3.07GHZ', 8, NULL, 'NI', 'NI', 'COREL DRAW 19 | OFFICE 2013 | PHOTOSHOP 19', 0, '2020-09-24 00:00:00', 'GENERICO', 'NI', 'NI', '', NULL, 'SIM'),
(00119, 15, 00070, 00002, 'NOTEBOOK', 'SALA DE EXAMES', 'OTO-EXAMES02', 'AUXILIAR MEDICOS NA EXECUCAO DE EXAMES', 'OTORHINUS', 'SEM SENHA', 'MEDICOS', 1000, NULL, 'I5-8265 1.6GHZ', 8, NULL, '', '', '', 0, '2020-09-24 00:00:00', 'DELL', 'VOSTRO 3583', '52VBV53', '', NULL, 'SIM'),
(00120, 15, 00076, 00002, 'DESKTOP', 'RECEPCAO', 'ADEMIR-PC', 'ATENDIMENTO AO CLIENTE, EDITAR DOCUMENTOS E ARQUIV', 'ademir', 'sem senha', 'ADEMIR', 1000, NULL, 'DUAL CORE E5800 3.20', 4, NULL, 'ACER G41M07', '', '', 0, '2020-09-25 00:00:00', 'GENERICO', '', '', '', NULL, 'SIM'),
(00121, 11, 00077, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'TRABALHO E OUTROS SERVICOS', 'Pantoja', 'sem senha', 'THAYANA', 150, NULL, 'CORE 2 DUO T5670 1.8', 3, NULL, 'NI', 'NI', 'ICECREAM PDF EDITR 1.23', 0, '2020-10-01 00:00:00', 'DELL', 'VOSTRO 1510', 'NI', 'EQUIPAMENTO ALGUMAS CONFIGURAÃ§ÃµES EM ESPANHOL', NULL, 'SIM'),
(00122, 15, 00070, 00002, 'NOTEBOOK', 'SALA DA EXAMES', 'OTO-EXAMES03', 'AUXILIAR MEDICOS NA EXECUCAO DE EXAMES', 'usuario', 'sem senha', 'DIULIANA', 1000, NULL, 'I5-7200 2.5GHZ', 4, NULL, 'NI', 'NI', 'NI', 0, '2020-10-05 00:00:00', 'DELL', 'INSPIRON 5566', '5K08QM2', '', NULL, 'SIM'),
(00123, 14, 00070, 00002, 'NOTEBOOK', 'SALA DE EXAMES 2', 'OTO-EXAMES04', 'AUXILIAR MEDICOS NA EXECUCAO DE EXAMES', 'OTORHINUS', 'SEM SENHA', 'DIULIANA', 240, 'SSD', 'I5-7200 2.5GHZ', 8, 'DDR4', ' ', 'NI', 'NI', 0, '2020-10-07 00:00:00', 'DELL', 'INSPIRON 5566', '5JZDQM2', 'ADCIONAR MEMORIA 4GB E SSD DE 240GB 16/04/2022', '2018-12-14', 'SIM'),
(00124, 14, 00078, 00002, 'DESKTOP', 'RESIDENCIA', 'DESKTOP-HGRMFR5', 'TRABALHOS DOMESTICOS E DE FACULDADE E JOGOS', 'PARTICULAR', 'sem senha', 'GILBERTO', 500, NULL, 'I-XE E3-1200 V2 3.1G', 4, NULL, 'NI', 'NI', 'NI', 0, '2020-10-13 00:00:00', 'HP', 'NI', 'BRC34545KY', 'EQUIPAMENTO ERA UM SERVIDOR E AGORA SOLICITARAM FORMATACAO E INSTALACAO DE WINDOWS PARA ATIVIDADES DE FACULDADE E JOGOS', NULL, 'SIM'),
(00125, 14, 00079, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E SERVICOS DE ESCRITORIO', 'usuario', 'sem senha', 'LEONARDO', 0, NULL, '', 0, NULL, '', '', '', 0, '2020-10-19 00:00:00', 'LG', '', '', 'BATERIA AGUENTA MINUTOS', NULL, 'SIM'),
(00126, 14, 00070, 00002, 'NOTEBOOK', 'SALA DE EXAME HOROS', 'OTO-EXAME05', 'REALIZACAO DE EXAMES HOROS', 'OTORHINUS', 'SEM SENHA', 'MEDICOS', 250, NULL, 'I7 10750 2.6GHZ', 8, NULL, '', '', '', 0, '2020-10-19 00:00:00', 'LENOVO', 'IDEAPAD GAMING 3', 'PE06A0LH', 'EQUIPAMENTO DE CONFIGURACAO GAMER PARA REALIZACAO DO EXAMES HOROS, COM PLACA DE VIDEO GFORCE GTX1650 4GB DEDICADO, SSD 256 GB | NÃºMERO DE SÃ©RIE : PE06A0LH | NÃºMERO DO PRODUTO : 82CG0001BR | VERSÃ£O DO BIOS : EGCN25WW ', NULL, 'SIM'),
(00127, 1, 00070, 00002, 'NOTEBOOK', 'SALA DE EXAMES', 'LAPTOP-M4SHM25G', 'AUXILIAR MEDICOS NA EXECUCAO DE EXAMES', 'MARINA ', 'PESSOAL', 'MEDICOS', 1000, NULL, 'I3-8130 2.20GHZ', 6, NULL, '', '', '', 0, '2020-10-23 00:00:00', 'ACER', 'E5-776', '', '', NULL, 'SIM'),
(00128, 17, 00070, 00002, 'NOTEBOOK', 'CONSULTORIO', 'NI', 'AUXILIAR MEDICOS EM CONSULTAS', 'MONICA', 'A1profissional', 'DRA MONICA', 500, NULL, 'NI', 8, NULL, 'NI', 'NI', 'NI', 0, '2020-10-30 00:00:00', 'APPLE', 'MAC BOOK PRO', 'NI', '', NULL, 'SIM'),
(00129, 15, 00070, 00002, 'NOTEBOOK', 'ADMINISTRATIVO', 'OTO-CONSULT03', 'PLANILHAS, PAGAMENTOS, ROTINAS DE ADM', 'OTORHINUS', 'SEM SENHA', 'ELIZABETH', 1000, NULL, 'I5-8265U 1.6GHZ', 8, NULL, 'LENOVO  ', 'NI', 'OFFICE 2013, SCANNER E IMPRESSORA EPSONL395', 0, '2020-11-10 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE069JVQ', '', NULL, 'SIM'),
(00130, 6, 00080, 00002, 'DESKTOP', 'ESCRITORIO', 'MT02-PC', 'FATURAMENTO DE VEICULOS, CONSULTAR PROCESSOS.', 'usuario', 'sem senha', 'PAULA', 520, NULL, 'INTEL CEL J1800 2.4G', 8, NULL, '', '', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-10 00:00:00', 'INFOSTORE', 'GENERICO', 'S/N', 'EQUIPAMENTO POSSUI WINDOWS 7 ULTIMATE, ADAPTADOR WIFI, HD POSSUI DUAS PARTICOES', NULL, 'SIM'),
(00131, 6, 00080, 00002, 'DESKTOP', 'ESCRITORIO', 'COMP1-PC', 'FATURAMENTO DE VEICULOS, CONSULTAR PROCESSOS.', 'usuario', 'sem senha', 'PAULA ', 1000, NULL, 'CORE 2 DUO 2.83GHZ', 6, NULL, '', '', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-10 00:00:00', 'INFOWAY', 'GENERICO', 'S/N', 'EQUIPAMENTO POSSUI USB WIRELESS, POSSUI IMPRESSORA HP MULTIFUNCIONAL DESKJET 2130 COMO SCANNER VIA USB', NULL, 'SIM'),
(00132, 6, 00080, 00002, 'DESKTOP', 'RECEPCAO', 'NI', 'RECEPCAO DE CLIENTES', 'usuario', 'sem senha', 'RECEPCIONISTA', 0, NULL, 'INTEL CEL 2.51GHZ', 2, NULL, 'NI', 'NI', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-10 00:00:00', 'POSITIVO', 'MASTER T50', '4A311SB5L', 'EQUIPAMENTO POSSUI CONEXAO COM A REDE VIA CABO NO REPETIDOR, IMPRESSORA HP M15W PELA REDE', NULL, 'SIM'),
(00133, 14, 00070, 00002, 'NOTEBOOK', 'CONSULTORIO MEDICO', 'OTO-CONSULT04', 'AUXILIAR MEDICOS EM CONSULTAS', 'otorhinus', 'sem senha', 'MEDICO', 1000, NULL, 'I5-8265U 1.60GHZ', 8, NULL, '', '', 'MICROSOFT OFFICE 2013, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-10 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE069JWV', '', NULL, 'SIM'),
(00134, 1, 00081, 00002, 'NOTEBOOK', 'RECEPCAO', 'LAPTOP-I7EG4JRF', 'RECEPCAO DE CLIENTES', 'acer', 'sem senha', 'RUTH', 500, NULL, 'I3-6006U 2.00GHZ', 4, NULL, '', '', '', 0, '2020-11-11 00:00:00', 'ACER', 'ASPIRE ES 16 ES1-572-347R', '', '', NULL, 'SIM'),
(00135, 6, 00080, 00002, 'DESKTOP', 'ESCRITORIO', '', 'RECEPCAO DE CLIENTES', 'usuario', 'sem senha', 'RECEPCIONISTA', 500, NULL, 'INTEL CEL J1800 2.4G', 2, NULL, 'POSITIVO', '', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-11 00:00:00', 'POSITIVO', 'MASTER T50', '4A311SC14', '', NULL, 'SIM'),
(00136, 14, 00082, 00002, 'ALLINONE', 'ESCRITORIO', 'ANDREZZA', 'PAGAMENTOS, PLANILHAS E DOCUMENTOS DA EMPRESA', 'andrezza', 'sem senha', 'ANDREZZA', 450, NULL, 'PENTIUM N3530 2.16GH', 4, NULL, 'LG', '', 'MICROSOFT OFFICE 2013, JAVA, FIREFOX, ADOBE READER', 0, '2020-11-12 00:00:00', 'LG', 'LG22V24', '509BZGU001239', '', NULL, 'SIM'),
(00137, 15, 00083, 00002, 'SERVIDOR', 'CAIXA ', 'DESKTOP-QLB3O34', 'SERVIDOR DE SISTEMA E CAIXA PRINCIPAL ', 'User', 'Sem senha', 'CAIXA', 4, NULL, 'I3-2120 3.30GHZ', 520, NULL, '', '', 'OFFICE 2016,BEMATECH, DROPBOX, ', 0, '2020-11-25 00:00:00', 'GENERICO', 'C3TECH', '', 'SERVIDOR SISTEMA, CERTIFICADO SERASA, BEMATECH, ', NULL, 'SIM'),
(00138, 14, 00057, 00002, 'NOTEBOOK', 'ESCRITORIO', 'LAPTOP-PLIC7P9R', 'PLANILHAS E DOCUMENTOS DA EMPRESA', 'helayne', '1227', 'HELAYNE', 1000, NULL, 'I3-8130U 2.21GHZ', 4, NULL, 'LENOVO', '', 'OFFICE 2016', 0, '2020-11-25 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE06AWHS', 'EQUIPAMENTO COM WIRELESS 5.0GHZ', NULL, 'SIM'),
(00139, 14, 00084, 00002, 'NOTEBOOK', 'ESCRITORIO', 'LAPTOP-IN34HKPN', 'PLANILHAS E DOCUMENTOS DE ESCRITORIO', 'meciano feitosa', '05022016', 'MECIANO', 500, NULL, 'ASPIRE A315-33', 4, NULL, '', '', 'OFFICE 2013', 0, '2020-11-25 00:00:00', 'ACER', 'ASPIRE 3 A315-33', 'NXHAAAL0019246116E9501', '', NULL, 'SIM'),
(00140, 14, 00085, 00002, 'NOTEBOOK', 'ESCRITORIO', 'DESKTOP-OC88ND9', 'DOCUMENTOS, PESQUISAS E FOTOS', 'thyara gonzales', '1903201088', 'THYARA GONZALES', 1000, NULL, 'I5-5200U 2.2GHZ', 8, NULL, ' ', 'NI', 'NI', 0, '2020-11-28 00:00:00', 'DELL', 'INSPIRON 15', 'G8JG0C2', 'WIFI 5GHZ, TELA TOUCHSCREEN', NULL, 'SIM'),
(00141, 14, 00086, 00002, 'NOTEBOOK', 'ESCRITORIO', '', 'TRABALHOS DESGINER, LOGOS E ARTES', 'Felipe Martins', '9165', 'FELIPE', 220, NULL, 'I3-M380 2.53GHZ', 4, NULL, '', '', '', 0, '2020-12-09 00:00:00', 'ACER', 'EMACHINES D732-6643', 'LXNBP010060407D622500', '', NULL, 'SIM'),
(00142, 14, 00087, 00002, 'DESKTOP', 'RESIDENCIA', 'NI', 'JOGOS, GRAFICOS E DESENHOS CAD', 'partular', 'sem senha', 'HUGO', 240, 'SSD', 'I7-3045 2.7GHZ', 32, 'DDR4', 'ASUSP8875-M ', 'NI', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2020-12-21 00:00:00', 'GENERICO', 'GAMER', 'NI', 'PC GAMER COM SSD DE 240GB E HD DE 1TB', '2022-06-22', 'SIM'),
(00143, 14, 00088, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'TRABALHOS E ATIVIDADES ESCOLARES', 'usuario', 'jv12017532', 'JAQUELINE', 500, NULL, 'INTEL CEL N4000', 4, NULL, ' ', 'NI', 'OFFICE 2016', 0, '2021-02-02 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE05PC7G', 'NOVA SENHA JV12017532', NULL, 'SIM'),
(00144, 2, 00089, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'AULAS ETRABALHOS ESCOLARES, VIDEOS E PALESTRAS ONL', 'usuario', 'sem senha', 'ELENILSON', 250, NULL, '', 4, NULL, '', '', '', 0, '2021-02-25 00:00:00', 'POSITIVO', '', '', '', NULL, 'SIM'),
(00145, 5, 00089, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHO ESCOLARES E PESQUISAS', 'usuario', 'senha', 'USUARIO', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-02-25 00:00:00', 'ACER', '', '', '', NULL, 'SIM'),
(00146, 14, 00032, 00002, 'DESKTOP', 'CAIXA ', '', 'EMISSAO DE NOTAS E ENTRADA DE PRODUTOS', 'Super Pink', 'sem senha', 'FINANCEIRO', 0, NULL, '', 0, NULL, '', '', 'OFFICE 2016', 0, '2021-02-27 00:00:00', 'ELGIN', '', '', '', NULL, 'SIM'),
(00147, 14, 00090, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS ESCOLARES, AULAS ONLINES, VIDEOS', 'Ana Paula Ferreira', 'sem senha', 'USUARIO', 1000, NULL, 'I3-8130U 2.2GHZ', 8, NULL, '', '', 'OFFICE 2010, JAVA, FIREFOX, ADOBE READER', 0, '2021-03-05 00:00:00', 'LENOVO', 'IDEAPAD S145', 'PE06WDS8', '', NULL, 'SIM'),
(00148, 15, 00081, 00002, 'NOTEBOOK', 'RECEPCAO', 'LAPTOP-I1TV7NEF', 'SERVIDOR DE SISTEMA', 'JPAULISTANO', '130133NOKIA', 'GERENTE', 700, NULL, 'I5-4200-1.6GHZ', 8, NULL, ' ', 'NI', 'NI', 0, '2021-03-05 00:00:00', 'SONY', 'SVF153B1YX', 'BCM943142HM', 'ACESSO REMOTO, SERVIDOR DO SISCOM, NOTEBOOK DO GESTOR', NULL, 'SIM'),
(00149, 15, 00070, 00002, 'NOTEBOOK', 'CONSULTORIO MEDICO', 'CONSULTORIO_3', 'AUXILIAR MEDICOS EM CONSULTAS', 'OTO_03', 'sem senha', 'MEDICO', 1000, NULL, 'I5-8265U 1.6GHZ', 8, NULL, '', '', '', 0, '2021-03-08 00:00:00', 'DELL', 'VOSTRO 3583', 'H75V643', '', NULL, 'SIM'),
(00150, 11, 00091, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS ESCOLARES, AULAS ONLINES, VIDEOS', 'Usuario', 'sem senha', 'USUARIO', 120, NULL, 'DUAL CORE 2.16GHZ', 2, NULL, '', '', '', 0, '2021-03-15 00:00:00', 'LG', 'LGR41', '906BZYM013938', '', NULL, 'SIM'),
(00151, 14, 00092, 00002, 'NOTEBOOK', 'RESIDENCIA', 'LAPTOP-G4NDQONU', 'AULAS, TRABALHOS ESCOLARES, VIDEOS', 'jhuly lima', '2003', 'JHULY LIMA', 1000, NULL, 'AMD RYZEN 3 3250U', 8, NULL, '', '', '', 0, '2021-03-17 00:00:00', 'ACER', 'ASPIRE 3 A315-23 R6DJ', 'NXA39AL001102007FA9Z00', 'EQUIPAMENTO NOVO, EQUIPAMENTO COM MEMORIA DE VIDEO COMPARTILHADA 2GB', NULL, 'SIM'),
(00152, 4, 00093, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS ESCOLARES, AULAS ONLINES, VIDEOS', 'Fabia', 'sem senha', 'FABIA', 320, NULL, 'GENU INTEL U4100 1.3', 3, NULL, '', '', 'PADRAO', 0, '2021-03-22 00:00:00', 'TOSHIBA', 'SATELITE T135-S1305', 'Y9079199W', 'POSSUI UM CARTAO DE MEMORIA INSTALADO.', NULL, 'SIM'),
(00153, 14, 00094, 00002, 'ALLINONE', 'RECEPCAO', 'NI', 'REALIZAR PAGAMENTOS E OUTRAS TAREFAS ADM', 'Fernanda', '414152', 'FERNANDA', 500, NULL, 'INT CEL N4100 1.1GH', 4, NULL, '  ', 'NI', 'NI', 0, '2021-04-01 00:00:00', 'LG', 'BJ31P1', '903BZWB003321', 'CENTRAL DE ARQUIVOS', NULL, 'SIM'),
(00154, 9, 00095, 00002, 'ALLINONE', 'RESIDENCIA', 'DESKTOP-1BI3GE', 'TRABALHOS E ATIVIDADES ESCOLARES', 'Daniele', 'sem senha', 'USUARIO', 1000, NULL, 'I3-8145U 2.10GHZ', 4, NULL, ' ', 'NI', 'NI', 0, '2021-04-09 00:00:00', 'LENOVO', 'A340-24IWL', 'PE04Y3Y1', 'EQUIPAMENTO SEM MARCAS', NULL, 'SIM'),
(00155, 11, 00096, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES ACADEMICAS', 'usuario', 'careca', 'VERA LUCIA', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-04-15 00:00:00', 'TOSHIBA', 'SATELITE L745D', '9B14 1014W', '', NULL, 'SIM'),
(00156, 14, 00097, 00002, 'NOTEBOOK', 'RESIDENCIA', 'DESKTOP-5BHO660', 'AUXILIAR TRABALHOS ESCOLARES ', 'usuario', 'sem senha', 'USUARIO', 120, NULL, 'AMD E-350 PRO 1.6GHZ', 6, NULL, ' ', 'NI', 'NI', 0, '2021-04-18 00:00:00', 'SONY', 'VPCEL15FXI', '275453343001334', 'SERVICE TAG C9014TQY ', NULL, 'SIM'),
(00157, 16, 00070, 00002, 'SERVIDOR', 'CPD', 'SERVIDOR', 'SERVIDOR DE ARQUIVOS', 'administrador', 'ADM@otorhinus', 'ANALISTA', 1000, NULL, 'INT XEO E3-1220 3G', 8, NULL, '  ', 'NI', 'NI', 0, '2021-04-26 00:00:00', 'DELL', 'POWEREDGE T130', '4B0HQM2', 'ANTIGO SERVIDOR DE APLICACAO, PRESSIONAR F11 PARA ENTRAR NO BOOT MENU', NULL, 'SIM'),
(00158, 2, 00081, 00002, 'DESKTOP', 'RECEPCAO', 'ADILCE2', 'RECEPCAO DE CLIENTES, ORCAMENTOS', 'adv. adilce', 'sem senha', 'RECEPCAO', 80, NULL, 'I3-4130-3.40GHZ', 4, NULL, '', '', '', 0, '2021-04-29 00:00:00', 'LENOVO', '90AS0005BR', 'PE016U8X', 'EQUIPAMENTO ERA DE ADVOGADA E ESTA SENDO UTILIZADO NA RECEPCAO, COM ADAPTADOR WIFI ', NULL, 'SIM'),
(00159, 11, 00009, 00002, 'NOTEBOOK', 'ESCRITORIO', '', 'CRIACAO DE ARTE PARA CANECAS', 'usuario', 'sem senha', 'DAVI', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-05-07 00:00:00', 'SAMSUNG', 'RV415', 'BA6805436A', '', NULL, 'SIM'),
(00160, 14, 00098, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'AULAS ONLINE, PESQUISAS E ATIVIDADES ESCOLARES', 'Paulo', 'sem senha', 'PAULO', 64, NULL, 'INTEL QUAD CORE Z835', 2, NULL, '   ', 'NI', 'NI', 0, '2021-05-13 00:00:00', 'MULTILASER', 'ML-WI07 - PC121', '201905140900670', 'MEMORIA 32GB EMMC E 32 MICROSD, BAIXAR O MULTISYNC E ESCOLHER PCLEGACY 121', NULL, 'SIM'),
(00161, 1, 00027, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES ACADEMICAS', 'usuario', 'sem senha', 'USUARIO', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-05-19 00:00:00', 'ACER', 'V5-171-6800', 'NXM3DAL008305B34469501', 'AMIGO DO DANIEL', NULL, 'SIM'),
(00162, 14, 00099, 00002, 'DESKTOP', 'RESIDENCIA', 'DESKTOP-VUVOHHS', 'AULAS ONLINE, PESQUISAS E ATIVIDADES ESCOLARES', 'victor', 'sem senha', 'USUARIO', 160, NULL, 'AMD 145 2.8GHZ', 4, NULL, 'N68-VS3 ', 'NI', 'HP M1132 MFP, OFFICE 2013', 0, '2021-06-07 00:00:00', 'XTECH', 'GENERICO', 'C8510GN058600701', 'USADO', NULL, 'SIM'),
(00163, 1, 00065, 00002, 'DESKTOP', 'FINANCEIRO', '', 'EMISSAO DE NOTAS, PREGAO ELETRONICO, PLANILHAS', 'usuario', 'sem senha', 'MARCOS', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-06-08 00:00:00', '', '', '', '', NULL, 'SIM'),
(00164, 14, 00100, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES ACADEMICAS', 'karen', 'sem senha', 'KAREN', 120, NULL, 'I3-2348 2.3GHZ', 4, NULL, 'TOSHIBA', '', 'OFFICE 2016, AVAST, ', 0, '2021-06-08 00:00:00', 'TOSHIBA', 'SATELITE C855', '3D227499Q', 'EQUIPAMENTO POSSUI SSD120 KINGSTON', NULL, 'SIM'),
(00165, 14, 00002, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'GRAVAR VIDEO AULA, EDITAR VIDEO, ', 'cayo', 'sem senha', 'CAYO', 240, NULL, '', 8, NULL, '', '', 'OBS STUDIO, OFFICE 2016', 0, '2021-06-28 00:00:00', 'SAMSUNG', 'NP270E5G', 'JHM991DF200224J', '', NULL, 'SIM'),
(00166, 14, 00101, 00002, 'ALLINONE', 'RECEPCAO', 'DESKTOP-BA8IROF', 'PROPOSTA DE VENDA, CADASTRO DE CLIENTES, PLANILHAS', 'Usuario', '2021', 'ATENDENTE', 500, NULL, 'INT CEL 4205U 1.8GHZ', 4, NULL, ' ', 'NI', 'IMP CANON G3110', 0, '2021-06-29 00:00:00', 'SAMSUNG', 'DPS30ABE', '09MT9QCR400190P', 'EQUIPAMENTO NOVO', NULL, 'SIM');
INSERT INTO `tbl_equipamento_equip` (`NUM_ID_EQUIP`, `TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_EQUIP`, `TXT_SETOR_EQUIP`, `TXT_NOMEREDE_EQUIP`, `TXT_DESCRICAO_EQUIP`, `TXT_LOGIN_EQUIP`, `TXT_SENHA_EQUIP`, `TXT_UTILIZADORES_EQUIP`, `NUM_HD_EQUIP`, `TXT_TIPO_ARMAZENAMENTO_EQUIP`, `TXT_PROCESSADOR_EQUIP`, `NUM_MEMORIA_EQUIP`, `TXT_TIPO_MEMORIA_EQUIP`, `TXT_PLACAMAE_EQUIP`, `TXT_MONITOR_EQUIP`, `TXT_APLICATIVOS_EQUIP`, `NUM_NFE_EQUIP`, `DTH_REGISTRO_EQUIP`, `TXT_MARCA_EQUIP`, `TXT_MODELO_EQUIP`, `TXT_SERIAL_EQUIP`, `TXT_OBSERVACAO_EQUIP`, `DTA_GARANTIA_EQUIP`, `TXT_ATIVO_EQUIP`) VALUES
(00167, 14, 00102, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'DOCUMENTOS E PLANILHAS', 'Jamil Coelho', '6563', 'USUARIO', 1000, NULL, 'I3-7020 2.30GHZ', 4, NULL, ' ', 'NI', 'NI', 0, '2021-06-29 00:00:00', 'POSITIVO', 'I341TAI', '4A755GW65', '', NULL, 'SIM'),
(00168, 11, 00103, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES ACADEMICAS', 'Particular', 'sem senha', 'USUARIO', 520, NULL, 'I3-M330 2.13GHZ', 4, NULL, '', '', '', 0, '2021-07-01 00:00:00', 'SONY', 'VPCCW21FX', '', '', NULL, 'SIM'),
(00169, 14, 00100, 00002, 'NOTEBOOK', 'RECEPCAO', '', 'FATURAMENTO DE VEICULOS, PLANILHAS E OUTROS DOCUME', 'renata', 'renata1102', 'CARLO', 1000, NULL, 'INTEL CEL 1.10GHZ', 4, NULL, '', '', '', 0, '2021-07-06 00:00:00', 'LENOVO', 'IDEAPAD 320 15IAP', 'PE03GF40', 'NOTEBOOOK LOCALIZADO NA CLS VEICULOS', NULL, 'SIM'),
(00170, 14, 00104, 00002, 'NOTEBOOK', 'ESCRITORIO', 'LAPTOPP-51SP7HEF', 'PLANILHAS, EMISSAO DE NOTAS E OUTROS DOCUMENTOS', 'dirceu', 'sem senha', 'DIRCEU', 1000, NULL, 'I3-1115-G4 3.0GHZ', 4, NULL, 'SAMSUNG', '', '', 0, '2021-09-29 00:00:00', 'SAMSUNG', 'BOOK 550XDA-KT1', '09VU99QBR803252', 'EQUIPAMENTO NOVO COM OFFICE 365 ORIGINAL', NULL, 'SIM'),
(00171, 15, 00105, 00002, 'DESKTOP', 'RESIDENCIA', '', 'CRIACAO DE CONTEUDO, LIVE E GAMES', 'whinston', 'sem senha', 'WHINSTON', 1000, NULL, 'I5-9400 ', 8, NULL, 'GYGABYTE', '', '', 0, '2021-10-14 00:00:00', 'GENERICO', '', '', '', NULL, 'SIM'),
(00172, 15, 00032, 00002, 'DESKTOP', 'RECEPCAO', 'DESKTOP-IKPG218', 'CAIXA DE LOJA', 'USUARIO', 'sem senha', 'VENDEDOR', 120, NULL, 'I3-7100-3.90GHZ', 8, NULL, '', '', '', 0, '2021-10-28 00:00:00', 'C3PLUS', 'GENERICO', '', 'EQUIPAMENTO NOVO COMPRADO NO JORGE', NULL, 'SIM'),
(00173, 14, 00064, 00002, 'DESKTOP', 'RECEPCAO', '', 'REALIZAR CRIACAO DE ARTES NO COREL', 'usuario', 'sem senha', 'VALMIR', 0, NULL, '', 0, NULL, '', '', '', 0, '2021-11-12 00:00:00', '', '', '', 'MAQUINA FOI COMPRADA, UTILIZOU SE O SSD DO COMPUTADOR ANTIGO E COLOCADO NESSE NOVO. SEM FORMATACAO NEM NADA, APENAS INSTALACAO DOS DRIVERS.', NULL, 'SIM'),
(00174, 14, 00106, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'SISTEMA COMERCIAL E DOCUMENTOS DA EMPRESA', 'matiz diesel', 'sem senha', 'DIEGO', 480, NULL, 'I5-7200U', 4, NULL, '', '', '', 0, '2021-12-02 00:00:00', 'DELL', 'INSPIRON 15 5566', 'JFNS2J2', 'SSD 480', NULL, 'SIM'),
(00175, 14, 00107, 00002, 'ALLINONE', 'RESIDENCIA', '', 'DESENHOS COREL', 'Lucas santos', '981315252Lu', 'LUCAS', 500, NULL, 'INTEL CEL N3060 1.6G', 4, NULL, '', '', 'COREL, PHOTOSHOP, EPSON L4160', 0, '2021-12-13 00:00:00', 'POSITIVO', 'UNION US3550', '4A688ZW10', '', NULL, 'SIM'),
(00176, 14, 00108, 00002, 'NOTEBOOK', 'OFICINA', 'NI', 'SCANNER AUTOMOTIVO', 'adriana', 'sem senha', 'SANTINHO', 500, NULL, 'INTEL CEL 3250U 1.5G', 4, NULL, ' ', 'NI', 'NI', 0, '2021-12-15 00:00:00', 'SAMSUNG', 'NI', 'NI', 'ERRO DE CADASTRO', NULL, 'NAO'),
(00177, 14, 00108, 00002, 'NOTEBOOK', 'OFICINA', 'NI', 'SCANNER AUTOMOTIVO', 'adriana', 'sem senha', 'SANTINHO', 500, NULL, 'INTEL CEL 3250U 1.5G', 4, NULL, ' ', 'NI', 'NI', 0, '2021-12-15 00:00:00', 'SAMSUNG', 'NP370E4K', '6169QBG802642M', 'TECLAS COM DEFEITO', NULL, 'SIM'),
(00178, 1, 00070, 00002, 'NOTEBOOK', 'CONSULTORIO 3', '', 'REGISTRO DE CONSULTAS MEDICAS', 'USUARIO', 'OTORHINUS', 'YENLY', 1000, NULL, 'I3-8130U-2.2GHZ', 6, NULL, '', '', '', 0, '2021-12-28 00:00:00', 'ACER', 'E5-576-392H', 'NXGRYAA0018420094E7600', 'MEMORIA DDR3 L', NULL, 'SIM'),
(00179, 14, 00109, 00002, 'DESKTOP', 'RESIDENCIA', '', 'ACESSO A INTERNET E OUTROS DOCUMENTOS', 'usuario', 'sem senha', 'USUARIO', 80, NULL, 'CORE2DUO 3GHZ', 3, NULL, '', '', '', 0, '2022-01-20 00:00:00', 'PCI INFORMATICA', 'GENERICO', '', 'MEMORIA DDR2', NULL, 'SIM'),
(00180, 14, 00110, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'JOGOS E AULAS ONLINE', 'davi', 'sem senha', 'DAVI', 256, NULL, 'I7-1065G7 1.30GHZ', 8, NULL, '', '', '', 0, '2022-01-24 00:00:00', 'LENOVO', 'IDEAPAD S145-15IIL', 'PE06HSMZ', 'SSD ', NULL, 'SIM'),
(00181, 14, 00110, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'JOGOS E AULAS ONLINE', 'ASAFE', 'SEM SENHA', 'ASAFE', 1000, NULL, 'I7-8565U ', 8, NULL, '', '', '', 0, '2022-01-24 00:00:00', 'LENOVO', 'IDEAPAD S145-15IWL', 'PE066VGF', '', NULL, 'SIM'),
(00182, 1, 00111, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'DOCUMENTOS E AULAS REMOTAS', 'usuario', ' sem senha', 'ALCINEI', 0, NULL, '', 0, NULL, '', '', '', 0, '2022-01-26 00:00:00', 'POSITIVO', 'PREMIUM', '1A513CR9Z', '', NULL, 'SIM'),
(00183, 14, 00040, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'DOCUMENTOS E ACESSO A INTERNET', 'usuario', 'sem senha', 'GEANE', 0, NULL, '', 0, NULL, '', '', '', 0, '2022-02-08 00:00:00', 'POSITIVO', '', '', '', NULL, 'SIM'),
(00184, 14, 00065, 00002, 'NOTEBOOK', 'ESCRITORIO', 'NI', 'EMISSAO DE NOTAS, PREGAO ONLINE, OUTROS DOCUMENTOS', 'windows', 'sem senha', 'MARCOS', 120, NULL, 'INTEL CEL N3350 1.1G', 8, NULL, ' ', 'NI', 'NI', 0, '2022-02-10 00:00:00', 'LENOVO', '320-15IAP IDEAPAD TYPE 81A3', 'PE03LHYU', 'NOTEBOOK', NULL, 'SIM'),
(00185, 14, 00070, 00002, 'NOTEBOOK', 'CONSULTORIO 3', '', 'EXAMES ', 'oto', 'sem senha', 'MEDICOS', 1000, NULL, 'I5', 8, NULL, '', '', '', 0, '2022-02-18 00:00:00', 'DELL', 'INSPIRON 15 5566', '7LJMVN2', 'MEMORIA DDR4', NULL, 'SIM'),
(00186, 14, 00112, 00002, 'ALLINONE', 'RECEPCAO', '', 'RECEPÃ§Ã£O DE CLIENTES ', 'ClÃ­nica am', ' sem senha', 'DRA MONICA', 500, NULL, 'INTEL CEL N3060 1.6', 4, NULL, 'POSITIVO', '', 'EPSONL3250, TEAMVIEW, MACAF ANTIVÃ­RUS, HPM252DW', 0, '2022-03-06 00:00:00', 'POSITIVO', 'UNION UD3550', '4A531DL9E', '', NULL, 'SIM'),
(00187, 14, 00113, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'DOCUMENTOS E ACESSO A INTERNET', 'natanael cordeiro', 'sem senha', 'USUARIO', 256, 'SSD NVME', 'I5-10210U ', 8, 'DDR4', ' LENOVO ', '15', 'NI', 0, '2022-03-30 00:00:00', 'LENOVO', 'IDEAPAD 3-15IML05', 'PE08AJAB', 'TERMINO DA GARANTIA 10/2022, SSD 256 NVME, MEMORIA DDR4', '2022-10-01', 'SIM'),
(00188, 20, 00114, 00002, 'DESKTOP', 'RECEPCAO', 'ATENDIMENTO-02', 'AGENDAMENTO DE CONSULTA E PRODUCAO DE MEDICOS', 'ATENDIMENTO-02', '123', 'RECEPCIONISTA', 240, 'SSD', 'I3-7100-3.90GHZ', 4, 'DDR4', ' ', '15', 'EPSONL3250, OFFICE 2019', 0, '2022-04-06 00:00:00', 'GENERICO', 'GENERICO', 'NI', '', '2022-04-06', 'SIM'),
(00189, 6, 00114, 00002, 'ALLINONE', 'RECEPCAO', 'ATENDIMENTO-03', 'AGENDAMENTO DE CONSULTA E PRODUCAO DE MEDICOS', 'atendimento-03', '123', 'RECEPCIONISTA', 0, 'IDE', 'AMD E350 1.6GHZ ', 2, 'DDR2', '', '', '', 0, '2022-04-06 00:00:00', 'GENERICO', '', '', '', '2022-04-05', 'SIM'),
(00190, 15, 00114, 00002, 'SERVIDOR', 'RECEPCAO', 'ATENDIMENTO-01', 'SERVIDOR DOCTORS, AGENDAMENTO DE CONSULTAS', 'atendimento-01', '123', 'RECEPCIONISTA', 240, 'SSD', 'I3-7100-3.9GHZ', 4, 'DDR4', '', '15', 'DOCTORS SERVER, EPSONL3250', 0, '2022-04-06 00:00:00', 'GENERICO', '', '', '', '2022-04-05', 'SIM'),
(00191, 15, 00114, 00002, 'DESKTOP', 'CONSULTORIO', 'CLINICA-02', 'ATENDIMENTO MEDICO', 'clinica-02', '123', 'MEDICOS', 240, 'SSD', 'I5-9400-2.90GHZ', 4, 'DDR4', '', '', '', 0, '2022-04-06 00:00:00', 'GENERICO', '', '', '', '2022-04-05', 'SIM'),
(00192, 14, 00070, 00002, 'NOTEBOOK', 'RECEPCAO', 'DESKTOP-JPVPHSB', 'RECECPCAO DE PACIENTES', 'OTORHINUS', 'SEM SENHA', 'USUARIO', 1000, 'IDE', 'I5-7200 2.5GHZ', 8, 'DDR4', '', '', '', 0, '2022-04-15 00:00:00', 'DELL', 'INSPIRON 5566', '7LJSVN2', '', '2019-03-15', 'SIM'),
(00193, 14, 00011, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E ATIVIDADES ESCOLARES', 'USUARIO', 'SEM SENHA', 'FERNANDO', 28, 'CHIP', '', 4, 'DDR2', '', '', '', 0, '2022-06-15 00:00:00', 'POSITIVO', '', '', '', '2022-06-15', 'SIM'),
(00194, 14, 00064, 00002, 'DESKTOP', 'ESCRITORIO', 'DESKTOP-VUN8HDN', 'CRIACAO DE LOGOS', 'usuario', 'sem senha', 'VALMIR', 240, 'SSD', 'I3-3240 3.4GHZ', 4, 'DDR3', '', '', '', 0, '2022-06-15 00:00:00', 'GENERICO', 'GENERICO', '015038', '', '2022-06-15', 'SIM'),
(00195, 14, 00115, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'AUDIENCIAS, PESQUISAS E DOCUMENTOS', 'maiara', 'PMam230705', 'MAIARA', 50, 'CHIP', 'INTEL CEL N4000 1.6G', 4, 'DDR2', '', '', 'SHOTO, NAVEGADOR TJ', 0, '2022-06-20 00:00:00', 'SAMSUNG', 'N4000', '', '', '2022-06-20', 'SIM'),
(00196, 14, 00116, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'ELABORACAO DE DOCUMENTOS E PLANILHAS', 'usuario', 'sem senha', 'PARTICULAR', 1000, 'IDE', 'I7-1051U 1.8', 8, 'DDR4', '', '', 'OFFICE 2019', 0, '2022-06-29 00:00:00', 'SAMSUNG', 'BOOK X50', '', '', '2022-06-29', 'SIM'),
(00197, 1, 00117, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'PLANILHAS DE ATIVIDADES ACADEMICA', 'usuario', 'churrasco', 'VALCILENE', 0, 'IDE', '', 0, 'DDR2', '', '', '', 0, '2022-07-09 00:00:00', 'DELL', 'INSPIRON 15', '', '', '2022-07-08', 'SIM'),
(00198, 14, 00118, 00002, 'NOTEBOOK', 'RESIDENCIA', 'NI', 'DOCUMENTOS E ATIVIDADES ', 'usuario', 'sem senha', 'RODRIGO', 0, 'IDE', 'NI', 0, 'DDR2', ' ', 'NI', 'NI', 0, '2023-02-09 00:00:00', 'ACER', 'NI', 'NXH37AA00390300B743400', '', '2023-02-09', 'SIM'),
(00199, 14, 00118, 00002, 'ALLINONE', 'RESIDENCIA', 'NI', 'DOCUMENTOS E ATIVIDADES ', 'particular', 'sem senha', 'MARIANA', 240, 'IDE', 'I5-10210U 1.6', 8, 'DDR2', '  ', 'NI', 'NI', 0, '2023-02-09 00:00:00', 'LG', '24V50N', '102BZXG001882', '', '2023-02-09', 'SIM'),
(00200, 14, 00119, 00002, 'DESKTOP', 'RESIDENCIA', '', 'COREL DRAW, SILHOUTE, ', 'camila', 'sem senha', 'USUARIO', 250, 'SSD', 'I3-7100 3.0GHZ', 4, 'DDR4', 'ASROCK H110M-HDV', '', 'COREL 2022, SILHOUTE COM BACKUP, HORISTIC, OFFI 20', 0, '2023-03-07 00:00:00', 'GENERICO', 'GENERICO', '0', '', '2023-03-07', 'SIM'),
(00201, 14, 00106, 00002, 'NOTEBOOK', 'SONY VAIO', '', 'SISTEMA DA LOJA DE PEÃ§AS', 'usuario', 'sem senha', 'DIEGO', 1000, 'IDE', '', 8, 'DDR3', '', '', '', 0, '2023-05-15 00:00:00', '', '', '', '', '2023-05-15', 'SIM'),
(00202, 14, 00120, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E PESQUISAS ESCOLARES', 'particular', 'sem senha', 'DAVI', 240, 'SSD', 'I5 6020', 4, 'DDR4', '', '', '', 0, '2023-05-15 00:00:00', '', '', '', '', '2023-05-15', 'SIM'),
(00203, 14, 00092, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'TRABALHOS E PESQUISAS ESCOLARES', 'Particular', '351227', 'USUARIO', 1000, 'IDE', 'I3-7020U 2.3GHZ', 4, 'DDR4', '', '', 'OFFICE 2019, ', 0, '2023-05-24 00:00:00', 'LENOVO', 'IDEAPAD330', 'PE0498XK', '', '2023-05-24', 'SIM'),
(00204, 14, 00093, 00002, 'DESKTOP', 'CONSUTOR DE SERVICO', '', 'ABERTURA DE ORDEM DE SERVICO', 'usuario', 'sem senha', 'FABYA', 240, 'SSD', '', 4, 'DDR4', '', '', '', 0, '2023-05-31 00:00:00', 'GENERICO', 'GENERICO', '', 'ANYDESK 1 223 292 255', '2023-05-31', 'SIM'),
(00205, 14, 00093, 00002, 'DESKTOP', 'ADMINISTRACAO', '', 'DOCUMENTOS E PLANILHAS', 'usuario', 'sem senha', 'USUARIO', 240, 'SSD', '', 4, 'DDR4', '', '', '', 0, '2023-05-31 00:00:00', 'GENERICO', 'GENERICO', 'ANY866792086', 'ANYDESK 866 792 086', '2023-05-31', 'SIM'),
(00206, 21, 00121, 00002, 'NOTEBOOK', 'RESIDENCIA', '', 'DOCUMENTOS E PLANILHAS', 'Givanildo', 'sem senha', 'USUARIO', 240, 'SSD NVME', 'I3-1115G4 3GHZ', 4, 'DDR4', '', '', '', 0, '2023-06-13 00:00:00', 'SAMSUNG', 'NP550XDA-KV3BR', '0A2D9OB1601080Y', '', '2023-06-13', 'SIM'),
(00207, 14, 00123, 00002, 'DESKTOP', 'RESIDENCIA', '', 'DOCUMENTOS E PLANILHAS', 'particular', 'sem senha', 'GILSON', 400, 'IDE', '', 6, 'DDR2', '', '', '', 0, '2023-08-08 00:00:00', 'GENERICO', '', '', '', '2023-08-08', 'SIM'),
(00208, 1, 00124, 00002, 'DESKTOP', 'ESCRITORIO', '', 'PROJETOS EM AUTO CAD', 'joam', 'sem senha', 'SR JOAM', 440, 'SSD', 'I7 2600 3.4GHZ', 16, 'DDR3', '', '', '', 0, '2023-08-08 00:00:00', 'MULTILASER', 'GENERICO', '', 'EQUIPAMENTO POSSUI OUTROS 2 HD 1.5TB E PLACA DE VIDEO NVIDIA 1GB', '0000-00-00', 'SIM'),
(00209, 14, 00076, 00002, 'DESKTOP', 'ESCRITORIO', '', 'GRAFICOS, IMAGENS E DOCUMENTOS', 'ademir', 'sem senha', 'ADEMIR', 120, 'SSD', '', 0, 'DDR2', '', '', '', 0, '2023-09-04 00:00:00', 'CCE', '', '', '', '2023-09-04', 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forma_pagamento_fp`
--

CREATE TABLE `tbl_forma_pagamento_fp` (
  `NUM_ID_FP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_NOME_FP` varchar(50) DEFAULT NULL,
  `TXT_DESRICAO_FP` varchar(50) DEFAULT NULL,
  `TXT_ATIVO_FP` varchar(3) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_forma_pagamento_fp`
--

INSERT INTO `tbl_forma_pagamento_fp` (`NUM_ID_FP`, `TXT_NOME_FP`, `TXT_DESRICAO_FP`, `TXT_ATIVO_FP`) VALUES
(00001, 'DINHEIRO', 'DINHEIRO', 'SIM'),
(00002, 'TRANSFERENCIA SANTANDER', 'TRANSFERENCIA SANTANDER', 'SIM'),
(00003, 'ADIANTAMENTO DE CLIENTE', 'ADIANTAMENTO DE CLIENTE', 'SIM'),
(00004, 'CARTAO CREDITO VISA', 'CARTAO CREDITO VISA', 'SIM'),
(00005, 'CARTAO DEBITO MASTER', 'CARTAO DEBITO MASTER', 'SIM'),
(00006, 'CARTAO CREDITO CARREFOUR', 'CARTAO CREDITO CARREFOUR', 'SIM'),
(00007, 'PIX CAIXA', 'PIX CAIXA', 'SIM'),
(00008, 'PIX NUBANK', 'PIX NUBANK', 'SIM'),
(00009, 'PIX INTER', 'PIX INTER', 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_peca_os`
--

CREATE TABLE `tbl_item_peca_os` (
  `NUM_ID_PECA_OS` int(10) UNSIGNED NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_ORDEMSERVICO_OS_NUM_ID_OS` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_PECA_PEC_NUM_ID_PEC` int(10) UNSIGNED NOT NULL,
  `NUM_QUANTIDADE_PECA_OS` int(10) UNSIGNED DEFAULT NULL,
  `VAL_VALOR_PECA_OS` double(8,2) DEFAULT NULL,
  `VAL_DESCONTO_PECA_OS` double(8,2) DEFAULT NULL,
  `VAL_FINAL_PECA_OS` double(8,2) DEFAULT NULL,
  `TXT_STATUS_PECA_OS` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_servico_os`
--

CREATE TABLE `tbl_item_servico_os` (
  `NUM_ID_SERVICO_OS` int(10) UNSIGNED NOT NULL,
  `TBL_TECNICO_TEC_NUM_ID_TEC` int(10) UNSIGNED NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_SERVICO_SER_NUM_ID_SER` int(10) UNSIGNED NOT NULL,
  `TBL_ORDEMSERVICO_OS_NUM_ID_OS` int(10) UNSIGNED ZEROFILL NOT NULL,
  `DTH_INICIO_SERVICO_OS` datetime DEFAULT NULL,
  `DTH_TERMINO_SERVICO_OS` datetime DEFAULT NULL,
  `VAL_VALOR_SERVICO_OS` double(8,2) DEFAULT NULL,
  `VAL_DESCONTO_SERVICO_OS` double(8,2) DEFAULT NULL,
  `VAL_VALOR_FINAL_SERVICO_OS` double(8,2) DEFAULT NULL,
  `TXT_STATUS_SERVICO_OS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_item_servico_os`
--

INSERT INTO `tbl_item_servico_os` (`NUM_ID_SERVICO_OS`, `TBL_TECNICO_TEC_NUM_ID_TEC`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_SERVICO_SER_NUM_ID_SER`, `TBL_ORDEMSERVICO_OS_NUM_ID_OS`, `DTH_INICIO_SERVICO_OS`, `DTH_TERMINO_SERVICO_OS`, `VAL_VALOR_SERVICO_OS`, `VAL_DESCONTO_SERVICO_OS`, `VAL_VALOR_FINAL_SERVICO_OS`, `TXT_STATUS_SERVICO_OS`) VALUES
(1, 1, 0000000002, 3, 0000000001, '2015-08-18 00:00:00', '2015-08-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(2, 1, 0000000002, 2, 0000000001, '2015-08-18 00:00:00', '2015-08-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(3, 1, 0000000002, 4, 0000000001, '2015-08-19 00:00:00', '2015-08-19 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(4, 1, 0000000002, 1, 0000000001, '2015-08-14 00:00:00', '2015-08-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(6, 1, 0000000002, 4, 0000000003, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(7, 1, 0000000002, 22, 0000000003, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(8, 1, 0000000002, 4, 0000000004, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(9, 1, 0000000002, 22, 0000000004, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(10, 1, 0000000002, 4, 0000000005, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(11, 1, 0000000002, 22, 0000000005, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(12, 1, 0000000002, 4, 0000000006, '2015-09-04 00:00:00', '2015-09-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(13, 1, 0000000002, 3, 0000000006, '2015-09-04 00:00:00', '2015-09-05 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(14, 1, 0000000002, 5, 0000000007, '2015-09-05 00:00:00', '2015-09-05 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(15, 1, 0000000002, 3, 0000000007, '2015-09-05 00:00:00', '2015-09-05 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(17, 1, 0000000002, 1, 0000000008, '2015-09-11 00:00:00', '2015-09-11 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(18, 1, 0000000002, 5, 0000000008, '2015-09-11 00:00:00', '2015-09-11 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(19, 1, 0000000002, 4, 0000000008, '2015-11-10 00:00:00', '2015-11-10 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(20, 1, 0000000002, 1, 0000000009, '2015-10-21 00:00:00', '2015-10-21 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(21, 1, 0000000002, 2, 0000000009, '2015-10-21 00:00:00', '2015-10-21 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(22, 1, 0000000002, 4, 0000000009, '2015-10-21 00:00:00', '2015-10-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(23, 1, 0000000002, 23, 0000000009, '2015-10-21 00:00:00', '2015-10-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(24, 1, 0000000002, 2, 0000000010, '2015-11-06 00:00:00', '2015-11-06 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(25, 1, 0000000002, 4, 0000000010, '2015-11-09 00:00:00', '2015-11-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(27, 1, 0000000002, 2, 0000000012, '2015-11-25 00:00:00', '2015-11-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(28, 1, 0000000002, 4, 0000000012, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(29, 1, 0000000002, 3, 0000000012, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(30, 1, 0000000002, 2, 0000000013, '2015-11-25 00:00:00', '2015-11-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(31, 1, 0000000002, 4, 0000000013, '2015-11-26 00:00:00', '2015-11-26 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(32, 1, 0000000002, 2, 0000000014, '2015-11-25 00:00:00', '2015-11-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(33, 1, 0000000002, 4, 0000000014, '2015-11-28 00:00:00', '2015-11-28 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(34, 1, 0000000002, 3, 0000000014, '2015-11-28 00:00:00', '2015-11-28 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(35, 1, 0000000002, 2, 0000000015, '2016-03-02 00:00:00', '2016-03-02 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(36, 1, 0000000002, 4, 0000000015, '2016-03-02 00:00:00', '2016-03-02 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(37, 1, 0000000002, 2, 0000000016, '2016-03-15 00:00:00', '2016-03-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(38, 1, 0000000002, 4, 0000000016, '2016-03-16 00:00:00', '2016-03-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(39, 1, 0000000002, 6, 0000000017, '2016-03-24 00:00:00', '2016-03-24 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(40, 1, 0000000002, 4, 0000000019, '2016-04-01 00:00:00', '2016-04-01 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(41, 1, 0000000002, 1, 0000000020, '2016-04-22 00:00:00', '2016-04-22 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(42, 1, 0000000002, 2, 0000000020, '2016-04-22 00:00:00', '2016-04-22 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(43, 1, 0000000002, 4, 0000000020, '2016-04-22 00:00:00', '2016-04-22 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(44, 1, 0000000002, 15, 0000000020, '2016-04-22 00:00:00', '2016-04-22 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(45, 1, 0000000002, 1, 0000000021, '2016-05-14 00:00:00', '2016-05-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(46, 1, 0000000002, 2, 0000000021, '2016-05-14 00:00:00', '2016-05-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(47, 1, 0000000002, 4, 0000000021, '2016-05-14 00:00:00', '2016-06-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(48, 1, 0000000002, 1, 0000000022, '2016-05-15 00:00:00', '2016-05-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(49, 1, 0000000002, 3, 0000000022, '2016-05-15 00:00:00', '2016-05-15 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(50, 1, 0000000002, 2, 0000000022, '2016-05-15 00:00:00', '2016-05-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(51, 1, 0000000002, 4, 0000000022, '2016-05-16 00:00:00', '2016-06-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(52, 1, 0000000002, 1, 0000000023, '2016-06-15 00:00:00', '2016-06-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(53, 1, 0000000002, 7, 0000000023, '2016-06-15 00:00:00', '2016-06-15 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(54, 1, 0000000002, 17, 0000000023, '2016-06-15 00:00:00', '2016-06-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(55, 1, 0000000002, 24, 0000000024, '2016-06-16 00:00:00', '2016-06-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(56, 1, 0000000002, 24, 0000000024, '2016-06-16 00:00:00', '2016-06-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(57, 1, 0000000002, 3, 0000000025, '2016-06-17 00:00:00', '2016-06-17 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(58, 1, 0000000002, 2, 0000000025, '2016-06-17 00:00:00', '2016-06-17 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(59, 1, 0000000002, 4, 0000000025, '2016-06-17 00:00:00', '2016-06-17 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(60, 1, 0000000002, 1, 0000000026, '2016-07-04 00:00:00', '2016-07-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(61, 1, 0000000002, 25, 0000000026, '2016-07-04 00:00:00', '2016-07-04 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(64, 1, 0000000002, 15, 0000000026, '2016-07-04 00:00:00', '2016-07-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(68, 1, 0000000002, 1, 0000000011, '2016-07-13 00:00:00', '2016-07-13 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(69, 1, 0000000002, 2, 0000000028, '2016-07-14 00:00:00', '2016-07-20 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(71, 1, 0000000002, 9, 0000000029, '2016-07-20 00:00:00', '2016-07-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(72, 1, 0000000002, 4, 0000000029, '2016-07-20 00:00:00', '2016-07-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(74, 1, 0000000002, 2, 0000000030, '2016-07-22 00:00:00', '2016-08-01 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(75, 1, 0000000002, 4, 0000000030, '2016-08-01 00:00:00', '2016-08-01 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(76, 1, 0000000002, 1, 0000000031, '2016-08-01 00:00:00', '2016-08-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(77, 1, 0000000002, 2, 0000000031, '2016-08-01 00:00:00', '2016-08-02 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(78, 1, 0000000002, 1, 0000000032, '2016-08-04 00:00:00', '2016-08-09 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(79, 1, 0000000002, 1, 0000000034, '2016-08-24 00:00:00', '2016-08-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(80, 1, 0000000002, 3, 0000000033, '2016-08-26 00:00:00', '2016-08-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(81, 1, 0000000002, 2, 0000000033, '2016-08-26 00:00:00', '2016-08-26 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(82, 1, 0000000002, 26, 0000000033, '2016-08-26 00:00:00', '2016-08-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(83, 1, 0000000002, 6, 0000000034, '2016-08-26 00:00:00', '2016-08-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(84, 1, 0000000002, 12, 0000000035, '2016-09-06 00:00:00', '2016-09-06 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(85, 1, 0000000002, 3, 0000000036, '2016-09-08 00:00:00', '2016-09-08 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(86, 1, 0000000002, 2, 0000000036, '2016-09-08 00:00:00', '2016-09-09 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(87, 1, 0000000002, 4, 0000000036, '2016-09-09 00:00:00', '2016-09-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(88, 1, 0000000002, 7, 0000000036, '2016-09-09 00:00:00', '2016-09-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(90, 1, 0000000002, 3, 0000000037, '2016-09-14 00:00:00', '2016-09-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(91, 1, 0000000002, 27, 0000000037, '2016-09-14 00:00:00', '2016-09-14 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(92, 1, 0000000002, 3, 0000000038, '2016-09-16 00:00:00', '2016-09-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(93, 1, 0000000002, 27, 0000000038, '2016-09-16 00:00:00', '2016-09-17 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(94, 1, 0000000002, 28, 0000000039, '2016-09-23 00:00:00', '2016-09-23 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(95, 1, 0000000002, 1, 0000000040, '2016-10-01 00:00:00', '2016-10-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(96, 1, 0000000002, 5, 0000000040, '2016-10-01 00:00:00', '2016-10-01 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(97, 1, 0000000002, 4, 0000000040, '2016-10-01 00:00:00', '2016-10-01 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(98, 1, 0000000002, 1, 0000000041, '2016-10-10 00:00:00', '2016-10-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(99, 1, 0000000002, 6, 0000000041, '2016-10-10 00:00:00', '2016-10-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(100, 1, 0000000002, 1, 0000000042, '2016-10-19 00:00:00', '2016-12-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(103, 1, 0000000002, 1, 0000000043, '2016-10-26 00:00:00', '2016-11-28 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(104, 1, 0000000002, 7, 0000000043, '2016-10-26 00:00:00', '2016-11-28 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(105, 1, 0000000002, 3, 0000000043, '2016-11-28 00:00:00', '2016-11-28 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(106, 1, 0000000002, 22, 0000000044, '2016-12-10 00:00:00', '2016-12-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(107, 1, 0000000002, 4, 0000000044, '2016-12-10 00:00:00', '2016-12-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(108, 1, 0000000002, 3, 0000000045, '2016-12-15 00:00:00', '2016-12-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(109, 1, 0000000002, 2, 0000000045, '2016-12-15 00:00:00', '2016-12-16 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(110, 1, 0000000002, 29, 0000000045, '2016-12-16 00:00:00', '2016-12-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(111, 1, 0000000002, 4, 0000000045, '2016-12-16 00:00:00', '2016-12-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(113, 1, 0000000002, 1, 0000000046, '2016-12-16 00:00:00', '2016-12-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(114, 1, 0000000002, 2, 0000000046, '2016-12-16 00:00:00', '2016-12-17 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(115, 1, 0000000002, 3, 0000000046, '2016-12-16 00:00:00', '2016-12-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(116, 1, 0000000002, 29, 0000000046, '2016-12-17 00:00:00', '2016-12-17 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(117, 1, 0000000002, 4, 0000000046, '2016-12-17 00:00:00', '2016-12-17 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(118, 1, 0000000002, 1, 0000000047, '2017-01-16 00:00:00', '2017-01-17 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(119, 1, 0000000002, 7, 0000000047, '2017-01-16 00:00:00', '2017-01-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(120, 1, 0000000002, 3, 0000000048, '2017-01-18 00:00:00', '2017-01-19 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(122, 1, 0000000002, 4, 0000000048, '2017-02-03 00:00:00', '2017-02-03 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(123, 1, 0000000002, 29, 0000000048, '2017-02-05 00:00:00', '2017-02-05 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(124, 1, 0000000002, 3, 0000000049, '2017-01-23 00:00:00', '2017-01-24 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(125, 1, 0000000002, 2, 0000000049, '2017-01-24 00:00:00', '2017-01-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(126, 1, 0000000002, 4, 0000000049, '2017-01-24 00:00:00', '2017-01-24 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(127, 1, 0000000002, 29, 0000000049, '2017-01-24 00:00:00', '2017-01-24 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(128, 1, 0000000002, 2, 0000000050, '2017-02-01 00:00:00', '2017-02-01 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(129, 1, 0000000002, 4, 0000000050, '2017-02-01 00:00:00', '2017-02-01 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(130, 1, 0000000002, 2, 0000000048, '2017-02-03 00:00:00', '2017-02-03 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(131, 1, 0000000002, 6, 0000000051, '2017-02-07 00:00:00', '2017-02-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(132, 1, 0000000002, 6, 0000000052, '2017-02-07 00:00:00', '2017-02-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(134, 1, 0000000002, 7, 0000000053, '2017-02-09 00:00:00', '2017-02-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(135, 1, 0000000002, 7, 0000000054, '2017-02-18 00:00:00', '2017-02-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(136, 1, 0000000002, 1, 0000000055, '2017-02-21 00:00:00', '2017-02-21 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(137, 1, 0000000002, 6, 0000000055, '2017-02-21 00:00:00', '2017-02-22 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(138, 1, 0000000002, 2, 0000000055, '2017-02-22 00:00:00', '2017-03-23 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(139, 1, 0000000002, 4, 0000000056, '2017-03-03 00:00:00', '2017-03-03 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(142, 1, 0000000002, 15, 0000000057, '2017-03-13 00:00:00', '2017-03-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(143, 1, 0000000002, 4, 0000000057, '2017-03-15 00:00:00', '2017-03-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(144, 1, 0000000002, 3, 0000000058, '2017-03-15 00:00:00', '2017-03-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(145, 1, 0000000002, 4, 0000000058, '2017-03-16 00:00:00', '2017-03-17 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(146, 1, 0000000002, 2, 0000000058, '2017-03-17 00:00:00', '2017-03-18 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(148, 1, 0000000002, 2, 0000000059, '2017-03-21 00:00:00', '2017-03-23 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(149, 1, 0000000002, 2, 0000000060, '2017-03-28 00:00:00', '2017-04-01 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(150, 1, 0000000002, 3, 0000000061, '2017-03-29 00:00:00', '2017-03-29 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(151, 1, 0000000002, 17, 0000000061, '2017-03-29 00:00:00', '2017-03-30 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(152, 1, 0000000002, 2, 0000000061, '2017-03-30 00:00:00', '2017-04-01 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(153, 1, 0000000002, 17, 0000000062, '2017-04-25 00:00:00', '2017-04-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(154, 1, 0000000002, 6, 0000000062, '2017-04-25 00:00:00', '2017-04-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(155, 1, 0000000002, 1, 0000000063, '2017-06-09 00:00:00', '2017-06-09 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(156, 1, 0000000002, 6, 0000000063, '2017-06-09 00:00:00', '2017-06-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(157, 1, 0000000002, 4, 0000000064, '2017-09-11 00:00:00', '2017-09-11 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(158, 1, 0000000002, 1, 0000000065, '2017-10-04 00:00:00', '2017-10-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(159, 1, 0000000002, 3, 0000000065, '2017-10-04 00:00:00', '2017-10-04 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(162, 1, 0000000002, 2, 0000000065, '2017-10-04 00:00:00', '2017-10-06 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(163, 1, 0000000002, 4, 0000000065, '2017-10-06 00:00:00', '2017-10-06 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(164, 1, 0000000002, 30, 0000000062, '2017-04-25 00:00:00', '2017-04-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(165, 1, 0000000002, 18, 0000000065, '2017-10-04 00:00:00', '2017-10-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(166, 1, 0000000002, 18, 0000000066, '2017-10-16 00:00:00', '2017-10-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(167, 1, 0000000002, 2, 0000000066, '2017-10-16 00:00:00', '2017-10-16 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(171, 1, 0000000002, 11, 0000000066, '2017-10-16 00:00:00', '2017-10-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(172, 1, 0000000002, 4, 0000000066, '2017-10-16 00:00:00', '2017-10-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(173, 1, 0000000002, 1, 0000000067, '2017-10-19 00:00:00', '2017-10-19 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(174, 1, 0000000002, 3, 0000000068, '2018-02-20 00:00:00', '2018-02-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(175, 1, 0000000002, 2, 0000000068, '2018-02-20 00:00:00', '2018-02-20 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(176, 1, 0000000002, 4, 0000000068, '2018-02-20 00:00:00', '2018-02-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(177, 1, 0000000002, 29, 0000000068, '2018-02-20 00:00:00', '2018-02-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(178, 1, 0000000002, 24, 0000000068, '2018-02-20 00:00:00', '2018-02-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(179, 1, 0000000002, 2, 0000000069, '2018-03-12 00:00:00', '2018-03-12 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(180, 1, 0000000002, 4, 0000000069, '2018-03-13 00:00:00', '2018-03-13 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(181, 1, 0000000002, 11, 0000000070, '2018-03-13 00:00:00', '2018-03-13 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(182, 1, 0000000002, 2, 0000000070, '2018-03-13 00:00:00', '2018-03-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(183, 1, 0000000002, 4, 0000000070, '2018-03-14 00:00:00', '2018-03-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(184, 1, 0000000002, 6, 0000000071, '2018-03-14 00:00:00', '2018-03-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(185, 1, 0000000002, 4, 0000000072, '2018-03-21 00:00:00', '2018-03-22 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(187, 1, 0000000002, 1, 0000000073, '2018-03-22 00:00:00', '2018-03-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(188, 1, 0000000002, 3, 0000000074, '2018-04-18 00:00:00', '2018-04-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(189, 1, 0000000002, 2, 0000000074, '2018-04-18 00:00:00', '2018-04-18 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(190, 1, 0000000002, 4, 0000000074, '2018-04-19 00:00:00', '2018-04-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(191, 1, 0000000002, 14, 0000000075, '2018-05-29 00:00:00', '2018-05-29 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(192, 1, 0000000002, 3, 0000000076, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(193, 1, 0000000002, 3, 0000000077, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(194, 1, 0000000002, 6, 0000000077, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(195, 1, 0000000002, 6, 0000000076, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(196, 1, 0000000002, 3, 0000000078, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(197, 1, 0000000002, 6, 0000000078, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(198, 1, 0000000002, 3, 0000000079, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(199, 1, 0000000002, 6, 0000000079, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(200, 1, 0000000002, 3, 0000000080, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(201, 1, 0000000002, 6, 0000000080, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(202, 1, 0000000002, 6, 0000000081, '2018-06-04 00:00:00', '2018-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(204, 1, 0000000002, 3, 0000000082, '2018-06-06 00:00:00', '2018-06-07 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(205, 1, 0000000002, 17, 0000000082, '2018-06-07 00:00:00', '2018-06-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(206, 1, 0000000002, 4, 0000000082, '2018-06-07 00:00:00', '2018-06-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(207, 1, 0000000002, 3, 0000000083, '2018-06-13 00:00:00', '2018-06-13 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(208, 1, 0000000002, 2, 0000000083, '2018-06-13 00:00:00', '2018-06-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(209, 1, 0000000002, 29, 0000000083, '2018-10-09 00:00:00', '2018-10-09 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(210, 1, 0000000002, 4, 0000000084, '2018-06-13 00:00:00', '2018-07-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(211, 1, 0000000002, 6, 0000000085, '2018-06-19 00:00:00', '2018-06-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(212, 1, 0000000002, 7, 0000000085, '2018-06-19 00:00:00', '2018-06-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(213, 1, 0000000002, 3, 0000000086, '2018-06-19 00:00:00', '2018-06-19 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(214, 1, 0000000002, 28, 0000000087, '2018-07-19 00:00:00', '2018-07-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(215, 1, 0000000002, 28, 0000000088, '2018-07-19 00:00:00', '2018-07-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(216, 1, 0000000002, 28, 0000000089, '2018-07-19 00:00:00', '2018-07-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(217, 1, 0000000002, 28, 0000000090, '2018-07-19 00:00:00', '2018-07-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(218, 1, 0000000002, 2, 0000000086, '2018-07-23 00:00:00', '2018-09-20 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(219, 1, 0000000002, 31, 0000000091, '2018-07-31 00:00:00', '2018-09-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(220, 1, 0000000002, 32, 0000000092, '2018-07-30 00:00:00', '2018-07-30 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(221, 1, 0000000002, 31, 0000000093, '2018-08-02 00:00:00', '2018-08-02 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(222, 1, 0000000002, 3, 0000000094, '2018-09-20 00:00:00', '2018-09-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(223, 1, 0000000002, 3, 0000000095, '2018-09-20 00:00:00', '2018-09-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(224, 1, 0000000002, 3, 0000000096, '2018-09-20 00:00:00', '2018-09-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(225, 1, 0000000002, 3, 0000000097, '2018-10-05 00:00:00', '2018-10-05 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(226, 1, 0000000002, 3, 0000000098, '2018-10-05 00:00:00', '2018-10-05 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(227, 1, 0000000002, 6, 0000000099, '2018-10-20 00:00:00', '2018-10-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(228, 1, 0000000002, 4, 0000000100, '2018-10-23 00:00:00', '2018-10-30 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(230, 1, 0000000002, 31, 0000000103, '2018-10-30 00:00:00', '2018-10-30 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(235, 1, 0000000002, 28, 0000000100, '2018-10-31 00:00:00', '2018-10-31 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(236, 1, 0000000002, 8, 0000000104, '2018-11-07 00:00:00', '2018-11-07 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(237, 1, 0000000002, 3, 0000000105, '2018-11-08 00:00:00', '2018-11-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(238, 1, 0000000002, 3, 0000000106, '2018-11-08 00:00:00', '2018-11-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(239, 1, 0000000002, 7, 0000000107, '2018-11-10 00:00:00', '2018-11-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(240, 1, 0000000002, 12, 0000000108, '2018-11-12 00:00:00', '2018-11-12 00:00:00', 250.00, 0.00, 250.00, 'TE'),
(241, 1, 0000000002, 4, 0000000109, '2018-11-21 00:00:00', '2018-11-21 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(242, 1, 0000000002, 28, 0000000110, '2018-11-26 00:00:00', '2018-11-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(243, 1, 0000000002, 28, 0000000111, '2018-11-26 00:00:00', '2018-11-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(244, 1, 0000000002, 28, 0000000112, '2018-11-26 00:00:00', '2018-11-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(245, 1, 0000000002, 2, 0000000113, '2018-12-10 00:00:00', '2018-12-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(246, 1, 0000000002, 4, 0000000113, '2018-12-13 00:00:00', '2018-12-13 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(247, 1, 0000000002, 23, 0000000114, '2019-01-05 00:00:00', '2019-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(248, 1, 0000000002, 3, 0000000114, '2019-01-05 00:00:00', '2019-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(249, 1, 0000000002, 2, 0000000114, '2019-01-05 00:00:00', '2019-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(250, 1, 0000000002, 26, 0000000114, '2019-01-05 00:00:00', '2019-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(251, 1, 0000000002, 29, 0000000114, '2019-01-05 00:00:00', '2019-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(252, 1, 0000000002, 7, 0000000115, '2019-01-10 00:00:00', '2019-01-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(253, 1, 0000000002, 28, 0000000116, '2019-01-10 00:00:00', '2019-01-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(254, 1, 0000000002, 6, 0000000117, '2019-01-10 00:00:00', '2019-01-10 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(255, 1, 0000000002, 3, 0000000118, '2019-01-11 00:00:00', '2019-01-11 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(256, 1, 0000000002, 2, 0000000118, '2019-01-11 00:00:00', '2020-03-09 00:00:00', 200.00, 0.00, 200.00, 'TE'),
(257, 1, 0000000002, 4, 0000000118, '2020-03-09 00:00:00', '2020-03-09 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(258, 1, 0000000002, 29, 0000000118, '2020-03-09 00:00:00', '2020-03-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(259, 1, 0000000002, 2, 0000000119, '2019-01-22 00:00:00', '2019-01-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(260, 1, 0000000002, 6, 0000000120, '2019-01-25 00:00:00', '2019-01-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(261, 1, 0000000002, 6, 0000000121, '2019-01-25 00:00:00', '2019-01-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(262, 1, 0000000002, 6, 0000000122, '2019-01-25 00:00:00', '2019-01-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(263, 1, 0000000002, 3, 0000000123, '2019-02-14 00:00:00', '2019-02-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(264, 1, 0000000002, 3, 0000000124, '2019-02-14 00:00:00', '2019-02-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(265, 1, 0000000002, 14, 0000000125, '2019-02-12 00:00:00', '2019-02-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(266, 1, 0000000002, 31, 0000000126, '2019-02-14 00:00:00', '2019-02-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(267, 1, 0000000002, 10, 0000000127, '2019-03-01 00:00:00', '2019-03-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(269, 1, 0000000002, 31, 0000000129, '2019-03-12 00:00:00', '2019-03-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(270, 1, 0000000002, 7, 0000000130, '2019-03-15 00:00:00', '2019-03-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(272, 1, 0000000002, 3, 0000000133, '2019-03-08 00:00:00', '2019-03-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(273, 1, 0000000002, 3, 0000000132, '2019-03-08 00:00:00', '2019-03-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(274, 1, 0000000002, 3, 0000000134, '2019-04-01 00:00:00', '2019-04-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(275, 1, 0000000002, 3, 0000000135, '2019-04-01 00:00:00', '2019-04-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(276, 1, 0000000002, 6, 0000000136, '2019-04-01 00:00:00', '2019-04-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(277, 1, 0000000002, 3, 0000000137, '2019-06-01 00:00:00', '2019-06-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(278, 1, 0000000002, 3, 0000000138, '2019-06-01 00:00:00', '2019-06-01 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(279, 1, 0000000002, 1, 0000000139, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(280, 1, 0000000002, 6, 0000000139, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(281, 1, 0000000002, 3, 0000000140, '2019-07-04 00:00:00', '2019-07-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(282, 1, 0000000002, 3, 0000000141, '2019-07-04 00:00:00', '2019-07-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(284, 1, 0000000002, 3, 0000000143, '2019-07-08 00:00:00', '2019-07-08 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(285, 1, 0000000002, 2, 0000000143, '2019-07-08 00:00:00', '2019-07-08 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(286, 1, 0000000002, 29, 0000000143, '2019-07-08 00:00:00', '2019-07-08 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(287, 1, 0000000002, 31, 0000000144, '2019-07-19 00:00:00', '2019-07-19 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(288, 1, 0000000002, 3, 0000000145, '2019-08-12 00:00:00', '2019-08-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(289, 1, 0000000002, 3, 0000000146, '2019-08-12 00:00:00', '2019-08-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(290, 1, 0000000002, 5, 0000000147, '2019-09-03 00:00:00', '2019-09-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(291, 1, 0000000002, 5, 0000000148, '2019-09-03 00:00:00', '2019-09-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(292, 1, 0000000002, 3, 0000000149, '2019-09-03 00:00:00', '2019-09-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(293, 1, 0000000002, 3, 0000000150, '2019-09-03 00:00:00', '2019-09-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(294, 1, 0000000002, 1, 0000000151, '2019-09-19 00:00:00', '2019-09-19 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(295, 1, 0000000002, 4, 0000000152, '2019-09-24 00:00:00', '2019-09-24 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(296, 1, 0000000002, 4, 0000000153, '2019-09-24 00:00:00', '2019-09-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(297, 1, 0000000002, 34, 0000000153, '2019-09-24 00:00:00', '2019-09-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(298, 1, 0000000002, 3, 0000000155, '2019-10-04 00:00:00', '2019-10-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(299, 1, 0000000002, 3, 0000000156, '2019-10-04 00:00:00', '2019-10-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(300, 1, 0000000002, 7, 0000000157, '2019-10-04 00:00:00', '2019-10-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(301, 1, 0000000002, 4, 0000000158, '2019-10-07 00:00:00', '2019-10-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(302, 1, 0000000002, 3, 0000000159, '2019-11-08 00:00:00', '2019-11-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(303, 1, 0000000002, 3, 0000000160, '2019-11-08 00:00:00', '2019-11-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(304, 1, 0000000002, 3, 0000000161, '2019-11-08 00:00:00', '2019-11-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(305, 1, 0000000002, 7, 0000000162, '2019-11-22 00:00:00', '2019-11-22 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(306, 1, 0000000002, 3, 0000000163, '2019-12-03 00:00:00', '2019-12-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(307, 1, 0000000002, 3, 0000000164, '2020-01-07 00:00:00', '2020-01-07 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(308, 1, 0000000002, 3, 0000000165, '2020-01-07 00:00:00', '2020-01-07 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(309, 1, 0000000002, 6, 0000000166, '2020-01-07 00:00:00', '2020-01-07 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(313, 1, 0000000002, 3, 0000000167, '2020-01-20 00:00:00', '2020-01-20 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(314, 1, 0000000002, 2, 0000000167, '2020-01-20 00:00:00', '2020-01-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(315, 1, 0000000002, 35, 0000000167, '2020-01-20 00:00:00', '2020-01-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(321, 1, 0000000002, 2, 0000000168, '2020-01-27 00:00:00', '2020-01-29 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(322, 1, 0000000002, 3, 0000000169, '2020-01-15 00:00:00', '2020-01-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(323, 1, 0000000002, 36, 0000000170, '2020-01-15 00:00:00', '2020-01-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(324, 1, 0000000002, 3, 0000000171, '2020-01-15 00:00:00', '2020-01-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(325, 1, 0000000002, 3, 0000000172, '2020-02-27 00:00:00', '2020-02-27 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(326, 1, 0000000002, 3, 0000000173, '2020-02-27 00:00:00', '2020-02-27 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(327, 1, 0000000002, 3, 0000000174, '2020-02-27 00:00:00', '2020-02-27 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(328, 1, 0000000002, 6, 0000000175, '2020-02-27 00:00:00', '2020-02-27 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(329, 1, 0000000002, 30, 0000000176, '2020-02-28 00:00:00', '2020-02-29 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(330, 1, 0000000002, 4, 0000000176, '2020-02-29 00:00:00', '2020-02-29 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(331, 1, 0000000002, 28, 0000000177, '2020-02-29 00:00:00', '2020-02-29 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(333, 1, 0000000002, 2, 0000000178, '2020-03-03 00:00:00', '2020-03-04 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(334, 1, 0000000002, 4, 0000000178, '2020-03-04 00:00:00', '2020-03-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(335, 1, 0000000002, 18, 0000000179, '2020-03-06 00:00:00', '2020-03-06 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(336, 1, 0000000002, 2, 0000000179, '2020-03-06 00:00:00', '2020-03-06 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(337, 1, 0000000002, 4, 0000000179, '2020-03-06 00:00:00', '2020-03-07 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(339, 1, 0000000002, 14, 0000000180, '2020-02-18 00:00:00', '2020-02-18 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(340, 1, 0000000002, 18, 0000000181, '2020-03-14 00:00:00', '2020-03-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(341, 1, 0000000002, 2, 0000000181, '2020-03-14 00:00:00', '2020-03-14 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(342, 1, 0000000002, 3, 0000000182, '2020-03-16 00:00:00', '2020-03-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(343, 1, 0000000002, 2, 0000000182, '2020-03-16 00:00:00', '2020-03-16 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(344, 1, 0000000002, 29, 0000000182, '2020-03-16 00:00:00', '2020-03-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(345, 1, 0000000002, 3, 0000000183, '2020-03-21 00:00:00', '2020-03-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(346, 1, 0000000002, 2, 0000000183, '2020-03-21 00:00:00', '2020-03-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(347, 1, 0000000002, 29, 0000000183, '2020-03-22 00:00:00', '2020-03-22 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(348, 1, 0000000002, 3, 0000000184, '2020-03-24 00:00:00', '2020-03-24 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(349, 1, 0000000002, 2, 0000000184, '2020-03-24 00:00:00', '2020-03-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(350, 1, 0000000002, 29, 0000000184, '2020-03-24 00:00:00', '2020-03-25 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(351, 1, 0000000002, 1, 0000000185, '2020-04-07 00:00:00', '2020-04-07 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(354, 1, 0000000002, 7, 0000000185, '2020-04-07 00:00:00', '2020-05-13 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(355, 1, 0000000002, 3, 0000000186, '2020-04-20 00:00:00', '2020-04-20 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(356, 1, 0000000002, 2, 0000000186, '2020-04-20 00:00:00', '2020-04-23 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(357, 1, 0000000002, 29, 0000000186, '2020-04-23 00:00:00', '2020-04-27 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(358, 1, 0000000002, 1, 0000000187, '2020-04-22 00:00:00', '2020-04-22 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(359, 1, 0000000002, 7, 0000000187, '2020-04-22 00:00:00', '2020-04-22 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(360, 1, 0000000002, 17, 0000000187, '2020-04-23 00:00:00', '2020-04-23 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(361, 1, 0000000002, 4, 0000000188, '2020-05-12 00:00:00', '2020-05-12 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(362, 1, 0000000002, 2, 0000000189, '2020-05-15 00:00:00', '2020-05-16 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(363, 1, 0000000002, 4, 0000000190, '2020-05-22 00:00:00', '2020-05-22 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(364, 1, 0000000002, 4, 0000000191, '2020-05-27 00:00:00', '2020-05-27 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(365, 1, 0000000002, 2, 0000000192, '2020-05-27 00:00:00', '2020-05-28 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(366, 1, 0000000002, 6, 0000000193, '2020-06-03 00:00:00', '2020-06-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(367, 1, 0000000002, 28, 0000000194, '2020-06-16 00:00:00', '2020-06-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(368, 1, 0000000002, 6, 0000000195, '2020-06-24 00:00:00', '2020-06-24 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(369, 1, 0000000002, 24, 0000000196, '2020-06-25 00:00:00', '2020-06-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(370, 1, 0000000002, 6, 0000000199, '2020-07-09 00:00:00', '2020-07-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(371, 1, 0000000002, 6, 0000000200, '2020-07-09 00:00:00', '2020-07-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(372, 1, 0000000002, 28, 0000000201, '2020-07-10 00:00:00', '2020-07-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(374, 1, 0000000002, 7, 0000000202, '2020-07-12 00:00:00', '2020-07-12 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(375, 1, 0000000002, 6, 0000000202, '2020-07-12 00:00:00', '2020-07-12 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(376, 1, 0000000002, 3, 0000000203, '2020-07-15 00:00:00', '2020-07-15 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(377, 1, 0000000002, 2, 0000000203, '2020-07-15 00:00:00', '2020-07-15 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(378, 1, 0000000002, 29, 0000000203, '2020-07-16 00:00:00', '2020-07-16 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(379, 1, 0000000002, 4, 0000000204, '2020-07-15 00:00:00', '2020-07-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(380, 1, 0000000002, 4, 0000000205, '2020-07-16 00:00:00', '2020-07-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(381, 1, 0000000002, 3, 0000000206, '2020-07-17 00:00:00', '2020-07-17 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(382, 1, 0000000002, 2, 0000000206, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(383, 1, 0000000002, 29, 0000000206, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(384, 1, 0000000002, 4, 0000000207, '2020-07-17 00:00:00', '2020-07-17 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(386, 1, 0000000002, 3, 0000000208, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(390, 1, 0000000002, 6, 0000000209, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(391, 1, 0000000002, 30, 0000000208, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(392, 1, 0000000002, 2, 0000000208, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(393, 1, 0000000002, 20, 0000000206, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(394, 1, 0000000002, 29, 0000000208, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(395, 1, 0000000002, 3, 0000000211, '2020-07-20 00:00:00', '2020-07-21 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(396, 1, 0000000002, 2, 0000000211, '2020-07-21 00:00:00', '2020-07-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(397, 1, 0000000002, 4, 0000000210, '2020-07-18 00:00:00', '2020-07-18 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(399, 1, 0000000002, 37, 0000000212, '2020-07-23 00:00:00', '2020-07-25 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(400, 1, 0000000002, 4, 0000000213, '2020-07-28 00:00:00', '2020-07-28 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(401, 1, 0000000002, 4, 0000000214, '2020-07-28 00:00:00', '2020-07-28 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(402, 1, 0000000002, 2, 0000000215, '2020-07-29 00:00:00', '2020-07-30 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(403, 1, 0000000002, 6, 0000000216, '2020-08-03 00:00:00', '2020-08-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(404, 1, 0000000002, 31, 0000000217, '2020-08-05 00:00:00', '2020-08-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(405, 1, 0000000002, 1, 0000000218, '2020-08-06 00:00:00', '2020-08-06 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(406, 1, 0000000002, 7, 0000000218, '2020-08-06 00:00:00', '2020-08-06 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(407, 1, 0000000002, 4, 0000000219, '2020-08-10 00:00:00', '2020-08-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(408, 1, 0000000002, 33, 0000000220, '2020-08-10 00:00:00', '2020-08-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(409, 1, 0000000002, 28, 0000000221, '2020-08-10 00:00:00', '2020-08-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(410, 1, 0000000002, 28, 0000000222, '2020-08-10 00:00:00', '2020-08-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(411, 1, 0000000002, 1, 0000000223, '2020-08-11 00:00:00', '2020-08-11 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(412, 1, 0000000002, 2, 0000000223, '2020-08-11 00:00:00', '2020-08-12 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(414, 1, 0000000002, 13, 0000000226, '2020-08-14 00:00:00', '2020-08-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(415, 1, 0000000002, 1, 0000000227, '2020-08-17 00:00:00', '2020-08-17 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(416, 1, 0000000002, 2, 0000000228, '2020-08-19 00:00:00', '2020-08-20 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(417, 1, 0000000002, 37, 0000000225, '2020-08-18 00:00:00', '2020-08-18 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(418, 1, 0000000002, 20, 0000000225, '2020-08-18 00:00:00', '2020-08-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(419, 1, 0000000002, 38, 0000000225, '2020-08-18 00:00:00', '2020-08-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(420, 1, 0000000002, 39, 0000000225, '2020-08-18 00:00:00', '2020-08-18 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(421, 1, 0000000002, 28, 0000000230, '2020-08-25 00:00:00', '2020-08-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(422, 1, 0000000002, 7, 0000000229, '2020-08-25 00:00:00', '2020-08-25 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(423, 1, 0000000002, 2, 0000000231, '2020-09-01 00:00:00', '2020-09-04 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(424, 1, 0000000002, 7, 0000000231, '2020-09-01 00:00:00', '2020-09-01 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(425, 1, 0000000002, 3, 0000000232, '2020-09-02 00:00:00', '2020-09-02 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(426, 1, 0000000002, 3, 0000000233, '2020-09-02 00:00:00', '2020-09-02 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(428, 1, 0000000002, 2, 0000000234, '2020-09-05 00:00:00', '2020-09-06 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(429, 1, 0000000002, 26, 0000000234, '2020-09-06 00:00:00', '2020-09-06 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(430, 1, 0000000002, 1, 0000000235, '2020-09-10 00:00:00', '2020-09-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(431, 1, 0000000002, 4, 0000000236, '2020-09-14 00:00:00', '2020-09-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(432, 1, 0000000002, 4, 0000000237, '2020-09-19 00:00:00', '2020-09-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(433, 1, 0000000002, 1, 0000000238, '2020-09-20 00:00:00', '2020-09-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(434, 1, 0000000002, 37, 0000000238, '2020-09-20 00:00:00', '2020-09-21 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(435, 1, 0000000002, 4, 0000000239, '2020-09-23 00:00:00', '2020-09-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(436, 1, 0000000002, 1, 0000000240, '2020-09-24 00:00:00', '2020-09-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(437, 1, 0000000002, 4, 0000000241, '2020-09-24 00:00:00', '2020-09-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(438, 1, 0000000002, 2, 0000000240, '2020-09-24 00:00:00', '2020-09-25 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(439, 1, 0000000002, 1, 0000000242, '2020-09-25 00:00:00', '2020-09-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(440, 1, 0000000002, 2, 0000000242, '2020-09-25 00:00:00', '2020-09-25 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(441, 1, 0000000002, 1, 0000000243, '2020-10-02 00:00:00', '2020-10-02 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(442, 1, 0000000002, 2, 0000000243, '2020-10-02 00:00:00', '2020-10-03 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(443, 1, 0000000002, 6, 0000000244, '2020-10-05 00:00:00', '2020-10-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(444, 1, 0000000002, 15, 0000000245, '2020-10-05 00:00:00', '2020-10-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(445, 1, 0000000002, 4, 0000000246, '2020-10-06 00:00:00', '2020-10-06 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(447, 1, 0000000002, 37, 0000000247, '2020-10-13 00:00:00', '2020-10-14 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(448, 1, 0000000002, 28, 0000000248, '2020-10-15 00:00:00', '2020-10-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(449, 1, 0000000002, 4, 0000000250, '2020-10-19 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(450, 1, 0000000002, 6, 0000000251, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(451, 1, 0000000002, 7, 0000000252, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(452, 1, 0000000002, 3, 0000000253, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(453, 1, 0000000002, 3, 0000000254, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(454, 1, 0000000002, 7, 0000000255, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(455, 1, 0000000002, 3, 0000000256, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(456, 1, 0000000002, 6, 0000000257, '2020-10-28 00:00:00', '2020-11-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(457, 1, 0000000002, 6, 0000000258, '2020-10-30 00:00:00', '2020-10-30 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(458, 1, 0000000002, 6, 0000000259, '2020-10-31 00:00:00', '2020-10-31 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(459, 1, 0000000002, 4, 0000000260, '2020-11-10 00:00:00', '2020-11-10 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(460, 1, 0000000002, 6, 0000000261, '2020-11-10 00:00:00', '2020-11-10 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(461, 1, 0000000002, 6, 0000000262, '2020-11-10 00:00:00', '2020-11-10 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(462, 1, 0000000002, 4, 0000000264, '2020-11-10 00:00:00', '2020-11-11 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(463, 1, 0000000002, 6, 0000000265, '2020-11-11 00:00:00', '2020-11-11 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(465, 1, 0000000002, 7, 0000000263, '2020-11-13 00:00:00', '2020-11-13 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(467, 1, 0000000002, 7, 0000000266, '2020-11-13 00:00:00', '2020-11-13 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(468, 1, 0000000002, 1, 0000000267, '2020-11-12 00:00:00', '2020-11-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(469, 1, 0000000002, 37, 0000000263, '2020-11-12 00:00:00', '2020-11-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(470, 1, 0000000002, 37, 0000000266, '2020-11-12 00:00:00', '2020-11-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(471, 1, 0000000002, 2, 0000000268, '2020-11-14 00:00:00', '2020-11-15 00:00:00', 200.00, 0.00, 200.00, 'TE'),
(472, 1, 0000000002, 4, 0000000269, '2020-11-16 00:00:00', '2020-11-17 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(473, 1, 0000000002, 1, 0000000270, '2020-11-25 00:00:00', '2020-11-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(474, 1, 0000000002, 4, 0000000271, '2020-11-25 00:00:00', '2020-11-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(475, 1, 0000000002, 6, 0000000270, '2020-11-25 00:00:00', '2020-11-25 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(476, 1, 0000000002, 4, 0000000272, '2020-11-25 00:00:00', '2020-11-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(477, 1, 0000000002, 19, 0000000273, '2020-11-26 00:00:00', '2020-11-26 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(478, 1, 0000000002, 37, 0000000273, '2020-11-26 00:00:00', '2020-11-28 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(479, 1, 0000000002, 24, 0000000274, '2020-11-26 00:00:00', '2020-11-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(480, 1, 0000000002, 2, 0000000275, '2020-11-28 00:00:00', '2020-11-29 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(481, 1, 0000000002, 2, 0000000276, '2020-11-30 00:00:00', '2020-11-30 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(482, 1, 0000000002, 2, 0000000277, '2020-12-09 00:00:00', '2020-12-19 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(483, 1, 0000000002, 2, 0000000278, '2020-12-19 00:00:00', '2020-12-19 00:00:00', 200.00, 0.00, 200.00, 'TE'),
(484, 1, 0000000002, 18, 0000000279, '2020-12-19 00:00:00', '2020-12-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(485, 1, 0000000002, 37, 0000000279, '2020-12-19 00:00:00', '2020-12-19 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(486, 1, 0000000002, 7, 0000000279, '2020-12-19 00:00:00', '2020-12-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(487, 1, 0000000002, 18, 0000000280, '2020-12-26 00:00:00', '2020-12-26 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(488, 1, 0000000002, 2, 0000000280, '2020-12-26 00:00:00', '2020-12-30 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(489, 1, 0000000002, 3, 0000000281, '2020-12-30 00:00:00', '2020-12-30 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(490, 1, 0000000002, 3, 0000000282, '2020-12-30 00:00:00', '2020-12-30 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(491, 1, 0000000002, 7, 0000000283, '2021-01-05 00:00:00', '2021-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(492, 1, 0000000002, 7, 0000000284, '2021-01-05 00:00:00', '2021-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(493, 1, 0000000002, 6, 0000000284, '2021-01-05 00:00:00', '2021-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(494, 1, 0000000002, 6, 0000000285, '2021-01-05 00:00:00', '2021-01-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(495, 1, 0000000002, 30, 0000000286, '2021-01-12 00:00:00', '2021-01-12 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(496, 1, 0000000002, 6, 0000000287, '2021-01-15 00:00:00', '2021-01-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(497, 1, 0000000002, 1, 0000000288, '2021-02-02 00:00:00', '2021-02-02 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(498, 1, 0000000002, 4, 0000000288, '2021-02-02 00:00:00', '2021-02-02 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(499, 1, 0000000002, 4, 0000000289, '2021-02-23 00:00:00', '2021-02-23 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(500, 1, 0000000002, 7, 0000000290, '2021-02-24 00:00:00', '2021-02-24 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(501, 1, 0000000002, 14, 0000000291, '2021-02-27 00:00:00', '2021-02-27 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(502, 1, 0000000002, 4, 0000000292, '2021-03-05 00:00:00', '2021-03-05 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(503, 1, 0000000002, 37, 0000000293, '2021-03-05 00:00:00', '2021-03-08 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(505, 1, 0000000002, 22, 0000000294, '2021-03-05 00:00:00', '2021-03-05 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(506, 1, 0000000002, 28, 0000000295, '2021-03-08 00:00:00', '2021-03-08 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(509, 1, 0000000002, 37, 0000000296, '2021-03-16 00:00:00', '2021-03-19 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(511, 1, 0000000002, 18, 0000000296, '2021-03-16 00:00:00', '2021-03-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(512, 1, 0000000002, 20, 0000000296, '2021-03-19 00:00:00', '2021-03-19 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(513, 1, 0000000002, 7, 0000000297, '2021-03-16 00:00:00', '2021-03-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(514, 1, 0000000002, 3, 0000000297, '2021-03-16 00:00:00', '2021-03-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(515, 1, 0000000002, 3, 0000000298, '2021-03-16 00:00:00', '2021-03-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(516, 1, 0000000002, 37, 0000000299, '2021-03-16 00:00:00', '2021-03-17 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(517, 1, 0000000002, 4, 0000000300, '2021-03-17 00:00:00', '2021-03-17 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(518, 1, 0000000002, 2, 0000000301, '2021-03-20 00:00:00', '2021-03-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(519, 1, 0000000002, 2, 0000000302, '2021-03-22 00:00:00', '2021-03-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(521, 1, 0000000002, 12, 0000000303, '2021-03-30 00:00:00', '2021-03-30 00:00:00', 250.00, 0.00, 250.00, 'TE'),
(522, 1, 0000000002, 2, 0000000304, '2021-04-03 00:00:00', '2021-04-05 00:00:00', 200.00, 0.00, 200.00, 'TE'),
(523, 1, 0000000002, 1, 0000000305, '2021-04-09 00:00:00', '2021-04-09 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(524, 1, 0000000002, 37, 0000000306, '2021-04-09 00:00:00', '2021-04-09 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(525, 1, 0000000002, 6, 0000000305, '2021-04-09 00:00:00', '2021-04-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(526, 1, 0000000002, 42, 0000000306, '2021-04-10 00:00:00', '2021-04-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(527, 1, 0000000002, 17, 0000000307, '2021-04-13 00:00:00', '2021-04-13 00:00:00', 0.00, 0.00, 0.00, 'TE');
INSERT INTO `tbl_item_servico_os` (`NUM_ID_SERVICO_OS`, `TBL_TECNICO_TEC_NUM_ID_TEC`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_SERVICO_SER_NUM_ID_SER`, `TBL_ORDEMSERVICO_OS_NUM_ID_OS`, `DTH_INICIO_SERVICO_OS`, `DTH_TERMINO_SERVICO_OS`, `VAL_VALOR_SERVICO_OS`, `VAL_DESCONTO_SERVICO_OS`, `VAL_VALOR_FINAL_SERVICO_OS`, `TXT_STATUS_SERVICO_OS`) VALUES
(528, 1, 0000000002, 1, 0000000308, '2021-04-15 00:00:00', '2021-04-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(530, 1, 0000000002, 12, 0000000309, '2021-04-10 00:00:00', '2021-04-10 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(531, 1, 0000000002, 17, 0000000310, '2021-04-13 00:00:00', '2021-04-13 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(534, 1, 0000000002, 19, 0000000308, '2021-04-18 00:00:00', '2021-04-18 00:00:00', 220.00, 0.00, 220.00, 'TE'),
(535, 1, 0000000002, 2, 0000000308, '2021-04-18 00:00:00', '2021-04-19 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(536, 1, 0000000002, 19, 0000000311, '2021-04-18 00:00:00', '2021-04-18 00:00:00', 220.00, 0.00, 220.00, 'TE'),
(537, 1, 0000000002, 2, 0000000311, '2021-04-18 00:00:00', '2021-04-19 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(538, 1, 0000000002, 6, 0000000312, '2021-04-20 00:00:00', '2021-04-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(539, 1, 0000000002, 28, 0000000313, '2021-04-22 00:00:00', '2021-04-22 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(540, 1, 0000000002, 7, 0000000314, '2021-04-22 00:00:00', '2021-04-22 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(541, 1, 0000000002, 1, 0000000315, '2021-04-26 00:00:00', '2021-04-26 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(542, 1, 0000000002, 37, 0000000315, '2021-04-26 00:00:00', '2021-04-28 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(543, 1, 0000000002, 28, 0000000316, '2021-04-29 00:00:00', '2021-04-29 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(544, 1, 0000000002, 26, 0000000317, '2021-04-29 00:00:00', '2021-04-29 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(545, 1, 0000000002, 1, 0000000318, '2021-05-25 00:00:00', '2021-05-25 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(546, 1, 0000000002, 1, 0000000319, '2021-05-07 00:00:00', '2021-05-14 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(547, 1, 0000000002, 2, 0000000320, '2021-05-13 00:00:00', '2021-05-16 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(548, 1, 0000000002, 43, 0000000319, '2021-05-14 00:00:00', '2021-05-14 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(549, 1, 0000000002, 2, 0000000321, '2021-05-19 00:00:00', '2021-05-25 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(550, 1, 0000000002, 20, 0000000321, '2021-05-25 00:00:00', '2021-05-25 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(551, 1, 0000000002, 37, 0000000322, '2021-06-07 00:00:00', '2021-06-08 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(554, 1, 0000000002, 19, 0000000324, '2021-06-08 00:00:00', '2021-06-08 00:00:00', 220.00, 0.00, 220.00, 'TE'),
(555, 1, 0000000002, 37, 0000000324, '2021-06-08 00:00:00', '2021-06-08 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(556, 1, 0000000002, 6, 0000000325, '2021-06-09 00:00:00', '2021-06-09 00:00:00', 25.00, 0.00, 25.00, 'TE'),
(557, 1, 0000000002, 28, 0000000326, '2021-06-09 00:00:00', '2021-06-09 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(559, 1, 0000000002, 39, 0000000323, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(560, 1, 0000000002, 2, 0000000327, '2021-06-28 00:00:00', '2021-06-28 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(561, 1, 0000000002, 7, 0000000327, '2021-06-28 00:00:00', '2021-07-02 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(562, 1, 0000000002, 4, 0000000328, '2021-06-29 00:00:00', '2021-06-29 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(563, 1, 0000000002, 28, 0000000328, '2021-06-29 00:00:00', '2021-06-30 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(564, 1, 0000000002, 37, 0000000329, '2021-06-29 00:00:00', '2021-07-02 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(565, 1, 0000000002, 2, 0000000330, '2021-07-01 00:00:00', '2021-07-02 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(566, 1, 0000000002, 1, 0000000331, '2021-07-02 00:00:00', '2022-02-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(567, 1, 0000000002, 28, 0000000332, '2021-07-06 00:00:00', '2021-07-06 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(568, 1, 0000000002, 6, 0000000333, '2021-09-02 00:00:00', '2021-09-02 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(569, 1, 0000000002, 4, 0000000334, '2021-09-29 00:00:00', '2021-09-30 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(570, 1, 0000000002, 2, 0000000335, '2021-10-14 00:00:00', '2021-10-14 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(571, 1, 0000000002, 2, 0000000336, '2021-10-18 00:00:00', '2021-10-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(573, 1, 0000000002, 37, 0000000337, '2021-10-28 00:00:00', '2021-10-28 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(574, 1, 0000000002, 14, 0000000337, '2021-10-28 00:00:00', '2021-10-28 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(575, 1, 0000000002, 4, 0000000338, '2021-11-05 00:00:00', '2021-11-05 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(576, 1, 0000000002, 6, 0000000339, '2021-11-09 00:00:00', '2021-11-09 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(577, 1, 0000000002, 18, 0000000340, '2021-11-10 00:00:00', '2021-11-10 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(578, 1, 0000000002, 37, 0000000340, '2021-11-10 00:00:00', '2021-11-12 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(579, 1, 0000000002, 2, 0000000341, '2021-11-10 00:00:00', '2021-11-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(580, 1, 0000000002, 18, 0000000342, '2021-11-12 00:00:00', '2021-11-12 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(581, 1, 0000000002, 31, 0000000343, '2021-11-12 00:00:00', '2021-11-12 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(582, 1, 0000000002, 26, 0000000344, '2021-11-17 00:00:00', '2021-11-18 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(583, 1, 0000000002, 11, 0000000345, '2021-11-24 00:00:00', '2021-11-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(584, 1, 0000000002, 18, 0000000346, '2021-12-02 00:00:00', '2021-12-03 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(585, 1, 0000000002, 2, 0000000346, '2021-12-03 00:00:00', '2021-12-03 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(587, 1, 0000000002, 28, 0000000347, '2021-12-04 00:00:00', '2021-12-04 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(589, 1, 0000000002, 14, 0000000347, '2021-12-03 00:00:00', '2021-12-04 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(590, 1, 0000000002, 31, 0000000348, '2021-12-03 00:00:00', '2021-12-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(591, 1, 0000000002, 4, 0000000349, '2021-12-13 00:00:00', '2021-12-13 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(593, 1, 0000000002, 4, 0000000350, '2021-12-15 00:00:00', '2021-12-15 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(594, 1, 0000000002, 7, 0000000351, '2021-12-21 00:00:00', '2021-12-21 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(595, 1, 0000000002, 2, 0000000352, '2021-12-28 00:00:00', '2022-01-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(596, 1, 0000000002, 28, 0000000353, '2022-01-13 00:00:00', '2022-01-13 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(597, 1, 0000000002, 1, 0000000354, '2022-01-18 00:00:00', '2022-02-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(598, 1, 0000000002, 6, 0000000355, '2022-01-20 00:00:00', '2022-01-20 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(599, 1, 0000000002, 2, 0000000356, '2022-01-22 00:00:00', '2022-01-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(600, 1, 0000000002, 2, 0000000357, '2022-01-22 00:00:00', '2022-01-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(601, 1, 0000000002, 1, 0000000358, '2022-01-26 00:00:00', '2022-02-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(602, 1, 0000000002, 18, 0000000358, '2022-02-03 00:00:00', '2022-02-03 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(603, 1, 0000000002, 37, 0000000358, '2022-02-03 00:00:00', '2022-02-03 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(604, 1, 0000000002, 1, 0000000359, '2022-02-08 00:00:00', '2022-03-31 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(605, 1, 0000000002, 18, 0000000360, '2022-02-10 00:00:00', '2022-02-21 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(606, 1, 0000000002, 6, 0000000361, '2022-02-18 00:00:00', '2022-02-18 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(607, 1, 0000000002, 2, 0000000362, '2022-02-19 00:00:00', '2022-02-21 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(608, 1, 0000000002, 2, 0000000363, '2022-02-20 00:00:00', '2022-02-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(609, 1, 0000000002, 10, 0000000360, '2022-02-21 00:00:00', '2022-02-21 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(610, 1, 0000000002, 6, 0000000364, '2022-02-24 00:00:00', '2022-02-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(611, 1, 0000000002, 37, 0000000365, '2022-03-06 00:00:00', '2022-03-06 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(612, 1, 0000000002, 1, 0000000366, '2022-03-30 00:00:00', '2022-03-31 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(613, 1, 0000000002, 44, 0000000367, '2022-03-27 00:00:00', '2022-03-27 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(614, 1, 0000000002, 2, 0000000366, '2022-03-31 00:00:00', '2022-03-31 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(615, 1, 0000000002, 28, 0000000368, '2022-04-05 00:00:00', '2022-04-05 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(616, 1, 0000000002, 28, 0000000369, '2022-04-05 00:00:00', '2022-04-05 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(617, 1, 0000000002, 28, 0000000370, '2022-04-05 00:00:00', '2022-04-05 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(618, 1, 0000000002, 28, 0000000371, '2022-04-05 00:00:00', '2022-04-05 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(620, 1, 0000000002, 7, 0000000372, '2022-04-12 00:00:00', '2022-04-12 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(621, 1, 0000000002, 6, 0000000373, '2022-04-14 00:00:00', '2022-04-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(622, 1, 0000000002, 20, 0000000374, '2022-04-15 00:00:00', '2022-04-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(623, 1, 0000000002, 2, 0000000374, '2022-04-15 00:00:00', '2022-04-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(624, 1, 0000000002, 20, 0000000375, '2022-04-15 00:00:00', '2022-04-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(625, 1, 0000000002, 2, 0000000375, '2022-04-15 00:00:00', '2022-04-15 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(626, 1, 0000000002, 18, 0000000376, '2022-04-16 00:00:00', '2022-04-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(627, 1, 0000000002, 20, 0000000376, '2022-04-16 00:00:00', '2022-04-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(628, 1, 0000000002, 2, 0000000376, '2022-04-16 00:00:00', '2022-04-16 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(629, 1, 0000000002, 20, 0000000377, '2022-04-16 00:00:00', '2022-04-16 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(630, 1, 0000000002, 37, 0000000377, '2022-04-16 00:00:00', '2022-04-18 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(631, 1, 0000000002, 2, 0000000378, '2022-04-24 00:00:00', '2022-04-27 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(632, 1, 0000000002, 18, 0000000379, '2022-05-03 00:00:00', '2022-05-03 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(633, 1, 0000000002, 2, 0000000379, '2022-05-03 00:00:00', '2022-06-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(634, 1, 0000000002, 18, 0000000380, '2022-06-04 00:00:00', '2022-06-04 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(636, 1, 0000000002, 2, 0000000380, '2022-06-04 00:00:00', '2022-06-20 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(638, 1, 0000000002, 2, 0000000382, '2022-06-15 00:00:00', '2022-06-15 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(639, 1, 0000000002, 18, 0000000383, '2022-06-15 00:00:00', '2022-06-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(641, 1, 0000000002, 18, 0000000381, '2022-06-15 00:00:00', '2022-06-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(642, 1, 0000000002, 2, 0000000381, '2022-06-15 00:00:00', '2022-06-15 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(643, 1, 0000000002, 37, 0000000383, '2022-06-20 00:00:00', '2022-06-20 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(644, 1, 0000000002, 45, 0000000383, '2022-06-20 00:00:00', '2022-06-20 00:00:00', 200.00, 0.00, 200.00, 'TE'),
(645, 1, 0000000002, 7, 0000000384, '2022-06-20 00:00:00', '2022-06-20 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(646, 1, 0000000002, 2, 0000000385, '2022-06-22 00:00:00', '2022-06-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(648, 1, 0000000002, 22, 0000000386, '2022-06-22 00:00:00', '2022-06-22 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(659, 1, 0000000002, 2, 0000000389, '2022-06-29 00:00:00', '2022-06-30 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(660, 1, 0000000002, 18, 0000000390, '2022-07-08 00:00:00', '2022-07-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(661, 1, 0000000002, 37, 0000000390, '2022-07-09 00:00:00', '2022-07-09 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(662, 1, 0000000002, 1, 0000000391, '2023-02-24 00:00:00', '2023-02-24 00:00:00', 0.00, 0.00, 0.00, 'TE'),
(663, 1, 0000000002, 18, 0000000392, '2023-02-09 00:00:00', '2023-02-09 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(664, 1, 0000000002, 2, 0000000392, '2023-02-09 00:00:00', '2023-02-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(665, 1, 0000000002, 7, 0000000393, '2023-02-23 00:00:00', '2023-02-24 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(666, 1, 0000000002, 2, 0000000391, '2023-02-24 00:00:00', '2023-02-24 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(667, 1, 0000000002, 18, 0000000394, '2023-03-07 00:00:00', '2023-03-07 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(668, 1, 0000000002, 37, 0000000394, '2023-03-07 00:00:00', '2023-03-07 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(669, 1, 0000000002, 37, 0000000395, '2023-04-24 00:00:00', '2023-04-24 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(670, 1, 0000000002, 4, 0000000396, '2023-04-24 00:00:00', '2023-04-24 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(671, 1, 0000000002, 2, 0000000397, '2023-05-15 00:00:00', '2023-05-15 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(672, 1, 0000000002, 18, 0000000398, '2023-05-15 00:00:00', '2023-05-15 00:00:00', 50.00, 0.00, 50.00, 'TE'),
(673, 1, 0000000002, 2, 0000000398, '2023-05-15 00:00:00', '2023-05-15 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(674, 1, 0000000002, 2, 0000000399, '2023-05-24 00:00:00', '2023-05-27 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(675, 1, 0000000002, 4, 0000000400, '2023-05-31 00:00:00', '2023-05-31 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(676, 1, 0000000002, 4, 0000000401, '2023-05-31 00:00:00', '2023-05-31 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(677, 1, 0000000002, 6, 0000000402, '2023-06-13 00:00:00', '2023-06-13 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(678, 1, 0000000002, 2, 0000000402, '2023-06-13 00:00:00', '2023-06-13 00:00:00', 150.00, 0.00, 150.00, 'TE'),
(679, 1, 0000000002, 4, 0000000403, '2023-08-01 00:00:00', '2023-08-01 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(680, 1, 0000000002, 6, 0000000404, '2023-08-08 00:00:00', '2023-08-08 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(681, 1, 0000000002, 7, 0000000405, '2023-08-08 00:00:00', '2023-08-08 00:00:00', 100.00, 0.00, 100.00, 'TE'),
(682, 1, 0000000002, 6, 0000000406, '2023-09-04 00:00:00', '2023-09-04 00:00:00', 100.00, 0.00, 100.00, 'TE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movimentacao_mov`
--

CREATE TABLE `tbl_movimentacao_mov` (
  `NUM_ID_MOV` int(10) UNSIGNED NOT NULL,
  `TBL_EMPRESA_EMP_NUM_ID_EMP` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP` int(10) UNSIGNED NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(10) UNSIGNED ZEROFILL NOT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(10) UNSIGNED ZEROFILL NOT NULL,
  `VAL_VALOR_MOV` double(8,2) DEFAULT NULL,
  `TXT_REFERENTE_MOV` varchar(100) DEFAULT NULL,
  `DTH_MOVIMENTACAO_MOV` datetime DEFAULT NULL,
  `TXT_TIPO_MOV` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movimentacao_mov`
--

INSERT INTO `tbl_movimentacao_mov` (`NUM_ID_MOV`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `VAL_VALOR_MOV`, `TXT_REFERENTE_MOV`, `DTH_MOVIMENTACAO_MOV`, `TXT_TIPO_MOV`) VALUES
(1, 0000000001, 1, 0000000006, 0000000096, 200.00, 'REFERENTE A TROCA DE HD E FORMATACAO', '2021-04-27 00:00:00', 'ENTRADA'),
(2, 0000000001, 1, 0000000006, 0000000097, 100.00, 'REFERENTE A TROCA DE HD E FORMATACAO', '2021-04-27 00:00:00', 'ENTRADA'),
(3, 0000000001, 1, 0000000006, 0000000096, 120.00, 'REFERENTE A TROCA DE HD E FORMATACAO', '2021-05-10 00:00:00', 'ENTRADA'),
(4, 0000000001, 8, 0000000006, 0000000093, 50.00, 'ADIANTAMENTO REFERENTE A TITULO EM ABERTO', '2021-05-10 00:00:00', 'ENTRADA'),
(5, 0000000001, 1, 0000000006, 0000000096, 160.00, 'BAIXA DO TITULO NUMERO 00052 COM SALDO', '2021-05-10 00:00:00', 'SAIDA'),
(6, 0000000001, 1, 0000000006, 0000000096, 160.00, 'BAIXA DO TITULO NUMERO 00053 COM SALDO', '2021-05-10 00:00:00', 'SAIDA'),
(7, 0000000001, 1, 0000000006, 0000000097, 220.00, 'REFERENTE A TROCA DE HD E FORMATACAO', '2021-05-12 00:00:00', 'ENTRADA'),
(8, 0000000001, 1, 0000000006, 0000000097, 160.00, 'BAIXA DO TITULO NUMERO 00051 COM SALDO', '2021-05-12 00:00:00', 'SAIDA'),
(9, 0000000001, 1, 0000000006, 0000000097, 160.00, 'BAIXA DO TITULO NUMERO 00050 COM SALDO', '2021-05-12 00:00:00', 'SAIDA'),
(10, 0000000001, 8, 0000000006, 0000000093, 50.00, 'REFERENTE A TÃ­TULO EM ABERTO', '2021-06-04 00:00:00', 'ENTRADA'),
(11, 0000000001, 1, 0000000006, 0000000093, 100.00, 'BAIXA DO TITULO NUMERO 00044 COM SALDO', '2021-06-07 00:00:00', 'SAIDA'),
(12, 0000000001, 1, 0000000006, 0000000100, 150.00, 'REF PAGAMENTO ORDEM DE SERVICO', '2021-06-08 00:00:00', 'ENTRADA'),
(13, 0000000001, 4, 0000000006, 0000000100, 150.00, 'REF PAGAMENTO ORDEM DE SERVICO', '2021-06-08 00:00:00', 'ENTRADA'),
(14, 0000000001, 1, 0000000002, 0000000100, 300.00, 'BAIXA DA ORDEM DE SERVICO NUMERO 324 COM SALDO', '2021-06-09 00:00:00', 'SAIDA'),
(15, 0000000001, 8, 0000000006, 0000000114, 200.00, 'REFERENTE A PAGAMENTO DE ORDEM DE SERVICOS ABERTA', '2022-04-11 00:00:00', 'ENTRADA'),
(16, 0000000001, 3, 0000000006, 0000000114, 50.00, 'BAIXA DO TITULO NUMERO 00091 COM SALDO', '2022-04-11 00:00:00', 'SAIDA'),
(17, 0000000001, 3, 0000000006, 0000000114, 50.00, 'BAIXA DO TITULO NUMERO 00090 COM SALDO', '2022-04-11 00:00:00', 'SAIDA'),
(18, 0000000001, 3, 0000000006, 0000000114, 50.00, 'BAIXA DO TITULO NUMERO 00089 COM SALDO', '2022-04-11 00:00:00', 'SAIDA'),
(19, 0000000001, 3, 0000000006, 0000000114, 50.00, 'BAIXA DO TITULO NUMERO 00088 COM SALDO', '2022-04-11 00:00:00', 'SAIDA'),
(20, 0000000001, 2, 0000000006, 0000000093, 150.00, 'REFERENTE A PAGAMENTO DE SERVICOS', '2023-05-31 00:00:00', 'ENTRADA'),
(21, 0000000001, 3, 0000000006, 0000000093, 75.00, 'BAIXA DO TITULO NUMERO 00112 COM SALDO', '2023-05-31 00:00:00', 'SAIDA'),
(22, 0000000001, 3, 0000000006, 0000000093, 75.00, 'BAIXA DO TITULO NUMERO 00111 COM SALDO', '2023-05-31 00:00:00', 'SAIDA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordemservico_os`
--

CREATE TABLE `tbl_ordemservico_os` (
  `NUM_ID_OS` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_TIPO_ATENDIMENTO_OS` varchar(20) NOT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_EMPRESA_EMP_NUM_ID_EMP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_TIPO_OS` char(1) NOT NULL,
  `TXT_CONDICAO_PAGAMENTO_OS` varchar(20) NOT NULL,
  `DTH_ABERTURA_OS` datetime NOT NULL,
  `TXT_DADOSGERAIS_OS` varchar(200) NOT NULL,
  `TXT_RECLAMACAO_OS` text NOT NULL,
  `DTA_PREVISAO_OS` date NOT NULL,
  `TXT_DEFEITO_OS` text DEFAULT NULL,
  `TXT_RESOLUCAO_OS` text DEFAULT NULL,
  `VAL_TOTAL_OS` double(8,2) DEFAULT NULL,
  `VAL_DESCONTO_OS` double(8,2) DEFAULT NULL,
  `VAL_FINAL_OS` double(8,2) DEFAULT NULL,
  `DTH_ENCERRAMENTO_OS` datetime DEFAULT NULL,
  `DTA_FIMGARANTIA_OS` date DEFAULT NULL,
  `NUM_NFSE_OS` bigint(15) UNSIGNED DEFAULT NULL,
  `TXT_CANCELAMENTO_OS` text DEFAULT NULL,
  `NUM_KM_OS` int(11) NOT NULL,
  `TXT_STATUS_OS` varchar(20) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ordemservico_os`
--

INSERT INTO `tbl_ordemservico_os` (`NUM_ID_OS`, `TXT_TIPO_ATENDIMENTO_OS`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_OS`, `TXT_CONDICAO_PAGAMENTO_OS`, `DTH_ABERTURA_OS`, `TXT_DADOSGERAIS_OS`, `TXT_RECLAMACAO_OS`, `DTA_PREVISAO_OS`, `TXT_DEFEITO_OS`, `TXT_RESOLUCAO_OS`, `VAL_TOTAL_OS`, `VAL_DESCONTO_OS`, `VAL_FINAL_OS`, `DTH_ENCERRAMENTO_OS`, `DTA_FIMGARANTIA_OS`, `NUM_NFSE_OS`, `TXT_CANCELAMENTO_OS`, `NUM_KM_OS`, `TXT_STATUS_OS`) VALUES
(00001, 'EMPRESA', 00003, 00001, 00001, 00002, 'P', 'VISTA', '2015-08-14 00:00:00', 'EQUIPAMENTO NOVO, SEM RISCOS, OTIMO ESTADO', 'CLIENTE INFORMA QUE AO LIGAR O COMPUTADOR O MESMO INFORMA QUE ESTAVA REALIZANDO UMA ATUALIZACAO E PEDIU QUE AGUARDASSE, POREM LEVOU A MANHA INTEIRA PARA QUE O CLIENTE RESOLVESSE DESLIGA-LO NA TOMADA E QUANDO RELIGOU O MESMO NAO CONSEGUE PASSAR DE UMA TELA ESCURA NAO PEDE LOGIN NEM NADA.', '2015-08-16', 'SISTEMA OPERACIONAL FICOU CORROMPIDO DEVIDO A ATUALIZACAO MAL SUCEDIDA.', 'FAZER UM BACKUP DOS DADOS DO CLIENTE, REALIZAR UMA FORMATAÃ‡ÃƒO COMPLETA TENTANDO RECUPERAR LICENSA ORIGINAL DO CLIENTE, E CONFIGURAR WINDOWS PARA ATUALIZAR SOMENTE QUANDO CLIENTE PRECISAR.', 100.00, 0.00, 100.00, '2016-03-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00002, 'EMPRESA', 00003, 00001, 00001, 00002, 'P', 'CONTRATO', '2015-08-18 00:00:00', 'EQUIPAMENTO NOVO, SEM RISCOS', 'CLIENTE INFORMA QUE AO LIGAR O COMPUTADOR O MESMO ESTAVA FINALIZANDO UMA ATUALIZACAO, DEPOIS DE PERDER A MANHA TODA AGUARDANDO O MESMO RESOLVEU DESLIGAR E LIGAR NOVAMENTE A CPU, DEPOIS DISSO O COMPUTADOR LIGA APARECE O LOGO DA PLACA LENOVO, POREM FICA EM UMA TELA PRETA E NAO INICIA O WINDOWS NORMALMENTE.', '2015-08-19', 'O SISTEMA OPERACIONAL DO EQUIPAMENTO FOI CORROMPIDO.', 'FOI REALIZADA UMA RECUPERACAO DO WINDOWS COM ISSO O MESMO VOLTOU A FUNCIONAR NORMALMENTE.', 0.00, 0.00, 0.00, '2016-03-25 00:00:00', NULL, 0, 'OS ATRELADA A OS DE NUMERO 1', 0, 'PAGO'),
(00003, 'CLIENTE', 00005, 00001, 00002, 00002, 'P', 'TITULO', '2015-09-04 00:00:00', 'NOTEBOOK NOVO SEM APLICATIVOS INSTALADOS', 'CLIENTE SOLICITA QUE SEJAM INSTALADOS APLICATIVOS BASICOS, CONFIGURADA A REDE E OS COMPARTILHAMENTOS DA EMPRESA, E O SISTEMA DE GERENCIAMENTO DA MESMA.', '2015-09-04', 'SOMENTE SOLICITACOES', 'FOI FEITA INSTALACAO DE TODOS APLICATIVOS BASICOS, PACOTE OFFICE, ADOBE READER, CCLEANER, CUTE PDF,JAVA, IMPRESSORA LJM1130, CONFIGURADA REDE DO CLIENTE MULTITEC E MAPEADA TODAS AS PASTAS DE COMPARTILHAMENTOS NECESSARIOS. FICOU ACORDADO QUE O ANTIVIRUS SERA UTILIZADA A VERSAO DO MACAFEE QUE VEIO DE DEMONSTRAÃ‡ÃƒO POR 1 MES, DEPOIS O MESMO SERÃ TROCADO PARA AVG UTILIZADO NA EMPRESA.', 100.00, 0.00, 100.00, '2016-03-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00004, 'CLIENTE', 00005, 00001, 00003, 00002, 'P', 'TITULO', '2015-09-04 00:00:00', 'NOTEBOOK NOVO SEM APLICATIVOS INSTALADOS', 'CLIENTE SOLICITA QUE SEJAM INSTALADOS APLICATIVOS BASICOS, CONFIGURADA A REDE E OS COMPARTILHAMENTOS DA EMPRESA, E O SISTEMA DE GERENCIAMENTO DA MESMA.', '2015-09-04', 'SOMENTE SOLICITACOES', 'FOI FEITA INSTALACAO DE TODOS APLICATIVOS BASICOS, PACOTE OFFICE, ADOBE READER, CCLEANER, CUTE PDF, IMPRESSORA LJM1130, JAVA, CONFIGURADA REDE DO CLIENTE MULTITEC E MAPEADA TODAS AS PASTAS DE COMPARTILHAMENTOS NECESSARIOS. FICOU ACORDADO QUE O ANTIVIRUS SERA UTILIZADA A VERSAO DO MACAFEE QUE VEIO DE DEMONSTRAÃ‡ÃƒO POR 1 MES, DEPOIS O MESMO SERÃ TROCADO PARA AVG UTILIZADO NA EMPRESA.', 100.00, 0.00, 100.00, '2016-03-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00005, 'CLIENTE', 00005, 00001, 00004, 00002, 'P', 'VISTA', '2015-09-04 00:00:00', 'NOTEBOOK NOVO SEM APLICATIVOS INSTALADOS', 'CLIENTE SOLICITA QUE SEJAM INSTALADOS APLICATIVOS BASICOS, CONFIGURADA A REDE E OS COMPARTILHAMENTOS DA EMPRESA, E O SISTEMA DE GERENCIAMENTO DA MESMA.', '2015-09-04', 'SOMENTE SOLICITACOES', 'FOI FEITA INSTALACAO DE TODOS APLICATIVOS BASICOS, PACOTE OFFICE, ADOBE READER, CCLEANER, CUTE PDF, IMPRESSORA LJM1130, JAVA, CONFIGURADA REDE DO CLIENTE MULTITEC E MAPEADA TODAS AS PASTAS DE COMPARTILHAMENTOS NECESSARIOS. FICOU ACORDADO QUE O ANTIVIRUS SERA UTILIZADA A VERSAO DO MACAFEE QUE VEIO DE DEMONSTRAÃ‡ÃƒO POR 1 MES, DEPOIS O MESMO SERÃ TROCADO PARA AVG UTILIZADO NA EMPRESA.', 100.00, 0.00, 100.00, '2016-03-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00006, 'CLIENTE', 00005, 00001, 00006, 00002, 'P', 'VISTA', '2015-09-04 00:00:00', 'DESKTOP USADO / PORTAS USB FRONTAIS NAO FUNCIONAM', 'CLIENTE SOLICITA QUE SEJA FEITO UM BACKUP DOS DADOS DO EQUIPAMENTO, E QUE SEJA FEITA INSTALACAO DA IMPRESSORA E MUDANCA DO MESMO PRO SETOR DO ESTOQUE.', '2015-09-04', 'SOMENTE SOLICITACOES', 'REALIZADO BACKUP, INSTALACAO DA IMPRESSORA CONFORME SOLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00007, 'CLIENTE', 00005, 00001, 00005, 00002, 'P', 'VISTA', '2015-09-04 00:00:00', 'DESKTOP USADO / SEM MARCAS DE USO / SERVIDOR SYSTEM CAR', 'CLIENTE SOLICITA QUE SEJA FEITO UM BACKUP DOS DADOS RETIRADOS TODOS APLICATIVOS DE USUARIO, E DEIXE SOMENTE FUNCIONANDO O SISTEMA CENTRAL SHARMAQ E POSTERIORMENTE O SERVICE SYSTEM CAR E O MESMO SEJA TRANSFERIDO PARA SALA DA ADMINISTRACAO.', '2015-09-04', 'SOMENTE SOLICITACOES', 'FOI RETIRADO TODOS OS APLICATIVOS E CONFIGURADO O SYSTEM CAR DA BOSCH CONFORME SOLICITACAO DOC LIENTE', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00008, 'CLIENTE', 00003, 00001, 00001, 00002, 'P', 'VISTA', '2015-09-10 00:00:00', 'NOTEBOOK NOVO SEM APLICATIVOS INSTALADOS', 'CLIENTE INFORMA QUE AO BAIXAR UM APLICATIVO DE JOGO, O COMPUTADOR NAO ATIVA MAIS O ANTIVIRUS E O MESMO NAO CONSEGUE NAVEGAR EM SITE NENHUM COM AMBOS NAVEGADORES.', '2015-09-10', 'AO INSTALAR UM APLICATIVO, GOVERNOR OF POKER 2, DE UMA FONTE DUVIDOSA, O MESMO INSTALOU TAMBEM UM VIRUS QUE CORROMPEU O NAVEGADOR GOOGLE CRHOME E TAMBEM O ANTIVIRUS NORTON', 'REMOCAO DO APLICATIVO GOVERNOR OF POKER 2, GOOGLE CRHOME E NORTON ANTIVIRUS UYTILIZANDO SUA FERRAMENTA DE REMOCAO ONLINE, POSTERIOMENTE INSTLADO O NORTON E GOOGLE CRHOME CMO SUCESSO, BAIXEI O JOGO GOVERNOR OF POKER 2 DIRETO DO DESENVOLVEDOR E FOI INSTRUIDO O CLIENTE A COMPRAR UMA VERSAO SEGURA DO MESMO..', 50.00, 0.00, 50.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00009, 'CLIENTE', 00002, 00001, 00007, 00002, 'P', 'VISTA', '2015-10-21 00:00:00', 'DESKTOP USADO, ABERTO, SEM PARAFUSOS, SUJO POR DENTRO', 'CLIENTE INFORMA QUE NAO CONSEGUE NAVEGAR NA INTERNET, SISTEMA OPERACIONAL ESTA MUITO LENTO, E DE VEZ EM QUANDO O MESMO DESLIGA REPENTINAMENTE.', '2015-10-21', 'FAZ MAIS DE 6 MESES QUE Ã‰ O TEMPO NECESSARIO PARA UMA NOVA FORMATACAO DE SISTEMA OPERACIONAL, COM ISSO O MESMO FOI FICANDO LENTO, O MESMO TAMBEM ESTA COM MUITA POEIRA NO COOLER DO PROCESSADOR E PRATICAMENTE SEM PASTA TERMICA, FAZENDO COM O MESMO FIQUE LENTO POR SUPERAQUECIMENTO QUE FAZ COM QUE O EQUIPAMENTO FIQUE DESLIGANDO.', 'FOI REALIZADA A TROCA DA FONTE DO EQUIPAMENTO', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00010, 'EMPRESA', 00001, 00001, 00008, 00002, 'P', 'VISTA', '2015-11-06 00:00:00', 'NOTEBOOK USADO, SEM MARCAS E OU PROBLEMAS, C/ FONTE, BOAS CONDICOES', 'CLIENTE SOLICITA QUE SEJA FEITA MUDANCA DE SISTEMA OPERACIONAL DO WINDOWS 8 PARA O WINDWS 7, POIS O EQUIPAMENTO Ã‰ UTILIZADO PARA REGISTRO DE PACIENTES UNIMED COM O USO DE UM EQUIPAMENTO QUE REGISTRA A DIGITAL DO MESMO, POREM ESSE EQUIPAMENTO SÃ“ FUNCIONA NO WINDOWS 7.', '2015-07-11', 'EQUIPAMENTO DE LEITURA DE DIGITAL DA UNIMED, SOMENTE Ã‰ COMPATIVEL COM WINDOWS 7.', 'SERA FEITA A MUDANCA DE SISTEMA OPERACIONAL, PARA QUE O LEITOR DE DIGITAL FUNCIONE.', 150.00, 0.00, 150.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00011, 'EMPRESA', 00001, 00001, 00009, 00002, 'P', 'CONTRATO', '2015-11-06 00:00:00', 'NOTEBOOK USADO, ALGUMAS MARCAS, C FONTE, BOAS CONDICOES', 'CLIENTE INFORMA QUE APOS UMA ATUALIZACAO DE SISTEMA OPERACIONAL, O NOTEBOOK QUANDO E LIGADO FICA SEMPRE COM UMA TELA ESCURA.', '2015-07-11', 'HOUVE UMA ATUALIZACAO DE SISTEMA MAL SUCEDIDA, FAZENDO COM QUE O NOTEBOOK FIQUE COM UMA TELA ESCURA TODA VEZ QUE E LIGADO.', 'INFELIZMENTE NAO PODEMOS DETECTAR QUAL PROBLEMA E EM QUAL COMPONENTE, EQUIPAMENTO DEVE SER LEVADO A UMA ESPECIALIZADA PARA UM DIAGNOSTICO MAIS EXATO.', 0.00, 0.00, 0.00, '2016-07-13 00:00:00', NULL, 0, 'O CLIENTE DEVERÃ LEVAR O EQUIPAMENTO EM UMA ASSISTENCIA ESPECIALIZADA, FORAM FEITO TODOS OS PROCEDIMENTOS, POREM O PROBLEMA Ã‰ NA PLACA MAE E NAO TRABALHAMOS COM ESSE TIPO DE SERVICO E CONSERTO.', 0, 'PAGO'),
(00012, 'CLIENTE', 00003, 00001, 00001, 00002, 'P', 'VISTA', '2015-11-25 00:00:00', 'DESKTOP USADO, SEM ARRANHOES, LACRADO', 'CLIENTE INFORMA QUE O ANTIVIRUS NAO ESTA FUNCIONANDO CORRETAMENTE, O WINDOWS ESTA ABRINDO SEMPRE COM USUARIO TEMPORARIO, E CLIENTE SOLICITA QUE SEJA FEITA UMA ATUALIZACAO PARA O WINDOWS 10.', '2015-11-27', 'O EQUIPAMENTO DO CLIENTE Ã‰ UTILIZADO PELO PAI E FILHO, QUANDO FILHO VAI USAR INSTALA VÃRIOS APLICATIVOS E JOGOS POR ISSO O MESMO VAI DANDO PROBLEMA NO ANTIVIRUS E NO SISTEMA OPERACIONAL, POIS TEM QUE HABILITAR PORTAS, E ALGUMAS OUTRAS PROTEÃ‡Ã•ES.', 'REINSTALAR O SISTEMA OPERACIONAL, INSTALAR NOVAMENTE OS APLICATIVOS E ANTIVIRUS.', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00013, 'EMPRESA', 00009, 00001, 00010, 00002, 'P', 'VISTA', '2015-11-25 00:00:00', 'NOTEBOOK USADO, ALGUMAS MARCAS, C FONTE, BOAS CONDICOES', 'CLIENTE INFORMA QUE NOTEBOOK ESTA MUITO LENTO, CHEIO DE APLICATIVOS INDESEJAVEIS, SOLICITA QUE NO MESMO SEJA INSTALADO O WINDOWS 10.', '2015-11-27', 'O EQUIPAMENTO ESTAVA CHEIO DE APLCATIVOS INDESEJADOS, FAZENDO COM O MESMO APRESENTASSE LENTIDAO EM TAREFAS BASICAS', 'FEITA INSTALACAO DO WINDOWS 10 NO EQUIPAMENTO CONFORME SOLICITADO', 75.00, 0.00, 75.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00014, 'CLIENTE', 00008, 00001, 00011, 00002, 'P', 'VISTA', '2015-11-25 00:00:00', 'NOTEBOOK USADO, ALGUMAS MARCAS, C FONTE, BOAS CONDICOES', 'CLIENTE INFORMA QUE NOTEBOOK ESTA LENTO, CHEIO DE APLICATIVOS INDESEJAVEIS, E SOLICITA QUE SEJA FEITA UMA REINSTALACAO DO SISTEMA OPERACIONAL.', '2015-11-27', 'NOTEBOOK DO CLIENTE ESTA CHEIO DE APLICATIVOS DESNECESSÃRIOS, QUE FAZEM COM QUE O MESMO FIQUE LENTO E COM MUITA PERDA DE DESEMPENHO, VARIOS PROGRAMAS DE DOWNLOADS DE VIDEOS, MUSICAS, FILMES ETC.', 'FAZER UM BACKUP DE TODOS OS DADOS, REALIZAR UMA RESTAURACAO DE FABRICA COMPLETA, INSTLAR APLICATIVOS, VOLTAR DADOS DE BACKUP E TUDO MAIS, CLIENTE SOLICITA QUE SEJA INSTALADO UM PROGRAMA QUE BAIXE MUSICA, MAS FOI ORIENTADO QUE ESTES POROGRAMAS FAZEM AS VEZES COM O SISTEMA OPERACIONAL APRESENTE DEFEITO.', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00015, 'EMPRESA', 00010, 00001, 00012, 00002, 'P', 'VISTA', '2016-03-02 00:00:00', 'NOTEBOOK USADO, SEM MARCAS E OU PROBLEMAS, C/ FONTE, BOAS CONDICOES', 'CLIENTE SOLICITA QUE SEJA FORMATADO SEU NOTEBOOK, INSTALACAO DE APLICATIVOS PADRAO, NAO PRECISA FAZER BACKUP POIS O MESMO JA POSSUI OS DADOS EM UM HD EXTERNO.', '2016-03-05', 'notebook apresenta lentidao e virus, e possui informacoes e aplicativos desnecessarios.', 'realizar a formatacao e instalacao de todos os aplicativos de uso comum.', 75.00, 0.00, 75.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00016, 'EMPRESA', 00011, 00001, 00013, 00002, 'P', 'VISTA', '2016-03-15 00:00:00', 'NOTEBOOK USADO, ALGUMAS MARCAS, C FONTE, BOAS CONDICOES, SEM CARREGAR', 'CLIENTE INFORMA QUE TEVE UM PROBLEMA COM SEU NOTEBOOK E PERDEU TODAS AS INFORMACOES, COMPROU UM NOVO HD E SOLICITA QUE SEJ AINSTALADO UMA VERSAO NOVA DO WINDOWS, NAO PRECISA FAZER BACKUP, SOMENTE INSTALAR WINDOWS, DRIVERS E SEUS APLICATIVOS PADRAO.', '2016-03-17', 'HD DO NOTEBOOK NOVO', 'INSTALACAO DO WINDOWS E APLICATIVOS.', 75.00, 0.00, 75.00, '2016-03-26 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00017, 'EMPRESA', 00012, 00001, 00014, 00002, 'P', 'VISTA', '2016-03-24 00:00:00', 'NOTEBOOK USADO, BATERIA NAO AGUENTA CARGA, C/FONTE', 'CLIENTE INFORMA QUE ESTA COM PROBLEMAS PARA ACESSAR SEU EMAIL NO OUTLOOK O MESMO APRESENTA MENSAGEM DE ERRO NO ARCHIVE.PST.', '2016-03-24', 'ARQUIVO DE DADOS DO OUTLOOK ESTA CORROMPIDO', 'UTILIZAR O SCANPST QUE A PROPRIA MICROSOFT DISPONIBILIZA NA INSTALACAO DO OFFICE PARA TENTAR RECUPERAR O MESMO.', 25.00, 0.00, 25.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00018, 'CLIENTE', 00013, 00001, 00015, 00002, 'P', 'CONTRATO', '2016-03-24 00:00:00', 'NOTEBOOK USADO, ALGUMAS MARCAS, C FONTE, BOAS CONDICOES', 'CLIENTE INFORMA QUE NOTEBOOK ESTA TRAVANDO MUITO NA INICIALIZACAO', '2016-03-25', NULL, NULL, 0.00, 0.00, 0.00, '2016-03-24 00:00:00', NULL, 0, 'CLIENTE INFORMA QUE VALORES SAO ALTOS', 0, 'CANCELADA'),
(00019, 'CLIENTE', 00005, 00001, 00016, 00002, 'P', 'VISTA', '2016-04-01 00:00:00', 'NOTEBOOK NOVO SEM APLICATIVOS', 'CLIENTE INFORMA QUE NOTEBOOK ESTA NOVO E ESTA SEM APLICATIVOS, SOLICITA INSTALACAO DO OFFICE, ADOBE READER, JAVA, ANTIVIRUS, IMPRESSORA DA ADMINISTRACAO.', '2016-04-01', 'NOTEBOOK NOVO SEM APLICATIVOS', 'INSTALACAO DO OFFICE, ADOBE READER, JAVA, GOOGLE CHROME, IMPRESSORA DA ADMINISTRACAO IP 192.168.0.18 HP1102W', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00020, 'EMPRESA', 00014, 00001, 00017, 00002, 'P', 'TITULO', '2016-04-22 00:00:00', 'NOTEBOOK USADO', 'CLIENTE INFORMA QUE O NOTEBOOK ESTA MUITO LENTO, GOSTARIA QUE FOSSE REALIZADO UMA FORMATACAO NO MESMO.', '2016-04-23', 'NOTEBOOK ESTA COM WINDOWS 7 ULTIMATE POR ISSO APRESENTA LENTIDAO, A SETA DIREITA DO TECLADO TAMBEM, APRESENTA DEFEITO, COMO SE ESTIVESSE TEMPO TODO SENDO PRESSIONADO.', 'INSTALAR UM SISTEMA OPERACIONAL MAIS LEVE, COMO O HOME STARTER. COM RELACAO A TECLADO LEVAR A UMA ESPECIALIZADA PRA VER O QUE PODE SER FEITO.', 100.00, 0.00, 100.00, '2016-06-21 00:00:00', NULL, 0, NULL, 0, 'FATURADA'),
(00021, 'EMPRESA', 00015, 00001, 00018, 00002, 'P', 'VISTA', '2016-05-14 00:00:00', 'NOTEBOOK USADO, BATERIA OK, MARCAS DE USO, SEM CD ROM', 'CLIENTE SOLICITA QUE SEJA FEITA UMA FORMATACAO NO EQUIPAMENTO, POIS ESTA MUITO LENTO, NAO PRECISA FAZER BACKUP, CLIENTE SOLICITA TAMBEM QUE SEJA FEITA INSTALACAO DE APLICATIVOS BASICOS, COMO OFICE, REPRODUTOR DE VIDEOS.', '2016-05-16', 'NOTEBOOK MUITO LENTO E CHEIO DE VIRUS', 'REINSTALAR WINDOWS E OS APLICATIVOS BASICOS.', 75.00, 0.00, 75.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00022, 'EMPRESA', 00016, 00001, 00019, 00002, 'P', 'VISTA', '2016-05-15 00:00:00', 'NOTEBOOK USADO, TECLAS FALHANDO, NAO CARREGA, TECLAS SOLTAS', 'CLIENTE INFORMA QUE NOTEBOOK ESTA LENTO E NAO CONSEGUE IMPRIMIR\r\nCLIENTE QUE SEJA FEITO UM BACKUP DE SEUS DADOS E SEJA REINSTALADO O WINDOWS\r\nCLIENTE SOLICITA QUE SEJA INSTALADO COREL DRAW 7', '2016-05-18', 'EQUIPAMENTO COM TECLAS DANIFICADAS COMO SE TIVESSEM SENDO PRESSIONADAS, SISTEMA OPERACIONAL MUITO LENTO E CHEIO DE VIRUS, ALGUMAS PORTAS USB NAO RECONHECEM HD, MOUSE E TECLADO USB EXTERNO', 'REALIZAR UM BACKUP E UMA FORMATACAO COMPLETA DO WINDOWS, INSTALAR DRIVERS E APLICATIVOS CONFORME SOLICITADO.', 100.00, 0.00, 100.00, '2016-07-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00023, 'CLIENTE', 00002, 00001, 00007, 00002, 'P', 'TITULO', '2016-06-15 00:00:00', 'DESKTOP USADO, ABERTO, SEM PARAFUSOS', 'CLIENTE INFORMA QUE O EQUIPAMENTO DESLIGA SOZINHO APOS INFORMAR QUE HOUVE UM ERRO E DEMORA MUITO PRA LIGAR NOVAMENTE, AS VEZES NEM LIGA MAIS.', '2016-06-16', 'EQUIPAMENTO TEVE UM CURTO CIRCUITO NA MEMORIA FISICA, COM ISSO OCASIONOU UM PROBLEMA INICIALIZACAO DO WINDOWS', 'FEITA LIMPEZA  DA MEMORIA E COLOCADA NOVAMENTE, E FEITO UM REPARO NA INICIALIZACAO DO WINDOWS.', 75.00, 25.00, 50.00, '2016-06-21 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00024, 'CLIENTE', 00001, 00001, 00020, 00002, 'P', 'TITULO', '2016-06-16 00:00:00', 'DESKTOP USADO, SEM MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALAÃ‡ÃƒO DE DOIS SOFTWARES PARA LAUDO DE EXAMES', '2016-06-16', 'CLIENTE SOLICITA INSTALACAO E CONFIGURACAO DE 2 SOFTWARES PARA EXAMES E LAUDOS.', 'CLIENTE SOLICITA INSTALACAO E CONFIGURACAO DE 2 SOFTWARES PARA EXAMES E LAUDOS.', 100.00, 0.00, 100.00, '2016-06-21 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00025, 'EMPRESA', 00017, 00001, 00021, 00002, 'P', 'TITULO', '2016-06-17 00:00:00', 'NOTEBOOK USADO, SEM MARCAS DE USO, NAO FUNCIONA ENTER E BACKSPACE', 'CLIENTE SOLICITA UM BACKUP E A FORMATACAO COMPLETA DO WINDOWS.', '2016-06-18', 'CLIENTE SOLICITA UM BACKUP E A FORMATACAO COMPLETA DO WINDOWS.', 'CLIENTE SOLICITA UM BACKUP E A FORMATACAO COMPLETA DO WINDOWS.', 100.00, 50.00, 50.00, '2016-06-21 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00026, 'CLIENTE', 00018, 00001, 00022, 00002, 'P', 'TITULO', '2016-07-04 00:00:00', 'DESKTOP USADO, SEM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO LIGA, MAS NAO INICIA WINDOWS, APARECE UMA TELA ESCURA E NAO PASSA.', '2016-07-01', 'PLACA MAE NAO PERMITE INICIALIZACAO DO SO, TRAVA NO MOMENTO DO POST E A MESMA TEM UM PROCESSADOR QUE Ã‰ MUITO LENTO.', 'TROCAR DE PLACA MAE PARA UMA MAIS ATUAL E REINSTALAR SO, DRIVERS DA NOVA PLACA E PROGRAMAS DESEJADOS. NAO NECESSARIO BACKUP.\r\n\r\nCLIENTE NAO ACHOU NECESSÃRIO REINSTALACAO DE SO TROCANDO A PLACA MAE A MESMA RECONHECEU O SO, SENDO NECESSÃRIO APENAS REINSTALACAO DE DRIVER VIDEO, AUDIO E REDE.', 150.00, 0.00, 150.00, '2016-07-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00027, 'CLIENTE', 00005, 00001, 00006, 00002, 'P', 'CONTRATO', '2016-07-13 00:00:00', 'DESKTOP USADO, SEM MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA REALIZADO UM BACKUP DAS INFORMACOES DO EQUIPAMENTO E SEJA FEITA UMA FORMATACAO COMPLETA NO MESMO, POIS O EQUIPAMENTO ESTA MUITO LENTO.', '2016-07-13', 'DESKTOP ESTA LENTO E CHEIO DE APLICATIVOS INDESEJAVEIS', 'REALIZAR UM BACKUP E FAZER UMA FORMATACAO COMPLETA NO MESMO, INSTALAR HPLASERJET PRO MPF M1270M128, OFFICE 2007, SKYPE WARSAW. COMPARTILHAR PASTA ARQUIVOS E CAIXA NA UNIDADE C COM TODOS, ', 0.00, 0.00, 0.00, '2016-08-22 00:00:00', NULL, 0, 'ORDEM DE SERVICO TEVE QUE SER CANCELADA, POIS A REALIZACAO DO SERVICO FOI TRANSFERIDA PARA DATA AINDA NAO DEFINIDA. AGUARDANDO CLIENTE.', 0, 'CANCELADA'),
(00028, 'EMPRESA', 00019, 00001, 00023, 00002, 'P', 'CONTRATO', '2016-07-14 00:00:00', 'NOTEBOOK USADO, MARCAS DE USO, FONTE, BATERIA OK, RECOVERY ATIVO', 'CLIENTE INFORMA QUE O EQUIPAMENTO ESTA MUITO LENTO, NAO CONSEGUE UTILIZAR O ACENTO DO TECLADO E ESTA CHEIO DE APLICATIVOS INDESEJAVEIS. SOLICITA QUE SEJA FEITO UM BACKUP DAS INFORMACOES E UMA FORMATACAO COMPLETA E ATUALIZACAO PARA WINDOWS 10', '2016-07-15', 'EQUIPAMENTO ESTA COM VARIOS APLICATIVOS DESNECESSARIOS, ANTIVIRUS BAIDU, TECLADO DESCONFIGURADO E WINDOWS 8 COM LENTIDAO', 'REALIZAR UM BACKUP DOS DADOS, UTILIZAR A OPCAO RECOVERY DO MESMO PARA VOLTAR AS OPCOES DE FABRICA   E ATUALIZAR PARA O WINDOWS 10 PORTUGUES. INSTALAR TAMBEM O DRIVER DA IMPRESSORA HP DESKJET F380 PARA SISTEMA.', 150.00, 0.00, 150.00, '2016-08-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00029, 'CLIENTE', 00020, 00001, 00024, 00002, 'P', 'CONTRATO', '2016-07-20 00:00:00', 'NOTEBOOK USADO, COM MARCAS DE USO, FONTE, BATERIA OK', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALAÃ‡ÃƒO DO COREL DRAW 5.', '2016-07-20', 'SOLICITACAO DE INSTALACAO DE APLICATIVO, EQUIPAMENTO DO CLIENTE ESTA SEM ESPACO NA UNIDADE C, SEM DRIVER DE REDE, VIDEO, WIRELESS.', 'SOLICITACAO DE INSTALACAO DE APLICATIVO, SERA NECESSARIO AJUSTAR O ESPACO DO HD PARA AUMENTAR A CAPACIDADE DA PARTICAO C, INSTALAR TODOS OS DRIVERS FALTANTES. INSTALACAO DOS DRIVERS NAO FOI POSSIVEL, POR PROBLEMAS NO WINDOWS, SERÃ¡ NECESSÃ¡RIO UMA FORMATACAO COMPLETA POIS O MESMO NAO ACEITA DRIVER NENHUMA.', 100.00, 0.00, 100.00, '2016-08-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00030, 'CLIENTE', 00020, 00001, 00024, 00002, 'P', 'VISTA', '2016-07-22 00:00:00', 'NOTEBOOK USADO, BATERIA OK, ENTRADA FONTE MAL CONTATO, MARCAS DE USO', 'CLIENTE INFORMA QUE NAO CONSEGUE NAVEGAR NA INTERNET NEM PELO CABO NEM PELA REDE SEM FIO E ESTA MUITO LENTO, DESEJA QUE SEJA FEITA UMA FORMATACAO COMPLETA E INSTALADO O COREL DRAW X5, ', '2016-07-25', 'EQUIPAMENTO NAO ACEITA INSTALACAO NEM ATUALIZACAO DOS DRIVERS DE REDE, CABO, VIDEO NEM IMPRESSORA SEMPRE DANDO ERRO NA INSTALACAO INFORMA QUE NAO RECONHECE A PRESENCA DOS MESMOS.', 'SERÃ¡ NECESSÃ¡RIO REALIZAR UMA FORMATACAO COMPLETA, PRA DAÃ­ SIM TENTAR INSTALAR OS DRIVERS, CASO CONTRARIO O PROBLEMA Ã© FISICO NA PLACA MAE', 200.00, 150.00, 50.00, '2016-08-26 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00031, 'EMPRESA', 00010, 00001, 00025, 00002, 'P', 'CONTRATO', '2016-08-01 00:00:00', 'NOTEBOOK USADO, COM MARCAS DE USO, S/ FONTE, BATERIA OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, SOLICITA REALIZACAO DE UM BACKUP DOS DADOS E UMA FORMATACAO COMPLETA.', '2016-08-03', 'SISTEMA OPERACIONAL ESTA MUITO LENTO, POSSIVELMENTE PROBLEMA NO HD OU NO SISTEMA OPERACIONAL.', 'REALIZAR UM BACKUP UTILIZANDO O CD HIRENS BOOT, FEITO TESTES NO HD E O MESMO SE COMPORTOU CORRETAMENTE O QUE NOS LEVA A ACEITAR QUE O PROBLEMA ESTA NO SISTEMA OPERACIONAL. REALIZAR UMA FORMATACAO COMPLETA ANTES DE DECIDIR TROCAR O HD DO EQUIPAMENTO', 150.00, 0.00, 150.00, '2016-08-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00032, 'EMPRESA', 00021, 00001, 00026, 00002, 'P', 'CONTRATO', '2016-08-04 00:00:00', 'NOTEBOOK USADO, COM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO INICIA SISTEMA OPERACIONAL', '2016-08-04', 'EQUIPAMENTO ESTA COM DEFEITO NA PLACA MAE, SENDO NECESSARIO LEVAR EM UMA ASSISTENCIA ESPECIALIZADA', 'EQUIPAMENTO ESTA COM DEFEITO NA PLACA MAE, SENDO NECESSARIO LEVAR EM UMA ASSISTENCIA ESPECIALIZADA', 0.00, 0.00, 0.00, '2016-08-26 00:00:00', NULL, 0, 'NAO CONSEGUIMOS RESOLVER O PROBLEMA DO EQUIPAMENTO, FOI INFORMADO AO CLIENTE BUSCAR UMA ASSISTENCIA ESPECIALIZADA EM PLACAS MAE DE NOTEBOOK.', 0, 'CANCELADA'),
(00033, 'CLIENTE', 00001, 00001, 00020, 00002, 'P', 'VISTA', '2016-08-22 00:00:00', 'EQUIPAMENTO PADRAO, USADO, MARCAS DE USO', 'CLIENTE SOLICITA QUE O SEJA ATUALIZADO SISTEMA OPERACIONAL DO EQUIPAMENTO DO WINDOWS XP PARA WINDOWS 7 OU WINDOWS 8, POIS UTILIZA UM SOFTWARE DE LAUDO MEDICO QUE SOMENTE TERA SUPORTE CASO SISTEMA OPERACIONAL ESTEJA ATUALIZADO.', '2016-08-26', 'CLIENTE INFORMA QUE EXISTEM SOFTWARES DE LAUDOS QUE NAO SAO MAIS SUPORTADOS PELO WINDOWS ATUALMENTE INSTALADOS NO EQUIPAMENTO, WINDOWS XP PROFESSIONAL.', 'REALIZAR UM BACKUP DOS DADOS DE APLICATIVOS, TODOS ELES LAUDOS IMPORTANTES, FORMATAR E INSTALAR WINDOWS 7 NO EQUIPAMENTO, E INSTALAR NOVAMENTE OS SOFTWARES NO MESMO.', 250.00, 100.00, 150.00, '2016-12-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00034, 'CLIENTE', 00022, 00001, 00027, 00002, 'P', 'CONTRATO', '2016-08-24 00:00:00', 'NOTEBOOK USADO, ETIQUETA SOLTA, BATERIA OK, DVD OK, ', 'CLIENTE INFORMA QUE EQUIPAMENTO DESLIGA DE REPENTE, SOLICITA QUE SEJA FEITO UM BACKUP DAS INFORMACOES E REALIZADA UMA FORMATACAO NO MESMO.', '2016-08-25', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA LENTO E TRAVANDO E CERTAS VEZES O MESMO DESLIGA, POREM FIZ O TESTE, ABRI TODOS OS APLICATIVO POSSIVEIS, O MESMO TRAVOU QUE Ã© UM POUCO NORMAL, POREM NAO DESLIGOU MUITO MENOS APRESENTOU AQUECIMENTO. INFORMADO AO CLIENTE SOBRE O DIAGNOSTICO..', 'REALIZAR SOMENTE UMA VERIFICACAO DO SISTEMA, APLICATIVOS DESNECESSARIOS, LIMPEZA DE DIRETORIO DE USUARIO.', 50.00, 0.00, 50.00, '2016-10-11 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00035, 'ACESSO REMOTO', 00023, 00001, 00028, 00002, 'P', 'CONTRATO', '2016-09-06 00:00:00', 'EQUIPAMENTO USADO, BATERIA OK', 'CLIENTE INFORMA QUE NAO CONSEGUE NAVEGAR NA INTERNET, APOS LIGAR O ROTEADOR CONFIGURADO.', '2016-09-06', 'O CLIENTE POSSUI UM ROTEADOR QUE NAO ESTAVA CONFIGURADO CORRETAMENTE, EXISTE UM MODEM DA NET E UM ROTEADOR NA PONTA, O IP DO MODEM E DO ROTEADOR ESTAVA O 192.168.0.1.', 'FOI TROCADO O IP DO ROTEADOR PARA 192.168.0.200, E O MESMO VOLTOU A FUNCIONAR', 150.00, 0.00, 150.00, '2016-09-06 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00036, 'EMPRESA', 00010, 00001, 00029, 00002, 'P', 'CONTRATO', '2016-09-08 00:00:00', ' USADO, S/ BOTAO NUM5, BATERIA N OK, TECLADO SUJO', 'CLIENTE SOLICITA QUE SEJA FEITO UM BACKUP DOS DADOS E REALIZADO UMA FORMATACAO COMPLETA COM INSTALACAO DOS APLICATIVOS NO CADASTRO', '2016-09-10', 'EQUIPAMENTO APRESENTA LENTIDAO E ESTA CHEIO DE APLICATIVOS DESNECESSARIOS.', 'REALIZAR BACKUP DOS DADOS, FORMATACAO COMPLETA E INSTALACAO DOS SEGUINTES APLICATIVOS COREL X7, X8 EPSON L200, L1200, OFFICE 2010, KIES. CLIENTE SOLICITOU QUE FOSSE ATUALIZADO PRO WINDOWS 10, POREM APOS TESTES FOI CONSTATADO QUE O SISTEMA FICARIA MUITO MAIS LENTO QUE COM O WINDOWS 7, SENDO ASSIM ACONSELHO A REALIZAR O UPGRADE DE QTD DE MEMORIA PRA NO MINIMO 4GB E APARTIR DAI MIGRAR PRO WINDOWS 10', 300.00, 0.00, 300.00, '2016-09-12 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00037, 'EMPRESA', 00024, 00001, 00030, 00002, 'P', 'CONTRATO', '2016-09-14 00:00:00', 'EQUIP USADO, MOUSE C/ DEFEITO,MARCAS, BATERIA OK', 'CLIENTE SOLICITA QUE SEJA REALIZADA MIGRAÃ§Ã£O DE SISTEMA OPERACIONAL DO WINDOWS 7 PARA O WINDOWS 10.', '2016-09-15', 'MIGRACAO DE SISTEMA OPERACIONAL WINDOWS 10', 'MIGRACAO DE SISTEMA OPERACIONAL WINDOWS 10', 150.00, 0.00, 150.00, '2016-09-14 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00038, 'CLIENTE', 00001, 00001, 00031, 00002, 'P', 'TITULO', '2016-09-16 00:00:00', 'NOTE USADO, BATERIA OK, TECLADO E MOUSE USB', 'CLIENTE SOLICITA QUE SEJA ATUALIZADA O EQUIPAMENTO PARA O WINDOWS 10.', '2016-09-20', 'MIGRACAO DE EQUIPAMENTO PARA WINDOWS 10', 'MIGRACAO DE EQUIPAMENTO PARA WINDOWS 10', 150.00, 50.00, 100.00, '2016-09-17 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00039, 'CLIENTE', 00007, 00001, 00032, 00002, 'P', 'CONTRATO', '2016-09-23 00:00:00', 'NOTEBOOK USADO, BATERIA N OK, MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALACAO DA IMPRESSORA HP 3636 E CONFIGURADA NA REDE SEM FIO', '2016-09-24', 'INSTALACAO DE IMPRESSORA 3636 E CONFIGURACAO EM REDE', 'INSTALACAO DE IMPRESSORA 3636 E CONFIGURACAO EM REDE', 50.00, 0.00, 50.00, '2016-09-23 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00040, 'CLIENTE', 00025, 00001, 00033, 00002, 'P', 'CONTRATO', '2016-10-01 00:00:00', 'NOTEBOOK USADO, BATERIA OK, MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, QUANDO ABRE O NAVEGADOR CRHOME ABREM VARIAS PROPAGANDAS, E O MESMO TRAVA.', '2016-10-02', 'EQUIPAMENTO CHEIO DE APLICATIVOS INDESEJAVEIS', 'REALIZADA REMOCAO DE ALGUNS APLICATIVOS DESNECESSARIOS, CASH REMINDER KQSEE,WINZIPE,WNET,XPCODEC,DRIVEREASY, INSTALADO ANTIVIRUS AVAST.', 100.00, 0.00, 100.00, '2016-10-01 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00041, 'EMPRESA', 00026, 00001, 00034, 00006, 'P', 'CONTRATO', '2016-10-10 00:00:00', 'NOTE USADO, BATERIA OK, MARCAS DE USO', 'CLIENTE INFORMA QUE O MENU INICIAR DO WINDOWS NAO ESTA APARECENDO.', '2016-10-11', 'MENU INICIAR DO WINDOWS NAO ESTA APARECENDO QUANDO SELECIONAMOS O MESMO', 'MICROSOFT DESENVOLVEU UMA APLICACAO PARA SOLUCAO DO PROBLEMA, SEGUE LINK DO DPWNLOAD HTTP://WWW.TECHTUDO.COM.BR/DICAS-E-TUTORIAIS/NOTICIA/2016/06/MENU-INICIAR-NAO-ABRE-NO-WINDOWS-10-VEJA-COMO-RESOLVER.HTML EXECUTAMOS O PROGRAMA E RESOLVEU O PROBLEMA.', 50.00, 0.00, 50.00, '2016-10-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00042, 'CLIENTE', 00027, 00001, 00035, 00002, 'P', 'CONTRATO', '2016-10-19 00:00:00', 'NOTE USADO, BATERIA N OK, ZUMBIDO DE COOLER, LEITOR OK', 'CLIENTE INFORMA QUE APOS UMA FORMATACAO O NOTEBOOK NAO SAI O SOM DAS MUSICAS.', '2016-10-20', 'EQUIPAMENTO ESTA COM DEFEITO NO SOM', 'O DEFEITO NO EQUIPAMENTO Ã© NA PROPRIA PLACA MAE, TENDO QUE SER VERIFICADO POR UM ESPECIALISTA', 0.00, 0.00, 0.00, '2016-12-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00043, 'CLIENTE', 00028, 00001, 00036, 00002, 'P', 'CONTRATO', '2016-10-26 00:00:00', 'BATERIA N OK, FALT PARAFUSO, ARRAHAO, S/ CARREGADOR', 'CLIENTE INFORMA QUE O EQUIPAMENTO NAO LIGA MAIS, JA DEIXOU O MESMO CARREGANDO UM BOM TEMPO E MESMO ASSIM, O EQUIPAMENTO NAO LIGA.', '2016-10-27', 'VERIFICADO QUE O EQUIPAMENTO POSSUI UM DEFEITO NA PLACA MAE DO MESMO FAZENDO COM O QUE O MESMO NAO LIGUE.', 'NECESSARIO LEVAR A UM ESPECIALISTA EM PLACAS PARA UM DIAGNOSTICO MAIS PRECISO. SERÃ¡ RELIZADO UM BACKUP CONFORME SOLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2016-11-28 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00044, 'CLIENTE', 00029, 00001, 00037, 00002, 'P', 'VISTA', '2016-12-10 00:00:00', 'EQUIPAMENTO NOVO, SEM APLICATIVOS, ', 'CLIENTE SOLICITA QUE SEJA INSTALADO UMA IMPRESSORA NO EQUIPAMENTO E QUE SEJA VERIFICADA CONEXAO COM INTERNET.', '2016-12-10', 'EQUIPAMENTO NAO POSSUI CONEXAO COM INTERNET E ESTA SEM APLICATIVOS E IMPRESSORA.', 'A REDE LOCAL NAO ATRIBUI IP AUTOMATICAMENTE DE REDE SENDO NECESSARIO CONFIGURACAO MANUAL DO IP 10.195.107.20 MASK 255.255.255.255 GAT 10.195.107.17 DNS 10.195.107.17 INSTALADO UMA VERSAO DO OFFICE 365 GRATUITA COM VALIDADE DE 60 DIAS, INSTALACAO DA IMPRESSORA ', 100.00, 50.00, 50.00, '2016-12-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00045, 'EMPRESA', 00004, 00001, 00033, 00002, 'P', 'VISTA', '2016-12-15 00:00:00', 'NOTE USADO, BATERIA OK,', 'CLIENTE INFORMA QUE O EQUIPAMENTO ESTA APRESENTANDO LENTIDAO E ESTA COM VARIOS APLICATIVOS DESNECESSÃ¡RIOS, O MESMO SOLICITA QUE SEJA REALIZADO UM BACKUP NAS INFORMACOES E UMA FORMATACAO COMPLETA.', '2016-12-17', 'VARIOS APLICATIVOS DESNECESSARIOS E COM MUITA LENTIDAO.', 'REALIZAR UMA BACKUP E UMA FORMATACAO COMPLETA, CONFORME SOLICITACAO DO CLIENTE.', 275.00, 175.00, 100.00, '2016-12-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00046, 'EMPRESA', 00019, 00001, 00038, 00002, 'P', 'VISTA', '2016-12-16 00:00:00', 'NOTEBOOK USADO, SEM MARCAS DE USO, BATERIA OK C/FONTE', 'CLIENTE INFORMA QUE O WINDOWS NAO INICIA, LIGA E FICA APENAS EM UMA TELA DA ACER.', '2016-12-16', 'NAO FOI DIAGNOSTICADO NENHUM PROBLEMA NO EQUIPAMENTO, MAS FOI VERIFICADO QUE O EQUIPAMENTO ESTA UM POUCO LENTO E POSSUI VARIOS APLICATIVOS INSTALADOS DESNECESSARIOS E COM UM SISTEMA OPERACIONAL ANTIGO, FOI INFORMADO AO CLIENTE QUE SERIA IMPORTANTE ESTAR COM UM SISTEMA OPERACIONAL ATUALIZADO. AGUARDANDO AUTORIZACAO.', 'NAO FOI DIAGNOSTICADO NENHUM PROBLEMA NO EQUIPAMENTO, MAS FOI VERIFICADO QUE O EQUIPAMENTO ESTA UM POUCO LENTO E POSSUI VARIOS APLICATIVOS INSTALADOS DESNECESSARIOS E COM UM SISTEMA OPERACIONAL ANTIGO, FOI INFORMADO AO CLIENTE QUE SERIA IMPORTANTE ESTAR COM UM SISTEMA OPERACIONAL ATUALIZADO. AGUARDANDO AUTORIZACAO.', 250.00, 200.00, 50.00, '2016-12-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00047, 'EMPRESA', 00026, 00001, 00034, 00002, 'P', 'CONTRATO', '2017-01-16 00:00:00', 'NOTEBOOK USADO, BATERIA OK, MARCAS DE USO', 'CLIENTE INFORMA QUE AO LIGAR O EQUIPAMENTO APARECE A SEGUINTE MENSAGEM \"WARNING||| YOUR DIMM1 AND DIMM2 MODULEORGANIZATION IS NOT THE SAME, PLEASE CHECK IT\" E NAO SAI DESSA TELA. ', '2016-01-16', 'EQUIPAMENTO ESTAVA INFORMANDO PROBLEMAS COM MEMORIA RAM DO MESMO.', 'FEITA UMA LIMPEZA DA MEMORIA, DO SLOT, REALIZADO TESTES COM OUTROS PENTES DE MEMORIA E O EQUIPAMENTO VOLTOU A FUNCIONAR.', 50.00, 0.00, 50.00, '2017-02-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00048, 'EMPRESA', 00030, 00001, 00039, 00002, 'P', 'VISTA', '2017-01-17 00:00:00', 'EQUIPAMENTO USADO, BATERIA OK, MARCAS DE USO, CARREGADOR, BORRACHA ESQ SUP AMASSADA', 'CLIENTE INFORMA QUE APOS UMA REINSTALACAO DO WINDOWS MAL REALIZADA, O MESMO APRESENTA LENTIDAO, ALGUNS VIDEOS E MUSICAS NAO SAO REPRODUZIDAS NORMALMENTE, PEDE QUE SEJA FEITA UMA FORMATACAO COMPLETA.', '2016-01-19', 'NO MOMENTO DO BACKUP, O EQUIPAMENTO FICAVA APRESENTANDO TELA AZUL NA COPIA DA PASTA VIDEOS.', 'DEVIDO A UM PROBLEMA, TIVEMOS QUE PROVIDENCIAR OUTRO HD PARA O EQUIPAMENTO. POR ISSO A DEMORA NA FORMATACAO, RETIRADO O HD DE UM OUTRO EQUIPAMENTO NA LOJA.', 250.00, 200.00, 50.00, '2017-02-06 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00049, 'EMPRESA', 00012, 00001, 00014, 00002, 'P', 'VISTA', '2017-01-23 00:00:00', 'NOTEBOOK USADO, BATERIA N OK, MARCAS DE USO, C/ FONTE', 'CLIENTE INFORMA QUE O EQUIPAMENTO ESTA MUITO LENTO CHEGA A LIGAR O MESMO AS 7HS PRA PODER USAR AS 9, E QUE NÃ£O CONSEGUE UTILIZAR O EMAIL NEM OUTROS PROGRAMAS NECESSÃ¡RIO.', '2016-01-26', 'EQUIPAMENTO ESTA MUITO LENTO, PROVAVELMENTE CHEIO DE VÃ­RUS E COM WINDOWS VISTA AINDA.', 'REALIZAR BACKUP DEPOIS UMA FORMATAÃ§Ã£O COMPLETA DO WINDOWS E INSTALAÃ§Ã£O DOS APLICATIVOS E RECUPERAÃ§Ã£O DO ARQUIVO DE EMAIL, POIS O MESMO ESTA CORROMPIDO', 250.00, 150.00, 100.00, '2017-01-24 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00050, 'EMPRESA', 00011, 00001, 00040, 00002, 'P', 'VISTA', '2017-02-01 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA N OK, MONITOR FROUXO', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALACAO DO WINDOWS E ALGUNS APLICATIVOS. SEM BACKUP', '2016-02-01', 'EQUIPAMENTO ESTA MUITO LENTO, TRAVANDO TUDO COM APLICATIVOS DESNECESSARIOS.', 'REALIZADA UMA FORMATACAO COMPLETA SEM BACKUP, REMOCA DA SENHA DO SETUP E INSTALACAO DE ALGUNS APLICATIVOS.', 200.00, 150.00, 50.00, '2017-02-06 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00051, 'ACESSO REMOTO', 00005, 00001, 00004, 00002, 'P', 'VISTA', '2017-02-07 00:00:00', 'NOTEBOOK USADO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR O OFFICE, POIS INFORMA QUE O MESMO NAO ESTA ATIVADO.', '2017-02-07', 'SISTEMA INFORMA OFFICE NAO ESTA ATIVADO', 'TENTAR ATIVAR O OFFICE NOVAMENTE', 50.00, 0.00, 50.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00052, 'ACESSO REMOTO', 00005, 00001, 00006, 00002, 'P', 'VISTA', '2017-02-07 00:00:00', 'DESKTOP USADO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR O OFFICE, POIS INFORMA QUE O MESMO NAO ESTA ATIVADO.', '2017-02-07', 'SISTEMA INFORMA OFFICE NAO ESTA ATIVADO', 'TENTAR ATIVAR O OFFICE NOVAMENTE', 50.00, 0.00, 50.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00053, 'EMPRESA', 00031, 00001, 00041, 00002, 'P', 'CONTRATO', '2017-02-09 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA  OK, ', 'CLIENTE INFORMA QUE AO LIGAR EQUIPAMENTO, O MESMO APARECE O MODELO DO NOTEBOOK E NAO PASSA DESSA TELA SOMENTE FICA PISCANDO, FOI INFORMADO QUE O EQUIPAMENTO SOFREU UMA FORMATACAO RECENTE', '2017-02-09', 'EQUIPAMENTO NAO INICIA O SISTEMA OPERACIONAL', 'APOS UMA FORMATACAO FOI EXCLUIDO O WINDOWS 8 DO EQUIPAMENTO, POREM, NAO Ã© MAIS POSSIVEL INSTALACAO DE OUTRO SISTEMA DEVIDO A INCOMPATIBILIDADE DO MESMO.', 0.00, 0.00, 0.00, '2017-02-13 00:00:00', NULL, 0, 'NAO FOI POSSIVEL A RESOLUCAO DO PROBLEMA NEM TROCA DE PEÃ§AS.', 0, 'CANCELADA'),
(00054, 'ACESSO REMOTO', 00029, 00001, 00037, 00002, 'P', 'CONTRATO', '2017-02-20 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO', 'CLIENTE INFORMA QUE O EQUIPAMENTO VIVE DESCONECTANDO DE REDE', '2017-02-18', 'EQUIPAMENTO ESTA COM DEFEITO NA PLACA DE REDE DEVIDO A ALGUM PROBLEMA ELETRICO, QUEIMOU JUNTAMENTE COM O ROTEADOR DA LOJA', 'TROCAR O ROTEADOR DA LOJA E RECONFIGURAR E ADQUIRIR UM USB WIRELESS E INSTALAR NO MESMO.', 50.00, 0.00, 50.00, '2017-02-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00055, 'EMPRESA', 00010, 00001, 00042, 00002, 'P', 'CONTRATO', '2017-02-21 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, S MOUSE, TECLADO E CABOS', 'CLIENTE INFORMA QUE EQUIPAMENTO INICIA MAS NAO APARECE AS OPCOES COMO MENU INICIAR, PROGRAMAS, FICA SOMENTE UMA TELA PRETA, TENDO QUE INICIAR O EXPLORER PELO COMANDO CONTROL + ALT + DEL E INICIAR UM NOVO EXPLORER. CASO TENHA QUE FORMATAR NAO PRECISA REALIZAR BACKUP E INSTALAR OS APLICATIVOS PADRAO.', '2017-02-22', 'O SISTEMA OPERACIONAL, DEVIDO A ALGUM APLICATIVO OU VIRUS ESTA CORROMPIDO', 'TENTAR REPARAR O SISTEMA OPERACIONAL, CASO NAO SEJA RESOLVIDO A SOLUCAO SERÃ¡ UMA FORMATACAO COMPLETA.', 200.00, 0.00, 200.00, '2017-03-31 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00056, 'CLIENTE', 00032, 00001, 00043, 00002, 'P', 'VISTA', '2017-03-03 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'CLIENTE SOLICITA QUE SEJA INSTALADO UMA IMPRESSORA WIRELESS NO EQUIPAMENTO, QUE JA ESTA CONFIGURADA NA REDE LOCAL.', '2017-03-03', 'CLIENTE SOLICITA INSTALACAO DE UMA IMPRESSORA WIRELESS JA CONFIGURADA NO AMBIENTE', 'CLIENTE SOLICITA INSTALACAO DE UMA IMPRESSORA WIRELESS JA CONFIGURADA NO AMBIENTE', 50.00, 0.00, 50.00, '2017-03-03 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00057, 'EMPRESA', 00006, 00001, 00044, 00002, 'P', 'VISTA', '2017-03-13 00:00:00', 'NOTEBOOK USADO, BATERIA OK, C/ CARREGADOR, ALERT DE BATERIA', 'CLIENTE SOLICITA QUE SEJA REALIZADO UMA FORMATACAO COMPLETA NO EQUIPAMENTO.', '2017-04-15', 'CLIENTE SOLICITA QUE SEJA REALIZADO UMA FORMATACAO COMPLETA POIS QUANDO LIGA O EQUIPAMENTO A UM DATASHOW O MESMO FICA MUITO CLARO. E SOLICITA INSTALACAO DO OFFICE POIS O ATUAL DELA ENCONTRA-SE DESATIVADO', 'O EQUIPAMENTO APENAS ESTA COM PROBLEMAS NO DRIVER DE VIDEO, NAO SENDO NECESSARIO UMA FORMATACAO DO MESMO E REALIZAR INSTALACAO DO OFFICE 2016 CONFORME SOLICITACAO.', 100.00, 50.00, 50.00, '2017-03-31 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00058, 'EMPRESA', 00006, 00001, 00045, 00002, 'P', 'VISTA', '2017-03-15 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA OK, TELA TOUCHSCREEN OK,', 'CLIENTE SOLICITA QUE SEJA FEITO BACKUP DOS ARQUIVOS DA ANTIGA EMPRESA QUE ELA TRABALHAVA SEJA CRIADO UM NOVO USUARIO NO EQUIPAMENTO E EXCLUIDO O ANTIGO, REALIZAR INSTALACAO DO OFFICE 2016', '2017-03-16', 'CLIENTE SAIU DA ULTIMA EMPRESA QUE TRABALHA E POSSUI VARIOS ARQUIVOS E DOCUMENTOS QUE NAO PRECISA MAIS, OFFICE NAO ESTA ATIVADO E FUNCIONANDO.\r\n', 'FAZER UM BACKUP E EXCLUIR OS DADOS DA EMPRESA INSTALACAO DO OFFICE CONFORME SOLICITACAO DO CLIENTE. DEVIDO A PROBLEMAS NA ATIVACAO DO OFFICE, FOI NECESSARIO REALIZAR UMA RESTAURACAO DO SISTEMA OPERACIONAL APARTIR DAÃ­ TENTAR INSTALAR E ATIVAR O OFFICE 2016', 225.00, 175.00, 50.00, '2017-03-31 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00059, 'EMPRESA', 00033, 00001, 00046, 00002, 'P', 'CONTRATO', '2017-03-20 00:00:00', 'EQUIPAMENTO NOVO, S/ APLICATIVOS, S/ SO, S/ MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALACAO DE UM SISTEMA OPERACIONAL (WINDOWS 7 DE PREFERENCIA) E O OFFICE 2010. O EQUIPAMENTO FOI COMPRADO RECENTE E NAO POSSUI SO.', '2017-03-22', 'EQUIPAMENTO NOVO SEM SISTEMA OPERACIONAL', 'REALIZAR UMA INSTALACAO DO WINDOWS 7 HOME BASIC JUNTAMENTE COM OFFICE 2010 E OUTROS APLICATIVOS BASICOS.', 150.00, 0.00, 150.00, '2017-03-31 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00060, 'EMPRESA', 00034, 00001, 00047, 00002, 'P', 'CONTRATO', '2017-03-28 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA  OK, C/ FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ENCONTRA-SE MUITO LENTO E SOLICITA QUE SEJA FEITA UMA FORMATACAO COMPLETA SEM BACKUP DE DADOS.', '2017-03-30', 'EQUIPAMENTO ESTA CHEIO DE APLICATIVOS DESNECESSARIOS E O MESMO ESTA APRESENTANDO MUITA LENTIDAO', 'REALIZAR UMA FORMATACAO COMPLETA E INSTALACAO DOS APLICATIVOS PADRAO.', 0.00, 0.00, 0.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00061, 'EMPRESA', 00035, 00001, 00048, 00002, 'P', 'CONTRATO', '2017-03-29 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA  OK, C/ FONTE', 'CLIENTE INFORMA QUE APOS REINICIAR O EQUIPAMENTO, O MESMO NAO INICIA MAIS O SISTEMA OPERACIONAL, FICA APENAS UMA TELA PRETA COM UM PONTO PISCANDO BRANCO, E SOLICITA QUE SEJA VERIFICADO E REALIZADO UM BACKUP DOS ARQUIVOS.', '2017-03-31', 'SISTEMA OPERACIONAL DO EQUIPAMENTO ENCONTRA-SE CORROMPIDO', 'REALIZAR UM BACKUP DOS DADOS E TENTAR REPARAR O WINDOWS OU ENTAO REALIZAR LOGO UMA NOVA INSTALACAO DO MESMO', 0.00, 0.00, 0.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00062, 'CLIENTE', 00036, 00001, 00049, 00002, 'P', 'CONTRATO', '2017-04-25 00:00:00', 'NOTEBOOK USADO, BATERIA OK, SEM MARCAS DE USO, C/FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO LIGA, MAS NAO INICIA O WINDOWS FICA SOMENTE UMA TELA PRETA. E OS AP-LICATIVOS NAO ESTAM FUNCIONANDO NORMALMENTE.', '2017-04-26', 'O SISTEMA OPERACIONAL ENCONTRA-SE CORROMPIDO, TENDO QUE SER REALIZADA UMA RESTAURACAO COMPLETA', 'REALIZAR UMA RESTAURACAO DO SISTEMA OPERACIONAL', 0.00, 0.00, 0.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00063, 'EMPRESA', 00037, 00001, 00050, 00002, 'P', 'CONTRATO', '2017-06-09 00:00:00', 'EQUIPAMENTO USADO, BATERIA OK, C/ CARREGADOR, MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO VIVE PEDINDO UMA ATUALIZACAO, E INFORMA QUE O MESMO PRECISA VERIFICAR QUE ESTA UM POUCO LENTO', '2017-06-12', 'EQUIPAMENTO ESTA COM VARIOS APLICATIVOS DESNECESSÃ¡RIOS, FAZENDO COM QUE O MESMO LEVE MUITO TEMPO PRA INICIALIZAR O WINDOWS.', 'DESINSTALAR DIVERSOS APLICATIVOS DESNECESSÃRIOS / FOI RETIRADO MESSENGER / MICROSOFT ANTIVIRUS / MACFFE ANTIVIRUS / JOGOS  / NAVEGADOR CROMIUN', 50.00, 0.00, 50.00, '2017-06-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00064, 'EMPRESA', 00038, 00001, 00051, 00002, 'P', 'CONTRATO', '2017-09-11 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA QUE SEJA REALIZADA INSTALACAO DOS APLICATIVOS BASICOS.', '2017-09-12', NULL, 'REALIZAR INSTALACAO DE APLICATIVOS BASICOS', 0.00, 0.00, 0.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00065, 'EMPRESA', 00002, 00001, 00007, 00002, 'P', 'CONTRATO', '2017-10-04 00:00:00', 'DESTOP USADO, BASTANTE POEIRA, TAMPA FRENTE SOLTA', 'CLIENTE INFORMA QUE O EQUIPAMENTO NAO INICIA O WINDOWS, SEMPRE COM UMA TELA ESCURA.', '2017-10-05', 'O HD DO EQUIPAMENTO ENCONTRA-SE COM PROBLEMAS', 'SERA NECESSARIO A TROCA DO MESMO, TENTAR REALIZAR UM BACKUP DAS INFORMACOES, FORMATACAO E INSTALACAO COMPLETA DO SISTEMA OPERACIONAL.', 0.00, 0.00, 0.00, '2017-10-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00066, 'EMPRESA', 00002, 00001, 00052, 00002, 'P', 'CONTRATO', '2017-10-16 00:00:00', 'EQUIPAMENTO USADO / MARCAS DE USO / BATERIA N OK / CARREGADOR OK', 'CLIENTE INFORMA QUE NAO CONSEGUE REALIZAR INSTALACAO/REPARACAO DO SISTEMA OPERACIONAL ', '2017-10-18', 'HD DO EQUIPAMENTO ENCONTRA-SE COM PROBLEMAS', 'REALIZAR A TROCA DE HD E FORMATACAO COMPLETA / NAO SENDO NECESSARIO REALIZACAO DE BACKUP / ADCIONADO 2GB DE MEMORIA RAM DDR3 ', 0.00, 0.00, 0.00, '2017-10-16 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00067, 'CLIENTE', 00003, 00001, 00001, 00002, 'P', 'CONTRATO', '2017-10-19 00:00:00', 'DSADSADSADAS', 'DSDASDSA', '2017-10-01', NULL, NULL, 0.00, 0.00, 0.00, '2017-10-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00068, 'CLIENTE', 00001, 00001, 00020, 00002, 'P', 'CONTRATO', '2018-02-20 00:00:00', 'EQUIPAMENTO USADO, SEM MARCAS DE USO, ', 'CLIENTE INFORMA QUE AOLIGAR O COMPUTADOR O MESMO NAO INICIAO SISTEMA OPERACIONAL', '2017-02-22', 'SISTEMA OPERACIONAL DO EQUIPAMENTO ESTA CORROMPIDO', 'SERÃ¡ NECESSARIO REALIZAR UM BACKIP DOS DADOS, E UMA FORMATACAO COMPLETA DO EQUIPAMENTO E REINSTALACAO DOS SOFTWARES DE EXAMES.', 0.00, 0.00, 0.00, '2018-02-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00069, 'EMPRESA', 00039, 00001, 00053, 00002, 'P', 'CONTRATO', '2018-03-12 00:00:00', 'USADO, RACHADURA EMBAIXO, FALTANDO PARAFUSO, ', 'CLIENTE SOLICITA QUE SEJA FEITA UMA FORMATACAO NO EQUIPAMENTO, SEM BACKUP, APENAS FORMATACAO E INSTALACAO DOS APLICATIVOS BASICOS.', '2018-03-15', 'EQUIPAMENTO LENTO, CHEIO DE APLICATIVOS INDESEJAVEIS E ARQUIVOS DISPENSAVEIS.', 'REALIZAR UMA FORMATACAO COMPLETA SEM BACKUP E INSTALACAO DOS APLICATIVOS BASICOS.\r\nINSTALADO OFFICE 2007, WINDOWS MEDIA PLAYER, AVG ANTIVIRUS, ADOBE READER.\r\n*PROBLEMAS COM O DRIVER DE REDE LAN, POIS NAO EXISTE MAIS SUPORTE PARA NOTEBOOK CCE, DRIVER ESTAR INSTALADO POREM NAO FUNCIONA.', 0.00, 0.00, 0.00, '2018-03-14 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00070, 'EMPRESA', 00040, 00001, 00054, 00002, 'P', 'VISTA', '2018-03-14 00:00:00', 'EQUIPAMENTO USADO, SEM TAMPA CD ROM, GABINETE QUEBRADO', 'CLIENTE INFORMA QUE EQUIPAMENTO APRESENTOU MENSAGEM \"REBOOT AND SELECT PROPER BOOT DEVICE OR INSERT BOOT MEDIA INSELECTED BOOT DEVICE AND PRESS A KEY\"E NAO INICIA O WINDOWS.', '2017-03-14', 'O HD NAO ESTA SENDO RECONHECIDO NO EQUIPAMENTO.', 'TROCA DE HD E INSTALACAO DO SISTEMA OPERACIONAL E APLICATIVOS BASICOS.', 250.00, 150.00, 100.00, '2018-03-16 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00071, 'ACESSO REMOTO', 00001, 00001, 00031, 00002, 'P', 'CONTRATO', '2018-03-14 00:00:00', 'NOTEBOOK USADO, SEM MARCAS DE USO, BATERIA OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, SOLICITA QUE SEJA FEITA UMA LIMPEZA E VERIFIQUE QUAIS PROGRAMAS PODE SER RETIRADO.', '2017-03-14', 'EQUIPAMENTO ESTA APRESENTANDO LENTIDAO, MAS DEIVIDO A SUA CAPACIDADE DE PROCESSAMENTO E MEMORIA SEREM FRACOS.\r\n HARDWARE INCOMPATIVEL COM AS TAREFAS REALIZADAS', 'REALIZAR DESINSTALACAO DE ALGUNS PROGRAMAS DESNECESSARIOS | OBS.: SERIA BOM  ADCIONAR MEMORIA RAM POIS O MESMO POSSUI APENAS 2GB SENDO QUE O EQUIPAMENTO LIGADO, JA CONSOME ALGO EM TORNO DE 70% DO TOTAL DA CAPACIDADE, PROCESSADOR TAMBEM ESTA TRAVANDO O TEMPO TODO', 0.00, 0.00, 0.00, '2018-03-14 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00072, 'EMPRESA', 00041, 00001, 00055, 00002, 'P', 'CONTRATO', '2018-03-21 00:00:00', 'NOTE NOVO, SEM MARCAS DE USO, BATERIA OK, C CAREGADOR', 'CLIENTE SOLICITA QUE SEJA INSTALADO OFFICE 2016 NO EQUIPAMENTO, POIS O QUE JA TA INSTALADO ESTA COM A LICENCA EXPIRADO.', '2017-03-23', 'OFFICE 2016 COM LICENCA EXPIRADA', 'REMOCAO E UMA NOVA INSTALACAO DO OFFICE 2016 E ATIVACAO. FOI REALIZADO UM UPGRADE DO WINDOWS', 0.00, 0.00, 0.00, '2018-03-22 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00073, 'CLIENTE', 00040, 00001, 00054, 00002, 'P', 'CONTRATO', '2018-03-22 00:00:00', 'EQUIPAMENTO USADO, SEM TAMPA CD ROM, GABINETE QUEBRADO', 'CLIENTE INFORMA QUE AO LIGAR O COMPUTADOR O MESMO APRESENTA A TELA PARA RECUPERACAO DO WINDOWS.', '2017-03-22', 'EQUIPAMENTO SOLICITANDO QUE SEJA FEITO REPARACAO DO SISTEMA OPERACIONAL', 'SOLICITADO A OCLIENTE QUE INICIASSE O WINDOWS NORMALMENTE. SEM REPARAR.', 0.00, 0.00, 0.00, '2020-01-22 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00074, 'EMPRESA', 00042, 00001, 00056, 00002, 'P', 'VISTA', '2018-04-18 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'CLIENTE INFORMA QUE TROCOU O HD DO EQUIPAMENTO APARTIR DAÃ­ O SISTEMA OPERACIONAL NAO INICIOU MAIS, PEDE QUE SEJA FEITO UM BACKUP DAS INFORMACOES CONTIDAS NO HD E SEJA FEITA UMA REINSTALACAO DO WINDOWS 7.', '2018-04-20', 'EQUIPAMENTO NAO INICIA SISTEMA OPERACIONAL / O EQUIPAMENTO ENCONTRA-SE COM UM HD EM FORMATO RAW PORTANDO SEM POSSIBILIDADE DE TER SEUS DADOS RECUPERADOS.', 'REALIZAR BACKUP / INSTALACAO DO WINDOWS 7 HOME  E APLICATIVOS / FOI REALIZADOS TODOS OS PROCESSOS POSSIVEIS PARA RECUPERACAO DOS DADOS POREM SEM EXITO. ', 225.00, 75.00, 150.00, '2018-04-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00075, 'ACESSO REMOTO', 00001, 00001, 00057, 00002, 'P', 'CONTRATO', '2018-05-30 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE ESTA COM DIFICULDADES PARA REGISTRAR DADOS NA PLANILHA UNIMED.', '2017-05-29', 'O TAMANHO DA FONTE E O TIPO NUMERICO DA CELULA ESTAVA DIFERENTE DO RESTANTE DA PLANILHA, EXIBINDO SOMENTE OS CARACTERES ##.', 'INSTRUIDO AO USUARIO COMO AJUSTAR A FONTE E O TIPO NUMERICO DA CELULA ONDE OS NUMEROS APARECEM SOMENTE CARACTERES ##', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00076, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', '2017-06-04', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00077, 'CLIENTE', 00001, 00001, 00057, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', '2017-06-04', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL, NECESSARIO TROCAR MOUSE DO EQUIPAMENTO CLICAMOS UMA VEZ E O MESMO CLICA VARIAS.', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00078, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', '2017-06-04', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00079, 'CLIENTE', 00001, 00001, 00031, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', '2017-06-04', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00080, 'CLIENTE', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', '2017-06-04', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 'REALIZACAO DE BACKUP E VERIFICACAO MENSAL', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00081, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-06-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO,', 'EQUIPAMENTO NAO ESTA EXECUTANDO O APLICATIVO JAVA DA BIOMETRIA DA UNIMED', '2017-06-04', 'O APLICATIVO DA BIOMETRIA DA UNIMED FOI BLOQUEADO PELO PROPRIO JAVA, POR QUESTOES DE SEGURANCA.', 'ADCIONAR O SITE DA APLICACAO UNIMED A LISTA DE SITES SEGUROS DO JAVA.', 0.00, 0.00, 0.00, '2018-06-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00082, 'EMPRESA', 00032, 00001, 00043, 00002, 'P', 'VISTA', '2018-06-07 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, RISCO DE CANETA NA TELA', 'CLIENTE INFORMA QUE O WINDOWS NAO INICIA, FICA SEMPRE REINICIANDO PEDINDO PRA REPARAR O SISTEMA OPERACIONAL. CLIENTE SOLICITA TAMBEM QUE SEJA FEITA INSTALACAO DO TEAMVIEW.', '2017-06-08', 'SISTEMA OPERACIONAL CORROMPIDO', 'REALIZAR UM BACKUP NOS DADOS, TENTAR A REPARACAO DO SISTEMA OPERACIONAL, CASO NAO FUNCIONE SERÃ¡ NECESSARIO UMA FORMATACAO COMPLETA.', 125.00, 0.00, 125.00, '2018-06-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00083, 'EMPRESA', 00043, 00001, 00059, 00002, 'P', 'CONTRATO', '2018-06-13 00:00:00', 'USADO, TECLAS PROBLEMA, BATERIA OK', 'CLIENTE SOLICITA UMA FORMATACAO COMPLETA COM BACKUP, E VERIFICAR POIS QUANDO O NOTEBOOK Ã© LIGADO O MESMO FICA APITANDO POREM DEPOIS DE ALGUNS MINUTOS O WINDOWS INICIA NORMALMENTE.', '2017-06-15', 'EQUIPAMENTO FICA APITANDO POREM INICIA WINDOWS NORMAL DEPOIS DE ALGUNS MINUTOS, CHEIO DE PROGRAMAS DESNECESSARIOS', 'SERÃ¡ NECESSARIO A TROCA DE HD POIS O MESMO ESTA COMPROMETENDO O BOM FUNCIONANDO DO EQUIPAMENTO, FORMATACAO COMPLETA.', 0.00, 0.00, 0.00, '2018-10-09 00:00:00', NULL, 0, NULL, 0, 'PAGO');
INSERT INTO `tbl_ordemservico_os` (`NUM_ID_OS`, `TXT_TIPO_ATENDIMENTO_OS`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_OS`, `TXT_CONDICAO_PAGAMENTO_OS`, `DTH_ABERTURA_OS`, `TXT_DADOSGERAIS_OS`, `TXT_RECLAMACAO_OS`, `DTA_PREVISAO_OS`, `TXT_DEFEITO_OS`, `TXT_RESOLUCAO_OS`, `VAL_TOTAL_OS`, `VAL_DESCONTO_OS`, `VAL_FINAL_OS`, `DTH_ENCERRAMENTO_OS`, `DTA_FIMGARANTIA_OS`, `NUM_NFSE_OS`, `TXT_CANCELAMENTO_OS`, `NUM_KM_OS`, `TXT_STATUS_OS`) VALUES
(00084, 'EMPRESA', 00032, 00001, 00060, 00002, 'P', 'CONTRATO', '2018-06-13 00:00:00', 'NOTEBOOK NOVO, S FONTE, BATERIA OK, S MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA FEITA INSTALACAO DOS APLICATIVOS PADRAO, OFFICE, JAVA, CERTIFICADO BANDEIRA TRANSPORTE, TEAMVIEW, ', '2017-06-14', 'EQUIPAMENTO NOVO SEM PROGRAMAS', 'INSTALACAO DO OFFICE, CERTIFICADO BANDEIRA TRASPORTES, JAVA, TEAMVIEW', 0.00, 0.00, 0.00, '2018-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00085, 'EMPRESA', 00042, 00001, 00061, 00002, 'P', 'VISTA', '2018-06-19 00:00:00', 'NOTEBOOK USADO, BATERIA OK, FONTE C/ FITA', 'CLIENTE INFORMA QUE EQUIPAMENTO ENCONTRA-SE MUITO LENTO. SOLICITANDO UMA VERIFICACAO COMPLETA NO WINDOWS.', '2018-06-20', 'ALGUNS PROGRAMAS DESNECESSARIOS, MUITOS ARQUIVOS NO DISCO LOCAL, E POUCA MEMORIA RAM', 'DESINSTALAR APLICATIVOS, REALIZAR LIMPEZA DE ARQUIVOS DESNECESSARIOS, ADCIONAR MEMORIA RAM. DESINSTALADO O PROGRAMA HP QUICK LAUNCH, GOOGLE TOOLBARS, AVG WEB TUNEL. REALIZADO UMA LIMPEZA DE DISCO ESPACO LIBRE SAIU DE 209GB PARA 219 GB LIVRE. ADCIONADO 2GB DE RAM. PODENDO SER SUBSTITUIDO POR 4GB POSTERIORMENTE.', 100.00, 0.00, 100.00, '2018-06-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00086, 'EMPRESA', 00042, 00001, 00062, 00002, 'P', 'VISTA', '2018-06-19 00:00:00', 'USADO, TELA COM PROBLEMA CRISTAL QUEBRADO, ', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO. SOLICITA UMA VERIFICACAO COMPLETA. SOLICITA TAMBEM UM AUXILIO NO CONSERTO DA TELA QUE ESTA QUEBRADA.', '2018-06-20', 'CHEIO DE PROGRAMAS INDESEJADO INICIADO COM O WINDOWS, VARIOS ARQUIVOS DESNECESSARIOS, TELA DO EQUIPAMENTO COM DEFEITO.', 'DESINSTALAR ALGUNS PROGRAMAS, RETIRAR INICIALIZACAO DE ALGUNS OUTROS PROGRAMAS COM O WINDOWS PARA QUE ASSIM O MESMO INICIALIZE MAIS RAPIDO, EXCLUSAO DE ALGUNS ARQUIVOS DE DISCO. ENVIO DO MESMO PARA ORCAMENTO DE TROCA DE TELA. A PRINCIPIO IREMOS FAZER APENAS UM BACKUP DOS ARQUIVOS, POSTERIORMENTE SERÃ¡ FEITO O RESTO DAS SOLICITACOES. INSTALAR EPSON L375, OFFICE 2016, ', 175.00, 25.00, 150.00, '2018-09-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00087, 'CLIENTE', 00001, 00001, 00057, 00002, 'P', 'CONTRATO', '2018-07-19 00:00:00', 'NOTEBOOK USADO, BATERIA OK', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO IMPRIMIR, SAINDO APENAS UMA PAGINA EM BRANCO', '2017-07-21', 'IMPRESSORA ESTA APRESENTANDO O PROBLEMA, SENDO NECESSARIO LEVAR A UMA ASSISTENCIA.', 'SERA REALIZADA A INSTALACAO DE UMA NOVA IMPRESSORA NO LUGAR DA ANTIGA.', 0.00, 0.00, 0.00, '2018-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00088, 'CLIENTE', 00001, 00001, 00058, 00002, 'P', 'CONTRATO', '2018-07-19 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO IMPRIMIR, SAINDO APENAS UMA PAGINA EM BRANCO', '2017-07-19', 'IMPRESSORA ESTA APRESENTANDO O PROBLEMA, SENDO NECESSARIO LEVAR A UMA ASSISTENCIA.', 'SERA REALIZADA A INSTALACAO DE UMA NOVA IMPRESSORA NO LUGAR DA ANTIGA E COMPARTILHADA COM OS OUTROS EQUIPAMENTOS.', 0.00, 0.00, 0.00, '2018-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00089, 'CLIENTE', 00001, 00001, 00008, 00002, 'P', 'CONTRATO', '2018-07-19 00:00:00', 'NOTEBOOK USADO, BATERIA OK', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO IMPRIMIR, SAINDO APENAS UMA PAGINA EM BRANCO', '2017-07-19', 'IMPRESSORA ESTA APRESENTANDO O PROBLEMA, SENDO NECESSARIO LEVAR A UMA ASSISTENCIA.', 'SERA REALIZADA A INSTALACAO DE UMA NOVA IMPRESSORA NO LUGAR DA ANTIGA.', 0.00, 0.00, 0.00, '2018-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00090, 'CLIENTE', 00001, 00001, 00063, 00002, 'P', 'CONTRATO', '2018-07-19 00:00:00', 'NOTEBOOK USADO, BATERIA OK', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO IMPRIMIR, SAINDO APENAS UMA PAGINA EM BRANCO', '2017-07-19', 'IMPRESSORA ESTA APRESENTANDO O PROBLEMA, SENDO NECESSARIO LEVAR A UMA ASSISTENCIA.', 'SERA REALIZADA A INSTALACAO DE UMA NOVA IMPRESSORA NO LUGAR DA ANTIGA.', 0.00, 0.00, 0.00, '2018-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00091, 'ACESSO REMOTO', 00001, 00001, 00057, 00002, 'C', 'CONTRATO', '2018-07-31 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE REALIZAR CANCELAMENTO DE NOTA FISCAL.', '2017-07-28', 'NOTA VALIDADA NA PREFEITURA POREM COM STATUS DE EM PROCESSAMENTO NO SISTEMA', 'ENTRAR EM CONTATO COM O SUPORTE E SOLICITAR ALTERACAO DO STATUS DA MESMA', 0.00, 0.00, 0.00, '2018-09-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00092, 'ACESSO REMOTO', 00001, 00001, 00057, 00002, 'C', 'CONTRATO', '2018-07-31 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE VISUALIZAR GUIAS E DOCUMENTOS ONLINE', '2017-07-30', 'ALGUMAS GUIAS FORAM CORROMPIDAS DURANTE O DOWNLOAD DO SISTEMA', 'REALIZAR LIMPEZA NO HISTORICO DE INTERNET E BAIXAR NOVAMENTE AS GUIAS DO SITE. ACONTECE VEZ OU OUTRA ESSE ERRO QUANDO HISTORICO DE INTERNET ESTÃ¡ CHEIO OU ENTAO ALGUM PROBLEMA NO LINK DE INTERNET', 0.00, 0.00, 0.00, '2018-07-31 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00093, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-08-02 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA QUE SEJA EXCLUIDO 2 USUARIOS E QUE SEJA CRIADA UMA SENHA PARA CADA RECEPCIONISTA.', '2017-08-02', 'CLIENTE SOLICITA QUE SEJA EXCLUIDO 2 USUARIOS E QUE SEJA CRIADA UMA SENHA PARA CADA RECEPCIONISTA.', 'SOMENTE O USUARIO ADMINISTRADOR OU UM MEDICO COM PERMISSOES DE ADMINISTRADOR PODE EXCLUIR/ALTERAR USUARIOS NO DOCTOR APENAS PODEMOS CRIAR NOVOS USUARIOS, NAO SERÃ¡ POSSIVEL REALIZAR ALTERACAO ALGUMA POIS NAO TEMOS ESSA SENHA. SOMENTE A PESSOA QUE REALIZOU A PRIMEIRA INSTALACAO DO SISTEMA.', 0.00, 0.00, 0.00, '2018-08-02 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00094, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-09-20 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', '2017-09-20', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', 0.00, 0.00, 0.00, '2018-09-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00095, 'CLIENTE', 00001, 00001, 00031, 00002, 'C', 'CONTRATO', '2018-09-20 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', '2017-09-20', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', ' REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', 0.00, 0.00, 0.00, '2018-09-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00096, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2018-09-20 00:00:00', 'PERDE DATA E HORA QUANDO DESLIGA.', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA. PROVIDENCIAR BATERIA PARA O MESMO.', '2017-09-20', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', 'REALIZACAO DE BACKUP MENSAL DE DADOS E VERIFICACAO DE SISTEMA.', 0.00, 0.00, 0.00, '2018-09-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00097, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2018-10-09 00:00:00', 'PERDE DATA E HORA QUANDO DESLIGA', 'REALIZACAO DE BACKUP QUINZENAL', '2017-10-05', 'REALIZACAO DE BACKUP', 'REALIZACAO DE BACKUP', 0.00, 0.00, 0.00, '2018-10-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00098, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-10-09 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP QUINZENAL', '2017-10-05', 'REALIZACAO DE BACKUP', 'REALIZACAO DE BACKUP', 0.00, 0.00, 0.00, '2018-10-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00099, 'ACESSO REMOTO', 00001, 00001, 00057, 00002, 'C', 'CONTRATO', '2018-10-20 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE EQUIPAMENTO ENCONTRA-SE MUITO LENTO, PARA ABRIR PROGRAMAS E DOCUMENTOS, PASTAS E AS VEZES O MESMO TRAVA E TEM QUE FICAR AGUARDANDO PRA PODER USAR NOVAMENTE.', '2017-10-20', 'EXISTEM DOIS SERVICOS QUE ESTAO FAZENDO COM O MESMO FIQUE TRAVANDO, DESCOBERTA SSDP WINDOWS(SERVE PARA EVITAR QUE OUTROS COMPUTADORES LOCALIZEM ESSE PELA REDE) E HOST DE CLIENTE DNS (ULTIMO SERVE APENAS PARA MONITORAMENTO DE CONEXAO). ', 'DESINSTALADO SMART BYTE DRIVERS AND SERVICES RIVET NETWORKS,SOFTWARES DE  ATUALIZACOES DA DELL, DESATIVADO SERVICOS SSDP E HOST CLIENTE DNS, INSTALADO O CCLEANER PARA LIMPEZA DE HISTORICO E OUTROS ARQUIVOS TEMPORARIOS', 0.00, 0.00, 0.00, '2018-10-20 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00100, 'EMPRESA', 00044, 00001, 00065, 00002, 'P', 'CONTRATO', '2018-10-23 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA QUE SEJA REALIZADA INSTALACAO DE APLICATIVOS, OFFICE, ANTIVIRUS DENTRE OUTROS.', '2017-10-26', 'EQUIPAMENTO NOVO SEM PROGRAMAS.', 'INSTALACAO DE APLICATIVOS OFFICE 2013, JAVA, MPLAYER, ANTIVIRUS E ATUALIZACAO DO WINDOWS. NOTE POSSUI UM SSD DE 32GB SENDO ASSIM, COM A ATUALIZACAO DO WINDOWS O MESMO JA FICOU COM ESPACO COMPROMETIDO, FOI COMPRADO UM PENDRIVER COM16GB PARA QUE SEJA FEITA INSTALACAO DO RESTANTE DOS APLICATIVOS E MUDANCA DO DIRETORIO DE DOCUMENTOS DE USUARIO', 100.00, 0.00, 100.00, '2020-07-15 00:00:00', '2020-08-11', 0, NULL, 0, 'PAGO'),
(00101, 'ACESSO REMOTO', 00013, 00001, 00015, 00002, 'G', 'CONTRATO', '2018-10-26 00:00:00', 'DASDSADASDASDSAD', 'ASDASDAS AS DAS DSA DAS DAS DAD AS DAS AS SA DSA AS', '2018-10-18', NULL, NULL, 0.00, 0.00, 0.00, '2018-10-26 00:00:00', NULL, 0, 'CLIENTE INFORMOU QUE O CANCELAMENTO ELE QUER', 0, 'CANCELADA'),
(00102, 'EMPRESA', 00013, 00001, 00064, 00002, 'C', 'CONTRATO', '2018-10-26 00:00:00', 'EQUIPAMENTO USADO', 'DSADASDSDSADASDSADSA', '2018-12-17', 'TESTE DE CADASTRO DE DEFEITODASADDSADSA', 'TESTE DE CADASTR DE ROBLEMA', 0.00, 0.00, 0.00, '2020-03-09 00:00:00', NULL, 0, 'ABERTURA DE OS PARA TESTE.', 0, 'CANCELADA'),
(00103, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-10-30 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO ESTÃ¡ CONSEGUINDO REALIZAR PROCEDIMENTO DE ANEXAR OS XMLS DAS NFSE E ENVIAR PARA O CONTADOR.', '2018-10-30', 'USUARIO COM DIFICULDADES PARA ARQUIVAR OS XML EM UM PASTA ZIPADA.', 'AUXILIO NA EXPORTAÃ§Ã£O DOS XML, COLOCAR NA PASTA ZIPADA E ENVIAR POR EMAIL.', 0.00, 0.00, 0.00, '2018-10-30 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00104, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-11-07 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE ESTA COM DIFICULDADES PARA AUTORIZAR NFCE.', '2018-11-07', 'SISTEMA EMISSOR DE NFCE ESTA DESATUALIZADO', 'SERÃ¡ NECESSÃ¡RIO REALIZAR ATUALIZACAO DO EMISSOR DE NFCE PARA 4.11 CONFORME DESCRITO NO SITE. INFELIZMENTE MESMO APOS A ATUALIZACAO DO EMISSOR CONTINUARAM A EXIBIR ERROS NO ENVIO DAS NFCE SENDO ASSIM SERÃ¡ NECESSÃ¡RIO ENTRAR EM CONTATO COM A LSI DESENVOLVEDORA PARA REALIZAR O PROCESSO.', 0.00, 0.00, 0.00, '2018-11-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00105, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2018-11-08 00:00:00', 'PERDE DATA E HORA QUANDO DESLIGA.', 'REALIZACAO DE BACKUP QUINZENAL', '2018-11-08', 'REALIZACAO DE BACKUP QUINZENAL', 'REALIZACAO DE BACKUP QUINZENAL', 0.00, 0.00, 0.00, '2018-11-08 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00106, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-11-08 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP QUINZENAL', '2018-11-08', 'REALIZACAO DE BACKUP QUINZENAL', 'REALIZACAO DE BACKUP QUINZENAL', 0.00, 0.00, 0.00, '2018-11-08 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00107, 'CLIENTE', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-11-10 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE SOLICITA VERIFICACAO DE EQUIPAMENTO POIS USB NAO ESTA FUNCIONANDO.', '2018-11-10', '2 DE 3 PORTA USB QUEIMADA ', 'NESSE CASO A SOLUCAO SERIA LEVAR A UMA ASSISTENCIA PARA TENTAR CONSERTAR A PLACA MAE DO NOTE OU COMPRAR UM USB HUB COM 4 PORTAS DISPONIVEIS, JÃ¡ QUE UMA PORTA DO NOTE AINDA ESTA FUNCIONANDO.', 0.00, 0.00, 0.00, '2018-11-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00108, 'ACESSO REMOTO', 00005, 00001, 00002, 00002, 'P', 'CONTRATO', '2018-11-12 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA VERIFICACAO NA REDE WIFI, POIS A MESMA ENCONTRA-SE OCULTA.', '2018-11-12', 'REDE OCULTA E SEM ACESSO AO ADMINISTRADOR ROTEADOR', 'SERÃ¡ NECESSARIO ENTRAR EM CONTATO COM A NET SERVIÃ§OS, POIS NAO CONSEGUIMOS ACESSO AO MODEM ROTEADOR.', 0.00, 0.00, 0.00, '2018-11-12 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00109, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-11-21 00:00:00', 'ACESSO REMOTO', 'INSTALACAO E CONFIGURACAO DO WHATSAPP WEB NO COMPUTADOR', '2018-11-21', 'ISNTALACAO E CONFIGURACAO DO WHATSAPP WEB NO COMPUTADOR', 'ISNTALACAO E CONFIGURACAO DO WHATSAPP WEB NO COMPUTADOR', 0.00, 0.00, 0.00, '2018-11-21 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00110, 'CLIENTE', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2018-12-10 00:00:00', 'NOTEBOOK USADO / PORTAS USB QUEIMADA ', 'INSTALACAO DE IMPRESSORA EPSON M205', '2018-11-26', 'INSTALACAO DE IMPRESSORA EPSON M205', 'INSTALACAO DE IMPRESSORA E SCANNER EPSON M205 PELA REDE', 0.00, 0.00, 0.00, '2018-12-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00111, 'CLIENTE', 00001, 00001, 00031, 00002, 'C', 'CONTRATO', '2018-12-10 00:00:00', 'NOTEBOOK USADO', 'INSTALACAO DE IMPRESSORA EPSON M205', '2018-12-26', 'INSTALACAO DE IMPRESSORA EPSON M205', 'INSTALACAO DE IMPRESSORA EPSON M205, ERROS NA ISNTALACAO DA  FUNCAO SCANNER POIS NAO ENCONTRA O RQUIPAMENTO.MAS IMPRESSORA NORMAL.', 0.00, 0.00, 0.00, '2018-12-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00112, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2018-12-10 00:00:00', 'DESKTOP USADO', 'INSTALACAO DE IMPRESSORA EPSON M205', '2018-12-26', 'INSTALACAO DE IMPRESSORA EPSON M205', 'INSTALACAO DE IMPRESSORA EPSON M205 VIA CABO USB. FUNCAO DE SCANNER NAO DISPONIVEL PARA SISTEMA OPERACIONAL.', 0.00, 0.00, 0.00, '2018-12-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00113, 'EMPRESA', 00045, 00001, 00066, 00002, 'P', 'CONTRATO', '2018-12-10 00:00:00', 'NOTEBOOK USADO / BATERIA N OK ', 'NOTEBOOK SEM SISTEMA OPERACIONAL, SEM DOCUMENTOS/ARQUIVOS. REALIZAR INSTALACAO DO WINDOWS 7.', '2018-12-10', 'NOTEBOOK SEM SISTEMA OPERACIONAL ', 'REALIZAR INSTALACAO DO WINDOWS 7 E APLICATIVOS.', 0.00, 0.00, 0.00, '2018-12-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00114, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-01-05 00:00:00', 'EQUIPAMENTO USADO / DESKTOP GENERICO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR O SISTEMA DOCTOR', '2019-01-07', 'EQUIPAMENTO NAO DA VIDEO SÃ³ FICA APITANDO | EQUIPAMENTO NAO INICIA WINDOWS |', 'LIMPEZA INTERNA NO EQUIPAMENTO REMOÃ§Ã£O DE POEIRA, LIMPEZA NO SLOT E PENTE DE MEMORIA | SERÃ¡ NECESSARIO UM BACKUP DOS DADOS E  UMA REINSTALACAO DO WINDOWS, SISTEMA DOCTORS SERVIDOR, OFFICE E OTUROS. |', 0.00, 0.00, 0.00, '2019-01-08 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00115, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-01-10 00:00:00', 'EQUIPAMENTO USADO / DESKTOP GENERICO', 'EQUIPAMENTO FICA APITANDO E NAO INICIA WINDOWS.', '2018-01-10', 'EQUIPAMENTO NAO DA APRESENTA VIDEO E FICA BEEPANDO COM ERRO DE MEMORIA.', 'LIMPEZA DE MEMORIA E SLOT DESCONEXAO DA FONTE NA PLACA MAE E CONECTADA NOVAMENTE.', 0.00, 0.00, 0.00, '2019-01-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00116, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2019-01-10 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO REALIZAR IMPRESSÃ£O', '2018-01-10', 'EQUIPAMENTO NAO ESTAVA RECONHECENDO AS IMPRESSORAS DE REDE', 'REALIZADA EXCLUSAO DAS IMPRESSORAS E ADCIONADA UMA NOVA IMPRESSORA PADRAO EPSON M305.', 0.00, 0.00, 0.00, '2019-01-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00117, 'ACESSO REMOTO', 00005, 00001, 00002, 00002, 'P', 'CONTRATO', '2019-01-10 00:00:00', 'NOTEBOOK USADO', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA ACESSANDO SISTEMA SHARMAQ', '2018-01-10', 'PROBLEMAS PARA ACESSAR COMPARTILHAMENTO DE REDE.', 'REALIZADO AJUSTES NA REDE, CRIACAO DE NOVOS USUARIOS, RECONFIGURACAO DO COMPARTILHAMENTO POREM SEM SUCESSO. | ', 0.00, 0.00, 0.00, '2019-01-22 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00118, 'EMPRESA', 00005, 00001, 00016, 00002, 'P', 'CONTRATO', '2019-01-11 00:00:00', 'NOTEBOOK USADO', 'REALIZAR FORMATACAO COMPLETA COM BACKUP, POIS O MESMO NAO ESTA ACESSANDO COMPARTILHAMENTO DE REDE DO SERVIDOR. INSTALAR SEGUINTES APLICATIVOS CCLEANER, BRADESCO, HP LASER PRO MFP M127-M128, JAVA, OFFICE 2013/2016, FIREFOX, GOOGLE CRHOME, SCAN TO, IP 192.168.0.44 IMPRESSORA, SPEEDCAR-NOTE1, GRUPO SPEEDCAR.', '2018-01-12', 'O EQUIPAMENTO NAO ESTA ACESSANDO COMPARTILHAMENTO DE REDE DO SERVIDOR. ', 'REALIZAR UMA FORMATACAO COMPLETA COM BACKUP E INSTALAR SEGUINTES APLICATIVOS CCLEANER, BRADESCO, HP LASER PRO MFP M127-M128, JAVA, OFFICE 2013/2016, FIREFOX, GOOGLE CRHOME, SCAN TO, IP 192.168.0.44 IMPRESSORA, SPEEDCAR-NOTE1, GRUPO SPEEDCAR.', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PA'),
(00119, 'EMPRESA', 00046, 00001, 00067, 00002, 'P', 'CONTRATO', '2019-01-22 00:00:00', 'DESKTOP USADO, VARIOS OBJETOS SOLTO DENTRO, SENHA BIOS, S TAMPA FRONTAL', 'CLIENTE SOLICITA QUE SEJA REALIZADA UMA FORMATACAO COMPLETA.', '2018-01-25', 'EQUIPAMENTO LENTO E  SENHA NA BIOS', 'INSTALAR WINDOWS 10, OBS.: EQUIPAMENTO NAO POSSUI ARQUIVOS PARA BACKUP, RETIRAR SENHA DA BIOS', 0.00, 0.00, 0.00, '2019-01-22 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00120, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2019-01-25 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA QUE SEJA CONFIGURADO O SCANNER EM REDE E ALTERAR A CONFIGURACAO DA IMPRESSORA PARA MODO RASCUNHO', '2018-01-25', 'COMPUTADO NAO SCANNEA E IMPRESSAO EM MODO NORMAL', 'CONFGURAR SCANNER PARA FUNCIONAR ATRAVEZ DA REDE E ALTERAR O MODO DE IMPRESSAO PARA ECONOMIA IP IMPRESSORA 192.168.1.101', 0.00, 0.00, 0.00, '2019-01-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00121, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2019-01-25 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA ALTERAR O MODO DE IMPRESSAO PARA ECONOMIA', '2018-01-25', 'IMPRESSAO MODO NORMAL', 'ALTERAR MODO DE IMPRESSAO PARA ECONOMICO', 0.00, 0.00, 0.00, '2019-01-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00122, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-01-25 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA ALTERAR O MODO DE IMPRESSAO PARA ECONOMIA', '2018-01-25', 'IMPRESSORA EM MODO DE IMPRESSAO NORMAL', 'ALTERAR O MODO DE IMPRESSAO PARA ECONOMICO', 0.00, 0.00, 0.00, '2019-01-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00123, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-02-14 00:00:00', 'REALIZACAO BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2018-02-14', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00124, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-02-14 00:00:00', 'REALIZACAO BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2018-02-14', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00125, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2019-02-12 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE SOLICITA AJUDA NO ENVIO DA PLANILHA DE RECURSO DE GLOSAS', '2018-02-12', 'ARQUIVO CORROMPIDO AO ENVIAR PELO EMAIL', 'BAIXAR NOVAMENTE PLANILHA DO EMAIL, E INFORMAR OS DADOS NA MESMA LINHA A LINHA E REFAZER O ENVIO', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00126, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-02-14 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE SOLICITA AUXILIO NA ALTERACAO DOS DADOS DE ASSINATURA DE LAUDO.', '2018-02-14', 'NAO CONSEGUE ENCONTRAR ARQUIVO PARA ALTERAR INFORMACOES', 'CRIADO UM ATALHO PARA O ARQUIVO DE TEXTO COM RODAPE E CABECALHO CORRETO, E DISPOBILIZADO NO LAUDO E ATESTADO AS NOVAS INFORMACOES.', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00127, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2019-03-01 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA ESTAR COM PROBLEMAS PARA SCANNEAR DOCUMENTOS', '2018-03-01', 'IMPRESSORA TEVE O ENDERECO IP TROCADO, AUTOMATICAMENTE.', 'REALIZADA ATUALIZACAO DO IP NAS CONFIGURACOES DO SCANNER E O MESMO VOLTOU A FUNCIONAR.', 0.00, 0.00, 0.00, '2019-03-01 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00128, 'EMPRESA', 00043, 00001, 00069, 00002, 'P', 'CONTRATO', '2019-03-11 00:00:00', 'EQUIPAMENTO USADO, BATERIA OK, MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA FEITA UMA FORMATACAO COMPLETA SEM NECESSIDADE DE BACKUP.', '2018-03-13', 'EQUIPAMENTO LENTO', 'EQUIPAMENTO PRECISA DE MEMORIA RAM E POSSUI UM PROCESSADOR UM POUCO FRACO, MAS IREMOS FORMATAR E ACOMPANHAR O COMPORTAMENTO DO DESEMPENHO.', 0.00, 0.00, 0.00, '2020-03-09 00:00:00', NULL, 0, 'FECHAMENTO REALIZADO FORA DE EPOCA', 0, 'CANCELADA'),
(00129, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-03-12 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE A AGENDA DO MEDICO NAO ENCONTRA-SE DISPONIVEL, APOS UMA QUEDA NO SISTEMA O MESMO PERDEU OS DADOS.', '2018-03-12', 'ARQUIVO DE AGENDA VIVIANE.MED ESTA CORROMPIDO', 'RESTAURAR O ARQUIVO VIVIANE.MED DO BACKUP DIÃ¡RIO. ATENDIMENTO REALIZADO VIA TELEFONE POS A CLINICA ESTAVA COM PROBLEMAS DE LENTIDAO NA INTERNET.', 0.00, 0.00, 0.00, '2019-03-12 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00130, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-03-15 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR INTERNET NO COMPUTADOR.', '2018-03-14', 'PLACA DE REDE DO COMPUTADOR QUEIMADA OU SEM DRIVER.', 'REALIZADA INSTALACAO DO DRIVER DA PLACA DE REDE PORÃ©M SEM SUCESSO, NECESSARIO COMPRAR UMA PLACA DE REDE OFF BOARD OU UM EQUIPAMENTO UBS WIRELESS PARA CONEXAO DO EQUIPAMENTO COM A INTERNET. FOI COMPRADO E INSTALADO O EQUIPAMENTO.', 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00131, 'EMPRESA', 00047, 00001, 00070, 00002, 'P', 'CONTRATO', '2019-03-19 00:00:00', 'EQUIPAMENTO USADO S MARCAS / BATERIA OK / CARREGADOR', 'CLIENTE INFORMA QUE O EQUIPAMENTO ESTA MUITO LENTO.', '2018-03-22', 'O NOTEBOOK NAO ESTA RECONHECENDO OS 4GB DE MEMORIA RAM INSTALADO NO EQUIPAMENTO', 'REALIZAR UMA FORMATACAO COMPLETA NO EQUIPAMENTO, POIS COM SIMULACAO DE UM MINI WINDOWS O MESMO RECONHECEU OS 4GB', 0.00, 0.00, 0.00, '2020-03-09 00:00:00', NULL, 0, 'ENCERRADO FORA DE EPOCA', 0, 'CANCELADA'),
(00132, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-03-08 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP MENSAL', '2018-03-08', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-03-26 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00133, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-03-08 00:00:00', 'EQUIPAMENTO USADO', 'REALIZACAO DE BACKUP MENSAL', '2018-03-08', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-03-26 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00134, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-04-01 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2018-04-01', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-04-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00135, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-04-01 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2018-01-01', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL ', 0.00, 0.00, 0.00, '2019-04-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00136, 'EMPRESA', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2019-04-01 00:00:00', 'EQUIPAMENTO USADO', 'CLIENTE INFORMA QUE O EQUIPAMENTO TRAVA EM ALGUNS MOMENTOS DURANTE EXPEDIENTE UTILIZANDO SISTEMA', '2018-04-01', 'NO MOMENTO EM FOI VERIFICADO NAO HOUVE DEMONSTRACAO DE TRAVAMENTO OU LENTIDAO UTILIZADO VARIAS FUNCOES DO SISTEMA DOCTORS POREM FUNCIONANDO NORMALMENTE, POREM EXISTEM ALGUNS PROGRAMAS QUE NAO SAO NECESSARIOS A UTILIZACAO DO DIA A DIA ', 'DESISNTALACAO DO AVAST POIS O MESMO ACABA DEIXANDO O EQUIPAMENTO UM POUCO LENTO COM SUAS ROTINAS DE VERIFICACOES E PODE ATE MESMO CORROMPER A LICENCA DO OFFICE OU WINDOWS BEM COMO ARQUIVOS DO PROPRIO DOCTORS E OUTROS PROGRAMAS DA HP DESNECESSARIOS', 0.00, 0.00, 0.00, '2019-04-25 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00137, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-06-06 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-06-01', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-06-06 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00138, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-06-06 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-06-01', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-06-06 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00139, 'CLIENTE', 00048, 00001, 00071, 00002, 'P', 'CONTRATO', '2019-06-10 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA NOK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM VIRUS E SOLICITA UMA VERIFICACAO.', '2018-06-12', 'FOI CONSTATADO ALGUNS PROGRAMAS DESNECESSARIOS PARA O PLENO FUNCIONAMENTO DO WINDOWS, FAZENDO COM  QUE O MESMO FIQUE LENTO COM A EXECUCAO DE VARIOS PROCESSOS, TENDO EM VISTA QUE O EQUIPAMENTO SO POSSUI 2GB DE MEMORIA RAM', 'SERA NECESSARIO REMOVER TODOS OS PROGRAMAS E REALIZAR UMA LIMPEZA EM NAVEGADORES E DIRETORIOS COM ARQUIVOS E ESTENSOES E PROGRAMAS DESNECESSARIOS, REALIZADA ATUALIZACAO DO WINDOWS.', 0.00, 0.00, 0.00, '2019-06-10 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00140, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-07-05 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-07-04', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-07-05 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00141, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-07-05 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSALD', '2018-07-04', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-07-05 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00142, 'EMPRESA', 00048, 00001, 00072, 00002, 'P', 'CONTRATO', '2019-07-08 00:00:00', 'EQUIP USADO | SEM BAT | FONTE | TEC E MOUSE DAN', 'CLIENTE INFORMA QUE AO INICIAR WINDOWS O MESMO TRAVA, APENAS REINICIANDO O NOTEBOOK O MESMO NORMALIZA, POREM VOLTA A TRAVAR POSTERIORMENTE. ', '2018-07-12', 'O HD DO EQUIPAMENTO ESTA COM DEFEITO POR ESTE MOTIVO O MESMO TRAVA NA INICIALIZACAO E EM CERTOS MOMENTOS', 'NECESSARIO URGENTE A TROCA DO MESMO, REALIZAR BACKUP DOS ARQUIVOS E FORMATACAO COMPLETA.', 0.00, 0.00, 0.00, '2020-03-09 00:00:00', NULL, 0, 'ENCERRADO FORA DE EPOCA', 0, 'CANCELADA'),
(00143, 'EMPRESA', 00032, 00001, 00073, 00002, 'P', 'VISTA', '2019-07-08 00:00:00', 'EQUIP USADO | S MARCAS DE USO | BAT OK | C FONTE', 'CLIENTE INFORMA QUE WINDOWS NAO INICIA, SOLICITA BACKUP DE INFORMACOES E REINSTALACAO DE WINDOWS.', '2019-07-10', 'WINDOWS CORROMPIDO, NAO INICIA NORMALMENTE.', 'REALIZACAO DE BACKUP DAS INFORMACOES, REINSTALACAO DO WINDOWS.', 200.00, 50.00, 150.00, '2019-07-08 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00144, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2019-07-19 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR A BIOMETRIA DA UNIMED, TEAMVIEW ID 368534601 SENHA v774tx', '2018-07-19', 'O JAVA ESTA BLOQUEANDO A APLICACAO DA BIOMETRIA NO SITE DA UNIMED E TAMBEM O EXECUTAVEL DO JAVA ESTAVA COMO PADRAO PARA ABRIR COM LEITOR DE PDF', 'INCLUIR O SITE NA LISTA DE EXCESSAO DE SEGURANCA DO JAVA E CONFIGURAR O JAVA PARA ABRIR O EXECUTAVEL.', 0.00, 0.00, 0.00, '2019-07-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00145, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-08-13 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-08-13', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-08-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00146, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-08-13 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-08-13', 'REALIZACAO DE BACKUP MENSAL', ' REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-08-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00147, 'EMPRESA', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2019-09-09 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO.', '2018-09-03', 'MAQUINA ESTAVA COM ANTIVIRUS MUITO PESADO INSTALADO', 'REMOCAO DO ANTIVIRUS, TENDO EM VISTA QUE O WINDOWS JA POSSUI UM APLICATIVO PARA TAL FUNCAO ALEM DO QUE O MESMO NAO Ã© UTILIZADO PARA ACESSOS VARIADOS A INTERNET. ', 0.00, 0.00, 0.00, '2019-09-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00148, 'EMPRESA', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2019-09-09 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA APRESENTANDO LENTIDAO PARA EMITIR NOTA E OUTRAS FUNCOES.', '2018-09-03', 'EQUIPAMENTO ESTAVA COM ANTIVIRUS AVAST MUITO PESADO INSTALADO', 'REMOCAO DO ANTIVIRUS E OUTROS PROGRAMAS DESNECESSARIOS QUE SAO INSTALADOS COM ATUALIZACAO DO WINDOWS, ', 0.00, 0.00, 0.00, '2019-09-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00149, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-09-09 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-09-03', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-09-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00150, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-09-09 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-09-03', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-09-09 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00151, 'EMPRESA', 00048, 00001, 00074, 00002, 'P', 'CONTRATO', '2019-09-19 00:00:00', 'EQUIP USADO | MARCAS DE USO | BATERIA N OK | TECLADO N OK', 'CLIENTE SOLICITA QUE SEJA FEITO BACKUP DE INFORMACOES E FORMATADO EQUIPAMENTO POIS O MESMO NAO ESTA INICIANDO WINDOWS.', '2018-09-22', 'O EQUIPAMENTO ESTA COM DEFEITO NO HD, SENDO NECESSARIO TROCA.', 'TROCAR O HD PARA REINSTALACAO DO WINDOWS.', 0.00, 0.00, 0.00, '2019-09-19 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00152, 'CLIENTE', 00032, 00001, 00060, 00002, 'P', 'VISTA', '2019-09-24 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR PROGRAMAS COMO EXCEL E WORD, SOLICITA TAMBEM ATIVACAO E INSTALACAO DO ANTIVIRUS.', '2019-09-24', 'OFFICE SOLICITANDO ATIVACAO E O ANTIVIRUS VENCIDO.', 'REALIZAR REMOCAO DO OFFICE 2016, INSTALAR E ATIVAR O OFFICE 2013. ANTIVIRUS SERA NECESSARIO A COMPRA DE UMA LICENCA PARA OS EQUIPAMENTOS.', 50.00, 0.00, 50.00, '2019-09-24 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00153, 'CLIENTE', 00032, 00001, 00075, 00002, 'C', 'CONTRATO', '2019-09-24 00:00:00', 'EQUIPAMENTO NOVO', 'EQUIPAMENTO NOVO SEM OFFICE E OUTROS PROGRAMAS.', '2018-09-24', 'EQUIPAMENTO NOVO, SEM PROGRAMAS ', 'INSTALACAO DO OFFICE 2013 E ATIVACAO DO MESMO, INSTALACAO DO SCANNER PERFECTION V19', 0.00, 0.00, 0.00, '2019-09-24 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00154, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-10-04 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-10-04', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, 0, NULL, 0, 'PAGO'),
(00155, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-10-04 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-10-04', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-10-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00156, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-10-04 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-10-04', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-10-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00157, 'EMPRESA', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2019-10-04 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM LENTIDAO AO INICIAR', '2018-10-04', 'WINDOWS LENTO AO INICIAR, .', 'REALIZADA DESCONEXAO DA BATERIA, HD E MEMORIA DO EQUIPAMENTO. E O MESMO NORMALIZOU', 0.00, 0.00, 0.00, '2019-10-04 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00158, 'EMPRESA', 00025, 00001, 00076, 00002, 'P', 'CONTRATO', '2019-10-07 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA QUE SEJA REALIZADA INSTALACAO DO OFFICE.', '2018-10-07', 'SEM OFFICE E OUTROS PROGRAMAS.', 'ISNTALACAO DO OFFICE, ANTIVIRUS E OUTROS PROGRAMAS.', 0.00, 0.00, 0.00, '2019-10-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00159, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-11-11 00:00:00', 'EQUIPAMENTO MARCAS DE USO', 'REALIZACAO BACKUP MENSAL', '2018-11-08', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-11-11 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00160, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-11-11 00:00:00', 'EQUIPAMENTO USADO MARCAS DE USO', 'REALIZACAO DE BACKUP MENSAL', '2018-11-08', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-11-11 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00161, 'EMPRESA', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2019-11-11 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA OK', 'REALIZACAO DE BACKUP MENSAL', '2018-11-08', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2019-11-11 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00162, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-11-22 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO ESTA CONSEGUINDO REALIZAR IMPRESSAO', '2018-11-22', 'A IMPRESSORA ESTA COM FALHA NO CABECOTE DE IMPRESSAO', 'REALIZAR LIMPEZA DOS CABECOTES ATRAVEZ DO DRIVER DA IMPRESSORA.', 0.00, 0.00, 0.00, '2019-11-22 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00163, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2019-12-07 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2019-12-07', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-01-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00164, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2019-12-07 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2019-12-07', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-01-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00165, 'EMPRESA', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2019-12-07 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2019-12-07', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-01-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00166, 'ACESSO REMOTO', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2019-12-03 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA ESTAR COM PROBLEMAS PARA ACESSAR O OFFICE ', '2019-12-03', 'OFFICE ENCONTRA-SE SEM ATIVACAO', 'REINSTALAR OFFICE 2013 REALIZANDO ATIVACAO DO MESMO', 0.00, 0.00, 0.00, '2020-01-07 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00167, 'CLIENTE', 00050, 00001, 00078, 00002, 'P', 'VISTA', '2020-01-20 00:00:00', 'EQUIPAMENTO USADO COM MARCAS DE USO', 'CLIENTE SOLICITA QUE SEJA REALIZADO UM BACKUP DAS INFORMACOES E UMA FORMATACAO COMPLETA.', '2020-01-20', 'EQUIPAMENTO ENCONTRA-SE COM WINDOWS 7 CORROMPIDO E A PLACA DE REDE ONBOARD QUEIMADA.', 'REALIZAR BACKUP DOS DADOS, REINSTALAR O SISTEMA OPERACIONAL 7 HOME PREMIUM E ADCIONAR UMA PLACA DE REDE OFF BOARD.', 200.00, 80.00, 120.00, '2020-01-22 00:00:00', '2020-03-22', 0, NULL, 0, 'PAGO'),
(00168, 'EMPRESA', 00050, 00001, 00078, 00002, 'G', 'CONTRATO', '2020-01-27 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'CLIENTE INFORMA QUE WINDOWS NAO INICIA E FICA TENTA CORRIGIR INICIALIZACAO', '2020-01-28', 'SISTEMA OPERACIONAL CORROMPIDO DEVIDO A PROBLEMAS COM O PROCESSAMENTO DE ALGUMAS ATUALIZACOES', 'REINSTALAR SISTEMA OPERACIONAL', 0.00, 0.00, 0.00, '2020-02-03 00:00:00', '2020-05-03', 0, NULL, 0, 'PAGO'),
(00169, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-01-15 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2020-01-15', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-01-15 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00170, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-01-15 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'CLIENTE INFORMA QUE NAO CONSEGUE REALIZAR EXAMES BERA', '2020-01-15', 'EXISTE UM PROBLEMA DE COMUNICACAO DO EQUIPAMENTO COM A FERRAMENTA DE TESTE QUE FAZ A CAPTURA DOS DADOS', 'REALIZAMOS A TROCA DO CABO USB QUE VAI DO COMPUTADOR PARA O EQUIPAMENTO DE EXAME, REINSTALAMOS O SISTEMA NO COMPUTADOR, REALIZAMOS A INSTALACAO DO SOFTWARE E EQUIPAMENTO EM OUTRO COMPUTADOR, POREM NAO OBTVEMOS SUCESSO NOS TESTES. RECOMENDO ENTRAR EM CONTATO COM FABRICANTE PARA VERIFICACAO DO EQUIPAMENTO DO EXAME.', 0.00, 0.00, 0.00, '2020-02-13 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00171, 'EMPRESA', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-01-15 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2020-01-15', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-01-15 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00172, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-02-27 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2020-02-27', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-02-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00173, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-02-27 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2020-02-27', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-02-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00174, 'CLIENTE', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2020-02-27 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', '2020-02-27', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-02-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00175, 'CLIENTE', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2020-02-27 00:00:00', 'USADO | SEM MARCAS DE USO | BATERIA OK | ', 'CLIENTE INFORMA QUE NAO ESTA FUNCIONANDO O AUTO-COMPLETAR AO DIGITAR NAS CELULAR NO EXCEL.', '2020-02-27', 'O OFFICE DO COMPUTADOR PERDEU SUA VALIDADE', 'NECESSARIO ATIVAR NOVAMENTE O OFFICE DO EQUIPAMENTO.', 0.00, 0.00, 0.00, '2020-02-27 00:00:00', NULL, 0, NULL, 0, 'PAGO'),
(00176, 'CLIENTE', 00051, 00001, 00079, 00002, 'P', 'VISTA', '2020-02-28 00:00:00', 'EQUIPAMENTO NOVO | FONTE OK | BATERIA OK | SEM MARCAS DE USO', 'CLIENTE INFORMA QUE AO FAZER UMA ALTERACAO NAS CONFIGURACOES DO WINDOWS O MESMO NAO INICIA NORMALMENTE, APRESENTANDO UMA TELA AZUL. NAO NECESSARIO REALIZAR BACKUP DE INFORMACOES.', '2020-03-02', 'SISTEMA OPERACIONAL CORROMPIDO', 'RESTAURAR O SISTEMA OPERACIONAL E INSTALAR NOVAMENTE O MICROSOFT OFFICE.', 100.00, 50.00, 50.00, '2020-02-29 00:00:00', '2020-05-29', 0, NULL, 0, 'PAGO'),
(00177, 'CLIENTE', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2020-02-29 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA N OK ', 'CLIENTE SOLICITA INSTALACAO DE UMA IMPRESSORA HP P1102W', '2020-02-29', 'SOLICITACAO DE CLIENTE', 'INSTALACAO DE UMA IMPRESSORA HP 1102W NO EQUIPAMENTO.', 0.00, 0.00, 0.00, '2020-02-29 00:00:00', '2020-05-29', 0, NULL, 0, 'PAGO'),
(00178, 'EMPRESA', 00052, 00001, 00080, 00002, 'P', 'VISTA', '2020-03-03 00:00:00', 'USADO | MARCAS DE USO | BATERIA OK | FONTE OK ', 'CLIENTE SOLICITA QUE SEJA FEITO UMA FORMATACAO COMPLETA E REALIZADA INSTALACAO DO OFFICE.', '2020-03-05', 'SOLICITACAO DO CLIENTE.', 'FORMATACAO COMPLETA E INSTALACAO DE APLICATIVOS CONFORME SOLICITACAO DO CLIENTE', 200.00, 120.00, 80.00, '2020-03-06 00:00:00', '2020-06-04', 0, NULL, 0, 'PAGO'),
(00179, 'EMPRESA', 00050, 00001, 00078, 00002, 'G', 'CONTRATO', '2020-03-06 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO |', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO CONSEGUE CONECTAR NA INTERNET', '2020-03-09', 'EQUIPAMENTO NAO INICIA O SISTEMA OPERACIONAL', 'REALIZAR A TROCA DE HD PARA TESTE E REINSTALAR O SISTEMA OPERACIONAL.', 0.00, 0.00, 0.00, '2020-03-09 00:00:00', '2020-06-07', 0, NULL, 0, 'PAGO'),
(00180, 'CLIENTE', 00001, 00001, 00058, 00002, 'P', 'VISTA', '2020-02-18 00:00:00', 'EQUIPAMENTO USADO SEM MARCAS DE USO', 'ORDEM DE SERVICO ABERTA PARA PAGAMENTO DE CONTRATO', '2020-02-18', 'ORDEM DE SERVICO ABERTA PARA PAGAMENTO DE CONTRATO', 'ORDEM DE SERVICO ABERTA PARA PAGAMENTO DE CONTRATO', 150.00, 0.00, 150.00, '2020-03-09 00:00:00', '2020-05-07', 20203072417, NULL, 0, 'PAGO'),
(00181, 'CLIENTE', 00053, 00001, 00081, 00002, 'P', 'VISTA', '2020-03-12 00:00:00', 'AGENDAMENTO VIA TELEFONE', 'CPU POSITIVO I3 DEIXEI DE USAR 2 MESES E QUANDO VOLTEI A LIGAR ELA TRAVA E FICA NA TELA INICIAL', '2020-03-14', 'HD DO EQUIPAMENTO ENCONTRA-SE COM DEFEITO.', 'TROCA DE HD E REINSTALAR O SISTEMA OPERACIONAL. FICOU COMBINADO DE QUANDO REESTABELECER O SINTAL DE INTERNET ENTRAR EM CONTATO PARA ATUALIZAR WINDOWS E DRIVERS.', 200.00, 70.00, 130.00, '2020-03-16 00:00:00', '2020-06-14', 0, NULL, 0, 'PAGO'),
(00182, 'EMPRESA', 00054, 00001, 00082, 00002, 'P', 'CONTRATO', '2020-03-16 00:00:00', 'EQUIPAMENTO USADO | BATERIA OK | MARCAS DE USO | FONTE OK', 'CLIENTE SOLICITA QUE SEJA FEITO BACKUP E UMA FORMATACAO COMPLETA', '2020-03-17', 'SOLICITACAO DE CLIENTE', 'BACKUP DE DADOS E FORMATACAO COMPLETA.', 200.00, 0.00, 200.00, '2020-03-26 00:00:00', '2020-06-14', 0, NULL, 0, 'PAGO'),
(00183, 'EMPRESA', 00027, 00001, 00083, 00002, 'P', 'TITULO', '2020-03-21 00:00:00', 'EQUIPAMENTO USADO | BATERIA OK | MARCAS DE USO | FONTE OK', 'CLIENTE INFORMA QUE NAO SABE A SENHA DE ACESSO DO WINDOWS, PRECISA DE BACKUP E QUE SEJA REALIZADA FORMATACAO DO EQUIPAMENTO.', '2020-03-23', 'SOLICITACAO DO CLIENTE', 'REALIZACAO DO BACKUP COM MINI WINDOWS E FORMATACAO COMPLETA', 200.00, 100.00, 100.00, '2020-03-27 00:00:00', '2020-06-22', 0, NULL, 0, 'FATURADA'),
(00184, 'CLIENTE', 00055, 00001, 00084, 00002, 'P', 'VISTA', '2020-03-24 00:00:00', 'EQUIPAMENTO USADO | BATERIA OK | MARCAS DE USO | FONTE OK', 'CLIENTE SOLICITA A REALIZACAO DE UM BACKUP E A INSTALACAO DO WINDOWS 10, O MESMO POSSUI ATUALMENTE O WINDOWS 7', '2020-03-25', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 100.00, 100.00, '2020-03-25 00:00:00', '2020-06-23', 0, NULL, 0, 'PAGO'),
(00185, 'EMPRESA', 00056, 00001, 00085, 00002, 'P', 'CONTRATO', '2020-04-07 00:00:00', 'TECLADO NAO OK | BATERIA OK | FONTE OK | MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO DESLIGA E ESTA TRAVANDO MUITO.', '2020-04-10', 'EQUIPAMENTO ENCONTRA-SE COM O COOLER QUEBRADO FAZENDO COM QUE O MESMO AQUECA E FIQUE DESLIGANDO', 'REALIZADA A TROCA DO COOLER POREM O EQUIPAMENTO CONTINUA REINICIANDO, PROBLEMA ESTA NA PLACA MAE DO EQUIPAMENTO.', 50.00, 0.00, 50.00, '2020-07-15 00:00:00', '2020-08-11', 0, NULL, 0, 'PAGO'),
(00186, 'CLIENTE', 00057, 00001, 00086, 00002, 'P', 'CONTRATO', '2020-04-20 00:00:00', 'EQUIPAMENTO USADO | BATERIA N OK | FONTE OK', 'CLIENTE SOLICITA BACKUP DO EQUIPAMENTO (FOTOS, DOCUMENTOS E ARQUIVOS) E QUE SEJA REALIZADO UMA FORMATACAO E INSTALAçãO PADRãO DOS PROGRAMAS.', '2020-04-23', 'APOS REALIZAR O PROCEDIMENTO SOLICITADO, FOI PERCEBIDO QUE O EQUIPAMENTO CONTINUA LENTO, FIZEMOS VARIOS AJUSTES E CONFIGURACOES POREM SEM SUCESSO.', 'SOLUCAO, SERIA A TROCA DO HD PARA SSD, POIS O MESMO FICA COM HD EM 100% O TEMPO TODO MESMO COM FORMATACAO E AJUSTES. CLIENTE INFORMA QUE IRá AGUARDAR REALIZAR A COMPRA DO SSD E VAI ENTRAR EM CONTATO NOVAMENTE.', 200.00, 0.00, 200.00, '2020-07-15 00:00:00', '2020-07-26', 0, NULL, 0, 'PAGO'),
(00187, 'CLIENTE', 00058, 00001, 00087, 00002, 'P', 'VISTA', '2020-04-22 00:00:00', 'EQUIPAMENTO USADO | BATERIA N OK | FONTE OK', 'CLIENTE INFORMA QUE ADQUIRIU O EQUIPAMENTO E O MESMO NAO INICIA O WINDOWS, EXIBINDO APENAS A MENSAGEM \"DEFAULT BOOT MISSING OR BOOT FAILED\"', '2020-04-24', 'EQUIPAMENTO ENCONTRA-SE COM SISTEMA OPERACIONAL CORROMPIDO', 'REPARAR A INICIALIZACAO DO WINDOWS.', 100.00, 50.00, 50.00, '2020-04-24 00:00:00', '2020-07-23', 0, NULL, 0, 'PAGO'),
(00188, 'CLIENTE', 00059, 00001, 00088, 00002, 'P', 'VISTA', '2020-05-12 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA INSTALACAO DO MICROSOFT OFFICE E ANTIVIRUS', '2020-05-12', 'SOLICITACAO DE CLIENTE', 'SOLICITACAO DE CLIENTE', 50.00, 0.00, 50.00, '2020-05-12 00:00:00', '2020-08-10', 0, NULL, 0, 'PAGO'),
(00189, 'EMPRESA', 00060, 00001, 00089, 00002, 'P', 'VISTA', '2020-05-15 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA OK', 'CLIENTE SOLICITA REALIZACAO DE UM BACKUP E FORMATACAO DO NOTEBOOK.', '2020-05-18', 'SOLICITACAO DO CLIENTE.', 'SOLICITACAO DO CLIENTE.', 150.00, 50.00, 100.00, '2020-05-18 00:00:00', '2020-08-14', 0, NULL, 0, 'PAGO'),
(00190, 'CLIENTE', 00059, 00001, 00088, 00002, 'G', 'CONTRATO', '2020-05-22 00:00:00', 'EQUIPAMENTO NOVO NA CAIXA', 'REINSTALAR O OFFICE POIS HOUVE UMA TROCA NO EQUIPAMENTO DA CLIENTE.', '2020-05-22', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-05-22 00:00:00', '2020-08-20', 0, NULL, 0, 'PAGO'),
(00191, 'EMPRESA', 00061, 00001, 00090, 00002, 'P', 'CONTRATO', '2020-05-27 00:00:00', 'EQUIPAMENTO NOVO NA CAIXA', 'INSTALAR MICROSOFT OFFICE', '2020-05-27', 'SOLICITACAO DE CLIENTE', 'SOLICITACAO DE CLIENTE', 50.00, 0.00, 50.00, '2020-05-27 00:00:00', '2020-08-25', 0, NULL, 0, 'PAGO'),
(00192, 'EMPRESA', 00062, 00001, 00091, 00002, 'P', 'VISTA', '2020-05-27 00:00:00', 'EQUIPAMENTO USADO, MARCAS DE USO, BATERIA OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, SOLICITA UMA FORMATACAO SEM BACKUP', '2020-05-29', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 50.00, 100.00, '2020-05-28 00:00:00', '2020-08-26', 0, NULL, 0, 'PAGO'),
(00193, 'ACESSO REMOTO', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2020-06-03 00:00:00', 'ACESSO REMOTO', 'ESTAMOS COM PROBLEMA P ANEXAR NOTA DA CX E OFFICE PAROU', '2020-06-03', 'ANTIVIRUS BLOQUEOU O ATIVADOR DO OFFICE. PROBLEMA DA CAIXA NAO FOI POSSIVEL A SOLUCAO APENAS EM OUTRO EQUIPAMENTO', 'ADCIONAR ATIVADOR DO OFFICE NA LISTA DO ANTIVIRUS, NOTAS DA CAIXA, IREMOS REALIZAR O ENVIO POR OUTRO EQUIPAMENTO NA LOJA.', 0.00, 0.00, 0.00, '2020-06-03 00:00:00', '2020-09-01', 0, NULL, 0, 'PAGO'),
(00194, 'CLIENTE', 00039, 00001, 00092, 00002, 'P', 'VISTA', '2020-06-16 00:00:00', 'EQUIPAMENTO USADO | SEM MARCAS DE USO', 'CLIENTE INFORMA QUE NAO CONSEGUE IMPRIMIR OS PEDIDOS NA COZINHA E AS NOTAS NO CAIXA.', '2020-06-16', 'REALIZARAM A TROCA DE PROVEDOR DE INTERNET COM A MUDANCA HOUVE ALTERACAO NA FAIXA DE IP, COM ISSO AS MAQUINAS QE POSSUEM IP FIXO APARECEM OFFLINE', 'ALTERAR O IP DAS IMPRESSORAS DE 192.168.1.XX PARA FAIXA NOVA 192.168.15.XX. PROBLEMAS AO ALTERAR O IP DA IMPRESSORA DO CAIXA COM ISSO A MESMA FICOU SENDO UTILIZADO PELO CABO USB', 50.00, 0.00, 50.00, '2020-06-16 00:00:00', '2020-09-14', 0, NULL, 0, 'PAGO'),
(00195, 'ACESSO REMOTO', 00059, 00001, 00088, 00002, 'P', 'CONTRATO', '2020-06-24 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE SALVAR DOCUMENTOS', '2020-06-24', 'EQUIPAMENTO POSSUI O ONEDRIVE INSTALADO E SINCRONIZANDO OS ARQUIVOS COM A NUVEM, POREM ESTA SEM ESPACO', 'INFORMAR AO CLIENTE PARA COMPRAR MAIS ESPACO NO ONEDRIVER OU DESINSTALAR E CANCELAR A SINCRONIZACAO DOS ARQUIVOS COM A NUVEM, A MESMA OPTOU POR DESINSTALAR O APLICATIVO.', 50.00, 0.00, 50.00, '2020-06-24 00:00:00', '2020-09-22', 0, NULL, 0, 'PAGO'),
(00196, 'ACESSO REMOTO', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-06-25 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE REALIZAR EXAME DO VECTO', '2020-06-25', 'PROBLEMA NO DRIVER OU NOS CABOS QUE FAZEM A COMUNICACAO DO EQUIPAMENTO DE EXAME COM O COMPUTADOR', 'REINSTALAR DRIVERS DO EQUIPAMENTO DE EXAME', 0.00, 0.00, 0.00, '2020-06-26 00:00:00', '2020-09-24', 0, NULL, 0, 'PAGO'),
(00197, 'CLIENTE', 00063, 00001, 00093, 00002, 'P', 'CONTRATO', '2020-06-29 00:00:00', 'AGENDADO POR TELEFONE', 'CLIENTE INFORMA QUE O TECLADO DO EQUIPAMENTO ESTA QUEIMADO, MAS RECEIA ENVIAR O EQUIPAMENTO PARA GARANTIA DEVIDO A PANDEMIA E O CONSERTO SER DEMORADO.', '2020-06-29', NULL, NULL, 0.00, 0.00, 0.00, '2020-07-17 00:00:00', NULL, 0, 'FOI INFORMADO AO CLIENTE PARA QUE PROCURASSE A ASSISTENCIA TECNICA DO EQUIPAMENTO, POIS O MESMO SE ENCONTRAVA EM GARANTIA', 0, 'CANCELADA'),
(00198, 'CLIENTE', 00013, 00001, 00015, 00002, 'C', 'CONTRATO', '2020-06-29 00:00:00', 'REALIZACAO DE BACKUP MENSAL', 'TESTE DE JANELA IMPRESSAO', '2020-06-29', NULL, NULL, 0.00, 0.00, 0.00, '2020-07-17 00:00:00', NULL, 0, 'OS FOI ABERTO PARA TESTE DE JANELA DE IMPRESSAO', 0, 'CANCELADA'),
(00199, 'CLIENTE', 00032, 00001, 00043, 00002, 'P', 'VISTA', '2020-07-10 00:00:00', 'ATENDIMENTO NO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM VIRUS E SOLICITA UMA LIMPEZA ', '2020-07-09', 'EQUIPAMENTO ESTA LENTO DEVIDO A PROCESSOS E O PROCESSADOR ESTAR UM POUCO ULTRAPASSADO, EXISTE UM AVISO DE WINDOWS NAO ATIVADO, NOTIFICACOES DE VIRUS QUE SAO ORIUNDAS DO NAVEGADOR GOOGLE CHROME, APENAS PROPAGANDA DE ANTIVIRUS', 'REALIZADA ATIVACAO DO WINDOWS, RETIRADA NOTIFICACOES DE VIRUS DO COMPUTADOR, LIMPEZA DE HISTORICO DE NAVEGACAO, PROGRAMAS DESNECESSARIOS E OUTROS ARQUIVOS TEMPORARIOS.', 50.00, 0.00, 50.00, '2020-07-10 00:00:00', '2020-10-08', 0, NULL, 0, 'PAGO'),
(00200, 'CLIENTE', 00032, 00001, 00075, 00002, 'P', 'VISTA', '2020-07-10 00:00:00', 'ATENDIMENTO NO CLIENTE', 'CLIENTE INFORMA QUE NAO CONSEGUE LOCALIZAR O PROGRAMA DE EMAILS', '2020-07-09', 'O ATALHO DO OUTLOOK FOI APAGADO E O OFFICE ENCONTRA-SE DESATIVADO', 'REALIZADA ATIVACAO DO MICROSOFT OFFICE RECRIADO O ATALHO DO OUTLOOK, LIMPEZA DE HISTORICO, ARQUIVOS TEMPORARIOS', 50.00, 0.00, 50.00, '2020-07-10 00:00:00', '2020-10-08', 0, NULL, 0, 'PAGO');
INSERT INTO `tbl_ordemservico_os` (`NUM_ID_OS`, `TXT_TIPO_ATENDIMENTO_OS`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_OS`, `TXT_CONDICAO_PAGAMENTO_OS`, `DTH_ABERTURA_OS`, `TXT_DADOSGERAIS_OS`, `TXT_RECLAMACAO_OS`, `DTA_PREVISAO_OS`, `TXT_DEFEITO_OS`, `TXT_RESOLUCAO_OS`, `VAL_TOTAL_OS`, `VAL_DESCONTO_OS`, `VAL_FINAL_OS`, `DTH_ENCERRAMENTO_OS`, `DTA_FIMGARANTIA_OS`, `NUM_NFSE_OS`, `TXT_CANCELAMENTO_OS`, `NUM_KM_OS`, `TXT_STATUS_OS`) VALUES
(00201, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2020-07-10 00:00:00', 'ACESSO REMOTO', 'COMPUTADOR NAO ESTA IMPRIMINDO', '2020-07-10', 'O COMPUTADOR ENVIA DOCUMENTOS PARA A IMPRESSORA E O MESMO SAI EM BRANCO, DEVIDO A FALTA DE LIMPEZA NO CABECOTE', 'REALIZAR VIA WINDOWS A LIMPEZA DE CABECOTE NA IMPRESSORA.', 0.00, 0.00, 0.00, '2020-07-10 00:00:00', '2020-10-08', 0, NULL, 0, 'PAGO'),
(00202, 'EMPRESA', 00038, 00001, 00051, 00002, 'P', 'VISTA', '2020-07-10 00:00:00', 'USADO | BATERIA OK | SEM MARCAS DE USO', 'REALIZAR FORMATACAO COMPLETA', '2020-07-11', 'EQUIPAMENTO TEM POUCA MEMORIA, MESMO TENDO UM SSD CAPACIDADE DE PROCESSAMENTO FICA 100% QUASE TODO TEMPO', 'ADCIONAR MEMORIA RAM E ANALISAR O RESULTADO, EQUIPAMENTO POSSUI MEMORIA SOLDADA NA PLACA MAE, NAO PODENDO SER ADCIONADA/TROCADA. COM ISSO VAMOS RETIRAR APENAS ALGUNS PROGRAMAS DO WINDOWS NAO NECESSARIOS E LIMPAR ARQUIVOS TEMPORARIOS E REALIZADOS OUTROS AJUSTES NO WINDOWS.', 100.00, 50.00, 50.00, '2020-07-15 00:00:00', '2020-10-10', 0, NULL, 0, 'PAGO'),
(00203, 'CLIENTE', 00062, 00001, 00094, 00002, 'P', 'VISTA', '2020-07-15 00:00:00', 'USADO | BATERIA OK | FONTE OK | MARCA DE USO', 'CLIENTE SOLICITA QUE SEJA REALIZADA UMA FORMATACAO COMPLETA E BACKUP DA UNIDADE F APENAS. RETIRADO PARTICIONAMENTO DO HD', '2020-07-16', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE, EPSON XP-201 204 208 SERIES PRINTER UNIVERSA', 200.00, 150.00, 50.00, '2020-07-17 00:00:00', '2020-10-14', 0, NULL, 0, 'PAGO'),
(00204, 'CLIENTE', 00064, 00001, 00095, 00002, 'P', 'VISTA', '2020-07-15 00:00:00', 'VISITA NO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO COREL DRAW E PHOTOSHOP 2019', '2020-07-15', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-07-15 00:00:00', '2020-10-13', 0, NULL, 0, 'PAGO'),
(00205, 'CLIENTE', 00065, 00001, 00096, 00002, 'P', 'VISTA', '2020-07-17 00:00:00', 'VISITA NO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO APLICATIVO COREL DRAW', '2020-07-16', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-07-17 00:00:00', '2020-10-15', 0, NULL, 0, 'PAGO'),
(00206, 'EMPRESA', 00038, 00001, 00097, 00002, 'P', 'TITULO', '2020-07-17 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA OK | LINHA DIVIDINDO A TELA', 'CLIENTE SOLICITA A REALIZACAO DE UMA FORMATACAO COM BACKUP DE DADOS', '2020-07-18', 'EQUIPAMENTO COM VIRUS E PROGRAMAS DESNECESSARIOS', 'REINSTALAR O SISTEMA OPERACIONAL 7 HOME BASIC, COM BACKUP DE DADOS, ADCIONADO TAMBEM 2GB DE MEMORIA.', 250.00, 150.00, 100.00, '2020-07-22 00:00:00', '2020-10-16', 0, NULL, 0, 'PAGO'),
(00207, 'EMPRESA', 00066, 00001, 00098, 00002, 'P', 'CONTRATO', '2020-07-17 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA INSTALACAO DO OFFICE', '2020-07-18', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-07-21 00:00:00', '2020-10-15', 0, NULL, 0, 'PAGO'),
(00208, 'EMPRESA', 00032, 00001, 00073, 00002, 'P', 'VISTA', '2020-07-17 00:00:00', 'EQUIPAMENTO USADO MARCAS DE USO BATERIA OK', 'CLIENTE INFORMA QUE O EQUIPAMENTO NAO INICIA O WINDOWS', '2020-07-20', 'SISTEMA OPERACIONAL ESTA CORROMPIDO', 'REALIZAR BACKUP E REINSTALAR SISTEMA OPERACIONAL', 250.00, 200.00, 50.00, '2020-07-21 00:00:00', '2020-10-16', 0, NULL, 0, 'PAGO'),
(00209, 'CLIENTE', 00065, 00001, 00096, 00002, 'G', 'CONTRATO', '2020-07-18 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE O O COREL DRAW INSTALADO ESTA COM LENTIDAO', '2020-07-18', 'PROBLEMAS NA INSTALACAO DO COREL DRAW E EXISTEM OUTROS PROGRAMAS QUE FAZEM COM O QUE O COMPUTADOR TRAVE UM POUCO E WINDOWS NAO ESTA ATIVADO', 'REALIZADO INSTALACAO DO COREL DRAW 2020, ATIVACAO DO WINDOWS E REMOCAO DE DIVERSOS APLICATIVOS DESNECESSARIOS PARA FUNCIONAMENTO DO WINDOWS.', 0.00, 0.00, 0.00, '2020-07-18 00:00:00', '2020-10-16', 0, NULL, 0, 'PAGO'),
(00210, 'CLIENTE', 00065, 00001, 00096, 00002, 'G', 'CONTRATO', '2020-07-18 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE O O COREL DRAW INSTALADO ESTA COM LENTIDAO', '2020-07-20', 'SOLICITACAO DO CLIENTE', 'REINSTALACAO DO COREL DRAW', 0.00, 0.00, 0.00, '2020-07-22 00:00:00', '2020-10-20', 0, NULL, 0, 'PAGO'),
(00211, 'EMPRESA', 00064, 00001, 00099, 00002, 'P', 'TITULO', '2020-07-20 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA BACKUP INSTALACAO DE COREL DRAW 2 UNIDADES E WINDOWS 7', '2020-07-22', 'SOLICITACAO DO CLIENTE, EQUIPAMENTO POSSUI UMA FONTE GENERICA, BATERIA DA CMOS PRESA COM FITA ISOLANTE', 'REALIZAR BACKUP DOS DADOS E INSTALACAO DO WINDOWS 7, COREL DRAW E PHOTOSHOP, OFFICE, .', 175.00, 55.00, 120.00, '2020-07-28 00:00:00', '2020-10-21', 0, NULL, 0, 'PAGO'),
(00212, 'CLIENTE', 00067, 00001, 00100, 00002, 'P', 'TITULO', '2020-07-23 00:00:00', 'USADO MARCAS DE USO', 'SOLICITA FORMATACAO COM BACKUP DE FOTOS EM UM PENDRIVE SERA REPASSADO AO CLIENTE', '2020-07-24', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CIENTE, O EQUIPAMENTO NAO POSSUIA ARQUIVOS PESSOAIS PORTANTO DESCARTADO O BACKUP.\r\nOBS.: EQUIPAMENTO ASSIM QUE ATUALIZAR WINDOWS 10 PRECISA URGENTEMENTE ATUALZAR DRIVER DE VIDEO NO SITE DA HP.', 100.00, 0.00, 100.00, '2020-07-27 00:00:00', '2020-10-23', 0, NULL, 0, 'PAGO'),
(00213, 'CLIENTE', 00064, 00001, 00101, 00002, 'P', 'CONTRATO', '2020-07-28 00:00:00', 'VISITA AO CLIENTE', 'INSTALAÃ‡ÃƒO DE COREL DRAW E PHOTOSHOP', '2020-07-29', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-07-28 00:00:00', '2020-10-26', 0, NULL, 0, 'PAGO'),
(00214, 'CLIENTE', 00068, 00001, 00102, 00002, 'P', 'VISTA', '2020-07-28 00:00:00', 'VISITA AO CLIENTE', 'INSTALAÃ‡ÃƒO DE COREL DRAW E DRIVER DE REDE', '2020-07-30', 'SOLICITACAO DO CLIENTE', 'ATUALIZACAO DE DRIVERS ATRAVEZ DO SITE LENOVO, ATUALIZACAO DE WINDOWS, INSTALACAO DO COREL DRAW 19 SÃ³ RODA COREL COM WINDOWS ATUALIZADO, ATIVACAO DO WINDOWS', 50.00, 0.00, 50.00, '2020-07-28 00:00:00', '2020-10-26', 0, NULL, 0, 'PAGO'),
(00215, 'CLIENTE', 00069, 00001, 00103, 00002, 'P', 'VISTA', '2020-07-29 00:00:00', 'VISITA NO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO WINDOWS', '2020-07-29', 'WINDOWS 8 CORROMPIDO ', 'REALIZAR BACKUP DOS DADOS E REINSTALAR WINDOWS', 150.00, 50.00, 100.00, '2020-07-30 00:00:00', '2020-10-28', 0, NULL, 0, 'PAGO'),
(00216, 'ACESSO REMOTO', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2020-08-03 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE DEPOIS DE ATUALIZACAO DO WINDOWS O OFFICE PERDEU A VALIDADE \r\nID 1693531918\r\nSEHA 6B12VM\r\n', '2020-08-03', 'SOLICITACAO DO CLIENTE', 'REATIVAR OFFICE ', 0.00, 0.00, 0.00, '2020-08-03 00:00:00', '2020-11-01', 0, NULL, 0, 'PAGO'),
(00217, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-08-05 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE DOCTOR NÃƒO ESTÃ INICIANDO\r\nID 368534601 SENHA 3FS74J TEAMVIEW', '2020-08-07', 'O SERVICO E O PROTEQ DO DOCTOR NAO ESTAVAM ATIVOS', 'RECONFIGURADO O ATALHO DO SERVICO DE INICIALIZACAO DO DOCTORS E RETIRADO E COLOCADO NOVAMENTE O PROTEQ', 0.00, 0.00, 0.00, '2020-08-05 00:00:00', '2020-11-03', 0, NULL, 0, 'PAGO'),
(00218, 'CLIENTE', 00009, 00001, 00104, 00002, 'P', 'VISTA', '2020-08-05 00:00:00', 'VISITA AO CLIENTE', 'COMPUTADOR NÃƒO ESTA LIGANDO', '2020-08-07', 'EQUIPAMENTO ESTAVA COM PROBLEMA NA MEMORIA, WINDOWS E OFFICE 2013 NAO ATIVADOS', 'LIMPEZA NA MEMORIA RAM, ATIVACAO DO WINDOWS E OFFICE 2013', 50.00, 0.00, 50.00, '2020-08-06 00:00:00', '2020-11-04', 0, NULL, 0, 'PAGO'),
(00219, 'ACESSO REMOTO', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2020-08-10 00:00:00', 'ACESSO REMOTO', 'PROBLEMAS NA ATIVACAO DO OFFICE.', '2020-08-10', 'ANTIVIRUS APAGA A ATIVACAO DO OFFICE E DO WINDOWS', 'REMOVER O OFFICE 2016 INSTALADO NA MAQUINA E INSTALAR O 2013, EQUIPAMENTO NAO ESTA DEIXANDO ATIVAR O OFFICE E WINDOWS NOVAMENTE, SERÃ¡ NECESSARIO AGENDAR UMA FORMATACAO NO EQUIPAMENTO, TENDO EM VISTA QUE A ULTMA FORMATACAO NO MESMO FOI EM 2018', 0.00, 0.00, 0.00, '2020-08-10 00:00:00', '2020-11-08', 0, NULL, 0, 'PAGO'),
(00220, 'CLIENTE', 00070, 00001, 00105, 00002, 'C', 'CONTRATO', '2020-08-10 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA OK', 'EQUIPAMENTO ESTA SEM REDE', '2020-08-10', 'A REDE NAO APARECE POIS O ROTEADOR ESTAVA DESLIGADO', 'RELIGAR O EQUIPAMENTO E VERIFICACAO CONEXAO E INSTALACAO DA IMPRESSORA VIA WIFI', 0.00, 0.00, 0.00, '2020-08-10 00:00:00', '2020-11-08', 0, NULL, 0, 'PAGO'),
(00221, 'CLIENTE', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2020-08-10 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA OK', 'EQUIPAMENTO PROBLEMAS PARA IMPRIMIR', '2020-08-10', 'IMPRESSORA ESTAVA CONECTADA VIA REDE SEM FIO E O NOTEBOOK ESTAVA VIA CABO AMBAS REDES TEM IP DIFERENCIADOS OCASIONANDO PROBLEMAS, ALEM DO FATO DO ROTEADOR ESTAR LONGE DA IMPRESSORA FAZENDO COM QUE A MESMA NAO TENHA PERDA DE CONEXAO', 'DEIXAR O NOTEBOOK CONECTADO APENAS VIA WIRELESS, PARA FICAR NA MESMA FAIXA DE IP DA IMPRESSORA, ATE REALIZARMOS UMA CONFIGURACAO PADRAO NAS DUAS REDES.', 0.00, 0.00, 0.00, '2020-08-10 00:00:00', '2020-11-08', 0, NULL, 0, 'PAGO'),
(00222, 'CLIENTE', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2020-08-10 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA OK', 'PROBLEMAS PARA IMPRIMIR E O SCANNER NAO ESTA FUNCIONANDO', '2020-08-10', 'IMPRESSORA ESTAVA CONECTADA VIA REDE SEM FIO E O NOTEBOOK ESTAVA VIA CABO AMBAS REDES TEM IP DIFERENCIADOS OCASIONANDO PROBLEMAS, ALEM DO FATO DO ROTEADOR ESTAR LONGE DA IMPRESSORA FAZENDO COM QUE A MESMA NAO TENHA PERDA DE CONEXAO', 'DEIXAR O NOTEBOOK CONECTADO APENAS VIA WIRELESS, PARA FICAR NA MESMA FAIXA DE IP DA IMPRESSORA, ATE REALIZARMOS UMA CONFIGURACAO PADRAO NAS DUAS REDES.', 0.00, 0.00, 0.00, '2020-08-10 00:00:00', '2020-11-08', 0, NULL, 0, 'PAGO'),
(00223, 'CLIENTE', 00071, 00001, 00108, 00002, 'P', 'VISTA', '2020-08-11 00:00:00', 'USADO | SEM FONTE | CANTO DANIFICADO | BATERIA OK | BOTAO FN SOLTO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA LENTO, CASO FORMATAR REALIZAR BACKUP APENAS DA PASTA RECEITA DA FAZENDA, PROVIDENCIAR UMA FONTE E VERIFICAR POSSIBILIDADE DE COLOCAR MAIS MEMORIA', '2020-08-12', 'EQUIPAMENTO ENCONTRA-SE COM WINDOWS 10 PRO, QUE E PESADO RECOMENDADO APENAS PARA GRANDES EMPRESAS POIS POSSUI VARIOS SERVICOS DESNECESSARIOS PARA USUARIO COMUM', 'REALIZADO BACKUP DA PASTA CONFORME SOLICITADO E INSTALAR O WINDOWS 7 HOME BASIC, MAIS LEVE E COMPATIVEL COM O HARDWARE DO EQUIPAMENTO.', 150.00, 0.00, 150.00, '2020-08-12 00:00:00', '2020-11-10', 0, NULL, 0, 'PAGO'),
(00224, 'CLIENTE', 00062, 00001, 00109, 00007, 'P', 'CONTRATO', '2020-08-12 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA AVALIAÃ‡ÃƒO', '2020-08-14', NULL, NULL, 0.00, 0.00, 0.00, '2020-08-12 00:00:00', NULL, 0, 'ORDEM DE SERVICO ABERTA INDEVIDAMENTE', 0, 'CANCELADA'),
(00225, 'CLIENTE', 00072, 00001, 00110, 00002, 'P', 'TITULO', '2020-08-12 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA DESLIGANDO SOZINHO APRESENTANDO TELA AZUL', '2020-08-14', 'EQUIPAMENTO NAO ESTA DANDO VIDEO | EQUIPAMENTO FUNCIONOU DEPOIS SIMPLESMENTE APAGOU NO SETUP', 'REALIZADA TROCA DA FONTE | MEMORIA RAM 3GB | PROCESSADOR DUAL CORE E REINSTALAR O WINDOWS', 250.00, 0.00, 250.00, '2020-08-21 00:00:00', '2020-11-18', 0, NULL, 0, 'PAGO'),
(00226, 'ACESSO REMOTO', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2020-08-14 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE CONEXÃ£O COM SISTEMA LOCAL ESTA MUITO LENTO.', '2020-08-14', 'ROTEADOR APRESENTANDO LENTIDAO', 'REINICIADO O ROTEADOR DA CLINICA', 0.00, 0.00, 0.00, '2020-08-14 00:00:00', '2020-11-12', 0, NULL, 0, 'PAGO'),
(00227, 'CLIENTE', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2020-08-17 00:00:00', 'VISITA NO CLIENTE', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR INTERNET NEM ABRIR SISTEMAS', '2020-08-17', 'EMPRESA ESTAVA SEM INTERNET', 'LIGAR NA LOGIC PRO E BUSCAR INFORMACOES SOBRE O PROBLEMA, POREM AO CHEGAR NO LOCAL A INTERNET JA HAVIA SIDO ESTABELECIDA', 0.00, 0.00, 0.00, '2020-08-17 00:00:00', '2020-11-15', 0, NULL, 0, 'PAGO'),
(00228, 'CLIENTE', 00073, 00001, 00111, 00002, 'P', 'VISTA', '2020-08-19 00:00:00', 'EQUIPAMENTO USADO | MARCAS DE USO | BATERIA OK | FONTE', 'CLIENTE SOLICITA BACKUP DE ALGUNS DOCUMENTOS MENOS MUSICAS E FORMATACAO COMPLETA, E INSTALACAO DO AVAST ANTIVIRUS.', '2020-08-20', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 50.00, 100.00, '2020-08-20 00:00:00', '2020-11-18', 0, NULL, 0, 'PAGO'),
(00229, 'CLIENTE', 00073, 00001, 00111, 00002, 'G', 'CONTRATO', '2020-08-21 00:00:00', 'USADO BATERIA OK MARCAS DE USO COM FONTE', 'CLIENTE INFORMA QUE NÃƒO CONSEGUE CONECTAR NA REDE WIFI 5G', '2020-08-22', 'EQUIPAMENTO NAO ENCONTRA REDES WIFI 5GHZ', 'FOI INSTALADO TODOS OS DRIVERS DO EQUIPAMENTO, EM CONTATO COM A FABRICA DO MESMO FOI INFORMADO UM LINK PARA BAIXAR OS DRIVERS DO MESMO, POREM SEM SUCESSO. A SOLUCAO ENCONTRADA SERÃ¡ A DISPONIBILIZACAO POR CONTA DA EMPRESA DE UM USB WIRELESS 5.2GHZ PARA O PLENO FUNCIONAMENTO.', 0.00, 0.00, 0.00, '2020-09-25 00:00:00', '2020-12-24', 0, NULL, 0, 'PAGO'),
(00230, 'CLIENTE', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2020-08-25 00:00:00', 'VISITA NO CLIENTE', 'EQUIPAMENTO NAO ESTA IMPRIMINDO', '2020-08-25', 'IMPRESSORA NAO ESTA PUXANDO PAPEL', 'REALIZADO UM AJUSTE NA IMPRESSORA E DISPONIBILIZADO UM CABO USB PARA QUE O COMPUTADOR UTILIZE CABO AO INVEZ DO WIFI PARA IMPRIMIR, POIS O PROCESSO PELO WIFI ESTA UM POUCO LENTO DEVIDO A DISTANCIA DO ROTEADOR.', 0.00, 0.00, 0.00, '2020-08-25 00:00:00', '2020-11-23', 0, NULL, 0, 'PAGO'),
(00231, 'EMPRESA', 00074, 00001, 00112, 00002, 'P', 'CONTRATO', '2020-09-01 00:00:00', 'USADO | MARCAS DE USO | TECLADO N OK | BATERIA OK | C FONTE | ', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, FOI FORMATADO E INSTALADO O WINDOWS 10 QUER QUE VOLTE PARA O WINDOWS 7', '2020-09-02', 'SISTEMA OPERACIONAL MUITO PESADO PARA O EQUIPAMENTO', 'REINSTALAR O WINDOWS 7, JUNTAMENTE COM PROGRAMA PADRAO | VERIFICAR TECLADO POIS MESMO COLOCANDO UM TECLADO USB O MESMO FICA APITANDO E NAO FUNCIONA, PRECISA DESCONECTAR O ANTIGO.', 200.00, 0.00, 200.00, '2020-09-04 00:00:00', '2020-12-03', 0, NULL, 0, 'PAGO'),
(00232, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-09-03 00:00:00', 'VISITA AO CLIENTE', 'REALIZACAO DE BACKUP MENSAL', '2020-09-02', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-09-03 00:00:00', '2020-12-02', 0, NULL, 0, 'PAGO'),
(00233, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-09-03 00:00:00', 'VISITA AO CLIENTE', 'REALIZACAO DE BACKUP MENSAL', '2020-09-02', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-09-03 00:00:00', '2020-12-02', 0, NULL, 0, 'PAGO'),
(00234, 'CLIENTE', 00070, 00001, 00105, 00002, 'C', 'CONTRATO', '2020-09-04 00:00:00', 'USADO | MARCAS DE USO | BATERIA OK | C FONTE', 'SOLICITA MIGRACAO PARA WINDOWS 7 PARA QUE SEJA POSSIVEL A INSTALACAO DO CNES QUE NAO FUNCIONA NO WINDOWS 10 ATUALMENTE INSTALADO NOS EQUIPAMENTOS', '2020-09-08', 'SOLICITACAO DO CLIENTE', 'INSTALAR WINDOWS 7 PROFESSIONAL, EPSON L4160 EM REDE, EDITOR DE PDF, JAVA | NAO FOI POSSIVEL INSTALACAO DO WINDOWS 7 NO EQUIPAMENTO, POIS DE FORMA ALGUMA O MESMO FUNCIONOU BEM ENTAO FOI CONFGURADA UMA MAQUINA VIRTUAL COM AJUDA DO VIRTUAL BOX', 0.00, 0.00, 0.00, '2020-09-20 00:00:00', '2020-12-19', 0, NULL, 0, 'PAGO'),
(00235, 'CLIENTE', 00058, 00001, 00113, 00002, 'P', 'CONTRATO', '2020-09-10 00:00:00', 'USADO | MARCAS DE USO | BATERIA MINIMA | ', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO PARA INCIAR WINDOWS, DEMORA MUITO PARA FUNCIONAR.', '2020-09-11', 'EQUIPAMENTO NAO ESTA APRESENTANDO VIDEO EQUIPAMENTO LIGA POREM NAO EXIBE NADA', 'PRECISA LEVAR EM OUTRA ASSISTENCIA PARA VERIFICAR A PLACA MAE DO NOTEBOOK', 0.00, 0.00, 0.00, '2020-09-25 00:00:00', '2020-12-19', 0, NULL, 0, 'PAGO'),
(00236, 'EMPRESA', 00041, 00001, 00114, 00002, 'P', 'VISTA', '2020-09-15 00:00:00', 'NOVO', 'INSTALAR OFFICE, ADOBE READER, JAVA E OUTROS NAVEGADORES DE INTERNET', '2020-09-15', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 0.00, '2020-09-15 00:00:00', '2020-12-14', 0, NULL, 0, 'PAGO'),
(00237, 'CLIENTE', 00075, 00001, 00115, 00002, 'P', 'VISTA', '2020-09-20 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO OFFICE 2013', '2020-09-19', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-09-20 00:00:00', '2020-12-19', 0, NULL, 0, 'PAGO'),
(00238, 'EMPRESA', 00075, 00001, 00116, 00002, 'P', 'VISTA', '2020-09-20 00:00:00', 'USADO | SEM MARCAS DE USO | C FONTE | C LACRE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, SE PRECISO FORMATAR SEM BACKUP', '2020-09-22', 'EQUIPAMENTO COM WINDOWS 10 INSTALADO, SEM DOCUMENTOS ABERTOS, PROGRAMAS JA FICAVA COM QUASE TODA CAPACIDADE DE PROCESSAMENTO ATIVA DO MESMO. ', 'MUDAR PARA WINDOWS 7 E INSTALAR HP INK TANK WIRELESS 410, OFFICE 2010, ITAU, MAXCUT, PROMO PLYS 2012', 100.00, 0.00, 100.00, '2020-09-22 00:00:00', '2020-12-20', 0, NULL, 0, 'PAGO'),
(00239, 'EMPRESA', 00070, 00001, 00117, 00002, 'C', 'CONTRATO', '2020-09-23 00:00:00', 'NOVO | C FONTE', 'CLIENTE SOLICITA CONFIGURACAO DO EQUIPAMENTO NOVO PARA FUNCIONAMENTO NA SALA DE EXAMES', '2020-09-24', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-09-24 00:00:00', '2020-12-23', 0, NULL, 0, 'PAGO'),
(00240, 'EMPRESA', 00064, 00001, 00118, 00002, 'P', 'VISTA', '2020-09-24 00:00:00', 'USADO | MARCAS DE USO ', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO WINDOWS.', '2020-09-24', 'EQUIPAMENTO ESTA COM SISTEMA OPERACIONAL CORROMPIDO', 'REINSTALAR SISTEMA OPERACIONAL WINDOWS 7, COREL DRAW, IMPRESSORA HP LASERJET M178-M181, HP1020', 150.00, 50.00, 100.00, '2020-09-28 00:00:00', '2020-12-24', 0, NULL, 0, 'PAGO'),
(00241, 'EMPRESA', 00070, 00001, 00119, 00002, 'C', 'CONTRATO', '2020-09-24 00:00:00', 'NOVO | BATERIA OK | C CARREGADOR', 'CLIENTE SOLICITA QUE SEJA REALIZADO CONFIGURACAO DO EQUIPAMENTO PARA SALA DE EXAMES', '2020-09-24', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-09-25 00:00:00', '2020-12-24', 0, NULL, 0, 'PAGO'),
(00242, 'CLIENTE', 00076, 00001, 00120, 00002, 'P', 'VISTA', '2020-09-25 00:00:00', 'USADO | MARCAS DE USO | USB WIRELESS | BARULHO NA FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA LENTO, INFORMA TAMBEM QUE FOI FEITA UMA FORMATACAO NO MESMO POREM FALTOU ATUALIZAR A VERSAO DO MESMO.', '2020-09-26', 'EQUIPAMENTO ENCONTRA SE COM UMA VERSAO DO WINDOWS 10 MUITO PESADO E DESATUALIZADO, POSSUI TAMBEM VARIOS PROGRAMAS DESNECESSÃ¡RIOS', 'REALIZAR BACKUP DE DADOS, INSTALAR O WINDOWS 10 HOME MAIS LEVE, ATUALIZAR E INSTALAR OS PROGRAMAS COREL DRAW, PHOTOSHOP, EPSON L3150, EPSON SC-F6000, HP LASERJET P1100', 150.00, 50.00, 100.00, '2020-09-25 00:00:00', '2020-12-24', 0, NULL, 0, 'PAGO'),
(00243, 'CLIENTE', 00077, 00001, 00121, 00002, 'P', 'VISTA', '2020-10-01 00:00:00', 'VISITA AO CLIENTE', 'ENTAO, ELE Ã© ANTIGO SABE E EU GOSTARIA DE ULTILIZA-LO PARA TRABALHOS! NAO CONSIGO TAO LENTO! MAS FAZ UM TEMPAO QUE EU NAO CONSIGO FAZER UMA LIMPEZA EM GERAL!', '2020-10-03', 'EQUIPAMENTO Ã© ANTIGO POSSUI APENAS 3GB DE MEMORIA RAM, HD COM BAIXA CAPACIDADE DE ARMAZENAMENTO E SISTEMA OPERACIONAL 32BITS QUE DEIXA O EQUIPAMENTO UM POUCO MAIS LENTO PRA TRABALHAR E NAO RECONHECE MAIS MEMORIA CASO DESEJE ADCIONAR, DENTRE OUTROS PROGRAMAS QUE TAMBEM REDUZEM BASTANTE O DESEMPENHO DO MESMO', 'REALIZAR UMA NOVA INSTALACAO DO WINDOWS 7 HOME PREMIUM 64BITS PARA FUTURAMENTE PODER ADCIONAR MEMORIA RAM E O EQUIPAMENTO NAO TER PROBLEMAS EM RECONHECER, INSTALAR APENAS PROGRAMAS REALMENTE NECESSARIOS', 150.00, 0.00, 150.00, '2020-10-05 00:00:00', '2021-01-03', 0, NULL, 0, 'PAGO'),
(00244, 'ACESSO REMOTO', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-10-05 00:00:00', 'ACESSO REMOTO', 'EQUIPAMENTO NAO ESTA LIGANDO', '2020-10-05', 'EQUIPAMENTO APRESENTA MENSAGEM DE ERRO DE SETUP', 'APENAS UMA NOTIFICACAO DO SETUP SOBRE A FORMA COMO O SISTEMA INICIA, PRESSIONADO F1 E O WINDOWS INICIOU NORMALMENTE.', 0.00, 0.00, 0.00, '2020-10-05 00:00:00', '2021-01-03', 0, NULL, 0, 'PAGO'),
(00245, 'ACESSO REMOTO', 00070, 00001, 00122, 00002, 'C', 'CONTRATO', '2020-10-05 00:00:00', 'ACESSO REMOTO', 'EQUIPAMENTOS COM PROBLEMAS PARA IMPRIMIR NA SALA DE ESPERA 2 E RECEPCAO', '2020-10-05', 'EXISTEM VARIOS REGISTROS DE IMPRESSORAS, COM PORTAS APONTANDO PARA IP QUE NAO EXISTEM MAIS.', 'REALIZADA INSTALACAO NOVAMENTE DA IMPRESSORA DA SALA DE ESPERA, POREM PRECISO IR ATE O LOCAL PARA VERIFICAR A IMPRESSAO PARA RECEPCAO POIS O COMPUTADOR NAO ENCONTROU A MESMA.', 0.00, 0.00, 0.00, '2020-10-05 00:00:00', '2021-01-03', 0, NULL, 0, 'PAGO'),
(00246, 'EMPRESA', 00070, 00001, 00123, 00002, 'C', 'CONTRATO', '2020-10-07 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE NAO CONSEGUE EDITAR DOCUMENTOS NO WORD', '2020-10-06', 'OFFICE ESTA COM PROBLEMAS NA ATIVACAO', 'REALIZADA REINSTALACAO DO OFFICE NO EQUIPAMENTO E ATIVADO NOVAMENTE.', 0.00, 0.00, 0.00, '2020-10-07 00:00:00', '2021-01-05', 0, NULL, 0, 'PAGO'),
(00247, 'EMPRESA', 00078, 00001, 00124, 00002, 'P', 'VISTA', '2020-10-13 00:00:00', 'USADO | SEM MARCAS DE USO | C CABO DE ENERGIA', 'AMIGO TENHO HP PRO LAINE GEN 8. ELE ERA USADO COMO SERVIDOR . QUERO FORMATAR E INSTALAR O SISTEMA OPERACIONAL E DE USO GERAL PARA FAZER TRABALHOS DOMESTICOS E DE FACULDADE E JOGOS. IMPRESSORA, SCANER ETC ', '2020-10-15', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2020-10-14 00:00:00', '2021-01-12', 0, NULL, 0, 'PAGO'),
(00248, 'ACESSO REMOTO', 00070, 00001, 00119, 00002, 'C', 'CONTRATO', '2020-10-15 00:00:00', 'ACESSO REMOTO', 'INSTALACAO DE IMPRESSORA  LASER SAMSUNG XPRESS SL-M2020W\r\n', '2020-10-15', 'SOLCIITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-10-15 00:00:00', '2021-01-13', 0, NULL, 0, 'PAGO'),
(00249, 'CLIENTE', 00079, 00001, 00125, 00002, 'P', 'CONTRATO', '2020-10-19 00:00:00', 'VISITA NO CLIENTE', 'REALIZAR FORMATACAO DE NOTEBOOK SEM BACKUP', '2020-10-24', NULL, NULL, 0.00, 0.00, 0.00, '2020-10-30 00:00:00', NULL, 0, 'CLIENTE DESISTIU DO SERVICO, SEM MOTIVO APARENTE.', 0, 'CANCELADA'),
(00250, 'CLIENTE', 00070, 00001, 00126, 00002, 'C', 'CONTRATO', '2020-10-19 00:00:00', 'NOVO NA CAIXA', 'REALIZAR CONFIGURACOES INICIAIS', '2020-10-19', 'SOLICITACOES DO CLIENTE', 'SOLICITACOES DO CLIENTE', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00251, 'ACESSO REMOTO', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'ACESSO REMOTO', 'PROBLEMAS EM ACESSAR O OFFICE', '2020-10-23', 'OFFICE SEM CHAVE DE ATIVACAO', 'REALIZAR ATIVACAO DO OFFICE 2010', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00252, 'ACESSO REMOTO', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'ACESSO REMOTO', 'PROBLEMAS AO REALIZAR IMPRESSAO', '2020-10-23', 'IMPRESSORA ENCONTRA-SE SEM TINTA', 'REALIZAR COMPRA DE TINTA PRETA', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00253, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'VISITA NO CLIENTE', 'REALIZACAO DE BACKUP MENSAL', '2020-10-23', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00254, 'CLIENTE', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'VISITA NO CLIENTE', 'REALIZACAO DE BACKUP MENSAL', '2020-10-23', 'REALIZACAO DE BACKUP MENSAL', 'REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00255, 'CLIENTE', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'VISITA NO CLIENTE', 'REALIZAR VERIFICACAO NA IMPRESSORA ', '2020-10-23', 'MANUTENCAO PREVENTIVA IMPRESSORA', 'MNUTENCAO PREVENTIVA IMPRESSORA', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00256, 'CLIENTE', 00001, 00001, 00063, 00002, 'C', 'CONTRATO', '2020-10-23 00:00:00', 'VISITA NO CLIENTE', 'REALIZACAO DE BACKUP MENSAL', '2020-10-23', 'REALIZACAO DE BACKUP MENSAL', ' REALIZACAO DE BACKUP MENSAL', 0.00, 0.00, 0.00, '2020-10-23 00:00:00', '2021-01-21', 0, NULL, 0, 'PAGO'),
(00257, 'ACESSO REMOTO', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2020-10-28 00:00:00', 'ACESSO REMOTO', 'EQUIPAMENTO NAO ESTA INICIANDO WINDOWS', '2020-10-28', 'EQUIPAMENTO ESTAVA COM VARIOS PROGRAMAS INICIANDO AO MESMO TEMPO, POR ISSO O WINDOWS DO MESMO NAO INCIAVA NORMALMENTE.', 'REMOVER PROGRAMAS NAO UTILIZADOS, LIMPAR ARQUIVOS E HISTORICOS DO EQUIPAMENTO, E DESABILITAR ALGUNS PROGRAMAS DE INICIAREM AUTOMATICAMENTE.', 0.00, 0.00, 0.00, '2020-11-10 00:00:00', '2021-02-08', 0, NULL, 0, 'PAGO'),
(00258, 'CLIENTE', 00070, 00001, 00128, 00002, 'C', 'CONTRATO', '2020-10-30 00:00:00', 'VISITA NO CLIENTE', 'EQUIPAMENTO NAO ESTA IMPRIMINDO', '2020-10-30', 'EQUIPAMENTO ESTA SEM ESPACO NO HD COM ISSO EQUIPAMENTO NAO ESTA CONSEGUINDO REALIZAR OS PROCEDIMENTOS NORMAIS', 'REALIZAR UMA TRANSFERENCIA DE ALGUNS ARQUIVOS PARA HD EXTERNO OU PENDRIVER, PARA ASSIM DISPONIBILIZAR ESPACO E O EQUIPAMENTO FUNCIONAR NORMALMENTE.', 0.00, 0.00, 0.00, '2020-10-30 00:00:00', '2021-01-28', 0, NULL, 0, 'PAGO'),
(00259, 'CLIENTE', 00039, 00001, 00092, 00002, 'P', 'VISTA', '2020-10-31 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE SISTEMA NAO IMPRIME NOTA DE VENDAS NEM PEDIDOS NA COZINHA', '2020-10-30', 'IMPRESSORA DA COZINHA ESTA COM PROBLEMAS NA PLACA DE REDE, E A DO CAIXA ESTA COM PROBLEMAS NA REDE E NA ENTRADA USB', 'REALIZADO TENTATIVAS DE INSTALACAO DA IMPRESSORA DO CAIXA POREM SEM SUCESSO, A DA COZINHA FICA TEMPO TODO CAINDO A CONEXAO PORTANTO COLOCAMOS ELA PELO CABO USB NO CAIXA, TENTAR REPARAR AS CONFIGURACOES DE REDE DA IMPRESSORA DO CAIXA, SENAO COMPRAR UMA NOVA.', 50.00, 0.00, 50.00, '2020-10-31 00:00:00', '2021-01-29', 0, NULL, 0, 'PAGO'),
(00260, 'EMPRESA', 00070, 00001, 00129, 00002, 'C', 'CONTRATO', '2020-11-10 00:00:00', 'EQUIPAMENTO NOVO NA CAIXA', 'INSTALAR OFFICE, JAVA, GOOGLE CHROME, FIREFOX, ADOBE READER E ATUALIZAR WINDOWS', '2020-11-10', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-11-10 00:00:00', '2021-02-08', 0, NULL, 0, 'PAGO'),
(00261, 'CLIENTE', 00080, 00001, 00130, 00002, 'P', 'CONTRATO', '2020-11-10 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE HOUVE UMA MUDANCA NO PROVEDOR DE INTERNET, COM ISSO AS IMPRESSORAS E COMPARTILHAMENTOS DA REDE FICARAM COMPROMETIDOS, SOLICITA QUE SEJA REVISADO AS IMPRESSORAS INSTALADAS E SEUS COMPARTILHAMENTOS', '2020-11-10', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2020-11-16 00:00:00', '2021-02-08', 0, NULL, 0, 'PAGO'),
(00262, 'CLIENTE', 00080, 00001, 00131, 00002, 'P', 'CONTRATO', '2020-11-10 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE HOUVE UMA MUDANCA NO PROVEDOR DE INTERNET, COM ISSO AS IMPRESSORAS E COMPARTILHAMENTOS DA REDE FICARAM COMPROMETIDOS, SOLICITA QUE SEJA REVISADO AS IMPRESSORAS INSTALADAS E SEUS COMPARTILHAMENTOS', '2020-11-10', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2020-11-16 00:00:00', '2021-02-08', 0, NULL, 0, 'PAGO'),
(00263, 'CLIENTE', 00080, 00001, 00132, 00002, 'P', 'VISTA', '2020-11-10 00:00:00', 'USADO, SEM MARCAS DE USO, C/ FONTE', 'CLIENTE SOLICITA INSTALACAO DO OFFICE 2010, JAVA, FIREFOX, ADOBE READER E IMPRESSORA M15W VIA REDE INFORMA QUE O MESMO ESTA MUITO LENTO', '2020-11-12', 'EQUIPAMENTO NAO ESTA ATUALIZADO COM SP1 DO WINDOWS 7, POSSUI UM SISTEMA OPERACIONAL MUITO PESADO O WINDOWS 7 ULTIMATE E POUCA MEMORIA RAM, EQUIPAMENTO TAMBEM ESTA COM PROBLEMAS NA BATERIA DA CMOS POIS ESTA PERDENDO AS INFORMACOES DO SETUP', 'REINSTALAR WINDOWS 7 PRO, ATUALIZAR DRIVERS E INSTALAR POGRAMAS, TROCAR A BATERIA DO EQUIPAMENTO PARA NAO PERDER MAIS AS INFORMACOES DE BOOT', 250.00, 150.00, 100.00, '2020-11-14 00:00:00', '2021-02-11', 0, NULL, 0, 'PAGO'),
(00264, 'CLIENTE', 00070, 00001, 00133, 00002, 'C', 'CONTRATO', '2020-11-10 00:00:00', 'NOVO NA CAIXA', 'INSTALAR OFFICE, JAVA, GOOGLE CHROME, FIREFOX, ADOBE READER E ATUALIZAR WINDOWS', '2020-11-11', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-11-11 00:00:00', '2021-02-09', 0, NULL, 0, 'PAGO'),
(00265, 'CLIENTE', 00081, 00001, 00134, 00002, 'P', 'VISTA', '2020-11-11 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE WINDOWS INICIA SEM SEUS ARQUIVOS', '2020-11-11', 'SISTEMA DE LOGIN DO USUARIO FICOU CORROMPIDO, INICIANDO APENAS COM USUARIO TEMPORARIO.', 'FAZER BACKUP DOS ARQUIVOS DO USUARIO, CRIAR UM NOVO DIRETORIO VOLTAR OS ARQUIVOS. REALIZAR MAPEAMENTOS NECESSARIOS E REINSTALAR PROGRAMAS. REALIZADA TAMBEM REMOCAO DE 2 ANTIVIRUS DEIXANDO APENAS 1, POIS OS MESMOS DEIXAVAM O EQUIPAMENTO MUITO LENTO. ', 100.00, 30.00, 70.00, '2020-11-11 00:00:00', '2021-02-09', 0, NULL, 0, 'PAGO'),
(00266, 'CLIENTE', 00080, 00001, 00135, 00002, 'P', 'VISTA', '2020-11-11 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO OFFICE 2010, JAVA, FIREFOX, ADOBE READER E IMPRESSORA M15W VIA REDE INFORMA QUE O MESMO ESTA MUITO LENTO', '2020-11-12', 'EQUIPAMENTO NAO ESTA ATUALIZADO COM SP1 DO WINDOWS 7, POSSUI UM SISTEMA OPERACIONAL MUITO PESADO O WINDOWS 7 ULTIMATE E POUCA MEMORIA RAM, EQUIPAMENTO TAMBEM ESTA COM PROBLEMAS NA BATERIA DA CMOS POIS ESTA PERDENDO AS INFORMACOES DO SETUP', 'REINSTALAR WINDOWS 7 PRO, ATUALIZAR DRIVERS E INSTALAR POGRAMAS, TROCAR A BATERIA DO EQUIPAMENTO PARA NAO PERDER MAIS AS INFORMACOES DE BOOT', 250.00, 150.00, 100.00, '2020-11-14 00:00:00', '2021-02-11', 0, NULL, 0, 'PAGO'),
(00267, 'CLIENTE', 00082, 00001, 00136, 00002, 'P', 'CONTRATO', '2020-11-12 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO', '2020-11-12', 'EQUIPAMENTO ESTA COM O HD NO GERENCIADOR DE TAREFAS TRABALHANDO A 100% DE USO, HAVENDO TAMBEM ERRO DE ATUALIZACAO NO WINDOWS POIS O MESMO TENTA REALIZAR ATUALIZACAO POREM SEMPRE APARECE FALHA.', 'REALIZAR BACKUP DOS ARQUIVOS, REINSTALAR SISTEMA OPERACIONAL E ANALISAR O RESULTADO, CASO AINDA PERSISTA O PROBLEMA DE LENTIDAO REALIZAR TAMBEM A TROCA DO HD PARA UM SSD, TENDO EM VISTA QUE O MESMO ESTAVA TRABALHANDO SEMPRE A 100% DE USO CAUSANDO O TRAVAMENTO DO WINDOWS.', 0.00, 0.00, 0.00, '2020-11-12 00:00:00', '2021-02-10', 0, NULL, 0, 'PAGO'),
(00268, 'CLIENTE', 00082, 00001, 00136, 00002, 'P', 'TITULO', '2020-11-14 00:00:00', 'USADO, SEM MARCAS DE USO, FONTE, TECLADO E MOUSE', 'REALIZAR BACKUP DAS INFORMACOES E REINSTALAR WINDOWS COM OS PROGRAMAS PADRAO', '2020-11-16', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 50.00, 150.00, '2020-11-16 00:00:00', '2021-02-14', 0, NULL, 0, 'PAGO'),
(00269, 'ACESSO REMOTO', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2020-11-16 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA QUE SEJA CONFIGURADO UMA PLANILHA NO GOOGLE DOCS PARA QUE SEJA ALIMENTADA PELAS 3 RECEPCIONISTAS', '2020-11-16', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-11-19 00:00:00', '2021-02-17', 0, NULL, 0, 'PAGO'),
(00270, 'CLIENTE', 00083, 00001, 00137, 00002, 'P', 'VISTA', '2020-11-25 00:00:00', 'USADO, SEM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTÃ¡ MUITO LENTO, SOLICITA UM BACKUP DE DADOS E REINSTALACAO DO WINDOWS', '2020-11-26', 'EQUIPAMENTO POSSUI ALGUNS PROGRAMAS DESNECESSARIOS, E PROCESSOS QUE ESTAO OCUPANDO TODO HARDWARE DO MESMO', 'ELIMINACAO DE PROGRAMAS E ARQUIVOS DESNECESSARIOS, EXCLUIR UM PROCESSO QUE ESTA OCUPANDO 30% DA MEMORIA DO EQUIPAMENTO.', 100.00, 0.00, 100.00, '2020-11-26 00:00:00', '2021-02-23', 0, NULL, 0, 'PAGO'),
(00271, 'EMPRESA', 00057, 00001, 00138, 00002, 'P', 'TITULO', '2020-11-25 00:00:00', 'NOVO NA CAIXA', 'EQUIPAMENTO NOVO, REALIZAR INSTALACAO E CONFIGURACOES INICIAIS', '2020-11-26', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-12-21 00:00:00', '2021-02-25', 0, NULL, 0, 'PAGO'),
(00272, 'EMPRESA', 00084, 00001, 00139, 00002, 'P', 'VISTA', '2020-11-25 00:00:00', 'USADO, SEM MARCAS DE USO, C/ FONTE, BATERIA OK', 'CLIENTE SOLICITA INSTALACAO DO OFFICE 2013', '2020-11-26', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2020-11-27 00:00:00', '2021-02-24', 0, NULL, 0, 'PAGO'),
(00273, 'EMPRESA', 00057, 00001, 00086, 00002, 'P', 'TITULO', '2020-11-26 00:00:00', 'USADO, BATERIA N OK, C/ FONTE', 'REALIZAR TROCA DE HD PARA SSD E INSTALAR WINDOWS', '2020-11-26', NULL, NULL, 200.00, 150.00, 50.00, '2020-12-21 00:00:00', '2021-02-26', 0, NULL, 0, 'PAGO'),
(00274, 'CLIENTE', 00070, 00001, 00126, 00002, 'C', 'CONTRATO', '2020-11-27 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE RELATORIO DO EXAME ESTA SAINDO COM LETRAS MIUDAS E SOLICITA INSTALACAO DO SISTEMA PIRAMIDE.', '2020-11-26', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2020-11-27 00:00:00', '2021-02-25', 0, NULL, 0, 'PAGO'),
(00275, 'EMPRESA', 00085, 00001, 00140, 00002, 'P', 'VISTA', '2020-11-28 00:00:00', 'USADO, SEM MARCAS DE USO, BATERIA OK, C/ FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA LENTO SOLICITA BACKUP DAS INFORMACOES E UMA REINSTALACAO DO WINDOWS.', '2020-11-30', 'SOLICITACAO DO CLIENTE.', 'SOLICITACAO DO CLIENTE.', 150.00, 50.00, 100.00, '2020-11-30 00:00:00', '2021-02-27', 0, NULL, 0, 'PAGO'),
(00276, 'CLIENTE', 00083, 00001, 00137, 00002, 'P', 'CONTRATO', '2020-11-30 00:00:00', 'USADO, SEM MARCAS DE USO', 'CLIENTE INFORMA QUE EQUIPAMENTO CONTINUA LENTO MESMO APOS MANUTENCAO PREVENTIVA, SOLICITA BACKUP E REINSTALACAO DO WINDOWS', '2020-11-30', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 0.00, 150.00, '2020-11-30 00:00:00', '2021-02-28', 0, NULL, 0, 'PAGO'),
(00277, 'EMPRESA', 00086, 00001, 00141, 00002, 'P', 'CONTRATO', '2020-12-09 00:00:00', 'USADO, BATERIA OK, C FONTE, SEM CD ROM, BARULHO ', 'REALIZAR BACKUP E FORMATACAO PARA WINDOWS 64BITS', '2020-12-11', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 0.00, 150.00, '2020-12-21 00:00:00', '2021-03-19', 0, NULL, 0, 'PAGO'),
(00278, 'CLIENTE', 00083, 00001, 00137, 00002, 'G', 'CONTRATO', '2020-12-19 00:00:00', 'USADO', 'EQUIPAMENTO  NÃ£O INICIA WINDOWS ', '2020-12-19', NULL, NULL, 0.00, 0.00, 0.00, '2020-12-19 00:00:00', '2021-03-19', 0, NULL, 0, 'PAGO'),
(00279, 'EMPRESA', 00087, 00001, 00142, 00002, 'P', 'VISTA', '2020-12-21 00:00:00', 'USADO, MARCAS DE USO, CABO DE ENERGIA', 'CLIENTE SOLICITA TROCA DO HD E INSTALACAO DO WINDOWS', '2020-12-19', 'SOLICITACAO DO CLIENTE', 'ADCIONADO 1 SSD DE 240GB E PROVIDENCIADO UM CABO DE DADOS PARA O HD DE 1TB, DRIVER DE DVD ROM NAO POSSUI CONEXAO DE DADOS NEM ENERGIA.', 200.00, 20.00, 180.00, '2020-12-21 00:00:00', '2021-03-21', 0, NULL, 0, 'PAGO'),
(00280, 'EMPRESA', 00083, 00001, 00137, 00002, 'P', 'VISTA', '2020-12-26 00:00:00', 'USADO, SEM MARCAS DE USO, C/ TECLADO E MOUSE', 'EQUIPAMENTO NAO ESTA INICIANDO WINDOWS', '2020-12-28', 'WINDOWS NAO ESTA INICIANDO DEVIDO ALGUM PROBLEMA DE ATUALIZACAO OU INSTALACAO DE SOFTWARES OU DEFEITO EM COMPONENTES', 'REALIZADA TROCA DO HD, REINSTALACAO DO WINDOWS E O EQUIPAMENTO FUNCIONOU OK, INFORMO TAMBEM QUE O MONITOR DO EQUIPAMENTO ESTA COM PROBLEMAS, REALIZAR TROCA URGENTE. POIS O MESMO DEMORA A EXIBIR AS IMAGENS PELA MANHA, COM ISSO O COMPUTADOR ERA REINICIADO VARIAS VEZES MANUALMENTE, POIS ACHAVAM QUE O PROBLEMA ESTAVA NO COMPUTADOR. REALIZAMOS A TROCA DO MONITOR POR UM DE NOSSA PROPRIEDADE E O EQUIPAMENTO INICIOU NORMAL.', 200.00, 100.00, 100.00, '2020-12-30 00:00:00', '2021-03-30', 0, NULL, 0, 'PAGO'),
(00281, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2020-12-30 00:00:00', 'USADO, SEM MARCAS DE USO, DATA E HORA ATRASANDO', 'REALIZACAO DE BACKUP MENSAL', '2020-12-30', 'REALIZACAO DE BACKUP', 'REALIZACAO DE BACKUP', 0.00, 0.00, 0.00, '2020-12-30 00:00:00', '2021-03-30', 0, NULL, 0, 'PAGO'),
(00282, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2020-12-30 00:00:00', 'USADO, PLACA MAE C/ PROB BATERIA,', 'REALIZACAO DE BACKUP', '2020-12-30', 'REALIZACAO DE BACKUP', 'REALIZACAO DE BACKUP', 0.00, 0.00, 0.00, '2020-12-30 00:00:00', '2021-03-30', 0, NULL, 0, 'PAGO'),
(00283, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2021-01-05 00:00:00', 'USADO, DATA E HORA ATRASANDO, ', 'CLIENTE INFORMA QUE SEMPRE AO LIGAR PRECISA ATUALIZAR DATA E HORA DO EQUIPAMENTO', '2021-01-05', 'BATERIA CMOS DO EQUIPAMENTO ESTA VELHA', 'REALIZAR TROCA DA BATERIA CMOS DO COMPUTADOR', 0.00, 0.00, 0.00, '2021-01-05 00:00:00', '2021-04-05', 0, NULL, 0, 'PAGO'),
(00284, 'EMPRESA', 00070, 00001, 00105, 00002, 'C', 'CONTRATO', '2021-01-05 00:00:00', 'USADO, LETRA I SOLTA', 'TECLA I DO EQUIPAMENTO ESTA SOLTA, PRECISA CONFIGURAR ATALHO PARA PLANILHAS DO GOOGLE DRIVER', '2021-01-05', 'SOLICITACAO DO CLIENTE', 'REALIZADO AJUSTE NA TECLA SOLTA E CONFIGURADO ATALHO DO GOOGLE DRIVER CONFORME SOLICITADO.', 0.00, 0.00, 0.00, '2021-01-05 00:00:00', '2021-04-05', 0, NULL, 0, 'PAGO'),
(00285, 'EMPRESA', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2021-01-05 00:00:00', 'USADO, BATERIA OK, PROBLEMAS OFFICE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM PROBLEMAS NO OFFICE E EQUIPAMENTO SO FUNCIONA COM CARREGADOR LIGADO.', '2021-01-05', 'ANTIVIRUS ESTAVA BLOQUEADO O ATIVADOR DO OFFICE', 'ADCIONADO UMA EXCESSAO NO ANTIVIRUS PARA O ATIVADOR DO OFFICE, BATERIA DO EQUIPAMENTO ESTAVA NORMAL.', 0.00, 0.00, 0.00, '2021-01-05 00:00:00', '2021-04-05', 0, NULL, 0, 'PAGO'),
(00286, 'ACESSO REMOTO', 00081, 00001, 00134, 00002, 'P', 'TITULO', '2021-01-13 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR COMPARTILHAMENTOS DO SERVIDOR NEM PASTAS NORMAIS.', '2021-01-12', 'PROBLEMAS NA ATUALIZACAO DE WINDOWS', 'REALIZAR NOVAMENTE ATUALIZACAO DO WINDOWS COM O MEDIA CREATION TOOL PARA REVER ERROS DE DLL EM PASTAS E COMPARTILHAMENTOS', 100.00, 50.00, 50.00, '2021-01-13 00:00:00', '2021-04-13', 0, NULL, 0, 'PAGO'),
(00287, 'ACESSO REMOTO', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2021-01-15 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR SISTEMAS UNIMED E POLISONOGRAFIA', '2021-01-15', 'SISTEMA NAO ACESSA NO EQUIPAMENTO', 'LED DO TECLADO DE MAIUSCULO NAO ESTAVA ATIVANDO, PROVAVELMENTE O MESMO ESTAVA ATIVO NO MOMENTO DE INFORMA A SENHA.', 0.00, 0.00, 0.00, '2021-01-15 00:00:00', '2021-04-15', 0, NULL, 0, 'PAGO'),
(00288, 'EMPRESA', 00088, 00001, 00143, 00002, 'P', 'VISTA', '2021-02-02 00:00:00', 'USADO, BATERIA OK, C FONTE', 'USUARIO NAO CONSEGUE ACESSAR WINDOWS', '2021-02-03', 'EQUIPAMENTO NAO POSSUI PROGRAMAS INSTALADOS E TINHA PROBLEMAS COM A SENHA DE ACESSO', 'REALIZAR TODO WINDOWS UPDATE, ALTERAR A SENHA DO MESMO E INSTALAR PROGRAMA OFFICE.', 50.00, 0.00, 50.00, '2021-02-05 00:00:00', '2021-05-03', 0, NULL, 0, 'PAGO'),
(00289, 'CLIENTE', 00089, 00001, 00144, 00002, 'P', 'VISTA', '2021-02-25 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE NAO CONSEGUE REALIZAR ALTERACAO EM DOCUMENTO RECEBIDO NO WORD', '2021-02-23', 'MICROSOFT OFFICE QUE ESTAVA INSTALADO NO EQUIPAMENTO ERA UM POUCO PESADO E TRAVAVA COM O ARQUIVO QUE TAMBEM ERA MUITO GRANDE.', 'REALIZADA A TROCA DO OFFICE 2016 PARA O 2013 QUE E UM POUCO MAIS LEVE COM ISSO TIVEMOS SUCESSO NA EDICAO DOS DOCUMENTOS RECEBIDOS', 50.00, 0.00, 50.00, '2021-02-25 00:00:00', '2021-05-26', 0, NULL, 0, 'PAGO'),
(00290, 'CLIENTE', 00089, 00001, 00145, 00002, 'P', 'VISTA', '2021-02-25 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO DESLIGA E QUE NAO POSSUI FONTE ', '2021-02-24', 'EQUIPAMENTO SEM FONTE', 'DISPONIBILIZAR UMA FONTE PARA O EQUIPAMENTO E VERIFICAR SE O MESMO AINDA IRA DESLIGAR', 50.00, 0.00, 50.00, '2021-02-25 00:00:00', '2021-05-26', 0, NULL, 0, 'PAGO'),
(00291, 'CLIENTE', 00032, 00001, 00146, 00002, 'P', 'VISTA', '2021-02-27 00:00:00', 'ESTILO MINI PC, MONITOR LIGADO NO USB, COM ADAPTADOR WIFI', 'CLIENTE SOLICITA RELIGACAO E ORGANIZACAO DE EQUIPAMENTO PRINCIPAL DA LOJA', '2021-02-27', 'ORGANIZAR E RELIGAR EQUIPAMENTO', 'ORGANIZAR E RELIGAR EQUIPAMENTO', 150.00, 50.00, 100.00, '2021-02-27 00:00:00', '2021-05-28', 0, NULL, 0, 'PAGO'),
(00292, 'CLIENTE', 00090, 00001, 00147, 00002, 'P', 'VISTA', '2021-03-05 00:00:00', 'EQUIPAMENTO NOVO', 'EQUIPAMENTO NOVO, CLIENTE SOLICITA INSTALACAO DOS APLICATIVOS INICIAIS E CONFIGURACAO DO MESMO.', '2021-03-05', NULL, NULL, 50.00, 0.00, 50.00, '2021-03-08 00:00:00', '2021-06-03', 0, NULL, 0, 'PAGO'),
(00293, 'EMPRESA', 00038, 00001, 00051, 00002, 'P', 'TITULO', '2021-03-05 00:00:00', 'USADO, BATERIA OK, C FONTE', 'CLIENTE SOLICITA UMA FORMATACAO E REINSTALACAO DO WINDOWS', '2021-03-08', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 50.00, 50.00, '2021-03-08 00:00:00', '2021-06-06', 0, NULL, 0, 'PAGO'),
(00294, 'ACESSO REMOTO', 00081, 00001, 00148, 00002, 'P', 'TITULO', '2021-03-05 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR AS PASTAS DE COMPARTILHAMENTO E O SISTEMA ', '2021-03-05', 'PROBLEMAS NO COMPARTILHAMENTO DA PASTA PUBLICO E SISTEMA NO SERVIDOR', 'RECONFIGURAR A PASTA E ACESSO AO SISTEMA, REALIZANDO ATUALIZACAO DE WINDOWS QUE ESTAVA PENDENTE A VERSAO WINDOWS 20H2', 100.00, 50.00, 50.00, '2021-03-08 00:00:00', '2021-06-03', 0, NULL, 0, 'PAGO'),
(00295, 'CLIENTE', 00070, 00001, 00149, 00002, 'C', 'CONTRATO', '2021-03-08 00:00:00', 'VISITA AO CLIENTE', 'EQUIPAMENTO NAO ESTA CONSEGUINDO REALIZAR IMPRESSOES NO CONSULTORIO DA DRA MONICA, IMPRESSORA EPSON M1130', '2021-03-08', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2021-03-08 00:00:00', '2021-06-06', 0, NULL, 0, 'PAGO'),
(00296, 'EMPRESA', 00091, 00001, 00150, 00002, 'P', 'VISTA', '2021-03-15 00:00:00', 'USADO, SEM BATERIA, FONTE GENERICA', 'CLIENTE SOLICITA UM UPGRADE POIS O EQUIPAMENTO ESTA MUITO LENTO', '2021-03-19', 'EQUIPAMENTO POSSUI APENAS 2GB DE MEMÃ³RIA RAM, HD ANTIGO ', 'REALIZAR TROCA DO HD PARA UM SSD DA KINGSTON DE 120GB, ADCIONAR MAIS 2 GB DE MEMORIA DDR2 E REINSTALAR WINDOWS 7.', 200.00, 0.00, 200.00, '2021-03-19 00:00:00', '2021-06-17', 0, NULL, 0, 'PAGO'),
(00297, 'EMPRESA', 00001, 00001, 00058, 00002, 'C', 'CONTRATO', '2021-03-16 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA VERIFICACAO NO EQUIPAMENTO POIS NAO ESTA IMPRIMINDO E REALIZAR BACKUP MENSAL', '2021-03-16', 'REALIZACAO DE BACKUP MENSAL, IMPRESSORA ESTAVA SEM TINTA E COM PROBLEMAS NO JATO DE IMPRESSAO', 'REALIZADO BACKUP, FORAM FEITO ALGUMAS LIMPEZAS DE CABECOTE, LIMPEZA DOS JATOS DA IMPRESSORA POREM CONTINUA NAO IMPRIMINDO SERÃ¡ NECESSARIO IR UM TECNICO NO LOCAL PARA VERIFICAR A MESMA. POIS FOI ENCONTRADO UM PEDADO DE PAPEL GRUDADO AO JATO.', 0.00, 0.00, 0.00, '2021-03-16 00:00:00', '2021-06-14', 0, NULL, 0, 'PAGO'),
(00298, 'CLIENTE', 00001, 00001, 00020, 00002, 'C', 'CONTRATO', '2021-03-16 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR BACKUP MENSAL', '2021-03-16', 'REALIZAR BACKUP MENSAL', 'REALIZAR BACKUP MENSAL', 0.00, 0.00, 0.00, '2021-03-16 00:00:00', '2021-06-14', 0, NULL, 0, 'PAGO'),
(00299, 'EMPRESA', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2021-03-16 00:00:00', 'USADO, BATERIA OK, C/ FONTE', 'EQUIPAMENTO ESTA MUITO LENTO.', '2021-03-19', 'EQUIPAMENTO FOI TROCADO DE SETOR E NUNCA FOI REALIZADO UMA FORMATACAO NO MESMO.', 'REALIZAR UMA FORMATACAO E REINSTALAR TODOS OS APLICATIVOS.', 0.00, 0.00, 0.00, '2021-03-17 00:00:00', '2021-06-15', 0, NULL, 0, 'PAGO'),
(00300, 'EMPRESA', 00092, 00001, 00151, 00002, 'P', 'TITULO', '2021-03-17 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA INSTALACAO DO OFFICE, ANTIVIRUS E PROGRAMAS INICIAS', '2021-03-17', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 50.00, 0.00, 50.00, '2021-03-17 00:00:00', '2021-06-15', 0, NULL, 0, 'PAGO'),
(00301, 'EMPRESA', 00064, 00001, 00095, 00002, 'P', 'TITULO', '2021-03-20 00:00:00', 'USADO, PLACA DE VIDEO, S TECLADO, S MOUSE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM PROBLEMAS PARA IDENTIFICAR PENDRIVER', '2021-03-22', 'EQUIPAMENTO ESTA COM DIFICULDADE EM RECONHECER PENDRIVER E MUITO LENTO.', 'REALIZAR UMA FORMATACAO COMPLETA COM BACKUP DE DADOS', 150.00, 0.00, 150.00, '2021-03-22 00:00:00', '2021-06-20', 0, NULL, 0, 'PAGO'),
(00302, 'EMPRESA', 00093, 00001, 00152, 00002, 'P', 'TITULO', '2021-03-22 00:00:00', 'USADO, BATERIA N OK, C/ FONTE, CARTAO DE MEM 3GB, ', 'CLIENTE SOLICITA QUE SEJA FEITA UMA LIMPEZA NO EQUIPAMENTO POIS O FILHO IRA UTILIZAR PARA ASSISTIR AULAS', '2021-03-24', 'EQUIPAMENTO ESTA COM VERSAO DE WINDOWS INCORRETA, POIS O FABRICANTE RECOMENDA WINDOWS 7 HOME E ATUALMENTE POSSUI O WINDOWS 8.1 PRO E A TEMPOS NAO E FEITO UMA FORMATACAO NO MESMO', 'REALIZAR BACKUP DOS DADOS E FORMATAR EQUIPAMENTO INSTALANDO O WINDOWS 7 HOME QUE Ã© O IDEAL PARA O MESMO.', 150.00, 50.00, 100.00, '2021-03-24 00:00:00', '2021-06-22', 0, NULL, 0, 'PAGO'),
(00303, 'EMPRESA', 00094, 00001, 00153, 00002, 'P', 'TITULO', '2021-04-01 00:00:00', 'VISITA AO CLIENTE', 'EQUIPAMENTO NAO CONSEGUE REALIZAR IMPRESSAO', '2021-04-01', 'AS IMPRESSORAS NAO ESTAVAM CONSEGUINDO SE CONECTAR AO ROTEADOR DA LOJA, POIS AS REDES NAO APARECIAM', 'REALIZAR A CONFIGURACAO DE UM NOVO ROTEADOR, PARA TODOS OS EQUIPAMENTOS.', 250.00, 100.00, 150.00, '2021-04-01 00:00:00', '2021-06-30', 0, NULL, 0, 'PAGO'),
(00304, 'EMPRESA', 00094, 00001, 00153, 00002, 'P', 'TITULO', '2021-04-03 00:00:00', 'USADO, MARCAS DE USO, CABO DE FORCA QUEBRADO', 'CLIENTE SOLICITA BACKUP DAS INFORMACOES E FORMATACAO COMPLETA ', '2021-04-05', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 100.00, 100.00, '2021-04-05 00:00:00', '2021-07-04', 0, NULL, 0, 'PAGO'),
(00305, 'EMPRESA', 00065, 00001, 00096, 00002, 'P', 'TITULO', '2021-04-09 00:00:00', 'USADO, MARCAS DE USO, SEM ESPELHO TRAS, ', 'CLIENTE INFORMA QUE EQUIPAMENTO LEVA CERTA DE 8 MINUTOS PARA INICIAR OS TRABALHOS E QUE APRESENTA TELA AZUL.', '2021-04-12', 'EQUIPAMENTO APRESENTA PROBLEMAS NO DRIVER DE VIDEO', 'REINSTALAR O DRIVER DE VIDEO NO EQUIPAMENTO, PORÃ©M POSTERIORMENTE SERA NECESSÃ¡RIO REALIZAR UMA FORMATACAO NO MESMO, PARA PODER RESOLVER O PROBLEMA DA LENTIDAO NO INICIO.', 50.00, 0.00, 50.00, '2021-04-09 00:00:00', '2021-07-08', 0, NULL, 0, 'PAGO'),
(00306, 'CLIENTE', 00095, 00001, 00154, 00002, 'P', 'VISTA', '2021-04-09 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA ACESSANDO SUA AREA DE TRABALHO.', '2021-04-12', 'EQUIPAMENTO NÃ£O INICIA PERFIL DO USUARIO', 'REINSTALAR WINDOWS COM TODOS PROGRAMAS', 150.00, 30.00, 120.00, '2021-04-10 00:00:00', '2021-07-09', 0, NULL, 0, 'PAGO'),
(00307, 'CLIENTE', 00070, 00001, 00123, 00002, 'C', 'CONTRATO', '2021-04-13 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR SUA AREA DE TRABALHO, POIS O EQUIPAMENTO ESTA PEDINDO SENHA', '2021-04-13', 'EQUIPAMENTO TEVE PROBLEMAS NA ATUALIZACAO DO WINDOWS, E O MESMO ESTAVA TRAVADO NA TELA DE LOGIN PARA REPARACAO', 'REINICIAR EQUIPAMENTO PARA QUE A ATUALIZACAO FOSSE COMPLETADA DA FORMA CORRETA', 0.00, 0.00, 0.00, '2021-04-13 00:00:00', '2021-07-12', 0, NULL, 0, 'PAGO'),
(00308, 'EMPRESA', 00096, 00001, 00155, 00002, 'P', 'TITULO', '2021-04-15 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, BTN MOUSE DAN, ', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA TRAVADO E NAO CONSEGUE ABRIR NENHUM PROGRAMA', '2021-04-17', 'EQUIPAMENTO ESTA COM PROBLEMAS NO HD, O MESMO FICA ESTALANDO E PROVOCANDO LENTIDAO, MESMO DEPOIS DE FORMATADO O HD ANTIGO AINDA CONTINUAVA LENTO E DANDO ERRO EM APLICATIVOS', 'REALIZAR TROCA DE HD PARA UM SSD KINGSTON DE 120GB', 370.00, 50.00, 320.00, '2021-04-19 00:00:00', '2021-07-18', 0, NULL, 0, 'PAGO'),
(00309, 'CLIENTE', 00094, 00001, 00153, 00002, 'G', 'CONTRATO', '2021-04-15 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE REDE NAO ESTA FUNCIONANDO', '2021-04-10', 'PORTA WAN DO ROTEADOR ESTA APRESENTANDO PROBLEMAS', 'TROCAR PARA UMA PORTA LAN E DESATIVAR O DHCP', 0.00, 0.00, 0.00, '2021-04-15 00:00:00', '2021-07-14', 0, NULL, 30, 'PAGO'),
(00310, 'CLIENTE', 00070, 00001, 00123, 00002, 'C', 'CONTRATO', '2021-04-15 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO WINDOWS', '2021-04-13', 'EQUIPAMENTO TEVE PROBLEMAS AO REALIZAR ATUALIZACAO DO WINDOWS', 'RODAR NOVAMENTE O WINDOWS UPDATE E TERMINAR', 0.00, 0.00, 0.00, '2021-04-15 00:00:00', '2021-07-14', 0, NULL, 16, 'PAGO'),
(00311, 'EMPRESA', 00097, 00001, 00156, 00002, 'P', 'TITULO', '2021-04-18 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA LENTO E SOLICITA BACKUP E FORMATACAO, E INSTALACAO E CONFIGURACAO DA IMPRESSORA LASERJET PRO M102W ', '2021-04-19', 'EQUIPAMENTO ESTA COM HD EM 100% DE USO TODO TEMPO', 'REALIZADA A TROCA PARA UM SSD KINGSTON DE 120GB ', 370.00, 30.00, 340.00, '2021-04-19 00:00:00', '2021-07-18', 0, NULL, 0, 'PAGO'),
(00312, 'ACESSO REMOTO', 00001, 00001, 00008, 00002, 'C', 'CONTRATO', '2021-04-20 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE UTILIZAR A BIOMETRIA DA UNIMED', '2021-04-20', 'JAVA DESATUALIZADO, DADOS DE ACESSO 108500627 SENHA 3T5D9N', 'ATUALIZAR O JAVA E AUTORIZAR OS APLICATIVOS', 0.00, 0.00, 0.00, '2021-04-20 00:00:00', '2021-07-19', 0, NULL, 0, 'PAGO'),
(00313, 'CLIENTE', 00097, 00001, 00156, 00002, 'G', 'CONTRATO', '2021-04-22 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR INSTALACAO E CONFIGURACAO DA IMPRESSORA NA REDE SEM FIO', '2021-04-22', 'REALIZAR CONFIGURACAO PENDENTE DE IMPRESSORA', 'REALIZAR CONFIGURACAO PENDENTE DE IMPRESSORA', 0.00, 0.00, 0.00, '2021-04-22 00:00:00', '2021-07-21', 0, NULL, 7, 'PAGO'),
(00314, 'CLIENTE', 00064, 00001, 00095, 00002, 'G', 'CONTRATO', '2021-04-22 00:00:00', 'VISITA AO CLIENTE', 'EQUIPAMENTO ESTA DESLIGANDO', '2021-04-22', 'EQUIPAMENTO ESTAVA COM PROBLEMAS NO CABO DE DADOS DO SSD', 'REALIZADA TROCA DO CABO SSD PELO CABO DO DVD ROM QUE NAO ESTAVA SENDO UTILIZADO', 0.00, 0.00, 0.00, '2021-04-22 00:00:00', '2021-07-21', 0, NULL, 7, 'PAGO');
INSERT INTO `tbl_ordemservico_os` (`NUM_ID_OS`, `TXT_TIPO_ATENDIMENTO_OS`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TXT_TIPO_OS`, `TXT_CONDICAO_PAGAMENTO_OS`, `DTH_ABERTURA_OS`, `TXT_DADOSGERAIS_OS`, `TXT_RECLAMACAO_OS`, `DTA_PREVISAO_OS`, `TXT_DEFEITO_OS`, `TXT_RESOLUCAO_OS`, `VAL_TOTAL_OS`, `VAL_DESCONTO_OS`, `VAL_FINAL_OS`, `DTH_ENCERRAMENTO_OS`, `DTA_FIMGARANTIA_OS`, `NUM_NFSE_OS`, `TXT_CANCELAMENTO_OS`, `NUM_KM_OS`, `TXT_STATUS_OS`) VALUES
(00315, 'EMPRESA', 00070, 00001, 00157, 00002, 'C', 'CONTRATO', '2021-04-26 00:00:00', 'USADO, S TECLADO, S MOUSE, S CABO DE FORCA', 'CLIENTE SOLICITA QUE SEJA CONFIGURADO UM SERVIDOR DE ARQUIVOS COM OS DIRETORIOS RECEPÃ§Ã£O/MEDICOS/FINANCEIRO/CALL CENTER/FONOAUDIOLOGOS', '2021-04-28', 'EQUIPAMENTO PRECISA SER FORMATADO, POIS NAO TEMOS ACESSO AOS USUARIOS PRE CONFIGURADOS.', 'REALIZADA INSTALACAO DO WINDOWS SERVER 2012 R2 USUARIO ADMINISTRADOR SENHA ADM@OTORHINUS', 0.00, 0.00, 0.00, '2021-05-03 00:00:00', '2021-08-01', 0, NULL, 10, 'PAGO'),
(00316, 'CLIENTE', 00081, 00001, 00148, 00002, 'P', 'TITULO', '2021-04-29 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA CONFIGURACAO DA IMPRESSORA BROTHER 1210W NA REDE WIFI', '2021-04-29', 'SOLICITAÃ§Ã£O DO CLIENTE ', 'CONFIGURAR A IMPRESSORA NA NOVA REDE DO CLIENTE', 100.00, 0.00, 100.00, '2021-04-29 00:00:00', '2021-07-28', 0, NULL, 16, 'PAGO'),
(00317, 'CLIENTE', 00081, 00001, 00158, 00002, 'P', 'TITULO', '2021-04-29 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO SISTEMA DA LOJA', '2021-04-29', 'CLIENTE SOLICITA INSTALACAO DO SISTEMA DA LOJA', 'CLIENTE SOLICITA INSTALACAO DO SISTEMA DA LOJA', 100.00, 30.00, 70.00, '2021-04-29 00:00:00', '2021-07-28', 0, NULL, 0, 'PAGO'),
(00318, 'EMPRESA', 00009, 00001, 00159, 00002, 'P', 'CONTRATO', '2021-05-07 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, TEC NOK, ', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO E ALGUMAS TECLAS FALHANDO, EQUIPAMENTO ESTA COM HD BALANCANDO DENTRO', '2021-05-10', NULL, NULL, 0.00, 0.00, 0.00, '2022-02-04 00:00:00', '2021-08-23', 0, NULL, 0, 'PAGO'),
(00319, 'EMPRESA', 00087, 00001, 00142, 00002, 'P', 'VISTA', '2021-05-07 00:00:00', 'USADO, SOMENTE CPU', 'CLIENTE INFORMA QUE EQUIPAMENTO NÃ£O ESTA INICIANDO WINDOWS', '2021-05-10', 'A BATERIA CMOS ESTAVA COM PROBLEMAS, COM ISSO AS CONFIGURACOES DE BOOT NAO ESTAVAM CONFIGURADAS, SEMPRE PRECISAVA RECONFIGURAR', 'TROCAR A BATERIA E CONFIGURAR AS OPCOES DE BOOT DO WINDOWS', 50.00, 0.00, 50.00, '2021-05-14 00:00:00', '2021-08-12', 0, NULL, 0, 'PAGO'),
(00320, 'EMPRESA', 00098, 00001, 00160, 00002, 'P', 'VISTA', '2021-05-13 00:00:00', 'USADO, BATERIA OK, C FONTE, TELA COM CANTO SOLTO', 'CLIENTE INFORMA QUE EQUIPAMENTO LIGA MAS NAO INICIA WINDOWS, SOLICITA RECUPERACAO DOS ARQUIVOS E SE POSSIVEL INSTALACAO DO WINDOWS 7', '2021-05-17', 'EQUIPAMENTO ESTAVA COM PROBLEMA DE INICIALIZACAO DO WINDOWS.', 'REALIZADO BACKUP DAS INFORMACOES, CRIACAO DA MIDIA ONLINE DO NOTEBOOK PC-121, E REINSTALACAO DO WINDOWS NO EQUIPAMENTO.', 150.00, 50.00, 100.00, '2021-05-16 00:00:00', '2021-08-14', 0, NULL, 15, 'PAGO'),
(00321, 'EMPRESA', 00027, 00001, 00161, 00002, 'P', 'TITULO', '2021-05-19 00:00:00', 'MARCAS DE USO, TELA NOK, BATERIA NOK, REDE 2.5 ', 'CLIENTE SOLICITA UMA FORMATACAO COM BACKUP', '2021-05-21', 'EQUIPAMENTO TINHA UMA SENHA, DESCONHECIDA E COM POUCA MEMORIA RAM.', 'REALIZAR UMA FORMATACAO CONFORME SOLICITACAO DO CLIENTE E APLICACAO DE MEMORIA RAM TOTALIZANDO 4GB', 200.00, 50.00, 150.00, '2021-05-25 00:00:00', '2021-08-23', 0, NULL, 0, 'FATURADA'),
(00322, 'EMPRESA', 00099, 00001, 00162, 00002, 'P', 'VISTA', '2021-06-07 00:00:00', 'USADO, MARCAS DE USO', 'CLIENTE INFORMA QUE NAO CONSEGUE INSTALAR IMPRESSORA NO COMPUTADOR', '2021-06-08', 'EQUIPAMENTO, NAO CONSEGUE ATUALIZAR WINDOWS, TEM PROBLEMAS PARA RECONHECER A IMPRESSORA CONECTADA, SPOOLER DE IMPRESSAO COM FALHAS, NAO REPRODUZ O SOM E NAO INSTALA OFFICE', 'REINSTALAR WINDOWS E INSTALAR OS PROGRAMAS NECESSARIOS. HP M1132 MFP, OFFICE 2013, DRIVER DE SOM', 100.00, 0.00, 100.00, '2021-06-08 00:00:00', '2021-09-06', 0, NULL, 28, 'PAGO'),
(00323, 'CLIENTE', 00065, 00001, 00163, 00002, 'P', 'TITULO', '2021-06-08 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA LIGANDO.', '2021-06-08', 'FONTE ESTA COM MAL CONTATO, QUANDO FUNCIONA NAO PASSA ENERGIA SUFICIENTE.', 'REALIZAR TROCA DA FONTE', 150.00, 30.00, 120.00, '2021-06-21 00:00:00', '2021-09-19', 0, NULL, 20, 'PAGO'),
(00324, 'CLIENTE', 00100, 00001, 00164, 00002, 'P', 'CONTRATO', '2021-06-08 00:00:00', 'USADO, MARCAS DE USO, RISCO NA TELA, BATERIA OK', 'CLIENTE SOLICITA A TROCA DO HD PARA UM SSD KINGSTON COM WINDOWS 10 SEM BACKUP', '2021-06-08', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 320.00, 20.00, 300.00, '2021-06-09 00:00:00', '2021-09-06', 0, NULL, 10, 'PAGO'),
(00325, 'ACESSO REMOTO', 00081, 00001, 00158, 00002, 'G', 'CONTRATO', '2021-06-09 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO CONSEGUE ACESSAR COMPARTILHAMENTOS E SISTEMAS', '2021-06-09', 'ANTIVIRUS ESTA BLOQUEANDO O ACESSO AOS COMPARTILHAMENTOS', 'DESABILITAR O ANTIVIRUS, REALIZAR OS AECSSOS E HABILITAR NOVAMENTE.', 0.00, 0.00, 0.00, '2021-06-09 00:00:00', '2021-09-07', 0, NULL, 0, 'PAGO'),
(00326, 'ACESSO REMOTO', 00070, 00001, 00129, 00002, 'C', 'CONTRATO', '2021-06-09 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE IMPRESSORA ESTA COM FALHAS', '2021-06-09', 'IMPRESSORA COM MANGUEIRAS ENTUPIDAS', 'REALIZADA LIMPEZA DOS JATOS DE TINTA', 0.00, 0.00, 0.00, '2021-06-09 00:00:00', '2021-09-07', 0, NULL, 0, 'PAGO'),
(00327, 'CLIENTE', 00002, 00001, 00165, 00002, 'P', 'VISTA', '2021-06-28 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, TEC N OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA TRAVANDO AO INICIAR E AS VEZES NO MEIO DE GRAVACAO DE AULAS', '2021-06-30', 'EQUIPAMENTO ENCONTRA-SE COM PROBLEMAS DE PLACA MAE, NAO SENDO POSSIVEL A REPARACAO', 'SOMENTE A TROCA DA PLACA MAE, POREM INVIABILIZADO DEVIDO O ALTO CUSTO DA MESMA.', 200.00, 100.00, 100.00, '2021-07-02 00:00:00', '2021-09-30', 0, NULL, 20, 'PAGO'),
(00328, 'CLIENTE', 00101, 00001, 00166, 00002, 'P', 'VISTA', '2021-06-29 00:00:00', 'NOVO', 'CLIENTE SOLICITA INSTALAÃ§Ã£O DE PROGRAMAS PROGRAMAS, ATUALIZAÃ§Ã£O DE WINDOWS E IMPRESSORA CÃ¢NON G3110', '2021-06-29', 'EQUIPAMENTO NOVO', 'REALIZAR INSTALACAO CONFORME SOLICITACAO DO CLIENTE, A IMPRESSORA APRESENTOU PROBLEMAS AO PUXAR PAPEL, TÃ©CNICO ACIONADO.', 100.00, 0.00, 100.00, '2021-06-30 00:00:00', '2021-09-28', 0, NULL, 20, 'PAGO'),
(00329, 'EMPRESA', 00102, 00001, 00167, 00002, 'P', 'TITULO', '2021-06-29 00:00:00', 'USADO, MARCAS DE USO, BATERIA NOK, ', 'CLIENTE SOLICITA FORMATACAO SEM BACKUP', '2021-06-30', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 50.00, 50.00, '2021-07-02 00:00:00', '2021-09-30', 0, NULL, 0, 'PAGO'),
(00330, 'CLIENTE', 00103, 00001, 00168, 00002, 'P', 'VISTA', '2021-07-01 00:00:00', 'USADO, CANTO ABERTO, TAMPA DRIVER NOK, BATERIA NOK, ', 'CLIENTE SOLICITA BACKUP DAS INFORMACOES E UMA FORMATACAO', '2021-07-02', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 50.00, 100.00, '2021-07-02 00:00:00', '2021-09-30', 0, NULL, 10, 'PAGO'),
(00331, 'CLIENTE', 00072, 00001, 00110, 00002, 'P', 'CONTRATO', '2021-07-01 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO DA VIDEO', '2021-07-02', NULL, 'EQUIPAMENTO ESTA COM PLACA MAE E PROCESSADOR QUEIMADO, NAO FOI POSSIVEL REALIZAR A TROCA POIS EQUIPAMENTO E MUITO ANTIGO', 0.00, 0.00, 0.00, '2022-02-04 00:00:00', '2022-05-05', 0, NULL, 24, 'PAGO'),
(00332, 'CLIENTE', 00100, 00001, 00169, 00002, 'P', 'VISTA', '2021-07-06 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK', 'CLIENTE INFORMA QUE SOLICITA IMPRESSAO POREM O DOCUMENTO SAI EM BRANCO', '2021-07-06', 'IMPRESSORA FICOU UM GRANDE PERIODO SEM IMPRIMIR, PROVAVELMENTE ESTA COM OS TUBOS ENTUPIDOS', 'REALIZAR UMA LIMPEZA DE CABECOTE E RETIRADA DE TINTA DOS TUBOS', 50.00, 0.00, 50.00, '2021-07-06 00:00:00', '2021-10-04', 0, NULL, 10, 'PAGO'),
(00333, 'EMPRESA', 00032, 00001, 00146, 00002, 'P', 'VISTA', '2021-09-02 00:00:00', 'USADO, MONITOR, C CABO DE FORCA', 'EQUIPAMENTO NAO ESTAVA INICIANDO WINDOWS', '2021-09-02', 'EQUIPAMENTO NAO APRESENTOU PROBLEMAS AO INICIAR WINDOWS, INFORMADO AO CLIENTE.', 'CLIENTE INFORMADO QUE EQUIPAMENTO NAO ESTAVA COM PROBLEMAS', 50.00, 0.00, 50.00, '2021-09-02 00:00:00', '2021-12-01', 0, NULL, 0, 'PAGO'),
(00334, 'EMPRESA', 00104, 00001, 00170, 00002, 'P', 'VISTA', '2021-09-29 00:00:00', 'NOVO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA NOVO E RECLAMA QUE ESTA MUITO LENTO, INFORMADO AO MESMO QUE PRECISA REALIZAR ALGUMAS ATUALIZACOES ANTES DE UTILIZAR. REALIZAR ATUALIZACAO DO WINDOWS E INSTALAR PROGRAMAS CONFORME SOLICITADO.', '2021-09-30', 'WINDOWS ESTA LENTO', 'REALIZAR ATUALIZACAO DO WINDOWS E INSTALACAO DO OFFICE, REMOVENDO TAMBEM PROGRAMAS NAO NECESSARIOS', 50.00, 0.00, 50.00, '2021-09-30 00:00:00', '2021-12-29', 0, NULL, 0, 'PAGO'),
(00335, 'CLIENTE', 00105, 00001, 00171, 00002, 'P', 'VISTA', '2021-10-14 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA APRESENTANDO TELA AZUL E NAO INICIA O WINDOWS.', '2021-10-14', 'EQUIPAMENTO APRESENTOU PROBLEMAS APOS ATUALIZACAO DO WINDOWS.', 'REALIZAR BACKUP E REINSTALACAO DO WINDOWS 10 PRO', 150.00, 0.00, 150.00, '2021-10-14 00:00:00', '2022-01-12', 0, NULL, 26, 'PAGO'),
(00336, 'EMPRESA', 00004, 00001, 00033, 00002, 'P', 'VISTA', '2021-10-18 00:00:00', 'USADO - BASE PARAF CANTO QUEBR - BATERIA N OK', 'REALIZAR BACKUP E REINSTALAR WINDOWS POIS O MESMO ESTA MUITO LENTO.', '2021-10-19', 'REINSTALAR WINDOWS 10', NULL, 150.00, 0.00, 150.00, '2021-10-22 00:00:00', '2022-01-20', 0, NULL, 0, 'PAGO'),
(00337, 'EMPRESA', 00032, 00001, 00172, 00002, 'P', 'TITULO', '2021-10-28 00:00:00', 'EQUIPAMENTO NOVO SEM SISTEMA OPERACIONAL', 'INSTALAR WINDOWS E PROGRAMAS DE ESCRITORIO.', '2021-10-28', 'EQUIPAMENTO NOVO', 'INSTALAR WINDOWS, APOS FORMATAR PROCURAR DRIVERS NO DISCO LOCAL C:SETUP', 250.00, 50.00, 200.00, '2021-10-28 00:00:00', '2022-01-26', 0, NULL, 0, 'PAGO'),
(00338, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2021-11-05 00:00:00', 'ACESSO REMOTO', 'CLIENTE INFORMA QUE NAO ONSEGUE REALIZAR O PROGRAMA DE VALIDACAO DO TISS', '2021-11-05', NULL, 'O PROGRAMA PRECISAVA DO VISUAL C++ APOS A INSTALACAO DO MESMO, O NINETISS EXECUTOU NORMAL.', 0.00, 0.00, 0.00, '2021-11-05 00:00:00', '2022-02-03', 0, NULL, 0, 'PAGO'),
(00339, 'ACESSO REMOTO', 00070, 00001, 00129, 00002, 'C', 'CONTRATO', '2021-11-09 00:00:00', 'ACESSO REMOTO', 'CLIENTE NAO CONSEGUE ACESSAR PROGRAMA DO NOVO EQUIPAMENTO DE EXAME.', '2021-11-09', NULL, 'CONSEGUIMOS IMPORTAR O CERTIFICADO, E CLIENTE FICOU DE VERIFICAR OUTRAS QUESTAO RELACIONADAS AOS ARQUIVOS DO APLICATIVO.', 0.00, 0.00, 0.00, '2021-11-12 00:00:00', '2022-02-10', 0, NULL, 0, 'PAGO'),
(00340, 'CLIENTE', 00064, 00001, 00118, 00002, 'P', 'TITULO', '2021-11-10 00:00:00', 'USADO, MARCAS DE USO, ', 'CLIENTE SOLICITA TROCA DO HD E INSTALACAO DO WINDOWS SEM BACKUP', '2021-11-11', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 0.00, 150.00, '2021-11-12 00:00:00', '2022-02-10', 0, NULL, 20, 'PAGO'),
(00341, 'CLIENTE', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2021-11-10 00:00:00', 'USADO, BATERIA OK, C FONTE, MARCAS DE USO', 'REALIZAR BACKUP E REINSTALAR WINDOWS', '2021-11-11', 'EQUIPAMENTO LENTO E CHEIO DE PROGRAMAS DESNECESSARIOS.', 'SOLICITADO JUNTO A ADMINISTRACAO A COMPRA DE UM SSD E MEMORIA MAIS 4GB DDR PARA COLOCAR NO NOTEBOOK, POIS MESMO COM A FORMATACAO O EQUIPAMENTO CONTINUOU LENTO. POREM NAO FOI AUTORIZADO.', 0.00, 0.00, 0.00, '2021-11-12 00:00:00', '2022-02-10', 0, NULL, 32, 'PAGO'),
(00342, 'CLIENTE', 00064, 00001, 00173, 00002, 'P', 'TITULO', '2021-11-12 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA QUE SEJA APLICADO NESTE EQUIPAMENTO O SSD DO COMPUTADOR ANTIGO', '2021-11-12', 'SOLICITACAO DO CLIENTE', 'REALIZADA TROCA SEM NECESSIDADE DE REINSTALACAO DO WINDOWS.', 50.00, 0.00, 50.00, '2021-11-12 00:00:00', '2022-02-10', 0, NULL, 0, 'PAGO'),
(00343, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2021-11-12 00:00:00', 'ACESSO REMOTO', 'CLIENTE SOLICITA AUXILIO PARA SALVAR NFCE EM PDF PARA ENVIO NO EMAIL', '2021-11-12', NULL, NULL, 0.00, 0.00, 0.00, '2021-11-12 00:00:00', '2022-02-10', 0, NULL, 0, 'PAGO'),
(00344, 'ACESSO REMOTO', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2021-11-17 00:00:00', 'ACESSO REMOTO', 'INSTALACAO DO PROGRAMA CNES DO GOVERNO', '2021-11-19', 'SOLICITACAO DO CLIENTE', 'SERA NECESSARIO INSTALAR UMA MAQUINA VIRTUAL DO WINDOWS 7, POIS O A MAQUINA EM QUESTAO POSSUI O WINDOWS 10 E O CNES FUNCIONA MELHOR NO 7. COM ISSO INSTALAR VIRTUAL BOX, DEPOIS INSTALAR O WINDOWS 7 PARA DAI SIM, REALIZAR INSTALACAO DO CNES.', 0.00, 0.00, 0.00, '2021-11-18 00:00:00', '2022-02-16', 0, NULL, 0, 'PAGO'),
(00345, 'CLIENTE', 00001, 00001, 00077, 00002, 'C', 'CONTRATO', '2021-11-24 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR INSTALACAO DE UM APLACA DE VIDEO NA ASSISTENCIA JM INFORMATICA', '2021-11-24', NULL, 'REALIZADA INSTALACAO DE UMA PLACA DE VIDEO GT610, LIMPEZA E APLICACAO DE PASTA TERMICA', 0.00, 0.00, 0.00, '2021-11-24 00:00:00', '2022-02-22', 0, NULL, 36, 'PAGO'),
(00346, 'EMPRESA', 00106, 00001, 00174, 00002, 'P', 'TITULO', '2021-12-02 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, C FONTE', 'CLIENTE SOLICITA TROCA DO HD PARA UM SSD480GB, REINSTALACAO DO WINDOWS E BACKUP DOS ARQUIVOS', '2021-12-03', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 50.00, 150.00, '2021-12-03 00:00:00', '2022-03-03', 0, NULL, 0, 'PAGO'),
(00347, 'CLIENTE', 00032, 00001, 00172, 00002, 'P', 'VISTA', '2021-12-03 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DE IMPRESSORA VIA CABO USB, POIS O SINAL WIFI FICA CAINDO TEMPO TODO.', '2021-12-03', 'REALIZAR COMPRA DE UM USB WIRELESS, CABO USB DE IMPRESSORA E MOUSE. ', 'REALIZADA COMPRA DE UM USB WIRELESS, CABO USB OPARA IMPRESSORA. POREM O COMPUTADOR NAO COMPLETAVA INSTALACAO. FOI NECESSARIO INSTALACAO PELO WIFI DIRECT DA MESMA. ', 200.00, 90.00, 110.00, '2021-12-04 00:00:00', '2022-03-04', 0, NULL, 40, 'PAGO'),
(00348, 'ACESSO REMOTO', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2021-12-03 00:00:00', 'ACESSO REMOTO', 'AUXILIO NO FATURAMENTO DO CONVENIO CAPE', '2021-12-03', 'ID TEAMVIEW 368534601 SENHA JKZV59WV ', 'USUARIO ESTAVA COM DIFICULDADES PARA ENCONTRAR O DIRETORIO PARA IMPORTAR O XML', 0.00, 0.00, 0.00, '2021-12-03 00:00:00', '2022-03-03', 0, NULL, 0, 'PAGO'),
(00349, 'CLIENTE', 00107, 00001, 00175, 00002, 'P', 'VISTA', '2021-12-13 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO COREL E PHOTOSHOP', '2021-12-13', 'SOLICITACAO DO CLIENTE', 'REALIZAD AINSTALACAO E ATIVACAO DO COREL, PHOTOSHOP 2019 E O OFFICE 2013. SERIA INSTALADO O COREL 2020 POREM O MESMO Ã© MUITO PESADO E O HARDWARE DO COMPUTADOR MUITO LIMITADO.', 50.00, 0.00, 50.00, '2021-12-13 00:00:00', '2022-03-13', 0, NULL, 25, 'PAGO'),
(00350, 'EMPRESA', 00108, 00001, 00177, 00002, 'P', 'VISTA', '2021-12-15 00:00:00', 'TECLAS NAO OK / BATERIA OK / MARCAS DE USO', 'CLIENTE SOLICITA INSTALACAO DE UM SCANNER AUTOMOTIVO DELPHI', '2021-12-15', 'SOLICITACAO DO CLIENTE', 'REALIZADA INSTALACAO DO DELPHI CAR PARA CAMINHOES E CARROS DE PASSEIO, CONEXAO VIA USB E BLUETOOTH ', 100.00, 0.00, 100.00, '2021-12-15 00:00:00', '2022-03-15', 0, NULL, 0, 'PAGO'),
(00351, 'ACESSO REMOTO', 00070, 00001, 00129, 00002, 'C', 'CONTRATO', '2021-12-21 00:00:00', 'ACESSO REMOTO', 'VERIFICAR WEBCAM E MICROFONE DO NOTEBOOK', '2021-12-21', NULL, 'REALIZADO O ACESSO E VERIFICADO QUE A WEBCAM ESTAVA DESABILITADA NO BOTAO F8, APOS HABILITAR A MESMA VOLTOU A FUNCIONAR. MICROFONE APARENTEMENTE ESTAVA NORMAL.', 0.00, 0.00, 0.00, '2021-12-21 00:00:00', '2022-03-21', 0, NULL, 0, 'PAGO'),
(00352, 'CLIENTE', 00070, 00001, 00178, 00002, 'C', 'CONTRATO', '2021-12-28 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, TECLADO OK C FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, SOLICITA UMA FORMATACAO COM BACKUP DAS INFORMACOES.', '2022-01-03', 'SOLICITACAO DO CLIENTE', 'REALIZADA ATUALIZACAO DO WINDOWS UPDATE, E DESALIBITADO ALGUNS PROGRAMAS QUE INICIAVAM JUNTO COM O WINDOWS. NAO NECESSARIO UMA FORMATACAO DO MESMO.', 0.00, 0.00, 0.00, '2022-01-03 00:00:00', '2022-04-03', 0, NULL, 22, 'PAGO'),
(00353, 'ACESSO REMOTO', 00070, 00001, 00106, 00002, 'C', 'CONTRATO', '2022-01-13 00:00:00', 'ACESSO REMOTO', 'VERIFICAR IMPRESSORA BEMATECH POIS NAO ESTA IMPRIMINDO NOTAS.', '2022-01-13', 'O EQUIPAMENTO ATUALIZOU PARA O WINDOWS 11', 'NECESSARIO REINSTALAR O DRIVER DA IMPRESSORA E MUDAR A PORTA COM DE 4 PARA 8', 0.00, 0.00, 0.00, '2022-01-13 00:00:00', '2022-04-13', 0, NULL, 0, 'PAGO'),
(00354, 'EMPRESA', 00054, 00001, 00082, 00002, 'P', 'CONTRATO', '2022-01-18 00:00:00', 'EQUIPAMENTO USADO, BATERIA OK, TECLADO NAO OK', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA COM DEFEITO NA TECLA PARA BAIXO, POIS Ã© COMO SE TIVESSE SENDO PRESSIONADO TEMPO TODO.', '2022-01-20', NULL, 'NECESSARIA TROCA DO TECLADO, POREM CLIENTE INFORMA QUE NAO VAI CONSEGUIR REALIZAR SERVICO.', 0.00, 0.00, 0.00, '2022-02-04 00:00:00', '2022-05-05', 0, NULL, 0, 'PAGO'),
(00355, 'CLIENTE', 00109, 00001, 00179, 00002, 'P', 'VISTA', '2022-01-20 00:00:00', 'USADO, MARCAS DE USO, PLACA WIRELESS', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO E SOLICITA UMA VERIFICACAO.', '2022-01-20', 'EQUIPAMENTO ESTA CHEIO DE PROGRAMAS DESNECESSARIOS FAZENCO COM QUE O EQUIPAMENTO TRAVE AO INICIAR O WINDOWS.', 'REALIZAR LIMPEZA DE PROGRAMAS E ATIVAR OFFICE, O EQUIPAMENTO POSSUIA APENAS 2GB DE MEMORIA RAM ADCIONADO 1GB ', 50.00, 0.00, 50.00, '2022-01-24 00:00:00', '2022-04-20', 0, NULL, 0, 'PAGO'),
(00356, 'CLIENTE', 00110, 00001, 00180, 00002, 'P', 'VISTA', '2022-01-24 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR BACKUP DE INFORMACAO E REINSTALACAO DO WINDOWS.', '2022-01-24', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 0.00, 150.00, '2022-01-24 00:00:00', '2022-04-24', 0, NULL, 32, 'PAGO'),
(00357, 'CLIENTE', 00110, 00001, 00181, 00002, 'P', 'VISTA', '2022-01-24 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR BACKUP DE INFORMACAO E REINSTALACAO DO WINDOWS.', '2022-01-24', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 80.00, 70.00, '2022-01-24 00:00:00', '2022-04-24', 0, NULL, 0, 'PAGO'),
(00358, 'CLIENTE', 00111, 00001, 00182, 00002, 'P', 'VISTA', '2022-01-26 00:00:00', 'USADO, BATERIA N OK, MARCAS DE USO, ', 'CLIENTE INFORMA QUE EQUIPAMENTO Ã© ANTIGO E ESTA UM POUCO LENTO, SOLICITA VERIFICACAO.', '2022-01-27', 'PROBLEMA NO HD, ESTAVA ENFERRUJADO EM ALGUMAS PARTES.', 'REALIZADA TROCA DO HD POIS O MESMO APRESENTOU PROBLEMAS NAO POSSIVEL BACKUP, APLICACAO DE PASTA TERMICA E LIMPEZA INTERNA COM JATO DE AR', 150.00, 50.00, 100.00, '2022-02-03 00:00:00', '2022-05-04', 0, NULL, 14, 'PAGO'),
(00359, 'CLIENTE', 00040, 00001, 00183, 00002, 'P', 'CONTRATO', '2022-02-08 00:00:00', 'EQUIPAMENTO FONTE GENERICA, FALTANDO PARAFUSOS, BATERIA N OK', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO POSSUI MAIS A FONTE ORIGINAL MAS QUE AINDA FUNCIONAVA COM UMA FONTE GENERICA, POREM AGORA O MESMO INICIA APENAS EM UMA TELA BRANCA', '2022-02-10', 'FONTE GENERICA DO EQUIPAMENTO ESTA FROUXA, E TODA VEZ QUE ALGUEM TOCA NA MESMA DESLIGA O EQUIPAMENTO.', 'REALIZAR A TROCA DA FONTE E BATERIA DO EQUIPAMENTO', 0.00, 0.00, 0.00, '2022-03-31 00:00:00', '2022-06-29', 0, NULL, 15, 'PAGO'),
(00360, 'CLIENTE', 00065, 00001, 00184, 00002, 'P', 'TITULO', '2022-02-10 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK C FONTE', 'REALIZAR TROCA DO HD PELO SSD DO DESKTOP DO ESCRITORIO.', '2022-02-11', 'SOLICITACAO DO CLIENTE', 'REALIZADA TROCA DO HD PELO SSD DO DESKTOP E ATUALIZADO WINDOWS.', 100.00, 0.00, 100.00, '2022-02-21 00:00:00', '2022-05-22', 0, NULL, 15, 'PAGO'),
(00361, 'CLIENTE', 00070, 00001, 00185, 00002, 'C', 'CONTRATO', '2022-02-18 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA LIGANDO, APENAS APARECE UM LED ACESO', '2022-02-17', 'POSSIVELMENTE ALGUM CURTO NO HD OU MEMORIA ESTA CAUSANDO ESSE PROBLEMA.', 'REALIZADA DESCONEXAO DOS COMPONENTES (MEMORIA E HD) RECOLOCADO NOVAMENTE COM ISSO O EQUIPAMENTO VOLTOU A FUNCIONAR.', 0.00, 0.00, 0.00, '2022-02-18 00:00:00', '2022-05-19', 0, NULL, 25, 'PAGO'),
(00362, 'CLIENTE', 00070, 00001, 00123, 00002, 'C', 'CONTRATO', '2022-02-19 00:00:00', 'VISITA AO CLIENTE', 'CLIENT ESOLICITA BACKUP DAS INFORMACOES E UMA REINSTALACAO DO WINDOWS.', '2022-02-21', NULL, 'FAZER BACKUP DA PASTA CONTRONIC, DOCUMENTOS, EPSON L4160, EPSONL395, ADOBE READER, ACHO QUE IDEAL SERIA ADCCIONAR MEMORIA RAM E INSTALAR UM SSD NO EQUIPAMENTO', 0.00, 0.00, 0.00, '2022-02-21 00:00:00', '2022-05-22', 0, NULL, 25, 'PAGO'),
(00363, 'CLIENTE', 00070, 00001, 00122, 00002, 'C', 'CONTRATO', '2022-02-21 00:00:00', 'USADO, BATERIA NAO OK, VEIO SEM CARREGADOR', 'CLIENTE SOLICITA BACKUP DAS INFORMACOES E REINSTALACAO DO SISTEMA OPERACIONAL.', '2022-02-21', NULL, 'FAZER BACKUP DA PASTA CONTRONIC, DOCUMENTOS, EPSON L4160, EPSONL395, ADOBE READER, ACHO QUE IDEAL SERIA ADCCIONAR MEMORIA RAM E INSTALAR UM SSD NO EQUIPAMENTO', 0.00, 0.00, 0.00, '2022-02-21 00:00:00', '2022-05-22', 0, NULL, 0, 'PAGO'),
(00364, 'CLIENTE', 00001, 00001, 00068, 00002, 'C', 'CONTRATO', '2022-02-24 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE ESTAVA COM PROBLEMAS NO TECLADO, NAO CONSEGUINDO DIGITAR SINAIS OU ACENTOS', '2022-02-24', 'REGIAO DO TECLADO ESTAVA SELECIONADO INCORRETAMENTE.', 'A REGIAO SELECIONADA ERA PARA O TECLADO DO NOTEBOOK, COMO NO EQUIPAMENTO Ã© UTILIZADO UM TECLADO USB DIFERENTE, AS CONFIGURACOES ERAM INCOMPATIVEIS. REALIZADA MUDANCA.', 0.00, 0.00, 0.00, '2022-02-24 00:00:00', '2022-05-25', 0, NULL, 15, 'PAGO'),
(00365, 'EMPRESA', 00112, 00001, 00186, 00002, 'P', 'VISTA', '2022-03-06 00:00:00', 'USADO, MARCAS DE USO, S TECLADO E MOUSE, TELA APAGANDO', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO, LEVANDO 15 MINUTOS PARA LIGAR E AS VEZES O MESMO APAGA A TELA E VOLTA DEPOIS DE SEGUNDOS', '2022-03-07', 'EQUIPAMENTO AINDA NÃ£O FOI FORMATADO DESDE QUE INSTALADO NO SETOR', 'REINSTALAR WINDOWS, INSTALANDO OFFICE E ATUALIZANDO OS MESMOS. NÃ£O NECESSARIO REALIZAR BACKUP ', 150.00, 50.00, 100.00, '2022-03-06 00:00:00', '2022-06-04', 0, NULL, 0, 'PAGO'),
(00366, 'CLIENTE', 00070, 00001, 00185, 00002, 'C', 'CONTRATO', '2022-03-30 00:00:00', 'SEM FONTE, BATERIA OK, MARCAS DE USO', 'VERIFICAR EQUIPAMENTOS POIS A TECLA FICA PULANDO AO TENTAR DIGITAR UM TEXTO NO WORD OU NO SISTEMA AMIGO.', '2022-03-31', NULL, 'REALIZADA REINSTALACAO DO WINDOWS E O MESMO VOLTOU A FUNCIONAR.', 0.00, 0.00, 0.00, '2022-03-31 00:00:00', '2022-06-29', 0, NULL, 20, 'PAGO'),
(00367, 'EMPRESA', 00113, 00001, 00187, 00002, 'P', 'VISTA', '2022-03-30 00:00:00', 'EQUIPAMENTO NOVO', 'CLIENTE SOLICITA INSTALACAO DE PROGRAMAS E ATUALIZACAO DE EQUIPAMENTO, POIS O MESMO ESTA NOVO.', '2022-03-30', NULL, 'REALIZAR ATUALIZACAO DO WINDOWS E INSTALACAO DE PROGRAMAS ', 100.00, 0.00, 100.00, '2022-03-30 00:00:00', '2022-06-28', 0, NULL, 0, 'PAGO'),
(00368, 'CLIENTE', 00114, 00001, 00188, 00002, 'P', 'TITULO', '2022-04-06 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DA IMPRESSORA E FUNCAO DO SCANNER VIA WIFI', '2022-04-05', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 50.00, 50.00, '2022-04-06 00:00:00', '2022-07-05', 0, NULL, 30, 'PAGO'),
(00369, 'CLIENTE', 00114, 00001, 00189, 00002, 'P', 'TITULO', '2022-04-06 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DA IMPRESSORA E FUNCAO DE SCANNER VIA WIFI', '2022-04-05', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 50.00, 50.00, '2022-04-06 00:00:00', '2022-07-05', 0, NULL, 0, 'PAGO'),
(00370, 'CLIENTE', 00114, 00001, 00190, 00002, 'P', 'TITULO', '2022-04-06 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DA IMPRESSORA E FUNCAO DE SCANNER VIA WIFI', '2022-04-05', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 50.00, 50.00, '2022-04-06 00:00:00', '2022-07-05', 0, NULL, 0, 'PAGO'),
(00371, 'CLIENTE', 00114, 00001, 00191, 00002, 'P', 'TITULO', '2022-04-06 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE A IMPRESSORA FOI TROCADA, NO PRIMEIRO DIA FUNCIONOU POREM NO OUTRO DIA NAO IMPRIMIA MAIS.', '2022-04-05', 'NECESSARIA INSTALACAO DO DRIVER DA IMPRESSORA HP P1102W', 'REALIZADA INSTALACAO DO DRIVER E A MESMA VOLTOU A FUNCIONAR. ', 100.00, 50.00, 50.00, '2022-04-06 00:00:00', '2022-07-05', 0, NULL, 0, 'PAGO'),
(00372, 'CLIENTE', 00083, 00001, 00137, 00002, 'P', 'TITULO', '2022-04-12 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO WINDOWS, APENAS FICA COM LED ACESO', '2022-04-12', 'EQUIPAMENTO ESTA COM MUITA POEIRA NOS COMPONENTES', 'REALIZADA LIMPEZA INTERNA E DESCONECTADO E CONECTADO NOVAMENTE OS COMPONENTES (MEMORIA E HD)', 100.00, 0.00, 100.00, '2022-04-12 00:00:00', '2022-07-11', 0, NULL, 5, 'PAGO'),
(00373, 'EMPRESA', 00070, 00001, 00178, 00002, 'C', 'CONTRATO', '2022-04-14 00:00:00', 'USADO, MARCAS DE USO, BATERIA OK, TECLADO OK C FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO', '2022-04-14', 'EQUIPAMENTO REALIZANDO ATUALIZACAO DO WINDOWS.', 'REALIZADA ATUALIZACAO DO WINDOWS E OUTROS PROGRAMAS', 0.00, 0.00, 0.00, '2022-04-20 00:00:00', '2022-07-19', 0, NULL, 15, 'PAGO'),
(00374, 'CLIENTE', 00070, 00001, 00107, 00002, 'C', 'CONTRATO', '2022-04-15 00:00:00', 'VISITA AO CLIENTE', 'ADCIONAR MEMORIA RAM E REINSTALAR O WINDOWS', '2022-04-18', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2022-04-15 00:00:00', '2022-07-14', 0, NULL, 0, 'PAGO'),
(00375, 'CLIENTE', 00070, 00001, 00192, 00002, 'C', 'CONTRATO', '2022-04-15 00:00:00', 'VISITA AO CLIENTE', 'ADCIONAR MEMORIA E REINSTALAR WINDOWS ', '2022-04-18', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2022-04-15 00:00:00', '2022-07-14', 0, NULL, 0, 'PAGO'),
(00376, 'CLIENTE', 00070, 00001, 00123, 00002, 'C', 'CONTRATO', '2022-04-16 00:00:00', 'USADO, BATERIA N OK, SEM FONTE', 'REALIZAR TROCA DE HD PARA SSD DE 240 E REINSTALAR WINDOWS, ADCIONAR 4GB DE MEMORIA', '2022-04-18', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 0.00, 0.00, 0.00, '2022-04-16 00:00:00', '2022-07-15', 0, NULL, 0, 'PAGO'),
(00377, 'CLIENTE', 00064, 00001, 00099, 00002, 'P', 'VISTA', '2022-04-16 00:00:00', 'USADO, MARCAS DE USO, FONTE ADAPTADA, CMOS N OK', 'CLIENTE SOLICITA REINSTALACAO DO WINDOWS SEM BACKUP', '2022-04-18', 'SOLICITACAO DO CLIENTE', 'REALIZADA TROCA DE UM PENDE DE MEMORIA DE 2GB PARA 4GB, POREM NA TROCA PERCEBEU QUE O SISTEMA OPERACIONAL ERA DE 32BITS, COM ISSO FOI NECESSARIO REALIZAR UMA REINSTALACAO DO WINDOWS PARA PODER RECONHECER OS 6GB. \r\nREALIZADA INSTALACAO DO WINDOWS 7 ENTRETANTO FICOU CHEIO DE PROBLEMA COM ISSO MUDAMOS PARA O WINDOWS 10 A MAQUINA ATE QUE SUPORTOU RAZOAVELMENTE, \r\nNECESSARIO A TROCA DO TECLADO DO CLIENTE POIS APRESENTAVA PROBLEMAS QUANDO LIGADO NO EQUIPAMENTO. TROUXE UM TECLADO DA DELL PARA TESTE E O MESMO FUNCIONOU BEM', 150.00, 50.00, 100.00, '2022-04-20 00:00:00', '2022-07-19', 0, NULL, 18, 'PAGO'),
(00378, 'EMPRESA', 00053, 00001, 00081, 00002, 'P', 'VISTA', '2022-04-24 00:00:00', 'USADO, SEM CABOS, TAMPA ABERTA SEM PARAFUSO', 'CLIENTE INFORMA QUE EQUIPAMENTO NO INICIA WINDOWS FICA APENAS EM UMA TELA PRETA.', '2022-04-25', 'WINDOWS NAO INICIALIZA NORMALMENTE E O COOLER DO PROCESSADOR ESTA GIRANDO LENTAMENTE.', 'REALIZAR REINSTALACAO DO WINDOWS COM BACKUP DOS ARQUIVOS, COOLER SÃ³ GIRA MAIS FORTE QUANDO O COMPUTADOR AQUECE DEMAIS.', 150.00, 40.00, 110.00, '2022-04-27 00:00:00', '2022-07-26', 0, NULL, 0, 'PAGO'),
(00379, 'CLIENTE', 00070, 00001, 00185, 00002, 'C', 'CONTRATO', '2022-05-03 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR TROCA DE HD PARA SSD DE 256GB E REINTALAR WINDOWS FAZENDO BACKUP DAS INFORMACOES', '2022-05-04', NULL, NULL, 0.00, 0.00, 0.00, '2022-06-20 00:00:00', '2022-09-18', 0, NULL, 10, 'PAGO'),
(00380, 'EMPRESA', 00070, 00001, 00122, 00002, 'C', 'CONTRATO', '2022-06-04 00:00:00', 'USADO, MARCAS DE USO, BATERIA N OK, C FONTE', 'REALIZAR TROCA DE HD PARA SSD E ADCIONAR 4GB D MEMORIA RAM', '2022-06-06', NULL, NULL, 0.00, 0.00, 0.00, '2022-06-20 00:00:00', '2022-09-18', 0, NULL, 15, 'PAGO'),
(00381, 'CLIENTE', 00064, 00001, 00101, 00002, 'P', 'VISTA', '2022-06-14 00:00:00', 'MARCAS DE USO, BATERIA N OK, C FONTE', 'CLIENTE SOLICITA POSSIBILIDADE DE INSTALACAO DE UM SSD OU APENAS BACKUP E FORMATACAO DO MESMO.', '2022-06-17', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 60.00, 140.00, '2022-06-15 00:00:00', '2022-09-13', 0, NULL, 10, 'PAGO'),
(00382, 'CLIENTE', 00011, 00001, 00193, 00002, 'P', 'VISTA', '2022-06-15 00:00:00', 'USADO, MARCAS DE USO, MOUSE NOK', 'CLIENTE SOLICITA BACKUP E REINSTALACAO DO WINDOWS.', '2022-06-15', 'EQUIPAMENTO ESTA PERDENDO AS INFORMACOES DE BOOT E O WINDOWS FOI INSTALADO NO LEGACY. COM ISSO QUANDO O EQUIPAMENTO E INICIADO O MESMO FICA DANDO ERRO NA INICIALIZACAO DO WINDOWS', 'REALIZAR BACKUP DO WINDOWS E REINSTALAR O WINDOWS NO MODO UEFI PARA NAO HAVER MAIS PROBLEMAS NA INICIALIZACAO. RECOMENDAVEL TAMBEM COMPRAR UM CARTAO DE MEMORIA PARA ARMAZENAR DOCUMENTOS POIS A MEMORIA DO NOTEBOOK Ã‰ BEM LIMITADA.', 150.00, 0.00, 150.00, '2022-06-15 00:00:00', '2022-09-13', 0, NULL, 0, 'PAGO'),
(00383, 'CLIENTE', 00064, 00001, 00194, 00002, 'P', 'TITULO', '2022-06-15 00:00:00', 'USADO, MARCAS DE USO, ', 'REALIZAR TROCA DE HD PARA SSD 240GB REINSTALAR WINDOWS COM BACKUP', '2022-06-17', 'SOLICITACAO DO CLIENTE', 'REALIZADA TROCA DE HD, TROCA DE GABINETE E REINSTALADO SISTEMA OPERACIONAL', 350.00, 200.00, 150.00, '2022-06-20 00:00:00', '2022-09-18', 0, NULL, 10, 'PAGO'),
(00384, 'CLIENTE', 00115, 00001, 00195, 00002, 'P', 'VISTA', '2022-06-20 00:00:00', 'MARCAS DE USO, BATERIA OK, C FONTE', 'CLIENTE SOLICITA QUE VERIFIQUE A WEBCAM, POIS A MESMA NAO ESTA MAIS FUNCIONANDO', '2022-06-20', 'EQUIPAMENTO NAO RECONHECE A WEBCAM INSTALADA. DRIVER DO WINDOWS E SAMSUNG UPDATE DESATUALIZADO', 'REALIZADA ATUALIZACAO DO WINDOWS E OS DRIVERS DO APLICATIVO SAMSUNG. CONFIGURADA NOVAMENTE A WEBCAM NO EQUIPAMENTO.', 100.00, 0.00, 100.00, '2022-06-20 00:00:00', '2022-09-18', 0, NULL, 0, 'PAGO'),
(00385, 'CLIENTE', 00087, 00001, 00142, 00002, 'P', 'VISTA', '2022-06-22 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO WINDOWS, CASO NECESSARIO REINSTALAR WINDOWS COM BACKUP DOS DADOS', '2022-06-22', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 0.00, 150.00, '2022-06-24 00:00:00', '2022-09-22', 0, NULL, 10, 'PAGO'),
(00386, 'CLIENTE', 00064, 00001, 00194, 00002, 'P', 'TITULO', '2022-06-24 00:00:00', 'VISITA AO CLIENTE', 'REALIZAR CONFIGURACAO DE UMA PASTA EM REDE PARA OS 3 COMPUTADORES', '2022-06-24', 'SOLICITACAO DO CLIENTE', 'REALIZADA A CONFIGURACAO DA PASTA DO COMPUTADOR ONDE POSSUI AS DUAS IMPRESSORAS PLOTER INSTALADA. IP DELE FIXO 192.168.0.240 USUARIO USER SENHA 123456', 150.00, 0.00, 150.00, '2022-06-24 00:00:00', '2022-09-22', 0, NULL, 10, 'PAGO'),
(00387, 'CLIENTE', 00013, 00001, 00015, 00002, 'P', 'CONTRATO', '2022-06-27 00:00:00', 'DSAJKDSJAKDSALK', 'FAZER CAPA DO BANCOS', '2022-06-30', NULL, NULL, 0.00, 0.00, 0.00, '2023-05-15 00:00:00', NULL, 0, 'OS ABERTA INDEVIDAMENTE.', 0, 'CANCELADA'),
(00388, 'CLIENTE', 00026, 00001, 00034, 00002, 'P', 'CONTRATO', '2022-06-28 00:00:00', 'DFDFDF', 'DFDFVDFVDFVDFVDGDTADGSGDEGDG', '2022-06-30', NULL, NULL, 0.00, 0.00, 0.00, '2023-05-15 00:00:00', NULL, 0, 'OS ABERTA INDEVIDAMENTE.', 0, 'CANCELADA'),
(00389, 'EMPRESA', 00116, 00001, 00196, 00002, 'P', 'VISTA', '2022-06-29 00:00:00', 'MARCAS DE USO, BATERIA OK, C FONTE', 'CLIENTE SOLICITA BACKUP DAS INFORMACOES E REINSTALACAO DO WINDOWS.', '2022-06-30', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE, RECOMENDADO AO CLIENTE COMPRAR UM SSD POIS IRÃ¡ GANHAR MAIS AGILIDADE NO SEU PROCESSO.', 150.00, 50.00, 100.00, '2022-06-30 00:00:00', '2022-09-28', 0, NULL, 0, 'PAGO'),
(00390, 'EMPRESA', 00117, 00001, 00197, 00002, 'P', 'VISTA', '2022-07-09 00:00:00', 'USADO, BATERIA OK, C FONTE', 'CLIENTE SOLICITA TROCA DO HD', '2022-07-09', 'SOLICITACAO DO CLIENTE', 'CLIENTE HAVIA SOLICITADO A TROCA DO HD, POREM DEPOIS LIGOU INFORMANDO QUE ERA APENAS UMA REINSTALACAO DO WINDOWS SEM BACKUP.', 150.00, 50.00, 100.00, '2022-07-10 00:00:00', '2022-10-08', 0, NULL, 0, 'PAGO'),
(00391, 'CLIENTE', 00118, 00001, 00198, 00002, 'P', 'VISTA', '2023-02-09 00:00:00', 'USADO, MARCAS DE USO, ABERTO NA PONTA, C FONTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO ESTA INICIANDO O WINDOWS. ', '2023-02-10', 'SISTEMA OPERACIONAL CORROMPIDO', 'REALIZAR BACKUP E FORMATACAO DO WINDOWS.', 150.00, 0.00, 150.00, '2023-02-24 00:00:00', '2023-05-25', 0, NULL, 0, 'PAGO'),
(00392, 'CLIENTE', 00118, 00001, 00199, 00002, 'P', 'VISTA', '2023-02-09 00:00:00', 'USADO, MARCAS DE USO, TECLADO, MOUSE, C FONTE', 'REALIZAR TROCA DE HD PARA SSD E REINSTALAR WINDOWS COM BACKUP DOS DADOS', '2023-02-10', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 50.00, 150.00, '2023-02-24 00:00:00', '2023-05-25', 0, NULL, 0, 'PAGO'),
(00393, 'CLIENTE', 00083, 00001, 00137, 00002, 'P', 'VISTA', '2023-02-23 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO NAO INICIA WINDOWS E ESTA MUITO LENTO QUANDO FUNCIONA.', '2023-02-23', 'EQUIPAMENTO ESTA SUJO NO COOLER DO PROCESSADOR E POUCA MEMORIA', 'REALIZADA LIMPEZA E SOLICITADO ADCIONAR MEMORIA E UM SSD. IREMOS TESTAR COLOCAR 8GB DE MEMORIA. E ACOMPANHAR', 100.00, 0.00, 100.00, '2023-02-24 00:00:00', '2023-05-25', 0, NULL, 10, 'PAGO'),
(00394, 'EMPRESA', 00119, 00001, 00200, 00002, 'P', 'TITULO', '2023-03-07 00:00:00', 'USADO, MARCAS DE USO, S CABOS, ', 'CLIENTE SOLICITA TROCA A INSTALACAO DE UM SSD FORMATACAO COM BACKUP E UTILIZACAO DOS DOIS HD', '2023-03-08', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 150.00, 50.00, 100.00, '2023-03-07 00:00:00', '2023-06-05', 0, NULL, 0, 'PAGO'),
(00395, 'CLIENTE', 00001, 00001, 00008, 00002, 'P', 'TITULO', '2023-04-24 00:00:00', 'USADO, MARCAS DE USO, S CABOS, ', 'FFORMATACCAO', '2023-04-27', 'DSADSADSADAS', NULL, 100.00, 0.00, 100.00, '2023-04-24 00:00:00', '2023-07-23', 0, NULL, 0, 'PAGO'),
(00396, 'CLIENTE', 00001, 00001, 00009, 00002, 'P', 'TITULO', '2023-04-24 00:00:00', 'USADO, MARCAS DE USO, S CABOS, ', 'DSADSADSADDSADA', '2023-04-26', NULL, NULL, 100.00, 0.00, 100.00, '2023-04-24 00:00:00', '2023-07-23', 0, NULL, 0, 'PAGO'),
(00397, 'EMPRESA', 00106, 00001, 00201, 00002, 'P', 'VISTA', '2023-05-15 00:00:00', 'USADO COM MARCAS DE USO', 'SOLICITA REPARACAO DO WINDOWS NO EQUIPAMENTO', '2023-05-15', 'WINDOWS CORROMPIDO', 'REALIZAR REINSTLAACAO DO WINDOWS ', 150.00, 0.00, 150.00, '2023-05-15 00:00:00', '2023-08-13', 0, NULL, 0, 'PAGO'),
(00398, 'EMPRESA', 00120, 00001, 00202, 00002, 'P', 'TITULO', '2023-05-15 00:00:00', 'USADO COM MARCAS DE USO FONTE CABO DANIFICADO', 'REALIZAR TROCA DE HD PARA SSD.', '2023-05-15', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 200.00, 50.00, 150.00, '2023-05-15 00:00:00', '2023-08-13', 0, NULL, 0, 'FATURADA'),
(00399, 'CLIENTE', 00092, 00001, 00203, 00002, 'P', 'VISTA', '2023-05-24 00:00:00', 'USADO, MARCAS DE USO COM FONTE', 'EQUIPAMENTO ESTA LENTO E OFFICE NAO ABRE.', '2023-05-26', 'REALIZAR BACKUP E REINSTALAR WINDOWS.', 'REALIZAR BACKUP E REINSTALAR WINDOWS.', 150.00, 50.00, 100.00, '2023-05-27 00:00:00', '2023-08-25', 0, NULL, 0, 'PAGO'),
(00400, 'ACESSO REMOTO', 00093, 00001, 00204, 00002, 'P', 'TITULO', '2023-05-31 00:00:00', 'ACESSO REMOTO', 'INSTALACAO DE OFFICE E ATIVACAO DO WINDOWS.', '2023-05-31', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 25.00, 75.00, '2023-05-31 00:00:00', '2023-08-29', 0, NULL, 0, 'PAGO'),
(00401, 'ACESSO REMOTO', 00093, 00001, 00205, 00002, 'P', 'TITULO', '2023-05-31 00:00:00', 'ACESSO REMOTO', 'INSTALACAO DO OFFICE E ATIVACAO DO WINDOWS', '2023-05-31', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 100.00, 25.00, 75.00, '2023-05-31 00:00:00', '2023-08-29', 0, NULL, 0, 'PAGO'),
(00402, 'EMPRESA', 00121, 00001, 00206, 00002, 'P', 'TITULO', '2023-06-13 00:00:00', 'USADO, C/ FONTE', 'CLIENTE ESQUECEU A SENHA E SOLICITA BACKUP DOS ARQUIVOS E REINSTALACAO DO SISTEMA OPERACIONAL', '2023-06-14', 'SOLICITACAO DO CLIENTE', 'SOLICITACAO DO CLIENTE', 250.00, 100.00, 150.00, '2023-06-13 00:00:00', '2023-09-11', 0, NULL, 0, 'PAGO'),
(00403, 'CLIENTE', 00064, 00001, 00095, 00002, 'P', 'TITULO', '2023-08-01 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE SOLICITA INSTALACAO DO PROGRAMA ADOBE ILUSTRATOR E PHOTOSHOP ', '2023-07-27', 'SOLLICITACAO DO CLIENTE', 'SOLLICITACAO DO CLIENTE', 100.00, 0.00, 100.00, '2023-08-01 00:00:00', '2023-10-30', 0, NULL, 10, 'FATURADA'),
(00404, 'CLIENTE', 00124, 00001, 00208, 00002, 'P', 'VISTA', '2023-08-08 00:00:00', 'USADO, MARCAS DE USO', 'VERIFICACAO NO EQUIPAMENTO', '2023-08-08', NULL, NULL, 100.00, 0.00, 100.00, '2023-08-08 00:00:00', '2023-11-06', 0, NULL, 10, 'PAGO'),
(00405, 'CLIENTE', 00123, 00001, 00207, 00002, 'P', 'VISTA', '2023-08-08 00:00:00', 'USADO COM MARCAS DE USO', 'EQUIPAMENTO DO CLIENTE NAO INICIA WINDOW.S', '2023-08-08', NULL, NULL, 100.00, 20.00, 80.00, '2023-08-08 00:00:00', '2023-11-06', 0, NULL, 10, 'PAGO'),
(00406, 'CLIENTE', 00076, 00001, 00209, 00002, 'P', 'VISTA', '2023-09-04 00:00:00', 'VISITA AO CLIENTE', 'CLIENTE INFORMA QUE EQUIPAMENTO ESTA MUITO LENTO E NAO CONSEGUE ACESSAR WHATSAPP WEB', '2023-09-04', 'COMPUTADOR ESTAVA COMPLETAMENTE SEM ESPACO', 'SSD DA UNIDADE C POSSUI APENAS 120GB, REALIZADA MUDANCA DE ARQUIVOS DA PASTA DOWNLOADS E MOSTRADO COMO COPIAR ARQUIVOS DO MEUS DOCUMENTOS PARA UMA PASTA NO DISCO LOCAL E QUE TINHA ESPACO SUFICIENTE', 100.00, 50.00, 50.00, '2023-09-04 00:00:00', '2023-12-03', 0, NULL, 5, 'PAGO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peca_pec`
--

CREATE TABLE `tbl_peca_pec` (
  `NUM_ID_PEC` int(10) UNSIGNED NOT NULL,
  `TXT_NOME_PEC` varchar(50) DEFAULT NULL,
  `TXT_CODIGO_PEC` varchar(50) DEFAULT NULL,
  `VAL_ULTIMA_COMPRA_PEC` double(8,2) DEFAULT NULL,
  `DTA_ULTIMA_COMPRA_PEC` date DEFAULT NULL,
  `VAL_CUSTO_MEDIO_PEC` double(8,2) DEFAULT NULL,
  `VAL_VALOR_VENDA_PEC` double(8,2) DEFAULT NULL,
  `VAL_TOTAL_ACUMULADO_PEC` double(8,2) DEFAULT NULL,
  `DTH_REGISTRO_PEC` datetime DEFAULT NULL,
  `TXT_ATIVO_PEC` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perfil_per`
--

CREATE TABLE `tbl_perfil_per` (
  `NUM_ID_PER` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_NOME_PER` varchar(50) NOT NULL,
  `TXT_DESCRICAO_PER` varchar(100) DEFAULT NULL,
  `TXT_ATIVO_PER` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_perfil_per`
--

INSERT INTO `tbl_perfil_per` (`NUM_ID_PER`, `TXT_NOME_PER`, `TXT_DESCRICAO_PER`, `TXT_ATIVO_PER`) VALUES
(00001, 'ADMINISTRADOR', 'ADMINISTRADOR DE SISTEMAS', 'S'),
(00002, 'FINANCEIRO', 'FINANCEIRO', 'S'),
(00003, 'CONSULTOR SERVICO', 'CONSULTOR SERVICO', 'S'),
(00004, 'TECNICO INTERNO', 'TECNICO INTERNO', 'S'),
(00005, 'TECNICO EXTERNO', 'TECNICO EXTERNO', 'S'),
(00006, 'FISCAL', 'FISCAL', 'S'),
(00007, 'RECEPCIONISTA', 'RECEPCIONISTA', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissoes_perm`
--

CREATE TABLE `tbl_permissoes_perm` (
  `NUM_ID_PERM` int(10) UNSIGNED NOT NULL,
  `TBL_PERFIL_PER_NUM_ID_PER` int(10) UNSIGNED NOT NULL,
  `TBL_TAREFAS_TAR_NUM_ID_TAR` int(10) UNSIGNED NOT NULL,
  `TXT_TEM_PERM` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recebimento_rec`
--

CREATE TABLE `tbl_recebimento_rec` (
  `NUM_ID_REC` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_EMPRESA_EMP_NUM_ID_EMP` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_REFERENTE_REC` varchar(20) DEFAULT NULL,
  `NUM_DOCUMENTO_REC` int(11) DEFAULT NULL,
  `VAL_VALOR_REC` double(8,2) DEFAULT NULL,
  `VAL_DESCONTO_REC` double(8,2) NOT NULL,
  `VAL_RECEBIDO_REC` double(8,2) NOT NULL,
  `DTH_RECEBIMENTO_REC` datetime DEFAULT NULL,
  `TXT_STATUS_REC` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_recebimento_rec`
--

INSERT INTO `tbl_recebimento_rec` (`NUM_ID_REC`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TXT_REFERENTE_REC`, `NUM_DOCUMENTO_REC`, `VAL_VALOR_REC`, `VAL_DESCONTO_REC`, `VAL_RECEBIDO_REC`, `DTH_RECEBIMENTO_REC`, `TXT_STATUS_REC`) VALUES
(00021, 00001, 00001, 00001, 00003, 'OS', 1, 100.00, 0.00, 0.00, '2016-03-25 00:00:00', 'RE'),
(00022, 00001, 00001, 00001, 00000, 'TR', 5, 100.00, 0.00, 0.00, '2016-03-25 00:00:00', 'RE'),
(00023, 00001, 00001, 00001, 00000, 'TR', 6, 50.00, 0.00, 0.00, '2016-03-25 00:00:00', 'RE'),
(00024, 00001, 00001, 00001, 00000, 'TR', 7, 50.00, 0.00, 0.00, '2016-03-25 00:00:00', 'RE'),
(00025, 00001, 00001, 00001, 00005, 'OS', 5, 100.00, 0.00, 0.00, '2016-03-25 00:00:00', 'RE'),
(00026, 00001, 00001, 00001, 00011, 'OS', 16, 75.00, 0.00, 0.00, '2016-03-26 00:00:00', 'RE'),
(00027, 00001, 00001, 00001, 00011, 'OS', 16, 75.00, 0.00, 0.00, '2016-03-26 00:00:00', 'RE'),
(00028, 00001, 00001, 00001, 00011, 'OS', 16, 75.00, 0.00, 0.00, '2016-03-26 00:00:00', 'RE'),
(00029, 00001, 00001, 00004, 00001, 'TR', 10, 150.00, 0.00, 0.00, '2016-07-11 00:00:00', 'RE'),
(00030, 00001, 00001, 00004, 00018, 'TR', 12, 150.00, 0.00, 0.00, '2016-07-11 00:00:00', 'RE'),
(00031, 00001, 00001, 00004, 00005, 'OS', 6, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00032, 00001, 00001, 00004, 00005, 'OS', 7, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00033, 00001, 00001, 00004, 00003, 'OS', 8, 50.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00034, 00001, 00001, 00004, 00002, 'OS', 9, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00035, 00001, 00001, 00004, 00001, 'OS', 10, 150.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00036, 00001, 00001, 00004, 00003, 'OS', 12, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00037, 00001, 00001, 00004, 00009, 'OS', 13, 75.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00038, 00001, 00001, 00004, 00008, 'OS', 14, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00039, 00001, 00001, 00004, 00010, 'OS', 15, 75.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00040, 00001, 00001, 00004, 00012, 'OS', 17, 25.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00041, 00001, 00001, 00004, 00005, 'OS', 19, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00042, 00001, 00001, 00004, 00015, 'OS', 21, 75.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00043, 00001, 00001, 00004, 00016, 'OS', 22, 100.00, 0.00, 0.00, '2016-07-13 00:00:00', 'RE'),
(00044, 00001, 00001, 00004, 00002, 'TR', 9, 50.00, 0.00, 50.00, '2016-08-22 00:00:00', 'RE'),
(00045, 00001, 00001, 00004, 00017, 'TR', 11, 50.00, 0.00, 50.00, '2016-08-22 00:00:00', 'RE'),
(00046, 00001, 00001, 00004, 00020, 'OS', 30, 50.00, 0.00, 50.00, '2016-08-27 00:00:00', 'RE'),
(00047, NULL, NULL, NULL, 00020, 'OS', 29, 0.00, 0.00, 0.00, NULL, 'CA'),
(00048, NULL, NULL, NULL, 00019, 'OS', 28, 0.00, 0.00, 0.00, NULL, 'CA'),
(00049, NULL, NULL, NULL, 00010, 'OS', 31, 0.00, 0.00, 0.00, NULL, 'CA'),
(00050, 00001, 00001, 00006, 00001, 'TR', 13, 75.00, 25.00, 75.00, '2016-10-10 00:00:00', 'RE'),
(00051, 00001, 00001, 00006, 00029, 'OS', 44, 50.00, 0.00, 50.00, '2016-12-10 00:00:00', 'RE'),
(00052, 00001, 00001, 00006, 00004, 'OS', 45, 100.00, 0.00, 100.00, '2016-12-27 00:00:00', 'RE'),
(00053, 00001, 00001, 00006, 00001, 'OS', 33, 150.00, 0.00, 150.00, '2016-12-27 00:00:00', 'RE'),
(00054, 00001, 00001, 00006, 00019, 'OS', 46, 50.00, 0.00, 50.00, '2016-12-27 00:00:00', 'RE'),
(00055, 00001, 00001, 00006, 00012, 'OS', 49, 100.00, 0.00, 100.00, '2017-01-24 00:00:00', 'RE'),
(00056, 00001, 00001, 00006, 00030, 'OS', 48, 50.00, 0.00, 50.00, '2017-02-06 00:00:00', 'RE'),
(00057, 00001, 00001, 00006, 00011, 'OS', 50, 50.00, 0.00, 50.00, '2017-02-06 00:00:00', 'RE'),
(00058, 00001, 00001, 00006, 00032, 'OS', 56, 50.00, 0.00, 50.00, '2017-03-03 00:00:00', 'RE'),
(00059, 00001, 00001, 00006, 00006, 'OS', 57, 50.00, 0.00, 50.00, '2017-03-31 00:00:00', 'RE'),
(00060, 00001, 00001, 00006, 00006, 'OS', 58, 50.00, 0.00, 50.00, '2017-03-31 00:00:00', 'RE'),
(00061, 00001, 00001, 00006, 00005, 'OS', 51, 50.00, 0.00, 50.00, '2017-10-17 00:00:00', 'RE'),
(00062, 00001, 00001, 00006, 00005, 'OS', 52, 50.00, 0.00, 50.00, '2017-10-13 00:00:00', 'RE'),
(00063, 00001, 00001, 00004, 00050, 'OS', 167, 120.00, 0.00, 120.00, '2020-01-22 00:00:00', 'RE'),
(00064, 00001, 00001, 00004, 00040, 'OS', 70, 100.00, 0.00, 100.00, '2018-03-16 00:00:00', 'RE'),
(00065, 00001, 00001, 00004, 00042, 'OS', 74, 150.00, 0.00, 150.00, '2018-04-19 00:00:00', 'RE'),
(00066, 00001, 00001, 00004, 00032, 'OS', 82, 125.00, 0.00, 125.00, '2018-06-07 00:00:00', 'RE'),
(00067, 00001, 00001, 00004, 00042, 'OS', 85, 100.00, 0.00, 100.00, '2018-06-19 00:00:00', 'RE'),
(00068, 00001, 00001, 00004, 00042, 'OS', 86, 150.00, 0.00, 150.00, '2018-09-20 00:00:00', 'RE'),
(00069, 00001, 00001, 00004, 00032, 'OS', 143, 150.00, 0.00, 150.00, '2019-07-08 00:00:00', 'RE'),
(00070, 00001, 00001, 00004, 00032, 'OS', 152, 50.00, 0.00, 50.00, '2019-09-24 00:00:00', 'RE'),
(00071, 00001, 00001, 00006, 00051, 'OS', 176, 50.00, 0.00, 50.00, '2020-02-29 00:00:00', 'RE'),
(00072, 00001, 00001, 00006, 00052, 'OS', 178, 80.00, 0.00, 80.00, '2020-03-06 00:00:00', 'RE'),
(00073, 00001, 00001, 00006, 00001, 'OS', 180, 150.00, 0.00, 150.00, '2020-02-18 00:00:00', 'RE'),
(00074, 00001, 00001, 00006, 00053, 'OS', 181, 130.00, 0.00, 130.00, '2020-03-16 00:00:00', 'RE'),
(00075, 00001, 00001, 00006, 00055, 'OS', 184, 100.00, 0.00, 100.00, '2020-03-25 00:00:00', 'RE'),
(00076, 00001, 00001, 00006, 00058, 'OS', 187, 50.00, 0.00, 50.00, '2020-04-24 00:00:00', 'RE'),
(00077, 00001, 00001, 00006, 00059, 'OS', 188, 50.00, 0.00, 50.00, '2020-05-12 00:00:00', 'RE'),
(00078, 00001, 00006, 00006, 00060, 'OS', 189, 100.00, 0.00, 100.00, '2020-05-18 00:00:00', 'RE'),
(00079, 00001, 00001, 00006, 00062, 'OS', 192, 100.00, 0.00, 100.00, '2020-05-28 00:00:00', 'RE'),
(00080, 00001, 00001, 00006, 00039, 'OS', 194, 50.00, 0.00, 50.00, '2020-06-16 00:00:00', 'RE'),
(00081, 00001, 00001, 00006, 00032, 'OS', 199, 50.00, 0.00, 50.00, '2020-07-10 00:00:00', 'RE'),
(00082, 00001, 00001, 00006, 00032, 'OS', 200, 50.00, 0.00, 50.00, '2020-07-10 00:00:00', 'RE'),
(00083, 00001, 00001, 00006, 00064, 'OS', 204, 50.00, 0.00, 50.00, '2020-07-15 00:00:00', 'RE'),
(00084, 00001, 00002, 00006, 00038, 'OS', 202, 50.00, 0.00, 50.00, '2020-07-15 00:00:00', 'RE'),
(00085, 00001, 00001, 00006, 00065, 'OS', 205, 50.00, 0.00, 50.00, '2020-07-17 00:00:00', 'RE'),
(00086, 00001, 00001, 00006, 00062, 'OS', 203, 50.00, 0.00, 50.00, '2020-07-17 00:00:00', 'RE'),
(00087, 00001, 00002, 00006, 00032, 'OS', 208, 50.00, 0.00, 50.00, '2020-07-28 00:00:00', 'RE'),
(00088, 00001, 00002, 00006, 00038, 'TR', 15, 50.00, 0.00, 50.00, '2020-07-22 00:00:00', 'RE'),
(00089, 00001, 00002, 00006, 00067, 'TR', 17, 100.00, 0.00, 100.00, '2020-07-27 00:00:00', 'RE'),
(00090, 00001, 00001, 00006, 00068, 'OS', 214, 50.00, 0.00, 50.00, '2020-08-06 00:00:00', 'RE'),
(00091, 00001, 00002, 00006, 00069, 'OS', 215, 100.00, 0.00, 100.00, '2020-07-30 00:00:00', 'RE'),
(00092, 00001, 00002, 00006, 00038, 'TR', 16, 50.00, 0.00, 50.00, '2020-08-05 00:00:00', 'RE'),
(00093, 00001, 00001, 00006, 00009, 'OS', 218, 50.00, 0.00, 100.00, '2020-08-11 00:00:00', 'RE'),
(00094, 00001, 00001, 00006, 00064, 'TR', 18, 120.00, 0.00, 120.00, '2020-08-06 00:00:00', 'RE'),
(00095, 00001, 00001, 00006, 00071, 'OS', 223, 150.00, 0.00, 150.00, '2020-08-12 00:00:00', 'RE'),
(00096, 00001, 00001, 00006, 00073, 'OS', 228, 100.00, 0.00, 100.00, '2020-08-20 00:00:00', 'RE'),
(00097, 00001, 00001, 00006, 00072, 'TR', 19, 125.00, 0.00, 125.00, '2020-08-21 00:00:00', 'RE'),
(00098, 00001, 00001, 00006, 00072, 'TR', 20, 125.00, 0.00, 125.00, '2020-08-29 00:00:00', 'RE'),
(00099, 00001, 00001, 00006, 00041, 'OS', 236, 50.00, 0.00, 50.00, '2020-09-25 00:00:00', 'RE'),
(00100, 00001, 00001, 00006, 00075, 'OS', 237, 50.00, 0.00, 50.00, '2020-09-20 00:00:00', 'RE'),
(00101, 00001, 00001, 00006, 00075, 'OS', 238, 100.00, 0.00, 100.00, '2020-09-22 00:00:00', 'RE'),
(00102, 00001, 00001, 00006, 00076, 'OS', 242, 100.00, 0.00, 100.00, '2020-09-28 00:00:00', 'RE'),
(00103, 00001, 00001, 00006, 00064, 'OS', 240, 100.00, 0.00, 100.00, '2020-09-30 00:00:00', 'RE'),
(00104, 00001, 00002, 00006, 00001, 'TR', 21, 150.00, 0.00, 150.00, '2020-10-01 00:00:00', 'RE'),
(00105, 00001, 00002, 00006, 00070, 'TR', 22, 200.00, 0.00, 200.00, '2020-08-05 00:00:00', 'RE'),
(00106, 00001, 00002, 00006, 00001, 'TR', 23, 150.00, 0.00, 150.00, '2020-08-05 00:00:00', 'RE'),
(00107, 00001, 00002, 00006, 00001, 'TR', 24, 150.00, 0.00, 150.00, '2020-09-05 00:00:00', 'RE'),
(00108, 00001, 00002, 00006, 00070, 'TR', 25, 200.00, 0.00, 200.00, '2020-09-05 00:00:00', 'RE'),
(00109, 00001, 00002, 00006, 00077, 'OS', 243, 150.00, 0.00, 150.00, '2020-10-06 00:00:00', 'RE'),
(00110, 00001, 00002, 00006, 00070, 'TR', 26, 200.00, 0.00, 200.00, '2020-10-06 00:00:00', 'RE'),
(00111, 00001, 00001, 00006, 00078, 'OS', 247, 100.00, 0.00, 100.00, '2020-10-19 00:00:00', 'RE'),
(00112, 00001, 00001, 00006, 00039, 'OS', 259, 50.00, 0.00, 50.00, '2020-10-31 00:00:00', 'RE'),
(00113, 00001, 00002, 00006, 00001, 'TR', 27, 150.00, 0.00, 150.00, '2020-11-03 00:00:00', 'RE'),
(00114, 00001, 00002, 00006, 00070, 'TR', 28, 250.00, 0.00, 250.00, '2020-11-04 00:00:00', 'RE'),
(00115, 00001, 00002, 00006, 00081, 'OS', 265, 70.00, 0.00, 70.00, '2020-11-12 00:00:00', 'RE'),
(00116, 00001, 00002, 00006, 00080, 'OS', 263, 100.00, 0.00, 100.00, '2020-11-14 00:00:00', 'RE'),
(00117, 00001, 00002, 00006, 00080, 'OS', 266, 100.00, 0.00, 100.00, '2020-11-14 00:00:00', 'RE'),
(00118, 00001, 00002, 00006, 00082, 'TR', 29, 150.00, 0.00, 150.00, '2020-11-17 00:00:00', 'RE'),
(00119, 00001, 00001, 00006, 00083, 'OS', 270, 100.00, 0.00, 100.00, '2020-11-26 00:00:00', 'RE'),
(00120, 00001, 00001, 00006, 00084, 'OS', 272, 50.00, 0.00, 50.00, '2020-11-27 00:00:00', 'RE'),
(00121, 00001, 00002, 00006, 00085, 'OS', 275, 100.00, 0.00, 100.00, '2020-11-30 00:00:00', 'RE'),
(00122, 00001, 00002, 00006, 00001, 'TR', 30, 150.00, 0.00, 150.00, '2020-12-01 00:00:00', 'RE'),
(00123, 00001, 00002, 00006, 00070, 'TR', 31, 250.00, 0.00, 250.00, '2020-12-10 00:00:00', 'RE'),
(00124, 00001, 00007, 00006, 00087, 'OS', 279, 180.00, 0.00, 180.00, '2020-12-21 00:00:00', 'RE'),
(00125, 00001, 00002, 00006, 00083, 'OS', 280, 100.00, 0.00, 100.00, '2020-12-30 00:00:00', 'RE'),
(00126, 00001, 00001, 00006, 00001, 'TR', 34, 150.00, 0.00, 150.00, '2021-01-13 00:00:00', 'RE'),
(00127, 00001, 00007, 00006, 00070, 'TR', 35, 250.00, 0.00, 250.00, '2021-01-13 00:00:00', 'RE'),
(00128, 00001, 00007, 00006, 00070, 'TR', 37, 250.00, 0.00, 250.00, '2021-02-02 00:00:00', 'RE'),
(00129, 00001, 00001, 00006, 00088, 'OS', 288, 50.00, 0.00, 50.00, '2021-02-05 00:00:00', 'RE'),
(00130, 00001, 00001, 00006, 00089, 'OS', 289, 50.00, 0.00, 50.00, '2021-02-27 00:00:00', 'RE'),
(00131, 00001, 00001, 00006, 00089, 'OS', 290, 50.00, 0.00, 50.00, '2021-02-27 00:00:00', 'RE'),
(00132, 00001, 00001, 00006, 00032, 'OS', 291, 100.00, 0.00, 100.00, '2021-02-27 00:00:00', 'RE'),
(00133, 00001, 00002, 00006, 00081, 'TR', 36, 50.00, 0.00, 50.00, '2021-03-05 00:00:00', 'RE'),
(00134, 00001, 00002, 00006, 00090, 'OS', 292, 50.00, 0.00, 50.00, '2021-03-08 00:00:00', 'RE'),
(00135, 00001, 00002, 00006, 00070, 'TR', 38, 250.00, 0.00, 250.00, '2021-03-08 00:00:00', 'RE'),
(00136, 00001, 00002, 00006, 00038, 'TR', 39, 70.00, 0.00, 70.00, '2021-03-15 00:00:00', 'RE'),
(00137, 00001, 00002, 00006, 00001, 'TR', 42, 150.00, 0.00, 150.00, '2021-03-17 00:00:00', 'RE'),
(00138, 00001, 00002, 00006, 00091, 'OS', 296, 200.00, 0.00, 200.00, '2021-03-19 00:00:00', 'RE'),
(00139, 00001, 00001, 00006, 00092, 'TR', 41, 50.00, 0.00, 50.00, '2021-03-19 00:00:00', 'RE'),
(00140, 00001, 00002, 00006, 00064, 'TR', 43, 150.00, 0.00, 150.00, '2021-03-23 00:00:00', 'RE'),
(00141, 00001, 00001, 00006, 00094, 'TR', 47, 150.00, 0.00, 150.00, '2021-04-05 00:00:00', 'RE'),
(00142, 00001, 00001, 00006, 00094, 'TR', 48, 100.00, 0.00, 100.00, '2021-04-05 00:00:00', 'RE'),
(00143, 00001, 00001, 00006, 00095, 'OS', 306, 120.00, 0.00, 120.00, '2021-04-10 00:00:00', 'RE'),
(00144, 00001, 00001, 00006, 00001, 'TR', 45, 150.00, 0.00, 150.00, '2021-04-10 00:00:00', 'RE'),
(00145, 00001, 00002, 00006, 00070, 'TR', 46, 250.00, 0.00, 250.00, '2021-04-10 00:00:00', 'RE'),
(00146, 00001, 00001, 00006, 00096, 'AD', 308, 200.00, 0.00, 200.00, '2021-04-27 00:00:00', 'RE'),
(00147, 00001, 00001, 00006, 00097, 'AD', 311, 100.00, 0.00, 100.00, '2021-04-27 00:00:00', 'RE'),
(00148, 00001, 00008, 00006, 00081, 'TR', 40, 50.00, 0.00, 50.00, '2021-04-29 00:00:00', 'RE'),
(00149, 00001, 00008, 00006, 00081, 'TR', 57, 100.00, 0.00, 100.00, '2021-04-29 00:00:00', 'RE'),
(00150, 00001, 00008, 00006, 00081, 'TR', 58, 70.00, 0.00, 70.00, '2021-04-29 00:00:00', 'RE'),
(00151, 00001, 00008, 00006, 00057, 'TR', 33, 50.00, 0.00, 50.00, '2021-05-10 00:00:00', 'RE'),
(00152, 00001, 00008, 00006, 00057, 'TR', 32, 50.00, 0.00, 50.00, '2021-05-10 00:00:00', 'RE'),
(00153, 00001, 00001, 00006, 00096, 'AD', 0, 120.00, 0.00, 120.00, '2021-05-10 00:00:00', 'RE'),
(00154, 00001, 00008, 00006, 00093, 'AD', 0, 50.00, 0.00, 50.00, '2021-05-10 00:00:00', 'RE'),
(00155, 00001, 00001, 00006, 00097, 'AD', 0, 220.00, 0.00, 220.00, '2021-05-12 00:00:00', 'RE'),
(00156, 00001, 00008, 00006, 00087, 'OS', 319, 50.00, 0.00, 50.00, '2021-05-14 00:00:00', 'RE'),
(00157, 00001, 00008, 00006, 00070, 'TR', 56, 250.00, 0.00, 250.00, '2021-05-14 00:00:00', 'RE'),
(00158, 00001, 00001, 00006, 00098, 'OS', 320, 100.00, 0.00, 100.00, '2021-05-16 00:00:00', 'RE'),
(00159, 00001, 00008, 00006, 00093, 'AD', 0, 50.00, 0.00, 50.00, '2021-06-04 00:00:00', 'RE'),
(00160, 00001, 00002, 00006, 00001, 'TR', 54, 150.00, 0.00, 150.00, '2021-06-07 00:00:00', 'RE'),
(00161, 00001, 00009, 00006, 00070, 'TR', 60, 250.00, 0.00, 250.00, '2021-06-08 00:00:00', 'RE'),
(00162, 00001, 00001, 00006, 00099, 'OS', 322, 100.00, 0.00, 100.00, '2021-06-08 00:00:00', 'RE'),
(00163, 00001, 00001, 00006, 00100, 'AD', 0, 150.00, 0.00, 150.00, '2021-06-08 00:00:00', 'RE'),
(00164, 00001, 00004, 00006, 00100, 'AD', 0, 150.00, 0.00, 150.00, '2021-06-08 00:00:00', 'RE'),
(00165, 00001, 00002, 00006, 00001, 'TR', 55, 150.00, 0.00, 150.00, '2021-06-18 00:00:00', 'RE'),
(00166, 00001, 00001, 00006, 00065, 'TR', 61, 50.00, 0.00, 50.00, '2021-06-21 00:00:00', 'RE'),
(00167, 00001, 00001, 00006, 00101, 'OS', 328, 100.00, 0.00, 100.00, '2021-06-30 00:00:00', 'RE'),
(00168, 00001, 00009, 00006, 00002, 'OS', 327, 100.00, 0.00, 100.00, '2021-07-02 00:00:00', 'RE'),
(00169, 00001, 00009, 00006, 00103, 'OS', 330, 100.00, 0.00, 100.00, '2021-07-02 00:00:00', 'RE'),
(00170, 00001, 00009, 00006, 00100, 'OS', 332, 50.00, 0.00, 50.00, '2021-07-06 00:00:00', 'RE'),
(00171, 00001, 00009, 00006, 00102, 'TR', 64, 50.00, 0.00, 50.00, '2021-07-06 00:00:00', 'RE'),
(00172, 00001, 00009, 00006, 00070, 'TR', 63, 250.00, 0.00, 250.00, '2021-07-20 00:00:00', 'RE'),
(00173, 00001, 00001, 00006, 00001, 'TR', 62, 150.00, 0.00, 150.00, '2021-07-22 00:00:00', 'RE'),
(00174, 00001, 00009, 00006, 00070, 'TR', 66, 250.00, 0.00, 250.00, '2021-08-05 00:00:00', 'RE'),
(00175, 00001, 00009, 00006, 00032, 'OS', 333, 50.00, 0.00, 50.00, '2021-09-02 00:00:00', 'RE'),
(00176, 00001, 00001, 00006, 00001, 'TR', 65, 150.00, 0.00, 150.00, '2021-09-02 00:00:00', 'RE'),
(00177, 00001, 00001, 00006, 00104, 'OS', 334, 50.00, 0.00, 50.00, '2021-09-30 00:00:00', 'RE'),
(00178, 00001, 00009, 00006, 00070, 'TR', 67, 250.00, 0.00, 250.00, '2021-09-30 00:00:00', 'RE'),
(00179, 00001, 00001, 00006, 00001, 'TR', 68, 150.00, 0.00, 150.00, '2021-09-30 00:00:00', 'RE'),
(00180, 00001, 00001, 00006, 00105, 'OS', 335, 150.00, 0.00, 150.00, '2021-10-14 00:00:00', 'RE'),
(00181, 00001, 00002, 00006, 00070, 'TR', 70, 250.00, 0.00, 250.00, '2021-10-14 00:00:00', 'RE'),
(00182, 00001, 00001, 00006, 00001, 'TR', 69, 150.00, 0.00, 150.00, '2021-10-22 00:00:00', 'RE'),
(00183, 00001, 00001, 00006, 00004, 'OS', 336, 150.00, 50.00, 100.00, '2021-10-22 00:00:00', 'RE'),
(00184, 00001, 00002, 00006, 00070, 'TR', 73, 250.00, 0.00, 250.00, '2021-11-09 00:00:00', 'RE'),
(00185, 00001, 00009, 00006, 00064, 'TR', 74, 100.00, 50.00, 100.00, '2021-11-15 00:00:00', 'RE'),
(00186, 00001, 00009, 00006, 00064, 'TR', 75, 50.00, 0.00, 50.00, '2021-11-15 00:00:00', 'RE'),
(00187, 00001, 00009, 00006, 00032, 'TR', 71, 150.00, 50.00, 150.00, '2021-11-15 00:00:00', 'RE'),
(00188, 00001, 00001, 00006, 00001, 'TR', 72, 150.00, 0.00, 150.00, '2021-11-24 00:00:00', 'RE'),
(00189, 00001, 00009, 00006, 00032, 'OS', 347, 110.00, 0.00, 110.00, '2021-12-07 00:00:00', 'RE'),
(00190, 00001, 00009, 00006, 00070, 'TR', 78, 250.00, 0.00, 250.00, '2021-12-07 00:00:00', 'RE'),
(00191, 00001, 00001, 00006, 00106, 'TR', 76, 150.00, 5.50, 150.00, '2021-12-10 00:00:00', 'RE'),
(00192, 00001, 00001, 00006, 00107, 'OS', 349, 50.00, 0.00, 50.00, '2021-12-13 00:00:00', 'RE'),
(00193, 00001, 00001, 00006, 00108, 'OS', 350, 100.00, 0.00, 100.00, '2021-12-21 00:00:00', 'RE'),
(00194, 00001, 00001, 00006, 00001, 'TR', 77, 150.00, 0.00, 150.00, '2021-12-21 00:00:00', 'RE'),
(00195, 00001, 00009, 00006, 00109, 'OS', 355, 50.00, 0.00, 50.00, '2022-01-24 00:00:00', 'RE'),
(00196, 00001, 00009, 00006, 00110, 'OS', 356, 150.00, 0.00, 150.00, '2022-01-24 00:00:00', 'RE'),
(00197, 00001, 00001, 00006, 00110, 'OS', 357, 70.00, 10.00, 60.00, '2022-01-24 00:00:00', 'RE'),
(00198, 00001, 00009, 00006, 00070, 'TR', 80, 250.00, 0.00, 250.00, '2022-01-24 00:00:00', 'RE'),
(00199, 00001, 00001, 00006, 00001, 'TR', 79, 150.00, 0.00, 150.00, '2022-01-26 00:00:00', 'RE'),
(00200, 00001, 00002, 00006, 00070, 'TR', 82, 250.00, 0.00, 250.00, '2022-02-03 00:00:00', 'RE'),
(00201, 00001, 00008, 00006, 00111, 'OS', 358, 100.00, 0.00, 100.00, '2022-02-03 00:00:00', 'RE'),
(00202, 00001, 00009, 00006, 00065, 'TR', 49, 50.00, 131.50, 50.00, '2022-02-04 00:00:00', 'RE'),
(00203, 00001, 00001, 00006, 00001, 'TR', 81, 150.00, 0.00, 150.00, '2022-02-23 00:00:00', 'RE'),
(00204, 00001, 00008, 00006, 00112, 'OS', 365, 100.00, 0.00, 100.00, '2022-03-06 00:00:00', 'RE'),
(00205, 00001, 00001, 00006, 00070, 'TR', 85, 250.00, 0.00, 250.00, '2022-03-07 00:00:00', 'RE'),
(00206, 00001, 00008, 00006, 00113, 'OS', 367, 100.00, 0.00, 100.00, '2022-03-30 00:00:00', 'RE'),
(00207, 00001, 00001, 00006, 00070, 'TR', 87, 250.00, 0.00, 250.00, '2022-04-06 00:00:00', 'RE'),
(00208, 00001, 00008, 00006, 00114, 'AD', 0, 200.00, 0.00, 200.00, '2022-04-11 00:00:00', 'RE'),
(00209, 00001, 00001, 00006, 00001, 'TR', 84, 150.00, 18.00, 150.00, '2022-04-11 00:00:00', 'RE'),
(00210, 00001, 00008, 00006, 00083, 'TR', 92, 100.00, 0.00, 100.00, '2022-04-14 00:00:00', 'RE'),
(00211, 00001, 00008, 00006, 00064, 'OS', 377, 100.00, 0.00, 100.00, '2022-04-20 00:00:00', 'RE'),
(00212, 00001, 00008, 00006, 00001, 'TR', 86, 150.00, 0.00, 150.00, '2022-04-20 00:00:00', 'RE'),
(00213, 00001, 00008, 00006, 00053, 'OS', 378, 110.00, 0.00, 110.00, '2022-04-27 00:00:00', 'RE'),
(00214, 00001, 00001, 00006, 00070, 'TR', 94, 250.00, 0.00, 250.00, '2022-05-09 00:00:00', 'RE'),
(00215, 00001, 00008, 00006, 00001, 'TR', 93, 150.00, 0.00, 150.00, '2022-05-23 00:00:00', 'RE'),
(00216, 00001, 00008, 00006, 00065, 'TR', 83, 100.00, 20.50, 100.00, '2022-05-31 00:00:00', 'RE'),
(00217, 00001, 00008, 00006, 00070, 'TR', 96, 250.00, 0.00, 250.00, '2022-06-03 00:00:00', 'RE'),
(00218, 00001, 00008, 00006, 00011, 'OS', 382, 150.00, 0.00, 150.00, '2022-06-15 00:00:00', 'RE'),
(00219, 00001, 00008, 00006, 00064, 'OS', 381, 140.00, 0.00, 140.00, '2022-06-15 00:00:00', 'RE'),
(00220, 00001, 00008, 00006, 00115, 'OS', 384, 100.00, 0.00, 100.00, '2022-06-20 00:00:00', 'RE'),
(00221, 00001, 00008, 00006, 00064, 'TR', 97, 150.00, 0.00, 150.00, '2022-06-21 00:00:00', 'RE'),
(00222, 00001, 00008, 00006, 00001, 'TR', 95, 150.00, 0.00, 150.00, '2022-06-22 00:00:00', 'RE'),
(00223, 00001, 00008, 00006, 00087, 'OS', 385, 150.00, 0.00, 150.00, '2022-06-24 00:00:00', 'RE'),
(00224, 00001, 00008, 00006, 00064, 'TR', 98, 150.00, 0.00, 150.00, '2022-06-27 00:00:00', 'RE'),
(00225, 00001, 00008, 00006, 00116, 'OS', 389, 100.00, 0.00, 100.00, '2022-06-30 00:00:00', 'RE'),
(00226, 00001, 00008, 00006, 00117, 'OS', 390, 100.00, 0.00, 100.00, '2022-07-10 00:00:00', 'RE'),
(00227, 00001, 00008, 00006, 00070, 'TR', 100, 250.00, 0.00, 250.00, '2022-07-10 00:00:00', 'RE'),
(00228, 00001, 00008, 00006, 00001, 'TR', 99, 150.00, 0.00, 150.00, '2022-07-19 00:00:00', 'RE'),
(00229, 00001, 00008, 00006, 00118, 'OS', 391, 150.00, 0.00, 150.00, '2023-02-24 00:00:00', 'RE'),
(00230, 00001, 00008, 00006, 00118, 'OS', 392, 150.00, 0.00, 150.00, '2023-02-24 00:00:00', 'RE'),
(00231, 00001, 00001, 00006, 00083, 'OS', 393, 100.00, 0.00, 100.00, '2023-02-24 00:00:00', 'RE'),
(00232, 00001, 00008, 00006, 00001, 'TR', 101, 150.00, 0.00, 150.00, '2023-02-24 00:00:00', 'RE'),
(00233, 00001, 00008, 00006, 00001, 'TR', 102, 150.00, 0.00, 150.00, '2023-02-24 00:00:00', 'RE'),
(00234, 00001, 00001, 00006, 00001, 'TR', 105, 100.00, 0.00, 100.00, '2023-04-24 00:00:00', 'RE'),
(00235, 00001, 00001, 00006, 00001, 'TR', 106, 100.00, 0.00, 100.00, '2023-04-24 00:00:00', 'RE'),
(00236, 00001, 00001, 00006, 00106, 'OS', 397, 150.00, 0.00, 150.00, '2023-05-15 00:00:00', 'RE'),
(00237, 00001, 00008, 00006, 00119, 'TR', 104, 100.00, 0.00, 100.00, '2023-05-15 00:00:00', 'RE'),
(00238, 00001, 00008, 00006, 00001, 'TR', 108, 150.00, 0.00, 150.00, '2023-05-15 00:00:00', 'RE'),
(00239, 00001, 00008, 00006, 00001, 'TR', 110, 150.00, 0.00, 150.00, '2023-05-15 00:00:00', 'RE'),
(00240, 00001, 00008, 00006, 00001, 'TR', 109, 150.00, 0.00, 150.00, '2023-05-15 00:00:00', 'RE'),
(00241, 00001, 00008, 00006, 00001, 'TR', 103, 150.00, 0.00, 150.00, '2023-05-15 00:00:00', 'RE'),
(00242, 00001, 00001, 00006, 00092, 'OS', 399, 100.00, 0.00, 100.00, '2023-05-27 00:00:00', 'RE'),
(00243, 00001, 00002, 00006, 00093, 'AD', 0, 150.00, 0.00, 150.00, '2023-05-31 00:00:00', 'RE'),
(00244, 00001, 00002, 00006, 00122, 'TR', 113, 300.00, 0.00, 300.00, '2023-06-14 00:00:00', 'RE'),
(00245, 00001, 00002, 00006, 00121, 'TR', 115, 150.00, 0.00, 150.00, '2023-06-14 00:00:00', 'RE'),
(00246, 00001, 00002, 00006, 00001, 'TR', 114, 150.00, 0.00, 150.00, '2023-07-20 00:00:00', 'RE'),
(00247, 00001, 00001, 00006, 00124, 'OS', 404, 100.00, 0.00, 100.00, '2023-08-08 00:00:00', 'RE'),
(00248, 00001, 00002, 00006, 00123, 'OS', 405, 80.00, 0.00, 80.00, '2023-08-08 00:00:00', 'RE'),
(00249, 00001, 00009, 00006, 00076, 'OS', 406, 50.00, 0.00, 50.00, '2023-09-04 00:00:00', 'RE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_servico_ser`
--

CREATE TABLE `tbl_servico_ser` (
  `NUM_ID_SER` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_NOME_SER` varchar(50) NOT NULL,
  `TXT_DESCRICAO_SER` varchar(50) NOT NULL,
  `NUM_DURACAO_SER` int(5) UNSIGNED NOT NULL,
  `VAL_FISICA_SER` double(8,2) NOT NULL,
  `VAL_JURIDICA_SER` double(8,2) NOT NULL,
  `VAL_GARANTIA_SER` double(8,2) NOT NULL DEFAULT 0.00,
  `VAL_INTERNO_SER` double(8,2) NOT NULL DEFAULT 0.00,
  `VAL_CONTRATO_SER` double(8,2) NOT NULL DEFAULT 0.00,
  `TXT_ATIVO_SER` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_servico_ser`
--

INSERT INTO `tbl_servico_ser` (`NUM_ID_SER`, `TXT_NOME_SER`, `TXT_DESCRICAO_SER`, `NUM_DURACAO_SER`, `VAL_FISICA_SER`, `VAL_JURIDICA_SER`, `VAL_GARANTIA_SER`, `VAL_INTERNO_SER`, `VAL_CONTRATO_SER`, `TXT_ATIVO_SER`) VALUES
(00001, 'DIAGNOSTICO', 'DIAGNOSTICO', 24, 0.00, 0.00, 0.00, 0.00, 0.00, 'SIM'),
(00002, 'FORMATACAO COM BACKUP', 'FORMATACAO COM BACKUP', 24, 150.00, 200.00, 200.00, 50.00, 0.00, 'SIM'),
(00003, 'REALIZAR BACKUP DE DADOS', 'REALIZAR BACKUP DE DADOS', 2, 50.00, 100.00, 100.00, 0.00, 0.00, 'SIM'),
(00004, 'INSTALACAO DE APLICATIVOS', 'INSTALACAO DE APLICATIVOS', 2, 100.00, 150.00, 150.00, 50.00, 0.00, 'SIM'),
(00005, 'REMOCAO DE APLICATIVOS', 'REMOCAO DE APLICATIVOS', 2, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00006, 'VERIFICACAO DE SOFTWARE', 'VERIFICACAO DE SOFTWARE', 2, 100.00, 150.00, 25.00, 50.00, 0.00, 'SIM'),
(00007, 'VERIFICACAO DE HARDWARE', 'VERIFICACAO DE HARDWARE', 2, 100.00, 150.00, 25.00, 50.00, 0.00, 'SIM'),
(00008, 'RECONFIGURACAO DE SOFTWARE', 'RECONFIGURACAO DE SOFTWARE', 2, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00009, 'RECONFIGURACAO DE HARDWARE', 'RECONFIGURACAO DE HARDWARE', 2, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00010, 'RECONFIGURACAO DE EQUIPAMENTO', 'RECONFIGURACAO DE EQUIPAMENTO', 1, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00011, 'INSTALACAO DE HARDWARE       ', 'INSTALACAO DE HARDWARE       ', 3, 100.00, 150.00, 150.00, 50.00, 0.00, 'SIM'),
(00012, 'CONFIGURACAO DE REDE SEM FIO', 'CONFIGURACAO DE REDE SEM FIO', 2, 150.00, 250.00, 25.00, 50.00, 0.00, 'SIM'),
(00013, 'CONFIGURACAO DE REDE COM FIO', 'CONFIGURACAO DE REDE COM FIO', 2, 150.00, 250.00, 25.00, 50.00, 0.00, 'SIM'),
(00014, 'CONSULTORIA EM INFORMATICA', 'CONSULTORIA EM INFORMATICA', 2, 150.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00015, 'INSTALACAO DE DRIVERS        ', 'INSTALACAO DE DRIVERS        ', 3, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00016, 'RECUPERACAO DE DADOS         ', 'RECUPERACAO DE DADOS         ', 24, 100.00, 200.00, 25.00, 50.00, 0.00, 'SIM'),
(00017, 'RECUPERAR INICIALIZACAO DE SO', 'RECUPERAR INICIALIZACAO DE SO', 3, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00018, 'TROCA DE HD       ', 'TROCA DE HD', 2, 50.00, 100.00, 100.00, 50.00, 0.00, 'SIM'),
(00019, 'TROCA DE HD KINGSTON 120GB', 'TROCA DE HD KINGSTON 120GB', 6, 220.00, 320.00, 320.00, 50.00, 0.00, 'SIM'),
(00020, 'TROCA MEMORIA SIMPLES        ', 'TROCA MEMORIA SIMPLES        ', 2, 50.00, 100.00, 25.00, 50.00, 0.00, 'SIM'),
(00021, 'TROCA MEMORIA COMPLETA       ', 'TROCA MEMORIA COMPLETA       ', 6, 100.00, 200.00, 25.00, 50.00, 0.00, 'SIM'),
(00022, 'CONFIGURACAO REDE/COMPARTILHAMENTO', 'CONFIGURACAO DE REDE/COMPARTILHAMENTO', 1, 150.00, 250.00, 250.00, 0.00, 0.00, 'SIM'),
(00023, 'LIMPEZA INTERNA E EXTERNA', 'LIMPEZA INTERNA E EXTERNA', 1, 50.00, 100.00, 25.00, 25.00, 0.00, 'SIM'),
(00024, 'INST/CONF DE EQUIPAMENTO DE EXAME', 'CONFIGURACAO E INSTALACAO DE EQUIPAMENTO PARA EXAM', 4, 50.00, 100.00, 50.00, 50.00, 0.00, 'SIM'),
(00025, 'TROCA DE HARDWARE', 'TROCA DE HARDWARE DANIFICADO', 1, 100.00, 200.00, 0.00, 0.00, 0.00, 'SIM'),
(00026, 'INST/CONF DE SOFTWARE GERENCIAMENTO', 'INSTALACAO DE SOFTWARE GERENCIAMENTO DA EMPRESA', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00027, 'MIGRACAO P/ WINDOWS 10', 'MIGRACAO P/ WINDOWS 10', 4, 100.00, 150.00, 0.00, 0.00, 0.00, 'SIM'),
(00028, 'INST/CONF  DE IMPRESSORA', 'INSTALACAO E CONFIGURACAO DE IMPRESSORA', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00029, 'RESTAURAR BACKUP DE DADOS', 'RESTAURAR BACKUP DE DADOS', 2, 50.00, 100.00, 100.00, 0.00, 0.00, 'SIM'),
(00030, 'REPARAR SISTEMA OPERACIONAL', 'REPARAR SISTEMA OPERACIONAL', 3, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00031, 'SUPORTE A SISTEMA DE TERCEIROS', 'SUPORTE A SISTEMA DE TERCEIROS', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00032, 'PROBLEMA INTERNET - SITE', 'PROBLEMA INTERNET - SITE', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00033, 'PROBLEMA INTERNET - CONEXAO', 'PROBLEMA INTERNET - CONEXAO', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00034, 'INST/CONF DE SCANNER', 'INSTALACAO E CONFIGURACAO DE SCANNER', 1, 70.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00035, 'TROCA/ADCIONA PLACA DE REDE', 'TROCA/ADCIONA PLACA DE REDE', 1, 25.00, 50.00, 0.00, 0.00, 0.00, 'SIM'),
(00036, 'VERIFICACAO EM EQUIPAMENTO DE EXAMES', 'VERIFICACAO EM EQUIPAMENTO DE EXAMES', 2, 100.00, 150.00, 0.00, 0.00, 0.00, 'SIM'),
(00037, 'FORMATACAO SEM BACKUP', 'FORMATACAO SEM BACKUP', 4, 100.00, 150.00, 0.00, 0.00, 0.00, 'SIM'),
(00038, 'TROCA PROCESSADOR', 'TROCA PROCESSADOR', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00039, 'TROCA DE FONTE', 'TROCA DE FONTE', 1, 50.00, 200.00, 200.00, 0.00, 0.00, 'SIM'),
(00040, 'CONTRATO DE SERVICO 150', 'CONTRATO DE SERVICO 150', 0, 150.00, 150.00, 0.00, 0.00, 0.00, 'SIM'),
(00041, 'CONTRATO DE SERVICO 200', 'CONTRATO DE SERVICO 200', 0, 200.00, 200.00, 0.00, 0.00, 0.00, 'SIM'),
(00042, 'OUTROS CUSTOS ', 'OUTROS CUSTOS', 1, 50.00, 100.00, 0.00, 0.00, 0.00, 'SIM'),
(00043, 'TROCA DE BATERIA CMOS', 'TROCA DE BATERIA CMOS', 0, 50.00, 70.00, 0.00, 0.00, 0.00, 'SIM'),
(00044, 'CONFIGURACAO DE EQUIPAMENTO NOVO', 'CONFIGURACAO DE EQUIPAMENTO NOVO', 8, 100.00, 150.00, 0.00, 0.00, 0.00, 'SIM'),
(00045, 'TROCA DE GABINETE', 'TROCA DE GABINETE', 2, 200.00, 120.00, 0.00, 0.00, 0.00, 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sistemaoperacional_so`
--

CREATE TABLE `tbl_sistemaoperacional_so` (
  `NUM_ID_SO` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_NOME_SO` varchar(50) NOT NULL,
  `TXT_DESCRICAO_SO` varchar(50) DEFAULT NULL,
  `TXT_ATIVO_SO` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sistemaoperacional_so`
--

INSERT INTO `tbl_sistemaoperacional_so` (`NUM_ID_SO`, `TXT_NOME_SO`, `TXT_DESCRICAO_SO`, `TXT_ATIVO_SO`) VALUES
(00001, 'NI', 'NI', 'SIM'),
(00002, 'WINDOWS 8.1', 'WINDOWS 8.1', 'SIM'),
(00003, 'WINDOWS 8 PRO', 'WINDOWS 8 PRO', 'SIM'),
(00004, 'WINDOWS 8.1 PRO', 'WINDOWS 8.1 PRO', 'SIM'),
(00005, 'WINDOWS 7 HOME PREMIUM', 'WINDOWS 7 HOME PREMIUM', 'SIM'),
(00006, 'WINDOWS 7 PROFESSIONAL', 'WINDOWS 7 PROFESSIONAL', 'SIM'),
(00007, 'WINDOWS SERVER 2012 S2', 'WINDOWS SERVER 2012 S2', 'SIM'),
(00008, 'WINDOWS XP PROFESSIONAL', 'WINDOWS XP PROFESSIONAL', 'SIM'),
(00009, 'MICROSOFT WINDOWS 10', 'MICROSOFT WINDOWS 10', 'SIM'),
(00010, 'WINDOWS 2000 PRO', 'WINDOWS 2000 PROFESSIONAL', 'SIM'),
(00011, 'WINDOWS 7 HOME BASIC', 'WINDOWS 7 HOME BASIC', 'SIM'),
(00012, 'MICROSOFT WINDOWS VISTA', 'MICROSOFT WINDOWS VISTA', 'SIM'),
(00013, 'WINDOWS 7 STARTER', 'WINDOWS 7 STARTER', 'SIM'),
(00014, 'WINDOWS 10 HOME SINGLE LANGUAGE', 'WINDOWS 10 HOME SINGLE LANGUAGE', 'SIM'),
(00015, 'WINDOWS 10 PRO SINGLE LANGUAGE', 'WINDOWS 10 PRO SINGLE LANGUAGE', 'SIM'),
(00016, 'WINDOWS SERVER 2008 S2', 'WINDOWS SERVER 2008 S2', 'SIM'),
(00017, 'MACOS CATALINA', 'MACOS CATALINA', 'SIM'),
(00018, 'MACOS MOJAVE', 'MACOS MOJAVE', 'SIM'),
(00019, 'MACOS HIGH SIERRA', 'MACOS HIGH SIERRA', 'SIM'),
(00020, 'WINDOWS 11 PROFESSIONAL', 'WINDOWS 11 PROFESSIONAL', 'SIM'),
(00021, 'WINDOWS 11 HOME', 'WINDOWS 11 HOME', 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tarefas_tar`
--

CREATE TABLE `tbl_tarefas_tar` (
  `NUM_ID_TAR` int(10) UNSIGNED NOT NULL,
  `TXT_NOME_TAR` varchar(10) NOT NULL,
  `TXT_DESCRICAO_TAR` varchar(100) DEFAULT NULL,
  `TXT_ATIVO_TAR` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tecnico_tec`
--

CREATE TABLE `tbl_tecnico_tec` (
  `NUM_ID_TEC` int(10) UNSIGNED NOT NULL,
  `TXT_NOME_TEC` varchar(100) DEFAULT NULL,
  `TXT_CODIGO_TEC` varchar(20) DEFAULT NULL,
  `TXT_TELEFONE_TEC` varchar(20) DEFAULT NULL,
  `TXT_ATIVO_TEC` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tecnico_tec`
--

INSERT INTO `tbl_tecnico_tec` (`NUM_ID_TEC`, `TXT_NOME_TEC`, `TXT_CODIGO_TEC`, `TXT_TELEFONE_TEC`, `TXT_ATIVO_TEC`) VALUES
(1, 'ADRIANO NOGUEIRA DO NASCIMENTO', 'ADRIANON', '92988262291', 'SIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tituloreceber_tr`
--

CREATE TABLE `tbl_tituloreceber_tr` (
  `NUM_ID_TR` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_EMPRESA_EMP_NUM_ID_EMP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_USUARIO_USU_NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_CLIENTE_CLI_NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL,
  `DTH_EMISSAO_TR` datetime NOT NULL,
  `DTA_VENCIMENTO_TR` date NOT NULL,
  `TXT_REFERENTE_TR` varchar(20) NOT NULL,
  `VAL_VALOR_TR` double(8,2) NOT NULL,
  `VAL_JUROS_TR` double(8,2) NOT NULL DEFAULT 0.00,
  `VAL_MULTA_TR` double(8,2) DEFAULT NULL,
  `VAL_DESCONTO_TR` double(8,2) NOT NULL DEFAULT 0.00,
  `VAL_FINAL_TR` double(8,2) NOT NULL,
  `VAL_PAGO_TR` double(8,2) DEFAULT 0.00,
  `VAL_SALDO_TR` double(8,2) DEFAULT NULL,
  `DTH_RECEBIDO_TR` datetime DEFAULT NULL,
  `TXT_STATUS_TR` varchar(20) NOT NULL DEFAULT 'AB'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tituloreceber_tr`
--

INSERT INTO `tbl_tituloreceber_tr` (`NUM_ID_TR`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TBL_USUARIO_USU_NUM_ID_USU`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `DTH_EMISSAO_TR`, `DTA_VENCIMENTO_TR`, `TXT_REFERENTE_TR`, `VAL_VALOR_TR`, `VAL_JUROS_TR`, `VAL_MULTA_TR`, `VAL_DESCONTO_TR`, `VAL_FINAL_TR`, `VAL_PAGO_TR`, `VAL_SALDO_TR`, `DTH_RECEBIDO_TR`, `TXT_STATUS_TR`) VALUES
(00005, 00001, 00001, 00005, '2016-03-25 00:00:00', '2016-04-25', '3', 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, '2016-03-25 00:00:00', 'PAGO'),
(00006, 00001, 00001, 00005, '2016-03-25 00:00:00', '2016-04-25', '4', 100.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2016-03-25 00:00:00', 'PAGO'),
(00007, 00001, 00001, 00005, '2016-03-25 00:00:00', '2016-05-25', '4', 100.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2016-03-25 00:00:00', 'PAGO'),
(00008, 00001, 00002, 00014, '2016-06-21 00:00:00', '2016-07-01', '20', 100.00, 1269.00, 5.00, 0.00, 1374.00, 0.00, 100.00, NULL, 'ABERTO'),
(00009, 00001, 00002, 00002, '2016-06-21 00:00:00', '2016-07-01', '23', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 75.00, '2016-08-22 00:00:00', 'PAGO'),
(00010, 00001, 00002, 00001, '2016-06-21 00:00:00', '2016-07-01', '24', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 100.00, '2016-07-11 00:00:00', 'PAGO'),
(00011, 00001, 00002, 00017, '2016-06-21 00:00:00', '2016-07-01', '25', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2016-08-22 00:00:00', 'PAGO'),
(00012, 00001, 00002, 00018, '2016-07-04 00:00:00', '2016-07-05', '26', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2016-07-11 00:00:00', 'PAGO'),
(00013, 00001, 00002, 00001, '2016-09-17 00:00:00', '2016-10-01', '38', 100.00, 0.00, 0.00, 0.00, 0.00, 75.00, 150.00, '2016-10-10 00:00:00', 'PAGO'),
(00014, 00001, 00002, 00027, '2020-03-27 00:00:00', '2020-04-15', '183', 100.00, 577.00, 5.00, 0.00, 682.00, 0.00, 200.00, NULL, 'ABERTO'),
(00015, 00001, 00002, 00038, '2020-07-22 00:00:00', '2020-07-22', '206', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2020-07-22 00:00:00', 'PAGO'),
(00016, 00001, 00002, 00038, '2020-07-22 00:00:00', '2020-08-03', '206', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2020-08-05 00:00:00', 'PAGO'),
(00017, 00001, 00002, 00067, '2020-07-27 00:00:00', '2020-07-30', '212', 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, '2020-07-27 00:00:00', 'PAGO'),
(00018, 00001, 00002, 00064, '2020-07-28 00:00:00', '2020-07-31', '211', 120.00, 0.00, 0.00, 0.00, 0.00, 120.00, 175.00, '2020-08-06 00:00:00', 'PAGO'),
(00019, 00001, 00002, 00072, '2020-08-21 00:00:00', '2020-08-21', '225', 125.00, 0.00, 0.00, 0.00, 0.00, 125.00, 125.00, '2020-08-21 00:00:00', 'PAGO'),
(00020, 00001, 00002, 00072, '2020-08-21 00:00:00', '2020-09-05', '225', 125.00, 0.00, 0.00, 0.00, 0.00, 125.00, 125.00, '2020-08-29 00:00:00', 'PAGO'),
(00021, 00001, 00006, 00001, '2020-10-01 00:00:00', '2020-10-01', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2020-10-01 00:00:00', 'PAGO'),
(00022, 00001, 00006, 00070, '2020-10-01 00:00:00', '2020-08-05', 'CM2', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 200.00, '2020-10-01 00:00:00', 'PAGO'),
(00023, 00001, 00006, 00001, '2020-10-01 00:00:00', '2020-08-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2020-10-01 00:00:00', 'PAGO'),
(00024, 00001, 00006, 00001, '2020-10-01 00:00:00', '2020-09-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2020-10-01 00:00:00', 'PAGO'),
(00025, 00001, 00006, 00070, '2020-10-01 00:00:00', '2020-09-05', 'CM2', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 200.00, '2020-10-01 00:00:00', 'PAGO'),
(00026, 00001, 00006, 00070, '2020-10-01 00:00:00', '2020-10-05', 'CM2', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 200.00, '2020-10-06 00:00:00', 'PAGO'),
(00027, 00001, 00006, 00001, '2020-11-03 00:00:00', '2020-11-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2020-11-03 00:00:00', 'PAGO'),
(00028, 00001, 00006, 00070, '2020-11-04 00:00:00', '2020-11-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2020-11-04 00:00:00', 'PAGO'),
(00029, 00001, 00002, 00082, '2020-11-16 00:00:00', '2020-11-23', 'OS268', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 200.00, '2020-11-17 00:00:00', 'PAGO'),
(00030, 00001, 00006, 00001, '2020-11-27 00:00:00', '2020-12-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2020-12-01 00:00:00', 'PAGO'),
(00031, 00001, 00006, 00070, '2020-11-27 00:00:00', '2020-12-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2020-12-10 00:00:00', 'PAGO'),
(00032, 00001, 00002, 00057, '2020-12-21 00:00:00', '2020-12-14', 'OS273', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 200.00, '2021-05-10 00:00:00', 'PAGO'),
(00033, 00001, 00002, 00057, '2020-12-21 00:00:00', '2020-12-14', 'OS271', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2021-05-10 00:00:00', 'PAGO'),
(00034, 00001, 00006, 00001, '2020-12-31 00:00:00', '2020-01-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-01-13 00:00:00', 'PAGO'),
(00035, 00001, 00006, 00070, '2020-12-31 00:00:00', '2020-01-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-01-13 00:00:00', 'PAGO'),
(00036, 00001, 00002, 00081, '2021-01-13 00:00:00', '2021-01-18', 'OS286', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2021-03-05 00:00:00', 'PAGO'),
(00037, 00001, 00006, 00070, '2021-02-02 00:00:00', '2021-02-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-02-02 00:00:00', 'PAGO'),
(00038, 00001, 00006, 00070, '2021-02-27 00:00:00', '2021-03-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-03-08 00:00:00', 'PAGO'),
(00039, 00001, 00002, 00038, '2021-03-08 00:00:00', '2021-04-01', 'OS293', 50.00, 0.00, 0.00, 0.00, 0.00, 70.00, 100.00, '2021-03-15 00:00:00', 'PAGO'),
(00040, 00001, 00002, 00081, '2021-03-08 00:00:00', '2021-05-05', 'OS294', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2021-04-29 00:00:00', 'PAGO'),
(00041, 00001, 00002, 00092, '2021-03-17 00:00:00', '2021-03-20', 'OS300', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2021-03-19 00:00:00', 'PAGO'),
(00042, 00001, 00006, 00001, '2021-03-17 00:00:00', '2021-03-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-03-17 00:00:00', 'PAGO'),
(00043, 00001, 00002, 00064, '2021-03-22 00:00:00', '2021-03-31', 'OS301', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-03-23 00:00:00', 'PAGO'),
(00044, 00001, 00002, 00093, '2021-03-24 00:00:00', '2021-07-05', 'OS302', 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 150.00, '2021-06-07 00:00:00', 'PAGO'),
(00045, 00001, 00006, 00001, '2021-03-29 00:00:00', '2021-04-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-04-10 00:00:00', 'PAGO'),
(00046, 00001, 00006, 00070, '2021-03-29 00:00:00', '2021-04-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-04-10 00:00:00', 'PAGO'),
(00047, 00001, 00002, 00094, '2021-04-01 00:00:00', '2021-04-10', 'OS303', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 250.00, '2021-04-05 00:00:00', 'PAGO'),
(00048, 00001, 00006, 00094, '2021-04-05 00:00:00', '2021-04-05', 'OS304', 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 200.00, '2021-04-05 00:00:00', 'PAGO'),
(00049, 00001, 00002, 00065, '2021-04-09 00:00:00', '2021-04-12', 'OS305', 50.00, 126.50, 5.00, 131.50, 181.50, 50.00, 50.00, '2022-02-04 00:00:00', 'PAGO'),
(00050, 00001, 00002, 00097, '2021-04-19 00:00:00', '2021-04-20', 'OS311', 160.00, 0.00, 0.00, 0.00, 0.00, 160.00, 120.00, '2021-05-12 00:00:00', 'PAGO'),
(00051, 00001, 00002, 00097, '2021-04-19 00:00:00', '2021-05-10', 'OS311', 160.00, 0.00, 0.00, 0.00, 0.00, 160.00, 120.00, '2021-05-12 00:00:00', 'PAGO'),
(00052, 00001, 00002, 00096, '2021-04-19 00:00:00', '2021-04-20', 'OS308', 160.00, 0.00, 0.00, 0.00, 0.00, 160.00, 160.00, '2021-05-10 00:00:00', 'PAGO'),
(00053, 00001, 00002, 00096, '2021-04-19 00:00:00', '2021-05-10', 'OS308', 160.00, 0.00, 0.00, 0.00, 0.00, 160.00, 160.00, '2021-05-10 00:00:00', 'PAGO'),
(00054, 00001, 00006, 00001, '2021-04-27 00:00:00', '2021-05-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-06-07 00:00:00', 'PAGO'),
(00055, 00001, 00006, 00001, '2021-04-27 00:00:00', '2021-06-14', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-06-18 00:00:00', 'PAGO'),
(00056, 00001, 00006, 00070, '2021-04-27 00:00:00', '2021-05-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-05-14 00:00:00', 'PAGO'),
(00057, 00001, 00002, 00081, '2021-04-29 00:00:00', '2021-05-05', 'OS316', 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, '2021-04-29 00:00:00', 'PAGO'),
(00058, 00001, 00002, 00081, '2021-04-29 00:00:00', '2021-05-05', 'OS317', 70.00, 0.00, 0.00, 0.00, 0.00, 70.00, 100.00, '2021-04-29 00:00:00', 'PAGO'),
(00059, 00001, 00002, 00027, '2021-05-25 00:00:00', '2021-06-01', 'OS321', 150.00, 371.00, 5.00, 0.00, 526.00, 0.00, 200.00, NULL, 'ABERTO'),
(00060, 00001, 00006, 00070, '2021-06-07 00:00:00', '2021-06-07', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-06-08 00:00:00', 'PAGO'),
(00061, 00001, 00002, 00065, '2021-06-08 00:00:00', '2021-06-15', 'OS323', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2021-06-21 00:00:00', 'PAGO'),
(00062, 00001, 00006, 00001, '2021-06-30 00:00:00', '2021-07-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-07-22 00:00:00', 'PAGO'),
(00063, 00001, 00006, 00070, '2021-06-30 00:00:00', '2021-07-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-07-20 00:00:00', 'PAGO'),
(00064, 00001, 00002, 00102, '2021-07-02 00:00:00', '2021-07-05', 'OS329', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 100.00, '2021-07-06 00:00:00', 'PAGO'),
(00065, 00001, 00006, 00001, '2021-08-05 00:00:00', '2021-08-16', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-09-02 00:00:00', 'PAGO'),
(00066, 00001, 00006, 00070, '2021-08-05 00:00:00', '2021-08-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-08-05 00:00:00', 'PAGO'),
(00067, 00001, 00006, 00070, '2021-09-02 00:00:00', '2021-09-06', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-09-30 00:00:00', 'PAGO'),
(00068, 00001, 00006, 00001, '2021-09-02 00:00:00', '2021-09-20', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-09-30 00:00:00', 'PAGO'),
(00069, 00001, 00006, 00001, '2021-09-30 00:00:00', '2021-10-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-10-22 00:00:00', 'PAGO'),
(00070, 00001, 00006, 00070, '2021-09-30 00:00:00', '2021-10-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-10-14 00:00:00', 'PAGO'),
(00071, 00001, 00002, 00032, '2021-10-28 00:00:00', '2021-10-31', 'OS337', 200.00, 0.00, 0.00, 0.00, 0.00, 150.00, 250.00, '2021-11-15 00:00:00', 'PAGO'),
(00072, 00001, 00006, 00001, '2021-10-28 00:00:00', '2021-11-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-11-24 00:00:00', 'PAGO'),
(00073, 00001, 00006, 00070, '2021-10-28 00:00:00', '2021-11-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-11-09 00:00:00', 'PAGO'),
(00074, 00001, 00002, 00064, '2021-11-12 00:00:00', '2021-11-15', 'OS340', 150.00, 0.00, 0.00, 0.00, 0.00, 100.00, 150.00, '2021-11-15 00:00:00', 'PAGO'),
(00075, 00001, 00002, 00064, '2021-11-12 00:00:00', '2021-11-15', 'OS342', 50.00, 0.00, 0.00, 0.00, 0.00, 50.00, 50.00, '2021-11-15 00:00:00', 'PAGO'),
(00076, 00001, 00002, 00106, '2021-12-03 00:00:00', '2021-12-06', 'OS346', 150.00, 0.50, 5.00, 5.50, 155.50, 150.00, 200.00, '2021-12-10 00:00:00', 'PAGO'),
(00077, 00001, 00006, 00001, '2021-12-07 00:00:00', '2021-12-20', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2021-12-21 00:00:00', 'PAGO'),
(00078, 00001, 00006, 00070, '2021-12-07 00:00:00', '2021-12-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2021-12-07 00:00:00', 'PAGO'),
(00079, 00001, 00006, 00001, '2021-12-21 00:00:00', '2021-01-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-01-26 00:00:00', 'PAGO'),
(00080, 00001, 00006, 00070, '2021-12-21 00:00:00', '2021-01-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-01-24 00:00:00', 'PAGO'),
(00081, 00001, 00006, 00001, '2022-01-31 00:00:00', '2022-03-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-02-23 00:00:00', 'PAGO'),
(00082, 00001, 00006, 00070, '2022-01-31 00:00:00', '2022-03-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-02-03 00:00:00', 'PAGO'),
(00083, 00001, 00002, 00065, '2022-02-21 00:00:00', '2022-02-28', 'OS360', 100.00, 15.50, 5.00, 20.50, 120.50, 100.00, 100.00, '2022-05-31 00:00:00', 'PAGO'),
(00084, 00001, 00006, 00001, '2022-03-07 00:00:00', '2022-03-05', 'CM1', 150.00, 13.00, 5.00, 18.00, 168.00, 150.00, 150.00, '2022-04-11 00:00:00', 'PAGO'),
(00085, 00001, 00006, 00070, '2022-03-07 00:00:00', '2022-03-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-03-07 00:00:00', 'PAGO'),
(00086, 00001, 00006, 00001, '2022-03-30 00:00:00', '2022-04-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-04-20 00:00:00', 'PAGO'),
(00087, 00001, 00006, 00070, '2022-03-30 00:00:00', '2022-04-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-04-06 00:00:00', 'PAGO'),
(00088, 00001, 00002, 00114, '2022-04-06 00:00:00', '2022-04-15', 'OS368', 50.00, 0.00, 0.00, 0.00, 50.00, 50.00, 100.00, '2022-04-11 00:00:00', 'PAGO'),
(00089, 00001, 00002, 00114, '2022-04-06 00:00:00', '2022-04-15', 'OS369', 50.00, 0.00, 0.00, 0.00, 50.00, 50.00, 100.00, '2022-04-11 00:00:00', 'PAGO'),
(00090, 00001, 00002, 00114, '2022-04-06 00:00:00', '2022-04-15', 'OS370', 50.00, 0.00, 0.00, 0.00, 50.00, 50.00, 100.00, '2022-04-11 00:00:00', 'PAGO'),
(00091, 00001, 00002, 00114, '2022-04-06 00:00:00', '2022-04-15', 'OS371', 50.00, 0.00, 0.00, 0.00, 50.00, 50.00, 100.00, '2022-04-11 00:00:00', 'PAGO'),
(00092, 00001, 00002, 00083, '2022-04-12 00:00:00', '2022-04-15', 'OS372', 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, '2022-04-14 00:00:00', 'PAGO'),
(00093, 00001, 00006, 00001, '2022-04-30 00:00:00', '2022-05-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-05-23 00:00:00', 'PAGO'),
(00094, 00001, 00006, 00070, '2022-04-30 00:00:00', '2022-05-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-05-09 00:00:00', 'PAGO'),
(00095, 00001, 00006, 00001, '2022-05-31 00:00:00', '2022-07-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-06-22 00:00:00', 'PAGO'),
(00096, 00001, 00006, 00070, '2022-05-31 00:00:00', '2022-07-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-06-03 00:00:00', 'PAGO'),
(00097, 00001, 00002, 00064, '2022-06-20 00:00:00', '2022-07-01', 'OS383', 150.00, 0.00, 0.00, 0.00, 150.00, 150.00, 350.00, '2022-06-21 00:00:00', 'PAGO'),
(00098, 00001, 00002, 00064, '2022-06-24 00:00:00', '2022-06-30', 'OS386', 150.00, 0.00, 0.00, 0.00, 150.00, 150.00, 150.00, '2022-06-27 00:00:00', 'PAGO'),
(00099, 00001, 00006, 00001, '2022-06-30 00:00:00', '2022-07-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2022-07-19 00:00:00', 'PAGO'),
(00100, 00001, 00006, 00070, '2022-06-30 00:00:00', '2022-07-05', 'CM2', 250.00, 0.00, 0.00, 0.00, 0.00, 250.00, 250.00, '2022-07-10 00:00:00', 'PAGO'),
(00101, 00001, 00006, 00001, '2023-02-24 00:00:00', '2023-03-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-02-24 00:00:00', 'PAGO'),
(00102, 00001, 00006, 00001, '2023-02-24 00:00:00', '2023-03-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-02-24 00:00:00', 'PAGO'),
(00103, 00001, 00006, 00001, '2023-02-24 00:00:00', '2023-03-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-05-15 00:00:00', 'PAGO'),
(00104, 00001, 00002, 00119, '2023-03-07 00:00:00', '2023-03-31', 'OS394', 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 150.00, '2023-05-15 00:00:00', 'PAGO'),
(00105, 00001, 00002, 00001, '2023-04-24 00:00:00', '2023-04-29', 'OS395', 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, '2023-04-24 00:00:00', 'PAGO'),
(00106, 00001, 00002, 00001, '2023-04-24 00:00:00', '2023-05-01', 'OS396', 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, '2023-04-24 00:00:00', 'PAGO'),
(00107, 00001, 00002, 00120, '2023-05-15 00:00:00', '2023-06-05', 'OS398', 150.00, 4.00, 5.00, 0.00, 159.00, 0.00, 200.00, NULL, 'ABERTO'),
(00108, 00001, 00006, 00001, '2023-05-15 00:00:00', '2023-06-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-05-15 00:00:00', 'PAGO'),
(00109, 00001, 00006, 00001, '2023-05-15 00:00:00', '2023-06-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-05-15 00:00:00', 'PAGO'),
(00110, 00001, 00006, 00001, '2023-05-15 00:00:00', '2023-06-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-05-15 00:00:00', 'PAGO'),
(00111, 00001, 00002, 00093, '2023-05-31 00:00:00', '2023-05-31', 'OS400', 75.00, 0.00, 0.00, 0.00, 75.00, 75.00, 100.00, '2023-05-31 00:00:00', 'PAGO'),
(00112, 00001, 00002, 00093, '2023-05-31 00:00:00', '2023-05-31', 'OS401', 75.00, 0.00, 0.00, 0.00, 75.00, 75.00, 100.00, '2023-05-31 00:00:00', 'PAGO'),
(00113, 00001, 00006, 00122, '2023-06-13 00:00:00', '2023-07-20', 'CM3', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 300.00, '2023-06-14 00:00:00', 'PAGO'),
(00114, 00001, 00006, 00001, '2023-06-13 00:00:00', '2023-07-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 150.00, '2023-06-20 00:00:00', 'PAGO'),
(00115, 00001, 00002, 00121, '2023-06-13 00:00:00', '2023-06-20', 'OS402', 150.00, 0.00, 0.00, 0.00, 150.00, 150.00, 250.00, '2023-06-14 00:00:00', 'PAGO'),
(00116, 00001, 00002, 00064, '2023-08-01 00:00:00', '2023-08-05', 'OS403', 100.00, 0.00, 0.00, 0.00, 100.00, 0.00, 100.00, NULL, 'ABERTO'),
(00117, 00001, 00006, 00001, '2023-09-04 00:00:00', '2023-10-05', 'CM1', 150.00, 0.00, 0.00, 0.00, 0.00, 0.00, 150.00, NULL, 'ABERTO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuario_usu`
--

CREATE TABLE `tbl_usuario_usu` (
  `NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_PERFIL_PER_NUM_ID_PER` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TBL_EMPRESA_EMP_NUM_ID_EMP` int(5) UNSIGNED ZEROFILL NOT NULL,
  `TXT_NOME_USU` varchar(100) NOT NULL,
  `TXT_TELEFONE_USU` varchar(20) NOT NULL,
  `TXT_EMAIL_USU` varchar(100) NOT NULL,
  `TXT_LOGIN_USU` varchar(20) NOT NULL,
  `TXT_SENHA_USU` varchar(10) NOT NULL DEFAULT 'TECHFY',
  `TXT_ATIVO_USU` varchar(3) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_usuario_usu`
--

INSERT INTO `tbl_usuario_usu` (`NUM_ID_USU`, `TBL_PERFIL_PER_NUM_ID_PER`, `TBL_EMPRESA_EMP_NUM_ID_EMP`, `TXT_NOME_USU`, `TXT_TELEFONE_USU`, `TXT_EMAIL_USU`, `TXT_LOGIN_USU`, `TXT_SENHA_USU`, `TXT_ATIVO_USU`) VALUES
(00001, 00001, 00001, 'ADMINISTRADOR DE SISTEMAS', '92991494069', 'administrador@techfy.com.br', 'administrador', 'adminfor', 'SIM'),
(00002, 00003, 00001, 'ADRIANO NOGUEIRA', '92991494069', 'adriano.nogueira@techfy.com.br', 'adriano.nogueira', '251210', 'SIM'),
(00003, 00005, 00001, 'RICK LIMA', '92991534027', 'rick.lima@rmconstrucaocc.com.br', 'rick.lima', '159730', 'N'),
(00004, 00002, 00001, 'FINANCEIRO', '9236541181', 'financeiro@techfy.com.br', 'financeiro', 'techfy', 'SIM'),
(00005, 00005, 00001, 'EXTERNO', '9236541181', 'externo@techfy.com.br', 'EXTERNO', 'TECHFY', 'N'),
(00006, 00002, 00001, 'MARIA DACIELE MARQUES NASC', '92991942390', 'maria.daciele@techfy.com.br', 'maria.daciele', '251210', 'SIM'),
(00007, 00007, 00001, 'MARIA DACIELE MARQUES NASC', '092984347729', 'maria.daciele@adminfor.com.br', 'MARIAM', '251210', 'SIM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cliente_cli`
--
ALTER TABLE `tbl_cliente_cli`
  ADD PRIMARY KEY (`NUM_ID_CLI`),
  ADD UNIQUE KEY `IX_TBL_CLI_CPFCNPJ` (`TXT_CPF_CNPJ_CLI`),
  ADD KEY `IX_TBL_CLI_NOME` (`TXT_RAZAO_CLI`),
  ADD KEY `FK_TBL_USU_CLI` (`TBL_USUARIO_USU_NUM_ID_USU`);

--
-- Indexes for table `tbl_contrato_cm`
--
ALTER TABLE `tbl_contrato_cm`
  ADD PRIMARY KEY (`NUM_ID_CM`),
  ADD KEY `FK_TBL_CLI_ID` (`TBL_CLIENTE_CLI_NUM_ID_CLI`),
  ADD KEY `FK_TBL_USU_ID` (`TBL_USUARIO_USU_NUM_ID_USU`);

--
-- Indexes for table `tbl_empresa_emp`
--
ALTER TABLE `tbl_empresa_emp`
  ADD PRIMARY KEY (`NUM_ID_EMP`),
  ADD UNIQUE KEY `IX_TBL_EMP_CPFCNPJ` (`TXT_CPFCNPJ_EMP`);

--
-- Indexes for table `tbl_equipamento_equip`
--
ALTER TABLE `tbl_equipamento_equip`
  ADD PRIMARY KEY (`NUM_ID_EQUIP`),
  ADD KEY `FK_TBL_USU_ID` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `FK_TBL_CLI_ID` (`TBL_CLIENTE_CLI_NUM_ID_CLI`),
  ADD KEY `FK_TBL_SO_ID` (`TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO`);

--
-- Indexes for table `tbl_forma_pagamento_fp`
--
ALTER TABLE `tbl_forma_pagamento_fp`
  ADD PRIMARY KEY (`NUM_ID_FP`),
  ADD UNIQUE KEY `IX_TBL_FP_NOME` (`TXT_NOME_FP`);

--
-- Indexes for table `tbl_item_peca_os`
--
ALTER TABLE `tbl_item_peca_os`
  ADD PRIMARY KEY (`NUM_ID_PECA_OS`),
  ADD KEY `FK_TBL_PEC` (`TBL_PECA_PEC_NUM_ID_PEC`),
  ADD KEY `FK_TBL_OS` (`TBL_ORDEMSERVICO_OS_NUM_ID_OS`),
  ADD KEY `FK_TBL_USU` (`TBL_USUARIO_USU_NUM_ID_USU`);

--
-- Indexes for table `tbl_item_servico_os`
--
ALTER TABLE `tbl_item_servico_os`
  ADD PRIMARY KEY (`NUM_ID_SERVICO_OS`),
  ADD KEY `FK_TBL_OS_ITOS` (`TBL_ORDEMSERVICO_OS_NUM_ID_OS`),
  ADD KEY `FK_TBL_SER_ITOS` (`TBL_SERVICO_SER_NUM_ID_SER`),
  ADD KEY `FK_TBL_USU_ITOS` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `TBL_ITEM_SERVICO_OS_FKIndex4` (`TBL_TECNICO_TEC_NUM_ID_TEC`);

--
-- Indexes for table `tbl_movimentacao_mov`
--
ALTER TABLE `tbl_movimentacao_mov`
  ADD PRIMARY KEY (`NUM_ID_MOV`),
  ADD KEY `TBL_RETIRADA_RET_FKIndex1` (`TBL_CLIENTE_CLI_NUM_ID_CLI`),
  ADD KEY `TBL_MOVIMENTACAO_MOV_FKIndex2` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `TBL_MOVIMENTACAO_MOV_FKIndex3` (`TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP`),
  ADD KEY `TBL_MOVIMENTACAO_MOV_FKIndex4` (`TBL_EMPRESA_EMP_NUM_ID_EMP`);

--
-- Indexes for table `tbl_ordemservico_os`
--
ALTER TABLE `tbl_ordemservico_os`
  ADD PRIMARY KEY (`NUM_ID_OS`),
  ADD KEY `FK_TBL_USU_OS` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `FK_TBL_EQUIP_OS` (`TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP`),
  ADD KEY `FK_TBL_EMP_OS` (`TBL_EMPRESA_EMP_NUM_ID_EMP`),
  ADD KEY `FK_TBL_CLI_OS` (`TBL_CLIENTE_CLI_NUM_ID_CLI`);

--
-- Indexes for table `tbl_peca_pec`
--
ALTER TABLE `tbl_peca_pec`
  ADD PRIMARY KEY (`NUM_ID_PEC`);

--
-- Indexes for table `tbl_perfil_per`
--
ALTER TABLE `tbl_perfil_per`
  ADD PRIMARY KEY (`NUM_ID_PER`),
  ADD UNIQUE KEY `IX_TBL_PER_NOME` (`TXT_NOME_PER`);

--
-- Indexes for table `tbl_permissoes_perm`
--
ALTER TABLE `tbl_permissoes_perm`
  ADD PRIMARY KEY (`NUM_ID_PERM`),
  ADD KEY `FK_TBL_TAR_PERM` (`TBL_TAREFAS_TAR_NUM_ID_TAR`),
  ADD KEY `FK_TBL_PER_PERM` (`TBL_PERFIL_PER_NUM_ID_PER`);

--
-- Indexes for table `tbl_recebimento_rec`
--
ALTER TABLE `tbl_recebimento_rec`
  ADD PRIMARY KEY (`NUM_ID_REC`),
  ADD KEY `FK_TBL_CLI_REC` (`TBL_CLIENTE_CLI_NUM_ID_CLI`),
  ADD KEY `FK_TBL_USU_REC` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `FK_TBL_FP_REC` (`TBL_FORMA_PAGAMENTO_FP_NUM_ID_FP`),
  ADD KEY `FK_TBL_EMP_REC` (`TBL_EMPRESA_EMP_NUM_ID_EMP`);

--
-- Indexes for table `tbl_servico_ser`
--
ALTER TABLE `tbl_servico_ser`
  ADD PRIMARY KEY (`NUM_ID_SER`),
  ADD UNIQUE KEY `IX_TBL_SER_NOME` (`TXT_NOME_SER`);

--
-- Indexes for table `tbl_sistemaoperacional_so`
--
ALTER TABLE `tbl_sistemaoperacional_so`
  ADD PRIMARY KEY (`NUM_ID_SO`),
  ADD UNIQUE KEY `IX_TBL_SO_NOME` (`TXT_NOME_SO`);

--
-- Indexes for table `tbl_tarefas_tar`
--
ALTER TABLE `tbl_tarefas_tar`
  ADD PRIMARY KEY (`NUM_ID_TAR`),
  ADD UNIQUE KEY `IX_TBL_TAR_NOME` (`TXT_NOME_TAR`);

--
-- Indexes for table `tbl_tecnico_tec`
--
ALTER TABLE `tbl_tecnico_tec`
  ADD PRIMARY KEY (`NUM_ID_TEC`);

--
-- Indexes for table `tbl_tituloreceber_tr`
--
ALTER TABLE `tbl_tituloreceber_tr`
  ADD PRIMARY KEY (`NUM_ID_TR`),
  ADD KEY `FK_TBL_CLI_TR` (`TBL_CLIENTE_CLI_NUM_ID_CLI`),
  ADD KEY `FK_TBL_USU_TR` (`TBL_USUARIO_USU_NUM_ID_USU`),
  ADD KEY `FK_TBL_EMP_TR` (`TBL_EMPRESA_EMP_NUM_ID_EMP`);

--
-- Indexes for table `tbl_usuario_usu`
--
ALTER TABLE `tbl_usuario_usu`
  ADD PRIMARY KEY (`NUM_ID_USU`),
  ADD UNIQUE KEY `IX_TBL_USU_LOGIN` (`TXT_LOGIN_USU`),
  ADD KEY `FK_TBL_PER_USU` (`TBL_PERFIL_PER_NUM_ID_PER`),
  ADD KEY `IX_TBL_USU_SENHA` (`TXT_SENHA_USU`),
  ADD KEY `IX_TBL_USU_EMAIL` (`TXT_EMAIL_USU`),
  ADD KEY `FK_TBL_EMP_USU` (`TBL_EMPRESA_EMP_NUM_ID_EMP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cliente_cli`
--
ALTER TABLE `tbl_cliente_cli`
  MODIFY `NUM_ID_CLI` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tbl_contrato_cm`
--
ALTER TABLE `tbl_contrato_cm`
  MODIFY `NUM_ID_CM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_empresa_emp`
--
ALTER TABLE `tbl_empresa_emp`
  MODIFY `NUM_ID_EMP` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_equipamento_equip`
--
ALTER TABLE `tbl_equipamento_equip`
  MODIFY `NUM_ID_EQUIP` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `tbl_forma_pagamento_fp`
--
ALTER TABLE `tbl_forma_pagamento_fp`
  MODIFY `NUM_ID_FP` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_item_peca_os`
--
ALTER TABLE `tbl_item_peca_os`
  MODIFY `NUM_ID_PECA_OS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item_servico_os`
--
ALTER TABLE `tbl_item_servico_os`
  MODIFY `NUM_ID_SERVICO_OS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT for table `tbl_movimentacao_mov`
--
ALTER TABLE `tbl_movimentacao_mov`
  MODIFY `NUM_ID_MOV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_ordemservico_os`
--
ALTER TABLE `tbl_ordemservico_os`
  MODIFY `NUM_ID_OS` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `tbl_peca_pec`
--
ALTER TABLE `tbl_peca_pec`
  MODIFY `NUM_ID_PEC` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_perfil_per`
--
ALTER TABLE `tbl_perfil_per`
  MODIFY `NUM_ID_PER` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_permissoes_perm`
--
ALTER TABLE `tbl_permissoes_perm`
  MODIFY `NUM_ID_PERM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_recebimento_rec`
--
ALTER TABLE `tbl_recebimento_rec`
  MODIFY `NUM_ID_REC` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tbl_servico_ser`
--
ALTER TABLE `tbl_servico_ser`
  MODIFY `NUM_ID_SER` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_sistemaoperacional_so`
--
ALTER TABLE `tbl_sistemaoperacional_so`
  MODIFY `NUM_ID_SO` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_tarefas_tar`
--
ALTER TABLE `tbl_tarefas_tar`
  MODIFY `NUM_ID_TAR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tecnico_tec`
--
ALTER TABLE `tbl_tecnico_tec`
  MODIFY `NUM_ID_TEC` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tituloreceber_tr`
--
ALTER TABLE `tbl_tituloreceber_tr`
  MODIFY `NUM_ID_TR` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_usuario_usu`
--
ALTER TABLE `tbl_usuario_usu`
  MODIFY `NUM_ID_USU` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
