-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2023 at 11:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecf`
--

-- --------------------------------------------------------

--
-- Table structure for table `avoir_note`
--

CREATE TABLE `avoir_note` (
  `idAvoirNote_avoir_note` int NOT NULL,
  `idEtudiant_etudiants` int NOT NULL,
  `idEpreuve_epreuves` int NOT NULL,
  `note_avoir_note` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avoir_note`
--

INSERT INTO `avoir_note` (`idAvoirNote_avoir_note`, `idEtudiant_etudiants`, `idEpreuve_epreuves`, `note_avoir_note`) VALUES
(1, 1, 1, 15),
(2, 2, 1, 8),
(3, 3, 1, 7),
(4, 4, 1, 11),
(5, 5, 1, 15),
(6, 6, 1, 16),
(7, 7, 1, 1),
(8, 17, 1, 6),
(9, 18, 1, 11),
(10, 1, 2, 12),
(11, 2, 2, 12),
(12, 3, 2, 3),
(13, 4, 2, 15),
(14, 5, 2, 9),
(15, 6, 2, 11),
(16, 7, 2, 13),
(17, 17, 2, 19),
(18, 18, 2, 6),
(19, 8, 3, 8),
(20, 9, 3, 14),
(21, 10, 3, 14),
(22, 11, 3, 11),
(23, 12, 3, 6),
(24, 13, 3, 3),
(25, 14, 3, 20),
(26, 15, 3, 12),
(27, 16, 3, 11),
(28, 8, 4, 7),
(29, 9, 4, 11),
(30, 10, 4, 12),
(31, 11, 4, 3),
(32, 12, 4, 20),
(33, 13, 4, 12),
(34, 14, 4, 10),
(35, 15, 4, 8),
(36, 16, 4, 10),
(37, 17, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `enseignants`
--

CREATE TABLE `enseignants` (
  `idEnseignant_enseignants` int NOT NULL,
  `nomEnseignant_enseignants` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenomEnseignant_enseignants` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fonctionEnseignant_enseignants` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresseEnseignant_enseignants` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `villeEnseignant_enseignants` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codePostalEnseignant_enseignants` int DEFAULT NULL,
  `telephoneEnseignant_enseignants` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateAnneeEns_enseignants` date DEFAULT NULL,
  `dateEmbaucheEnseignement_enseignants` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enseignants`
--

INSERT INTO `enseignants` (`idEnseignant_enseignants`, `nomEnseignant_enseignants`, `prenomEnseignant_enseignants`, `fonctionEnseignant_enseignants`, `adresseEnseignant_enseignants`, `villeEnseignant_enseignants`, `codePostalEnseignant_enseignants`, `telephoneEnseignant_enseignants`, `dateAnneeEns_enseignants`, `dateEmbaucheEnseignement_enseignants`) VALUES
(1, 'talon', 'isabelle', 'MAITRE DE CONFERENCES', '12,rue des lilas', 'marseille', 13000, '29-89-76-30', '1965-05-30', '1991-10-01'),
(2, 'pelletier', 'séverine', 'CERTIFIE', '213,avenue de londres', 'calais', 62100, '21-54-87-61', '1975-04-21', '2014-09-01'),
(3, 'roseau', 'alain', 'AGREGE', '12,allee des mimosas', 'calais', 62100, '21-65-87-43', '1960-01-02', '1991-10-01'),
(4, 'preux', 'erick', 'CERTIFIE', '76,rue charles de gaulle', 'lyon', 69000, '30-87-21-54', '1969-11-09', '1995-10-01'),
(5, 'roussel', 'philippe', 'MAITRE DE CONFERENCES', '43,rue des cogognes', 'lille', 59000, '28-90-86-64', '1966-01-21', '1990-10-12'),
(6, 'renaud', 'leon', 'MAITRE DE CONFERENCES', '34,allee luoia', 'lille', 59000, '28-29-30-31', '1968-12-12', '1994-10-10'),
(7, 'delignieres', 'benedicte', 'MAITRE DE CONFERENCES', '124,allee rouids', 'lyon', 69000, '45-87-91-03', '1964-10-13', '1991-10-01'),
(8, 'robillard', 'marcel', 'AGREGE', '12,route de paris', 'lille', 59000, '28-28-39-39', '1965-12-12', '1995-10-01'),
(9, 'savasta', 'sophie', 'CERTIFIE', '32,rue luois david', 'calais', 62100, '21-78-64-54', '1959-10-09', '1996-10-01'),
(10, 'cayron', 'isabelle', 'AGREGE', '56,rue de majorettes', 'lille', 59000, '28-98-59-01', '1965-09-09', '1993-10-01'),
(11, 'pacou', 'alain', 'AGREGE', '34,rue monsigny', 'saint omer', 62300, '21-94-63-20', '1978-12-01', '1998-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `epreuves`
--

CREATE TABLE `epreuves` (
  `idEpreuve_epreuves` int NOT NULL,
  `libelleEpreuve_epreuves` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idEnseignant_enseignants` int DEFAULT NULL,
  `idMatiere_matieres` int DEFAULT NULL,
  `dateEpreuve_epreuves` date DEFAULT NULL,
  `CoefficientEpreuve_epreuves` int DEFAULT NULL,
  `anneeEpreuve_epreuves` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `epreuves`
--

INSERT INTO `epreuves` (`idEpreuve_epreuves`, `libelleEpreuve_epreuves`, `idEnseignant_enseignants`, `idMatiere_matieres`, `dateEpreuve_epreuves`, `CoefficientEpreuve_epreuves`, `anneeEpreuve_epreuves`) VALUES
(1, 'interro anglais', 9, 1, '2014-09-12', 1, 1),
(2, 'partiel maths', 3, 8, '2014-09-13', 3, 1),
(3, 'partiel BD', 1, 2, '2014-09-18', 4, 2),
(4, 'partiel UNIX', 7, 3, '2014-10-01', 3, 2),
(5, 'interro BD', 1, 2, '2014-10-12', 1, 2),
(6, 'interro maths', 3, 8, '2014-10-12', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `idEtudiant_etudiants` int NOT NULL,
  `nomEtudiant_etudiants` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenomEtudiant_etudiants` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresseEtudiant_etudiants` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `villeEtudiant_etudiants` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codePostalEtudiant_etudiants` int DEFAULT NULL,
  `telephoneEtudiant_etudiants` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateEntreeEtudiant_etudiants` date DEFAULT NULL,
  `anneeEtudiant_etudiants` int DEFAULT NULL,
  `remarqueEtudiant_etudiants` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sexeEtudiant_etudiants` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateNaissanceEtudiant_etudiants` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`idEtudiant_etudiants`, `nomEtudiant_etudiants`, `prenomEtudiant_etudiants`, `adresseEtudiant_etudiants`, `villeEtudiant_etudiants`, `codePostalEtudiant_etudiants`, `telephoneEtudiant_etudiants`, `dateEntreeEtudiant_etudiants`, `anneeEtudiant_etudiants`, `remarqueEtudiant_etudiants`, `sexeEtudiant_etudiants`, `dateNaissanceEtudiant_etudiants`) VALUES
(1, 'roblin', 'lea', '12,bd de la liberte', 'calais', 62100, '21-34-56-78', '2014-09-01', 1, '', 'F', '1995-01-14'),
(2, 'macarthur', 'leon', '121,bd gambetta', 'calais', 62100, '21-30-65-09', '2014-09-01', 1, '', 'M', '1994-04-12'),
(3, 'minol', 'luc', '9,rue des prairies', 'boulogne', 62200, '21-30-20-10', '2014-09-01', 1, '', 'M', '1997-03-12'),
(4, 'bagnole', 'sophie', '12,rue des capucines', 'wimereux', 62930, '21-89-04-30', '2014-09-01', 1, '', 'F', '1996-03-21'),
(5, 'bury', 'marc', '67,allee ronde', 'marcq', 62300, '21-90-87-65', '2014-09-01', 1, '', 'M', '1993-02-05'),
(6, 'vendraux', 'marc', '5,rue de marseille', 'calais', 62100, '21-96-00-09', '2013-09-01', 1, 'a redouble sa premiere annee', 'M', '1996-01-21'),
(7, 'vendermaele', 'helene', '456,rue de paris', 'boulogne', 62200, '21-45-45-60', '2014-09-01', 1, '', 'F', '1995-03-30'),
(8, 'besson', 'loic', '3,allee carpentier', 'dunkerque', 59300, '28-90-89-78', '2014-09-01', 2, '', 'M', '1994-05-21'),
(9, 'godart', 'jean-paul', '123,rue de lens', 'marck', 59870, '28-09-87-65', '2013-09-01', 2, 'a double sa seconde annee', 'M', '1993-01-12'),
(10, 'beaux', 'marie', '1,allee des cygnes', 'dunkerque', 59100, '21-30-87-90', '2014-09-01', 2, NULL, 'F', '1996-04-12'),
(11, 'turini', 'elsa', '12,route de paris', 'boulogne', 62200, '21-32-47-97', '2014-09-01', 2, NULL, 'F', '1996-07-17'),
(12, 'torelle', 'elise', '123,vallee du denacre', 'boulogne', 62200, '21-67-86-90', '2014-09-01', 2, NULL, 'F', '1997-04-16'),
(13, 'pharis', 'pierre', '12,avenue foch', 'calais', 62100, '21-21-85-90', '2014-09-01', 2, NULL, 'M', '1996-03-18'),
(14, 'ephyre', 'luc', '12,rue de lyon', 'calais', 62100, '21-35-32-90', '2014-09-01', 2, NULL, 'M', '1995-01-21'),
(15, 'leclercq', 'jules', '12,allee des ravins', 'boulogne', 62200, '21-36-71-92', '2014-09-01', 2, NULL, 'M', '1994-05-19'),
(16, 'dupont', 'luc', '21,avenue monsigny', 'calais', 62200, '21-21-34-99', '2014-09-01', 2, NULL, 'M', '1996-11-02'),
(17, 'marke', 'loic', '312,route de paris', 'wimereux', 62930, '21-87-87-71', '2014-09-01', 2, NULL, 'M', '1996-11-12'),
(18, 'dewa', 'leon', '121,allee des eglantines', 'dunkerque', 59100, '28-30-87-90', '2014-09-01', 2, NULL, 'M', '1997-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `faire_cours`
--

CREATE TABLE `faire_cours` (
  `idFaireCours_faire_cours` int NOT NULL,
  `idEnseignant_enseignants` int NOT NULL,
  `idMatiere_matieres` int NOT NULL,
  `annee_faire_cours` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faire_cours`
--

INSERT INTO `faire_cours` (`idFaireCours_faire_cours`, `idEnseignant_enseignants`, `idMatiere_matieres`, `annee_faire_cours`) VALUES
(1, 1, 2, 2),
(2, 1, 10, 2),
(3, 2, 4, 1),
(4, 2, 5, 1),
(5, 2, 11, 1),
(6, 2, 11, 2),
(7, 3, 8, 2),
(8, 3, 13, 1),
(9, 4, 14, 1),
(10, 5, 12, 1),
(11, 5, 12, 2),
(12, 6, 3, 2),
(13, 6, 3, 1),
(14, 6, 6, 2),
(15, 7, 13, 1),
(16, 7, 7, 2),
(17, 7, 3, 2),
(18, 8, 10, 1),
(19, 8, 13, 1),
(20, 9, 1, 1),
(21, 9, 1, 2),
(22, 10, 9, 1),
(23, 10, 9, 2),
(24, 11, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matieres`
--

CREATE TABLE `matieres` (
  `idMatiere_matieres` int NOT NULL,
  `nomMatiere_matieres` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idModule_modules` int DEFAULT NULL,
  `coefficientMatiere_matieres` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matieres`
--

INSERT INTO `matieres` (`idMatiere_matieres`, `nomMatiere_matieres`, `idModule_modules`, `coefficientMatiere_matieres`) VALUES
(1, 'anglais', 4, 2),
(2, 'BD', 1, 5),
(3, 'UNIX', 1, 5),
(4, 'access', 1, 1),
(5, 'bureautique', 1, 2),
(6, 'C', 1, 5),
(7, 'Prog avancee', 1, 3),
(8, 'mathematiques', 2, 1),
(9, 'expression', 4, 2),
(10, 'ACSI', 1, 7),
(11, 'economie', 3, 2),
(12, 'gestion', 3, 2),
(13, 'algorithmique', 1, 5),
(14, 'architecture', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `idModule_modules` int NOT NULL,
  `nomModule_modules` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coefficientModule_modules` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`idModule_modules`, `nomModule_modules`, `coefficientModule_modules`) VALUES
(1, 'informatique', 15),
(2, 'mathematiques', 5),
(3, 'EOG', 5),
(4, 'LEC', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avoir_note`
--
ALTER TABLE `avoir_note`
  ADD PRIMARY KEY (`idAvoirNote_avoir_note`),
  ADD KEY `FK_avoir_note_idEtudiant_etudiants` (`idEtudiant_etudiants`),
  ADD KEY `FK_avoir_note_idEpreuve_epreuves` (`idEpreuve_epreuves`);

--
-- Indexes for table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`idEnseignant_enseignants`);

--
-- Indexes for table `epreuves`
--
ALTER TABLE `epreuves`
  ADD PRIMARY KEY (`idEpreuve_epreuves`),
  ADD KEY `FK_epreuves_idEnseignant_enseignants` (`idEnseignant_enseignants`),
  ADD KEY `FK_epreuves_idMatiere_matieres` (`idMatiere_matieres`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`idEtudiant_etudiants`);

--
-- Indexes for table `faire_cours`
--
ALTER TABLE `faire_cours`
  ADD PRIMARY KEY (`idFaireCours_faire_cours`),
  ADD KEY `FK_faire_cours_idEnseignant_enseignants` (`idEnseignant_enseignants`),
  ADD KEY `FK_faire_cours_idMatiere_matieres` (`idMatiere_matieres`);

--
-- Indexes for table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`idMatiere_matieres`),
  ADD KEY `FK_matieres_idModule_modules` (`idModule_modules`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`idModule_modules`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avoir_note`
--
ALTER TABLE `avoir_note`
  MODIFY `idAvoirNote_avoir_note` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `idEnseignant_enseignants` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `epreuves`
--
ALTER TABLE `epreuves`
  MODIFY `idEpreuve_epreuves` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `idEtudiant_etudiants` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faire_cours`
--
ALTER TABLE `faire_cours`
  MODIFY `idFaireCours_faire_cours` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `idMatiere_matieres` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `idModule_modules` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avoir_note`
--
ALTER TABLE `avoir_note`
  ADD CONSTRAINT `FK_avoir_note_idEpreuve_epreuves` FOREIGN KEY (`idEpreuve_epreuves`) REFERENCES `epreuves` (`idEpreuve_epreuves`),
  ADD CONSTRAINT `FK_avoir_note_idEtudiant_etudiants` FOREIGN KEY (`idEtudiant_etudiants`) REFERENCES `etudiants` (`idEtudiant_etudiants`);

--
-- Constraints for table `epreuves`
--
ALTER TABLE `epreuves`
  ADD CONSTRAINT `FK_epreuves_idEnseignant_enseignants` FOREIGN KEY (`idEnseignant_enseignants`) REFERENCES `enseignants` (`idEnseignant_enseignants`),
  ADD CONSTRAINT `FK_epreuves_idMatiere_matieres` FOREIGN KEY (`idMatiere_matieres`) REFERENCES `matieres` (`idMatiere_matieres`);

--
-- Constraints for table `faire_cours`
--
ALTER TABLE `faire_cours`
  ADD CONSTRAINT `FK_faire_cours_idEnseignant_enseignants` FOREIGN KEY (`idEnseignant_enseignants`) REFERENCES `enseignants` (`idEnseignant_enseignants`),
  ADD CONSTRAINT `FK_faire_cours_idMatiere_matieres` FOREIGN KEY (`idMatiere_matieres`) REFERENCES `matieres` (`idMatiere_matieres`);

--
-- Constraints for table `matieres`
--
ALTER TABLE `matieres`
  ADD CONSTRAINT `FK_matieres_idModule_modules` FOREIGN KEY (`idModule_modules`) REFERENCES `modules` (`idModule_modules`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
