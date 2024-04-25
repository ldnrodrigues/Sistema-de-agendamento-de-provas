-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/04/2024 às 02:44
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
-- Banco de dados: `reserva_rest_projeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `IdCliente` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefone` int(255) NOT NULL,
  `Outrasinformações` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`IdCliente`, `Nome`, `Email`, `Telefone`, `Outrasinformações`) VALUES
(1, 'Roberto Santos', 'roberto.santos@gmail.com', 55, 'Alergia a camarão'),
(2, 'Felipe Gonçalves', 'brtt@gmail.com', 21, 'Comemoração');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
