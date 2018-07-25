-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05-Jul-2018 às 02:50
-- Versão do servidor: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphp7`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `sp_usuario_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_insert` (`pdeslogin` VARCHAR(64), `pdessenha` VARCHAR(256))  BEGIN
INSERT INTO tb_usuarios (deslogin, dessenha) values (pdeslogin, pdessenha);
    SELECT * FROM tb_usuarios WHERE idusuario = LAST_INSERT_ID();
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `deslogin` varchar(64) NOT NULL,
  `dessenha` varchar(246) NOT NULL,
  `dtcadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`idusuario`, `deslogin`, `dessenha`, `dtcadastro`) VALUES
(5, 'lidiane', '12345', '2018-06-03 03:15:16'),
(6, 'Jose', '4321567', '2018-06-03 04:29:31'),
(7, 'tiago', 'top10', '2018-06-03 04:41:41'),
(8, 'joao', 'agagg', '2018-06-26 02:39:45'),
(9, 'anjo', 'aga1234gg', '2018-06-26 02:40:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
