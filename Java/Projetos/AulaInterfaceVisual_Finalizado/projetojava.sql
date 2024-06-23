-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/06/2024 às 04:48
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
-- Banco de dados: `projetojava`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nomealuno` varchar(50) DEFAULT NULL,
  `cursoid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nomealuno`, `cursoid`) VALUES
(1, 'Jefferson da rocha silva', 5),
(2, 'Maria Oliveira', 2),
(3, 'Pedro Santos', 3),
(4, 'Ana Souza', 4),
(5, 'Lucas Ferreira', 5),
(6, 'Carla Lima', 6),
(7, 'Gustavo Pereira', 7),
(8, 'Juliana Costa', 8),
(9, 'Rafael Martins', 9),
(10, 'Fernanda Almeida', 10),
(11, 'Rodrigo Lima', 11),
(12, 'Mariana Silva', 12),
(13, 'Carlos Oliveira', 13),
(14, 'Patrícia Santos', 14),
(15, 'Bruno Rodrigues', 15),
(16, 'Aline Pereira', 16),
(17, 'Diego Souza', 17),
(18, 'Camila Fernandes', 18),
(19, 'Thiago Oliveira', 19),
(20, 'Vanessa Santos', 20),
(21, 'Isabela Ferreira', 1),
(22, 'Ricardo Lima', 2),
(23, 'Julia Oliveira', 3),
(24, 'Anderson Martins', 4),
(25, 'Paula Souza', 5),
(26, 'Marcelo Santos', 6),
(27, 'Mariana Costa', 7),
(28, 'Leandro Pereira', 8),
(29, 'Carolina Almeida', 9),
(30, 'Vinicius Lima', 10),
(31, 'Luana Silva', 11),
(32, 'Roberto Oliveira', 12),
(33, 'Amanda Santos', 13),
(34, 'Luciano Rodrigues', 14),
(35, 'Tatiane Pereira', 15),
(36, 'Marcos Souza', 16),
(37, 'Laura Fernandes', 17),
(38, 'Gabriel Oliveira', 18),
(39, 'Jéssica Santos', 19),
(40, 'Eduardo Oliveira', 20),
(41, 'Beatriz Silva', 1),
(42, 'Daniel Martins', 2),
(43, 'Patricia Lima', 3),
(44, 'Fernando Costa', 4),
(45, 'Caroline Souza', 5),
(46, 'Renato Santos', 6),
(47, 'teste26', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nomecurso` varchar(50) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nomecurso`, `nivel`, `duracao`) VALUES
(1, 'Técnico em Informática teste', 'Técnico', 2),
(2, 'Administração', 'Graduação', 4),
(3, 'Engenharia de Computação', 'Graduação', 5),
(4, 'Técnico em Eletrônica', 'Técnico', 2),
(5, 'Análise e Desenvolvimento de Sistemas', 'Tecnólogo', 3),
(6, 'Direito', 'Graduação', 5),
(7, 'Técnico em Enfermagem', 'Técnico', 2),
(8, 'Engenharia Civil', 'Graduação', 5),
(9, 'Marketing', 'Graduação', 4),
(10, 'Tecnologia em Redes de Computadores', 'Tecnólogo', 3),
(11, 'Técnico em Mecânica', 'Técnico', 2),
(12, 'Psicologia', 'Graduação', 5),
(13, 'Gestão de Recursos Humanos', 'Tecnólogo', 3),
(14, 'Medicina', 'Graduação', 6),
(15, 'Técnico em Logística', 'Técnico', 2),
(16, 'Ciência da Computação', 'Graduação', 4),
(17, 'Tecnologia em Gestão Financeira', 'Tecnólogo', 3),
(18, 'Técnico em Administração', 'Técnico', 2),
(19, 'Engenharia Elétrica', 'Graduação', 5),
(20, 'Design Gráfico', 'Tecnólogo', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
