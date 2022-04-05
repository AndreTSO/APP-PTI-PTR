-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05-Abr-2022 às 17:51
-- Versão do servidor: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptr_trabalho`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_armazem`
--

DROP TABLE IF EXISTS `ptr_armazem`;
CREATE TABLE IF NOT EXISTS `ptr_armazem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(50) NOT NULL,
  `morada` char(150) NOT NULL,
  `codigoPostal` char(8) NOT NULL,
  `custoManutencao` float NOT NULL DEFAULT '0',
  `estado` char(20) NOT NULL DEFAULT 'Ativo',
  `referigeracao` tinyint(1) NOT NULL DEFAULT '0',
  `poluicaoGerada` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_artigossubencomenda`
--

DROP TABLE IF EXISTS `ptr_artigossubencomenda`;
CREATE TABLE IF NOT EXISTS `ptr_artigossubencomenda` (
  `idArtigosSubEncomenda` int(11) NOT NULL AUTO_INCREMENT,
  `idSubEncomenda` int(11) NOT NULL,
  `idArtigo` int(11) NOT NULL,
  `nome` char(120) NOT NULL,
  `descricao` char(250) NOT NULL,
  `quantidade` smallint(6) NOT NULL,
  `valorArtigo` float NOT NULL,
  `poluicao` float NOT NULL,
  PRIMARY KEY (`idArtigosSubEncomenda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_cesto`
--

DROP TABLE IF EXISTS `ptr_cesto`;
CREATE TABLE IF NOT EXISTS `ptr_cesto` (
  `idLinha` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idArtigo` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`idLinha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_encomenda`
--

DROP TABLE IF EXISTS `ptr_encomenda`;
CREATE TABLE IF NOT EXISTS `ptr_encomenda` (
  `idEncomenda` int(11) NOT NULL AUTO_INCREMENT,
  `refEncomenda` char(8) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `nome` char(20) NOT NULL,
  `sobreNome` char(30) NOT NULL,
  `email` char(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `nif` int(9) NOT NULL,
  `morada` char(255) NOT NULL,
  `codigoPostal` char(8) NOT NULL,
  `localidade` smallint(6) NOT NULL,
  `distrito` smallint(6) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estadoEncomenda` int(11) NOT NULL,
  `poluiçaoTotalGerada` float DEFAULT NULL,
  `mensagemAdicional` varchar(400) DEFAULT NULL,
  `nomeFicheiroFatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEncomenda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_estadosencomendas`
--

DROP TABLE IF EXISTS `ptr_estadosencomendas`;
CREATE TABLE IF NOT EXISTS `ptr_estadosencomendas` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(20) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ptr_estadosencomendas`
--

INSERT INTO `ptr_estadosencomendas` (`idEstado`, `estado`) VALUES
(1, 'Aguardar pagamento'),
(2, 'Erro no pagamento'),
(3, 'Pagamento aceite'),
(4, 'Em preparação'),
(5, 'Para recolha'),
(6, 'Em trânsito'),
(7, 'Cancelado'),
(8, 'Entregue'),
(9, 'Devolvido'),
(10, 'Reembolsado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_fornecedor`
--

DROP TABLE IF EXISTS `ptr_fornecedor`;
CREATE TABLE IF NOT EXISTS `ptr_fornecedor` (
  `idFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `nomeEmpresa` char(200) NOT NULL,
  `categoriaProdutos` char(200) NOT NULL,
  `webSite` char(200) NOT NULL,
  `PeriodoXDiasCancelar` int(11) NOT NULL,
  `poluicaoGerada` float NOT NULL,
  `registoSaida` float NOT NULL,
  `ConsumoRecursos` float NOT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_preferencias`
--

DROP TABLE IF EXISTS `ptr_preferencias`;
CREATE TABLE IF NOT EXISTS `ptr_preferencias` (
  `idUser` int(11) NOT NULL,
  `idArtigo` int(11) NOT NULL,
  PRIMARY KEY (`idArtigo`,`idUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_produto`
--

DROP TABLE IF EXISTS `ptr_produto`;
CREATE TABLE IF NOT EXISTS `ptr_produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `idFornecedor` int(11) NOT NULL,
  `nome` char(200) NOT NULL,
  `descricao` varchar(2000) NOT NULL,
  `tipo` char(30) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `precoSemIva` float NOT NULL,
  `validade` date NOT NULL,
  `recursosConsumidos` float NOT NULL DEFAULT '0',
  `custoManutencao` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `quantReservada` int(11) NOT NULL,
  `disponivelApartirData` date NOT NULL,
  `estado` varchar(25) NOT NULL,
  `tipoIVA` tinyint(5) NOT NULL,
  `modoDeVenda` int(11) NOT NULL,
  `pesoPorVenda` float DEFAULT NULL,
  `arquivado` tinyint(1) NOT NULL,
  `notasInternasAoFornecedor` varchar(200) NOT NULL,
  `dataCriacaoTimeStamp` date NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_subencomenda`
--

DROP TABLE IF EXISTS `ptr_subencomenda`;
CREATE TABLE IF NOT EXISTS `ptr_subencomenda` (
  `idSubEncomenda` int(11) NOT NULL AUTO_INCREMENT,
  `idEncomendaPai` int(11) NOT NULL,
  `estadoSubEncomenda` int(11) NOT NULL,
  `poluicaoGerada` float NOT NULL,
  `idFornecedor` int(11) NOT NULL,
  PRIMARY KEY (`idSubEncomenda`),
  UNIQUE KEY `idSubEncomenda` (`idSubEncomenda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ptr_userregistado`
--

DROP TABLE IF EXISTS `ptr_userregistado`;
CREATE TABLE IF NOT EXISTS `ptr_userregistado` (
  `nif` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(20) NOT NULL,
  `sobreNome` char(30) NOT NULL,
  `genero` char(1) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  `morada` char(255) NOT NULL,
  `codigoPostal` char(8) NOT NULL,
  `localidade` smallint(6) NOT NULL,
  `distrito` smallint(6) NOT NULL,
  `dataNascimento` date NOT NULL,
  `estadoConta` tinyint(4) NOT NULL DEFAULT '0',
  `dataRegistoTimeStamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipoDeConta` tinyint(4) NOT NULL,
  `contato` int(9) NOT NULL,
  `apiKey` char(50) NOT NULL,
  `termosEServicos` tinyint(1) NOT NULL DEFAULT '0',
  `observacoes` text NOT NULL,
  `anuncios` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
