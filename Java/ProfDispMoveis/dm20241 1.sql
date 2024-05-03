-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Abr-2024 às 15:31
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `id` bigint(20) NOT NULL,
  `permissao` varchar(255) DEFAULT NULL,
  `descritivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`id`, `permissao`, `descritivo`) VALUES
(1, 'total', 'Acesso Total');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistemas`
--

CREATE TABLE `sistemas` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `servidor` varchar(255) DEFAULT NULL,
  `versao` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sistemas`
--

INSERT INTO `sistemas` (`id`, `nome`, `servidor`, `versao`, `status`) VALUES
(1, 'Analise e desenvolvimento de sistema', 'Fatec', '1.0', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES
(1, 'admin', 'admin', 'ativo', 'Administrator');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariospermissoes`
--

CREATE TABLE `usuariospermissoes` (
  `id` bigint(20) NOT NULL,
  `idU` bigint(20) NOT NULL,
  `idP` bigint(20) NOT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuariospermissoes`
--

INSERT INTO `usuariospermissoes` (`id`, `idU`, `idP`, `obs`) VALUES
(1, 1, 1, 'usuario admin x permissão total');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariossistemas`
--

CREATE TABLE `usuariossistemas` (
  `id` bigint(20) NOT NULL,
  `idU` bigint(20) NOT NULL,
  `idS` bigint(20) NOT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuariossistemas`
--

INSERT INTO `usuariossistemas` (`id`, `idU`, `idS`, `obs`) VALUES
(1, 1, 1, 'usuario admin sistema Analise e desenvolvimento de sistema');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sistemas`
--
ALTER TABLE `sistemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuariospermissoes`
--
ALTER TABLE `usuariospermissoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idU` (`idU`),
  ADD KEY `idP` (`idP`);

--
-- Índices para tabela `usuariossistemas`
--
ALTER TABLE `usuariossistemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idU` (`idU`),
  ADD KEY `idS` (`idS`);

--
-- AUTO_INCREMENT de tabelas despejadas
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
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `usuariospermissoes`
--
ALTER TABLE `usuariospermissoes`
  ADD CONSTRAINT `fk_usuariospermissoes_permissoes` FOREIGN KEY (`idP`) REFERENCES `permissoes` (`id`),
  ADD CONSTRAINT `fk_usuariospermissoes_usuarios` FOREIGN KEY (`idU`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `usuariossistemas`
--
ALTER TABLE `usuariossistemas`
  ADD CONSTRAINT `fk_usuariossistemas_sistemas` FOREIGN KEY (`idS`) REFERENCES `sistemas` (`id`),
  ADD CONSTRAINT `fk_usuariossistemas_usuarios` FOREIGN KEY (`idU`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
