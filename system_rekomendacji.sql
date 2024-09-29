-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 29, 2024 at 09:38 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system rekomendacji`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id_filmu` int(11) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `gatunek` varchar(100) DEFAULT NULL,
  `rok_wydania` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id_filmu`, `tytul`, `gatunek`, `rok_wydania`) VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994),
(2, 'The Godfather', 'Crime', 1972),
(3, 'The Dark Knight', 'Action', 2008),
(4, 'Pulp Fiction', 'Crime', 1994),
(5, 'Schindler\'s List', 'Drama', 1993),
(6, 'The Lord of the Rings: The Return of the King', 'Fantasy', 2003),
(7, 'Inception', 'Sci-Fi', 2010),
(8, 'Fight Club', 'Drama', 1999),
(9, 'The Matrix', 'Sci-Fi', 1999),
(10, 'Forrest Gump', 'Drama', 1994),
(11, 'Star Wars: Episode IV - A New Hope', 'Sci-Fi', 1977),
(12, 'The Silence of the Lambs', 'Thriller', 1991),
(13, 'Se7en', 'Thriller', 1995),
(14, 'Interstellar', 'Sci-Fi', 2014),
(15, 'The Green Mile', 'Drama', 1999),
(16, 'Gladiator', 'Action', 2000),
(17, 'The Departed', 'Crime', 2006),
(18, 'The Prestige', 'Drama', 2006),
(19, 'Django Unchained', 'Western', 2012),
(20, 'Whiplash', 'Drama', 2014);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL,
  `id_filmu` int(11) DEFAULT NULL,
  `ocena` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id_oceny`, `id_uzytkownika`, `id_filmu`, `ocena`) VALUES
(1, 1, 1, 9.5),
(2, 1, 2, 9.0),
(3, 1, 3, 8.5),
(4, 2, 4, 9.2),
(5, 2, 5, 9.8),
(6, 3, 6, 8.5),
(7, 3, 7, 9.0),
(8, 4, 8, 8.2),
(9, 4, 9, 9.5),
(10, 5, 10, 9.0),
(11, 5, 11, 7.8),
(12, 5, 12, 9.6),
(13, 2, 13, 8.5),
(14, 3, 14, 9.3),
(15, 1, 15, 8.0),
(16, 4, 16, 8.9),
(17, 5, 17, 9.1),
(18, 2, 18, 9.4),
(19, 3, 19, 8.7),
(20, 1, 20, 9.5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `nazwa`, `email`) VALUES
(1, 'Jan Kowalski', 'jan.kowalski@example.com'),
(2, 'Anna Nowak', 'anna.nowak@example.com'),
(3, 'Piotr Wiśniewski', 'piotr.wisniewski@example.com'),
(4, 'Katarzyna Lewandowska', 'k.lewandowska@example.com'),
(5, 'Michał Wójcik', 'michal.wojcik@example.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id_filmu`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `id_filmu` (`id_filmu`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id_filmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`),
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id_filmu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
