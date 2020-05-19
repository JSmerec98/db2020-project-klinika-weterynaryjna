-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 19 Maj 2020, 21:07
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `vet_clinic`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal`
--

CREATE TABLE `animal` (
  `animal_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `species` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `fur` varchar(50) DEFAULT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal_appointment`
--

CREATE TABLE `animal_appointment` (
  `animal_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal_diagnosis`
--

CREATE TABLE `animal_diagnosis` (
  `animal_diagnosis_id` int(11) NOT NULL,
  `regimen` varchar(255) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `veterinarian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `diagnosis`
--

CREATE TABLE `diagnosis` (
  `diagnosis_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drug`
--

CREATE TABLE `drug` (
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drug_plan`
--

CREATE TABLE `drug_plan` (
  `drug_plan_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `advices` varchar(255) DEFAULT NULL,
  `drug_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prescription`
--

CREATE TABLE `prescription` (
  `perscription_id` int(11) NOT NULL,
  `veterinarian_id` int(11) NOT NULL,
  `drug_plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `veterinarian`
--

CREATE TABLE `veterinarian` (
  `veterinarian_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animal_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indeksy dla tabeli `animal_appointment`
--
ALTER TABLE `animal_appointment`
  ADD KEY `animal_id` (`animal_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indeksy dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  ADD PRIMARY KEY (`animal_diagnosis_id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `diagnosis_id` (`diagnosis_id`);

--
-- Indeksy dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `veterinarian_id` (`veterinarian_id`);

--
-- Indeksy dla tabeli `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indeksy dla tabeli `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indeksy dla tabeli `drug_plan`
--
ALTER TABLE `drug_plan`
  ADD PRIMARY KEY (`drug_plan_id`),
  ADD KEY `diagnosis_id` (`diagnosis_id`),
  ADD KEY `drug_id` (`drug_id`);

--
-- Indeksy dla tabeli `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indeksy dla tabeli `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`perscription_id`),
  ADD KEY `veterinarian_id` (`veterinarian_id`),
  ADD KEY `drug_plan_id` (`drug_plan_id`);

--
-- Indeksy dla tabeli `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`veterinarian_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `animal`
--
ALTER TABLE `animal`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  MODIFY `animal_diagnosis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Ograniczenia dla tabeli `animal_appointment`
--
ALTER TABLE `animal_appointment`
  ADD CONSTRAINT `animal_appointment_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_appointment_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  ADD CONSTRAINT `animal_diagnosis_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `animal_diagnosis_ibfk_2` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`);

--
-- Ograniczenia dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`veterinarian_id`) REFERENCES `veterinarian` (`veterinarian_id`);

--
-- Ograniczenia dla tabeli `drug_plan`
--
ALTER TABLE `drug_plan`
  ADD CONSTRAINT `drug_plan_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`),
  ADD CONSTRAINT `drug_plan_ibfk_2` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`);

--
-- Ograniczenia dla tabeli `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`veterinarian_id`) REFERENCES `veterinarian` (`veterinarian_id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`drug_plan_id`) REFERENCES `drug_plan` (`drug_plan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
