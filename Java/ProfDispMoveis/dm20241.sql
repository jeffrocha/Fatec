-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/04/2024 às 06:50
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
-- Banco de dados: `dm20241`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `id` bigint(20) NOT NULL,
  `permissao` varchar(255) DEFAULT NULL,
  `descritivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `permissoes`
--

INSERT INTO `permissoes` (`id`, `permissao`, `descritivo`) VALUES
(1, 'total', 'libera tudo'),
(2, 'p1', 'p1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sistemas`
--

CREATE TABLE `sistemas` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `servidor` varchar(255) DEFAULT NULL,
  `versao` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sistemas`
--

INSERT INTO `sistemas` (`id`, `nome`, `servidor`, `versao`, `status`) VALUES
(1, 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES
(1, 'a', 'a', 'ativo', 'Admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuariospermissoes`
--

CREATE TABLE `usuariospermissoes` (
  `id` bigint(20) NOT NULL,
  `idU` bigint(20) NOT NULL,
  `idP` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuariospermissoes`
--

INSERT INTO `usuariospermissoes` (`id`, `idU`, `idP`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuariossistemas`
--

CREATE TABLE `usuariossistemas` (
  `id` bigint(20) NOT NULL,
  `idU` bigint(20) NOT NULL,
  `idS` bigint(20) NOT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuariossistemas`
--

INSERT INTO `usuariossistemas` (`id`, `idU`, `idS`, `obs`) VALUES
(1, 1, 1, 'a x a');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sistemas`
--
ALTER TABLE `sistemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuariospermissoes`
--
ALTER TABLE `usuariospermissoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idU` (`idU`),
  ADD KEY `idP` (`idP`);

--
-- Índices de tabela `usuariossistemas`
--
ALTER TABLE `usuariossistemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idU` (`idU`),
  ADD KEY `idS` (`idS`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sistemas`
--
ALTER TABLE `sistemas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuariospermissoes`
--
ALTER TABLE `usuariospermissoes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuariossistemas`
--
ALTER TABLE `usuariossistemas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `usuariospermissoes`
--
ALTER TABLE `usuariospermissoes`
  ADD CONSTRAINT `usuariospermissoes_ibfk_1` FOREIGN KEY (`idU`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuariospermissoes_ibfk_2` FOREIGN KEY (`idP`) REFERENCES `permissoes` (`id`);

--
-- Restrições para tabelas `usuariossistemas`
--
ALTER TABLE `usuariossistemas`
  ADD CONSTRAINT `usuariossistemas_ibfk_1` FOREIGN KEY (`idU`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuariossistemas_ibfk_2` FOREIGN KEY (`idS`) REFERENCES `sistemas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
