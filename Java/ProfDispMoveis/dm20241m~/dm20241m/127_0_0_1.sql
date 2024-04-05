-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Mar-2024 às 14:26
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academico`
--
CREATE DATABASE IF NOT EXISTS `academico` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `academico`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(10) UNSIGNED NOT NULL,
  `nomeAluno` varchar(45) DEFAULT NULL,
  `emailAluno` varchar(25) DEFAULT NULL,
  `foneAluno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(10) UNSIGNED NOT NULL,
  `nomeCurso` varchar(45) DEFAULT NULL,
  `periodoCurso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(10) UNSIGNED NOT NULL,
  `Professor_idProfessor` int(10) UNSIGNED NOT NULL,
  `Curso_idCurso` int(10) UNSIGNED NOT NULL,
  `nomeDisciplina` varchar(20) DEFAULT NULL,
  `cargaDisciplina` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `Aluno_idAluno` int(10) UNSIGNED NOT NULL,
  `Disciplina_idDisciplina` int(10) UNSIGNED NOT NULL,
  `dataHistorico` date DEFAULT NULL,
  `mediaHistorico` float DEFAULT NULL,
  `faltaHistorico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `idProfessor` int(10) UNSIGNED NOT NULL,
  `nomeProfessor` varchar(45) DEFAULT NULL,
  `titulacaoProfessor` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`),
  ADD KEY `Disciplina_FKIndex1` (`Curso_idCurso`),
  ADD KEY `Disciplina_FKIndex2` (`Professor_idProfessor`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`Aluno_idAluno`,`Disciplina_idDisciplina`),
  ADD KEY `Aluno_has_Disciplina_FKIndex1` (`Aluno_idAluno`),
  ADD KEY `Aluno_has_Disciplina_FKIndex2` (`Disciplina_idDisciplina`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idProfessor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `idProfessor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`Curso_idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `disciplina_ibfk_2` FOREIGN KEY (`Professor_idProfessor`) REFERENCES `professor` (`idProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`Aluno_idAluno`) REFERENCES `aluno` (`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`Disciplina_idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Banco de dados: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `endereco`, `dataNascimento`) VALUES
