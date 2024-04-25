-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/04/2024 às 22:21
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mesas`
--

CREATE TABLE `tb_mesas` (
  `IdMesa` int(200) NOT NULL,
  `NúmeroMesa` int(50) NOT NULL,
  `Capacidade` int(100) NOT NULL,
  `Disponibilidade` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_mesas`
--

INSERT INTO `tb_mesas` (`IdMesa`, `NúmeroMesa`, `Capacidade`, `Disponibilidade`) VALUES
(1, 1, 12, 'Liberada'),
(2, 2, 5, 'Ocupada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_reservas`
--

CREATE TABLE `tb_reservas` (
  `IDdaReserva` int(11) NOT NULL,
  `IDdoClient` int(11) NOT NULL,
  `DataeHora` datetime(6) NOT NULL,
  `NúmerodePessoas` int(11) NOT NULL,
  `StatusdaReserva` varchar(300) NOT NULL,
  `Observações` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_reservas`
--

INSERT INTO `tb_reservas` (`IDdaReserva`, `IDdoClient`, `DataeHora`, `NúmerodePessoas`, `StatusdaReserva`, `Observações`) VALUES
(1940, 863321, '0000-00-00 00:00:00.000000', 8, 'Aprovado', 'Aniversário de casamento'),
(1945, 920614, '0000-00-00 00:00:00.000000', 5, 'Em andamento', 'Aniversário');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Índices de tabela `tb_mesas`
--
ALTER TABLE `tb_mesas`
  ADD PRIMARY KEY (`IdMesa`);

--
-- Índices de tabela `tb_reservas`
--
ALTER TABLE `tb_reservas`
  ADD PRIMARY KEY (`IDdaReserva`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT de tabela `tb_mesas`
--
ALTER TABLE `tb_mesas`
  MODIFY `IdMesa` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
