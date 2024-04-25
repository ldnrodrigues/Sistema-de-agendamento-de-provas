-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/04/2024 às 00:46
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
-- Índices de tabela `tb_reservas`
--
ALTER TABLE `tb_reservas`
  ADD PRIMARY KEY (`IDdaReserva`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