(25, 'Wilson da Silva Lourenço', 'prof.wilson.lourenco@gmail.com', 'Av. Santa Inês', '1982-05-10'),
(43, 'sadasds', 'fsfsf', 'fsfasf', '2004-12-12'),
(44, 'Nelson', 'n@fatec', 'rua tals', '2004-12-23'),
(45, 'fasfsaf', 'fafsa', 'fsafsa', '2004-12-23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Banco de dados: `autorating`
--
CREATE DATABASE IF NOT EXISTS `autorating` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autorating`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `idTB_Categoria` int(11) NOT NULL,
  `Categoria_Nome` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_colaborador`
--

CREATE TABLE `tb_colaborador` (
  `idTB_Colaborador` int(11) NOT NULL,
  `TB_Gestor_idTB_Gestor` int(11) NOT NULL,
  `Colaborador_Nome` varchar(30) DEFAULT NULL,
  `Colaborador_CPF` varchar(14) DEFAULT NULL,
  `Colaborador_Email` varchar(35) DEFAULT NULL,
  `Colaborador_Nascimento` date DEFAULT NULL,
  `Colaborador_Telefone` varchar(15) DEFAULT NULL,
  `Colaborador_Adimissao` date DEFAULT NULL,
  `Colaborador_Senha` varchar(25) DEFAULT NULL,
  `Colaborador_Status` tinyint(1) DEFAULT NULL,
  `Colaborador_Foto` varchar(255) DEFAULT NULL,
  `Colaborador_Funcao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_colaborador`
--

INSERT INTO `tb_colaborador` (`idTB_Colaborador`, `TB_Gestor_idTB_Gestor`, `Colaborador_Nome`, `Colaborador_CPF`, `Colaborador_Email`, `Colaborador_Nascimento`, `Colaborador_Telefone`, `Colaborador_Adimissao`, `Colaborador_Senha`, `Colaborador_Status`, `Colaborador_Foto`, `Colaborador_Funcao`) VALUES
(19, 1, 'Matheus Martins de Araujo', '605.567.210-39', 'MatheusMartins@gmail.com', '2002-04-05', '11962849591', '2023-09-04', '40028922', 1, 'uploads/19.jpg', 'Back-End Junior'),
(20, 1, 'Julia Santos Rocha', '710.827.160-57', 'JuliaSantos@FatecZs.com', '2000-08-15', '11962869596', '2023-09-05', 'Julia', 1, 'uploads/20.jpg', 'Front-End Senior'),
(21, 1, 'Rebecca Santos Reis', '447.696.630-64', 'Rebeca_Santos@gmail.com', '2005-02-05', '11962549625', '2023-09-19', '123', 1, 'uploads/21.jpg', 'Analista Jr'),
(22, 2, 'Vanessa Soares Marques', '384.511.460-66', 'Vanessa_Marques@gmail.com', '1980-02-19', '11968959632', '2023-09-18', 'Vanessa', 1, 'uploads/22.jpg', 'Business Partner Sen'),
(23, 2, 'Matheus Lopes Lorenço', '367.477.710-01', 'Matheus_Lopes@Fatec.com', '1980-12-05', '11962849596', '2023-09-18', 'Lopes', 1, 'uploads/colaborador1.jpg', 'Auxiliar de Recursos'),
(24, 1, 'Leonardo Rodrigues Lopes', '260.241.840-42', 'Leonardo_Rodrigues@gmail.com', '2003-10-09', '4545478748', '2023-06-18', '123', 1, 'uploads/24.jpg', 'Segurança de Dados'),
(25, 1, 'Daiane Neves Silva', '563.309.590-13', 'Daiane_Neves@gmail.com', '2023-09-18', '11963214569', '2023-09-19', '123', 1, 'uploads/estagiaria.jpg', 'Estagiaria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_departamento`
--

CREATE TABLE `tb_departamento` (
  `idTB_Departamento` int(11) NOT NULL,
  `Departamento_Nome` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_departamento`
--

INSERT INTO `tb_departamento` (`idTB_Departamento`, `Departamento_Nome`) VALUES
(1, 'T.I'),
(2, 'RH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_gestor`
--

CREATE TABLE `tb_gestor` (
  `idTB_Gestor` int(11) NOT NULL,
  `TB_Departamento_idTB_Departamento` int(11) NOT NULL,
  `Gestor_Nome` varchar(30) DEFAULT NULL,
  `Gestor_CPF` varchar(14) DEFAULT NULL,
  `Gestor_Email` varchar(35) DEFAULT NULL,
  `Gestor_Nascimento` date DEFAULT NULL,
  `Gestor_Telefone` varchar(15) DEFAULT NULL,
  `Gestor_Adimissao` date DEFAULT NULL,
  `Gestor_Senha` varchar(25) DEFAULT NULL,
  `Gestor_Status` tinyint(1) DEFAULT NULL,
  `Gestor_Foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_gestor`
--

INSERT INTO `tb_gestor` (`idTB_Gestor`, `TB_Departamento_idTB_Departamento`, `Gestor_Nome`, `Gestor_CPF`, `Gestor_Email`, `Gestor_Nascimento`, `Gestor_Telefone`, `Gestor_Adimissao`, `Gestor_Senha`, `Gestor_Status`, `Gestor_Foto`) VALUES
(1, 1, 'Felipe Valeriano ', '516.312.956-94', 'Felipe@fatec.com', '2003-10-09', '11962849591', '2023-09-12', '123', 1, 'felipe.jpg'),
(2, 2, 'Adriana Santos', '521.569.963-96', 'Adriana@fatec.com', '1990-02-06', '11962849652', '2023-09-07', 'aaa', 1, 'adriana.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questionario`
--

CREATE TABLE `tb_questionario` (
  `idTB_Questionario` int(11) NOT NULL,
  `TB_Gestor_idTB_Gestor` int(11) NOT NULL,
  `TB_Colaborador_idTB_Colaborador` int(11) NOT NULL,
  `Questionario_Descricao` varchar(255) DEFAULT NULL,
  `Questionario_Inicio` datetime DEFAULT NULL,
  `Questionario_Fim` datetime DEFAULT NULL,
  `Questionario_Qta_Perguntas` int(11) DEFAULT NULL,
  `Questionario_Status` tinyint(1) DEFAULT NULL,
  `Questionario_Resultado` int(11) DEFAULT NULL,
  `Questionario_Duracao` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questionario_has_tb_questoes`
--

CREATE TABLE `tb_questionario_has_tb_questoes` (
  `TB_Questionario_idTB_Questionario` int(11) NOT NULL,
  `TB_Questoes_idTB_Questoes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_questoes`
--

CREATE TABLE `tb_questoes` (
  `idTB_Questoes` int(11) NOT NULL,
  `TB_Tipo_Questao_idTB_Tipo_Questao` int(11) NOT NULL,
  `TB_Categoria_idTB_Categoria` int(11) NOT NULL,
  `Questoes_Pergunta` varchar(255) DEFAULT NULL,
  `Questoes_A` varchar(255) DEFAULT NULL,
  `Questoes_B` varchar(255) DEFAULT NULL,
  `Questoes_C` varchar(255) DEFAULT NULL,
  `Questoes_D` varchar(255) DEFAULT NULL,
  `Questao_Correta` varchar(255) DEFAULT NULL,
  `Questao_Data` date DEFAULT NULL,
  `Questao_Status` tinyint(1) DEFAULT NULL,
  `Questao_Dificuldade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_questao`
--

CREATE TABLE `tb_tipo_questao` (
  `idTB_Tipo_Questao` int(11) NOT NULL,
  `Tipo_Nome` varchar(20) DEFAULT NULL,
  `Tipo_Descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`idTB_Categoria`);

--
-- Índices para tabela `tb_colaborador`
--
ALTER TABLE `tb_colaborador`
  ADD PRIMARY KEY (`idTB_Colaborador`),
  ADD KEY `TB_Colaborador_FKIndex1` (`TB_Gestor_idTB_Gestor`),
  ADD KEY `IFK_Rel_01` (`TB_Gestor_idTB_Gestor`);

--
-- Índices para tabela `tb_departamento`
--
ALTER TABLE `tb_departamento`
  ADD PRIMARY KEY (`idTB_Departamento`);

--
-- Índices para tabela `tb_gestor`
--
ALTER TABLE `tb_gestor`
  ADD PRIMARY KEY (`idTB_Gestor`),
  ADD KEY `TB_Gestor_FKIndex1` (`TB_Departamento_idTB_Departamento`),
  ADD KEY `IFK_Rel_03` (`TB_Departamento_idTB_Departamento`);

--
-- Índices para tabela `tb_questionario`
--
ALTER TABLE `tb_questionario`
  ADD PRIMARY KEY (`idTB_Questionario`),
  ADD KEY `TB_Questionario_FKIndex1` (`TB_Colaborador_idTB_Colaborador`),
  ADD KEY `TB_Questionario_FKIndex2` (`TB_Gestor_idTB_Gestor`),
  ADD KEY `IFK_Rel_06` (`TB_Colaborador_idTB_Colaborador`),
  ADD KEY `IFK_Rel_09` (`TB_Gestor_idTB_Gestor`);

--
-- Índices para tabela `tb_questionario_has_tb_questoes`
--
ALTER TABLE `tb_questionario_has_tb_questoes`
  ADD PRIMARY KEY (`TB_Questionario_idTB_Questionario`,`TB_Questoes_idTB_Questoes`),
  ADD KEY `TB_Questionario_has_TB_Questoes_FKIndex1` (`TB_Questionario_idTB_Questionario`),
  ADD KEY `TB_Questionario_has_TB_Questoes_FKIndex2` (`TB_Questoes_idTB_Questoes`),
  ADD KEY `IFK_Rel_07` (`TB_Questionario_idTB_Questionario`),
  ADD KEY `IFK_Rel_08` (`TB_Questoes_idTB_Questoes`);

--
-- Índices para tabela `tb_questoes`
--
ALTER TABLE `tb_questoes`
  ADD PRIMARY KEY (`idTB_Questoes`),
  ADD KEY `TB_Questoes_FKIndex1` (`TB_Categoria_idTB_Categoria`),
  ADD KEY `TB_Questoes_FKIndex2` (`TB_Tipo_Questao_idTB_Tipo_Questao`),
  ADD KEY `IFK_Rel_04` (`TB_Categoria_idTB_Categoria`),
  ADD KEY `IFK_Rel_05` (`TB_Tipo_Questao_idTB_Tipo_Questao`);

--
-- Índices para tabela `tb_tipo_questao`
--
ALTER TABLE `tb_tipo_questao`
  ADD PRIMARY KEY (`idTB_Tipo_Questao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `idTB_Categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_colaborador`
--
ALTER TABLE `tb_colaborador`
  MODIFY `idTB_Colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_departamento`
--
ALTER TABLE `tb_departamento`
  MODIFY `idTB_Departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_gestor`
--
ALTER TABLE `tb_gestor`
  MODIFY `idTB_Gestor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_questionario`
--
ALTER TABLE `tb_questionario`
  MODIFY `idTB_Questionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_questoes`
--
ALTER TABLE `tb_questoes`
  MODIFY `idTB_Questoes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_tipo_questao`
--
ALTER TABLE `tb_tipo_questao`
  MODIFY `idTB_Tipo_Questao` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_colaborador`
--
ALTER TABLE `tb_colaborador`
  ADD CONSTRAINT `tb_colaborador_ibfk_1` FOREIGN KEY (`TB_Gestor_idTB_Gestor`) REFERENCES `tb_gestor` (`idTB_Gestor`);

--
-- Limitadores para a tabela `tb_gestor`
--
ALTER TABLE `tb_gestor`
  ADD CONSTRAINT `tb_gestor_ibfk_1` FOREIGN KEY (`TB_Departamento_idTB_Departamento`) REFERENCES `tb_departamento` (`idTB_Departamento`);

--
-- Limitadores para a tabela `tb_questionario`
--
ALTER TABLE `tb_questionario`
  ADD CONSTRAINT `tb_questionario_ibfk_1` FOREIGN KEY (`TB_Colaborador_idTB_Colaborador`) REFERENCES `tb_colaborador` (`idTB_Colaborador`),
  ADD CONSTRAINT `tb_questionario_ibfk_2` FOREIGN KEY (`TB_Gestor_idTB_Gestor`) REFERENCES `tb_gestor` (`idTB_Gestor`);

--
-- Limitadores para a tabela `tb_questionario_has_tb_questoes`
--
ALTER TABLE `tb_questionario_has_tb_questoes`
  ADD CONSTRAINT `tb_questionario_has_tb_questoes_ibfk_1` FOREIGN KEY (`TB_Questionario_idTB_Questionario`) REFERENCES `tb_questionario` (`idTB_Questionario`),
  ADD CONSTRAINT `tb_questionario_has_tb_questoes_ibfk_2` FOREIGN KEY (`TB_Questoes_idTB_Questoes`) REFERENCES `tb_questoes` (`idTB_Questoes`);

--
-- Limitadores para a tabela `tb_questoes`
--
ALTER TABLE `tb_questoes`
  ADD CONSTRAINT `tb_questoes_ibfk_1` FOREIGN KEY (`TB_Categoria_idTB_Categoria`) REFERENCES `tb_categoria` (`idTB_Categoria`),
  ADD CONSTRAINT `tb_questoes_ibfk_2` FOREIGN KEY (`TB_Tipo_Questao_idTB_Tipo_Questao`) REFERENCES `tb_tipo_questao` (`idTB_Tipo_Questao`);
--
-- Banco de dados: `bib`
--
CREATE DATABASE IF NOT EXISTS `bib` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bib`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `ID` bigint(20) DEFAULT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `RG` varchar(255) DEFAULT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `CURSO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `ID` bigint(20) NOT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bibliotecario`
--

INSERT INTO `bibliotecario` (`ID`, `LOGIN`, `SENHA`, `STATUS`, `TIPO`) VALUES
(1, 'BIB', '1234', 'ATIVO', 'ALUNO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `ID` bigint(20) NOT NULL,
  `IDBIB` bigint(255) DEFAULT NULL,
  `IDLIVRO` bigint(255) DEFAULT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `DATAEMP` date DEFAULT NULL,
  `DATADEVOLUCAO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID` bigint(20) NOT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  `EXEMPLAR` varchar(255) DEFAULT NULL,
  `REGISTRO` varchar(255) DEFAULT NULL,
  `ASSUNTO` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID`, `TITULO`, `EXEMPLAR`, `REGISTRO`, `ASSUNTO`, `ISBN`) VALUES
(1, '2', '2', '2', '2', '2');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `fateczsdmn20222`
--
CREATE DATABASE IF NOT EXISTS `fateczsdmn20222` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fateczsdmn20222`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animais`
--

CREATE TABLE `animais` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `raca` varchar(255) DEFAULT NULL,
  `idade` int(55) DEFAULT NULL,
  `peso` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animais_consultas`
--

CREATE TABLE `animais_consultas` (
  `id` bigint(20) NOT NULL,
  `idAnimal` bigint(20) DEFAULT NULL,
  `idConsulta` bigint(20) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animais_pessoas`
--

CREATE TABLE `animais_pessoas` (
  `id` bigint(20) NOT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  `idAnimal` bigint(20) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consultas`
--

CREATE TABLE `consultas` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logradouros`
--

CREATE TABLE `logradouros` (
  `id` bigint(20) NOT NULL,
  `end` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `comp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logradouros_pessoas`
--

CREATE TABLE `logradouros_pessoas` (
  `id` bigint(20) NOT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  `idLogradouro` bigint(20) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `rg`, `cpf`, `email`) VALUES
(1, 'GCS', '5552225999', '456789123', 'NJJUU');

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
(1, 'BITTENCOURT', 'ABFABF010101', 'ATIVO', 'ADM'),
(2, 'SCURACCHIO', 'ABFABF010101', 'ATIVO', 'VISITANTE'),
(3, 'root', 'root', 'ATIVO', 'ADM'),
(5, 'BITTENCOURT', 'ABFABF010101', 'ATIVO', 'ADM'),
(6, 'SCURACCHIO', 'ABFABF010101', 'ATIVO', 'VISITANTE'),
(7, 'GABS', '123456', 'ATIVO', 'ADM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_pessoas`
--

CREATE TABLE `usuarios_pessoas` (
  `id` bigint(20) NOT NULL,
  `idPessoa` bigint(20) DEFAULT NULL,
  `idUsuario` bigint(20) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinarios`
--

CREATE TABLE `veterinarios` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `crmv` varchar(255) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinarios_consultas`
--

CREATE TABLE `veterinarios_consultas` (
  `id` bigint(20) NOT NULL,
  `idVeterinario` bigint(20) DEFAULT NULL,
  `idConsulta` bigint(20) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `animais_consultas`
--
ALTER TABLE `animais_consultas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `animais_pessoas`
--
ALTER TABLE `animais_pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logradouros`
--
ALTER TABLE `logradouros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logradouros_pessoas`
--
ALTER TABLE `logradouros_pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_pessoas`
--
ALTER TABLE `usuarios_pessoas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PES_USU_ID` (`idPessoa`),
  ADD KEY `FK_USU_PES_ID` (`idUsuario`);

--
-- Índices para tabela `veterinarios`
--
ALTER TABLE `veterinarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `veterinarios_consultas`
--
ALTER TABLE `veterinarios_consultas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `animais_consultas`
--
ALTER TABLE `animais_consultas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `animais_pessoas`
--
ALTER TABLE `animais_pessoas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logradouros`
--
ALTER TABLE `logradouros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logradouros_pessoas`
--
ALTER TABLE `logradouros_pessoas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios_pessoas`
--
ALTER TABLE `usuarios_pessoas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veterinarios`
--
ALTER TABLE `veterinarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veterinarios_consultas`
--
ALTER TABLE `veterinarios_consultas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `usuarios_pessoas`
--
ALTER TABLE `usuarios_pessoas`
  ADD CONSTRAINT `FK_PES_USU_ID` FOREIGN KEY (`idPessoa`) REFERENCES `pessoas` (`id`),
  ADD CONSTRAINT `FK_USU_PES_ID` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);
--
-- Banco de dados: `liloca_fest`
--
CREATE DATABASE IF NOT EXISTS `liloca_fest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `liloca_fest`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimento`
--

CREATE TABLE `alimento` (
  `Produto_idProduto` int(10) UNSIGNED NOT NULL,
  `Medida` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alimento`
--

INSERT INTO `alimento` (`Produto_idProduto`, `Medida`) VALUES
(4, '40 unidades'),
(5, '40 unidades'),
(6, '40 unidades');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aniversario`
--

CREATE TABLE `aniversario` (
  `idAniversario` int(3) UNSIGNED NOT NULL,
  `Cliente_idCliente` int(11) UNSIGNED NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Idade` varchar(10) DEFAULT NULL,
  `Data_Aniver` datetime DEFAULT NULL,
  `Tema` varchar(15) DEFAULT NULL,
  `Cor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aniversario`
--

INSERT INTO `aniversario` (`idAniversario`, `Cliente_idCliente`, `Nome`, `Idade`, `Data_Aniver`, `Tema`, `Cor`) VALUES
(1, 11980854, 'Jonas', '15', '2022-12-05 14:00:00', 'Futebol', 'Branco Dourado'),
(2, 19009245, 'Carlos', '12', '2021-02-28 16:55:00', 'Games', 'Preto'),
(3, 44023621, 'Lucas', '11', '2022-09-25 10:25:00', 'Disney', 'Azul Escuro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artificios_festa`
--

CREATE TABLE `artificios_festa` (
  `Produto_idProduto` int(10) UNSIGNED NOT NULL,
  `Tema` varchar(15) DEFAULT NULL,
  `Cor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `artificios_festa`
--

INSERT INTO `artificios_festa` (`Produto_idProduto`, `Tema`, `Cor`) VALUES
(7, 'Disney', 'Rosa'),
(8, 'Champions', 'Azul'),
(9, 'Santos', 'Dourado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebida`
--

CREATE TABLE `bebida` (
  `Produto_idProduto` int(10) UNSIGNED NOT NULL,
  `Volume` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bebida`
--

INSERT INTO `bebida` (`Produto_idProduto`, `Volume`) VALUES
(1, '350ml'),
(2, '350ml'),
(3, '350ml');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Ender` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nome`, `Email`, `Ender`) VALUES
(11980854, 'Fernando Torres', 'Elninho2010@gmail.com', 'Pl.de Legazpi 8, 28045'),
(19009245, 'Matthijs de Ligt', 'MtthLigt1974@gmail.com', 'Museumplein 6, 1071 DJ '),
(44023621, 'Thomas Muller', 'MTomas2014@gmail.com', 'Am Olympiapark 2, 80809 ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `idEntrega` int(10) UNSIGNED NOT NULL,
  `Pedido_idPedido` int(10) UNSIGNED NOT NULL,
  `Data_Entrega` datetime DEFAULT NULL,
  `Ender_Entrega` varchar(30) DEFAULT NULL,
  `Valor_Restante` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`idEntrega`, `Pedido_idPedido`, `Data_Entrega`, `Ender_Entrega`, `Valor_Restante`) VALUES
(1, 3, '2012-12-15 09:35:16', 'Pl.de Legazpi 8, 28045', 265),
(2, 1, '2021-03-07 12:15:20', 'Am Olympiapark 2, 80809 ', 265),
(3, 2, '2022-09-25 16:30:00', 'Museumplein 6, 1071 DJ ', 265);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `Produto_idProduto` int(10) UNSIGNED NOT NULL,
  `Pedido_idPedido` int(10) UNSIGNED NOT NULL,
  `Quantidade` float DEFAULT NULL,
  `Valor_Total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`Produto_idProduto`, `Pedido_idPedido`, `Quantidade`, `Valor_Total`) VALUES
(1, 1, 10, 48.5),
(1, 2, 10, 48.5),
(1, 3, 10, 48.5),
(2, 1, 10, 43),
(2, 2, 10, 43),
(2, 3, 10, 43),
(3, 1, 10, 52),
(3, 2, 10, 52),
(3, 3, 10, 52),
(4, 1, 3, 103.5),
(4, 2, 3, 103.5),
(4, 3, 3, 103.5),
(5, 1, 3, 96.75),
(5, 2, 3, 96.75),
(5, 3, 3, 96.75),
(6, 1, 3, 136.5),
(6, 2, 3, 136.5),
(6, 3, 3, 136.5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(10) UNSIGNED NOT NULL,
  `Aniversario_idAniversario` int(3) UNSIGNED NOT NULL,
  `Data_Prazo` varchar(15) DEFAULT NULL,
  `Data_Pedido` datetime DEFAULT NULL,
  `Valor_Sinal` int(10) UNSIGNED DEFAULT NULL,
  `Valor_Total` int(10) UNSIGNED DEFAULT NULL,
  `Valor_Frete` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idPedido`, `Aniversario_idAniversario`, `Data_Prazo`, `Data_Pedido`, `Valor_Sinal`, `Valor_Total`, `Valor_Frete`) VALUES
(1, 2, '20 Dias', '2021-02-17 09:40:15', 240, 505, 25),
(2, 3, '20 Dias', '2022-09-10 18:45:22', 240, 505, 25),
(3, 1, '20 Dias', '2022-11-25 18:55:50', 240, 505, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Quantidade` float DEFAULT NULL,
  `Valor_Unitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `Nome`, `Quantidade`, `Valor_Unitario`) VALUES
(1, 'Coca Cola ', 45, 4.85),
(2, 'Pepsi ', 37, 4.3),
(3, 'Fanta', 30, 5.2),
(4, 'Pacote de Coxinhas ', 44, 34.5),
(5, 'Pacote de Bolinho de Queijo ', 39, 32.25),
(6, 'Pacote de Brigadeiro ', 37, 45.5),
(7, 'Pratinhos de Plásticos ', 60, 3),
(8, 'Chapéu de Aniversariante ', 60, 4.15),
(9, 'Colheres de Plástico ', 60, 3.75);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`Produto_idProduto`),
  ADD KEY `Alimento_FKIndex1` (`Produto_idProduto`);

--
-- Índices para tabela `aniversario`
--
ALTER TABLE `aniversario`
  ADD PRIMARY KEY (`idAniversario`),
  ADD KEY `Aniversario_FKIndex1` (`Cliente_idCliente`);

--
-- Índices para tabela `artificios_festa`
--
ALTER TABLE `artificios_festa`
  ADD PRIMARY KEY (`Produto_idProduto`),
  ADD KEY `Festa_FKIndex1` (`Produto_idProduto`);

--
-- Índices para tabela `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`Produto_idProduto`),
  ADD KEY `Bebida_FKIndex1` (`Produto_idProduto`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`idEntrega`,`Pedido_idPedido`),
  ADD KEY `Entrega_FKIndex1` (`Pedido_idPedido`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`Produto_idProduto`,`Pedido_idPedido`),
  ADD KEY `Produto_has_Pedido_FKIndex1` (`Produto_idProduto`),
  ADD KEY `Produto_has_Pedido_FKIndex2` (`Pedido_idPedido`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `Pedido_FKIndex2` (`Aniversario_idAniversario`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aniversario`
--
ALTER TABLE `aniversario`
  MODIFY `idAniversario` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44023622;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `idEntrega` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alimento`
--
ALTER TABLE `alimento`
  ADD CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aniversario`
--
ALTER TABLE `aniversario`
  ADD CONSTRAINT `aniversario_ibfk_1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `artificios_festa`
--
ALTER TABLE `artificios_festa`
  ADD CONSTRAINT `artificios_festa_ibfk_1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `bebida`
--
ALTER TABLE `bebida`
  ADD CONSTRAINT `bebida_ibfk_1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `itens_ibfk_2` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Aniversario_idAniversario`) REFERENCES `aniversario` (`idAniversario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Banco de dados: `lojadarafinha`
--
CREATE DATABASE IF NOT EXISTS `lojadarafinha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojadarafinha`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `tipo`, `email`) VALUES
(1, 'Rafaella Teles Fontes', '478397878609', 'Rafinha', 'rafinha.fontes@gmail.com'),
(2, 'Laura Teles dos Santos', '1345654356543', 'vo', 'laurateles@gmail.com'),
(3, 'Gabriel', '24543235676543', 'Cliente', 'gabi@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtocliente`
--

CREATE TABLE `produtocliente` (
  `id` bigint(20) NOT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
  `codigoProduto` bigint(20) DEFAULT NULL,
  `dtini` varchar(255) DEFAULT NULL,
  `dtfim` varchar(255) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtocliente`
--

INSERT INTO `produtocliente` (`id`, `idCliente`, `codigoProduto`, `dtini`, `dtfim`, `observacao`) VALUES
(1, 1, 123, '21 DE JUNHO', '30 DE JUNHO', 'NADA'),
(2, 2, 234, '25 DE DEZEMBRO', 'AINDA NÃO ENTREGUE', 'FAVOR ENTREGAR\r\n'),
(3, 2, NULL, '12 DE FEVEREIRO', '24 DE MARÇO', 'PRODUTO ENTREGUE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `nome`, `descricao`, `status`, `tipo`, `preco`) VALUES
(123, 'Chocolate', 'Chocolate em pó', 'Cadastrado', 'Bomboniere', 15),
(234, 'Noteboook', 'Noteboook gamer', 'Cadastrado', 'Eletrônicos', 3.5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `status`, `tipo`) VALUES
(1, 'Darklady', 'Rafaella', '210603Rafa', 'ATIVO', 'ADM'),
(2, 'Laura', 'Santos', '251255', 'ATIVO', 'VISITANTE');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtocliente`
--
ALTER TABLE `produtocliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CLI_PRO_ID` (`idCliente`),
  ADD KEY `FK_PRO_CLI_ID` (`codigoProduto`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtocliente`
--
ALTER TABLE `produtocliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtocliente`
--
ALTER TABLE `produtocliente`
  ADD CONSTRAINT `FK_CLI_PRO_ID` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `FK_PRO_CLI_ID` FOREIGN KEY (`codigoProduto`) REFERENCES `produtos` (`codigo`);
--
-- Banco de dados: `mercearia2`
--
CREATE DATABASE IF NOT EXISTS `mercearia2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mercearia2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `cnpj` int(11) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `preco` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `descricao`, `qtd`, `preco`) VALUES
(2, 'Cartolina', 20, 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `meubanco`
--
CREATE DATABASE IF NOT EXISTS `meubanco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `meubanco`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `rg` varchar(13) COLLATE utf8mb4_bin NOT NULL,
  `cpf` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `idCliente` int(11) NOT NULL,
  `idGerente` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerente`
--

CREATE TABLE `gerente` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `senha` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `gerente`
--

INSERT INTO `gerente` (`id`, `nome`, `login`, `senha`) VALUES
(4, 't', 't', 't');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idGerente` (`idGerente`);

--
-- Índices para tabela `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `gerente`
--
ALTER TABLE `gerente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `Conta_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `Conta_ibfk_2` FOREIGN KEY (`idGerente`) REFERENCES `gerente` (`id`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'LA_FIESTA', '{\"quick_or_custom\":\"custom\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"bebida\",\"cliente\",\"comida\",\"enfeite\",\"festa\",\"itens_pedido\",\"pedido\",\"produtos\"],\"table_structure[]\":[\"bebida\",\"cliente\",\"comida\",\"enfeite\",\"festa\",\"itens_pedido\",\"pedido\",\"produtos\"],\"table_data[]\":[\"bebida\",\"cliente\",\"comida\",\"enfeite\",\"festa\",\"itens_pedido\",\"pedido\",\"produtos\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'phpmyadminfatec', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"academico\",\"agenda\",\"autorating\",\"bib\",\"fateczsdmn20222\",\"liloca_fest\",\"lojadarafinha\",\"mercearia2\",\"meubanco\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"fateczsdmn20222\",\"table\":\"logradouros\"},{\"db\":\"fateczsdmn20222\",\"table\":\"consultas\"},{\"db\":\"fateczsdmn20222\",\"table\":\"animais_pessoas\"},{\"db\":\"fateczsdmn20222\",\"table\":\"animais_consultas\"},{\"db\":\"fateczsdmn20222\",\"table\":\"animais\"},{\"db\":\"bib\",\"table\":\"livro\"},{\"db\":\"bib\",\"table\":\"aluno\"},{\"db\":\"bib\",\"table\":\"bibliotecario\"},{\"db\":\"bib\",\"table\":\"emprestimo\"},{\"db\":\"academico\",\"table\":\"disciplina\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('lojadarafinha', 'produtocliente', 'dtini');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-15 13:25:55', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"ThemeDefault\":\"blueberry\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
