-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.13 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para walkdos
CREATE DATABASE IF NOT EXISTS `walkdos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `walkdos`;

-- Copiando estrutura para tabela walkdos.caes
CREATE TABLE IF NOT EXISTS `caes` (
  `idCaes` int(11) NOT NULL AUTO_INCREMENT,
  `racaCaes` varchar(50) NOT NULL DEFAULT '0',
  `pesoCaes` varchar(50) NOT NULL DEFAULT '0',
  `quantidadeCaes` int(11) NOT NULL DEFAULT '0',
  `idadeCaes` int(11) NOT NULL DEFAULT '0',
  `generoCaes` varchar(50) NOT NULL DEFAULT '0',
  `nomeCaes` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCaes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela walkdos.caes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `caes` DISABLE KEYS */;
/*!40000 ALTER TABLE `caes` ENABLE KEYS */;

-- Copiando estrutura para tabela walkdos.dogwalkers
CREATE TABLE IF NOT EXISTS `dogwalkers` (
  `idDogwalkers` int(11) NOT NULL AUTO_INCREMENT,
  `nomeDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `telefoneDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `tempo_disponivelDogwalkers` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enderecoDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `avaliacaoDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `descricaoDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `emailDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `idadeDogwalkers` int(11) NOT NULL DEFAULT '0',
  `precoDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `local_retiradaDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `local_devolucaoDogwalkers` varchar(50) NOT NULL DEFAULT '0',
  `horario_retiradaDogwalkers` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `horario_devolucaoDogwalkers` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idDogwalkers`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela walkdos.dogwalkers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dogwalkers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dogwalkers` ENABLE KEYS */;

-- Copiando estrutura para tabela walkdos.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeUsuario` varchar(50) NOT NULL DEFAULT '0',
  `emailUsuario` varchar(50) NOT NULL DEFAULT '0',
  `idadeUsuario` int(11) NOT NULL DEFAULT '0',
  `enderecoUsuario` varchar(50) NOT NULL DEFAULT '0',
  `telefoneUsuario` varchar(50) NOT NULL DEFAULT '0',
  `senhaUsuario` varchar(50) NOT NULL DEFAULT '0',
  `local_retiradaUsuario` varchar(50) NOT NULL DEFAULT '0',
  `local_devolucaoUsuario` varchar(50) NOT NULL DEFAULT '0',
  `horario_retiradaUsuario` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `horario_devolucaoUsuario` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela walkdos.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
