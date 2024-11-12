-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 19, 2024 at 01:51 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_recommendation`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id`, `title`, `genre`) VALUES
(1, 'Look Mom I Can Fly', 'Action'),
(2, 'Film 2', 'Comedy'),
(3, 'Titanic', 'Drama'),
(4, 'Inception', 'Sci-Fi'),
(5, 'The Dark Knight', 'Action'),
(6, 'Pulp Fiction', 'Crime'),
(7, 'Forrest Gump', 'Drama'),
(8, 'The Matrix', 'Sci-Fi'),
(9, 'The Godfather', 'Crime'),
(10, 'The Lord of the Rings', 'Fantasy'),
(11, 'Fight Club', 'Drama'),
(12, 'Interstellar', 'Sci-Fi'),
(13, 'The Social Network', 'Drama'),
(14, 'Parasite', 'Thriller'),
(15, 'The Avengers', 'Action'),
(16, 'Toy Story', 'Animation'),
(17, 'Titanic', 'Romance'),
(18, 'Gladiator', 'Action'),
(19, 'The Green Mile', 'Fantasy'),
(20, 'Parasite', 'Thriller'),
(21, 'The Lion King', 'Animation'),
(22, 'Titanic', 'Romance'),
(23, 'Jurassic Park', 'Adventure'),
(24, 'The Avengers', 'Action'),
(25, 'Spider-Man: Into the Spider-Verse', 'Animation'),
(26, 'Interstellar', 'Sci-Fi'),
(27, 'Gladiator', 'Action'),
(28, 'The Departed', 'Crime'),
(29, 'Whiplash', 'Drama'),
(30, 'The Social Network', 'Biography'),
(31, 'Black Panther', 'Action'),
(32, 'A Beautiful Mind', 'Biography'),
(33, 'Toy Story', 'Animation'),
(34, 'Back to the Future', 'Adventure'),
(35, 'The Incredibles', 'Animation'),
(36, 'Coco', 'Animation'),
(37, 'Finding Nemo', 'Animation'),
(38, 'The Grand Budapest Hotel', 'Comedy'),
(39, 'The Shape of Water', 'Fantasy'),
(40, 'The Revenant', 'Adventure'),
(41, 'Mad Max: Fury Road', 'Action'),
(42, 'Django Unchained', 'Western'),
(43, 'La La Land', 'Musical'),
(44, 'The Princess Bride', 'Fantasy'),
(45, 'The Sixth Sense', 'Thriller'),
(46, 'The Prestige', 'Drama'),
(47, 'Get Out', 'Horror'),
(48, 'Zootopia', 'Animation'),
(49, '12 Years a Slave', 'Biography'),
(50, 'Her', 'Romance'),
(51, 'The Fault in Our Stars', 'Romance'),
(52, 'The Martian', 'Sci-Fi'),
(53, 'The Breakfast Club', 'Comedy'),
(54, 'Joker', 'Drama'),
(55, 'Room', 'Drama'),
(56, 'Fargo', 'Crime'),
(57, 'Inside Out', 'Animation'),
(58, 'The Big Lebowski', 'Comedy'),
(59, 'Moonlight', 'Drama'),
(60, 'A Star Is Born', 'Romance'),
(61, 'Spotlight', 'Drama'),
(62, 'The Wolf of Wall Street', 'Biography'),
(63, 'Black Swan', 'Drama'),
(64, 'The Babadook', 'Horror'),
(65, 'The Conjuring', 'Horror'),
(66, 'The Exorcist', 'Horror'),
(67, 'It', 'Horror'),
(68, 'Get Out', 'Thriller'),
(69, 'The Ring', 'Horror'),
(70, 'The Shining', 'Horror'),
(71, 'No Country for Old Men', 'Thriller'),
(72, 'The Truman Show', 'Comedy'),
(73, 'The Imitation Game', 'Biography'),
(74, 'The Theory of Everything', 'Biography'),
(75, 'Slumdog Millionaire', 'Drama'),
(76, 'Gravity', 'Sci-Fi'),
(77, 'The Help', 'Drama'),
(78, 'The Good, the Bad and the Ugly', 'Western'),
(79, 'Casino Royale', 'Action'),
(80, 'Skyfall', 'Action'),
(81, 'Wonder Woman', 'Action'),
(82, 'Blade Runner 2049', 'Sci-Fi'),
(83, 'Eternal Sunshine of the Spotless Mind', 'Romance'),
(84, 'The Great Gatsby', 'Drama'),
(85, 'American Beauty', 'Drama'),
(86, 'Gone Girl', 'Thriller'),
(87, 'Deadpool', 'Action'),
(88, 'Jumanji: Welcome to the Jungle', 'Adventure'),
(89, 'Bridget Jones\'s Diary', 'Romance'),
(90, 'Ferris Bueller\'s Day Off', 'Comedy'),
(91, 'Mean Girls', 'Comedy'),
(92, 'The Lego Movie', 'Animation'),
(93, 'Star Wars: The Force Awakens', 'Sci-Fi'),
(94, 'The Martian', 'Sci-Fi'),
(95, 'The Amazing Spider-Man', 'Action'),
(96, 'Wonder', 'Drama'),
(97, 'The Secret Life of Pets', 'Animation'),
(98, 'The Nut Job', 'Animation'),
(99, 'Rogue One: A Star Wars Story', 'Sci-Fi'),
(100, 'Fantastic Beasts and Where to Find Them', 'Fantasy'),
(101, 'The Nun', 'Horror'),
(102, 'A Quiet Place', 'Horror'),
(103, 'The Shape of Water', 'Fantasy'),
(104, 'Sicario', 'Thriller'),
(105, 'Birdman', 'Drama'),
(106, 'Room', 'Drama'),
(107, 'Knives Out', 'Mystery'),
(108, 'The Favourite', 'Comedy'),
(109, '1917', 'War'),
(110, 'Ford v Ferrari', 'Drama'),
(111, 'Jojo Rabbit', 'Comedy'),
(112, 'The Irishman', 'Crime'),
(113, 'Midsommar', 'Horror'),
(114, 'Knives Out', 'Mystery'),
(115, 'Parasite', 'Thriller'),
(116, 'Soul', 'Animation'),
(117, 'The Invisible Man', 'Horror'),
(118, 'A Beautiful Day in the Neighborhood', 'Drama'),
(119, 'The Trial of the Chicago 7', 'Drama'),
(120, 'Sound of Metal', 'Drama'),
(121, 'Promising Young Woman', 'Thriller'),
(122, 'Dune', 'Sci-Fi'),
(123, 'Shang-Chi and the Legend of the Ten Rings', 'Action'),
(124, 'The Matrix Resurrections', 'Sci-Fi'),
(125, 'Black Widow', 'Action'),
(126, 'The Suicide Squad', 'Action'),
(127, 'Luca', 'Animation'),
(128, 'Free Guy', 'Comedy'),
(129, 'Space Jam: A New Legacy', 'Animation'),
(130, 'Jungle Cruise', 'Adventure'),
(131, 'The Green Knight', 'Fantasy'),
(132, 'Old', 'Thriller'),
(133, 'Candyman', 'Horror'),
(134, 'Venom: Let There Be Carnage', 'Action'),
(135, 'No Time to Die', 'Action'),
(136, 'Eternals', 'Action'),
(137, 'West Side Story', 'Musical'),
(138, 'Last Night in Soho', 'Thriller'),
(139, 'King Richard', 'Biography'),
(140, 'The French Dispatch', 'Comedy'),
(141, 'Belfast', 'Drama'),
(142, 'Cyrano', 'Musical'),
(143, 'The Worst Person in the World', 'Drama'),
(144, 'Licorice Pizza', 'Comedy'),
(145, 'Spider-Man: No Way Home', 'Action'),
(146, 'The Lost Daughter', 'Drama'),
(147, 'Encanto', 'Animation'),
(148, 'Sing 2', 'Animation'),
(149, 'Ghostbusters: Afterlife', 'Comedy'),
(150, 'Nightmare Alley', 'Thriller'),
(151, 'Scream', 'Horror'),
(152, 'Top Gun: Maverick', 'Action'),
(153, 'The Batman', 'Action'),
(154, 'Doctor Strange in the Multiverse of Madness', 'Sci-Fi'),
(155, 'Uncharted', 'Action'),
(156, 'Fantastic Beasts: The Secrets of Dumbledore', 'Fantasy'),
(157, 'The Lost City', 'Adventure'),
(158, 'Everything Everywhere All at Once', 'Comedy'),
(159, 'Marry Me', 'Romance'),
(160, 'Downton Abbey: A New Era', 'Drama'),
(161, 'The Northman', 'Action'),
(162, 'The Unbearable Weight of Massive Talent', 'Comedy'),
(163, 'The King\'s Daughter', 'Fantasy'),
(164, 'The Contractor', 'Action'),
(165, 'The Tender Bar', 'Drama');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`user_id`, `movie_id`, `rating`) VALUES
(1, 1, 5.0),
(1, 2, 3.0),
(2, 1, 4.0),
(3, 3, 4.5),
(1, 1, 4.5),
(1, 2, 5.0),
(1, 3, 4.0),
(1, 4, 3.5),
(1, 5, 5.0),
(2, 1, 4.0),
(2, 6, 4.5),
(2, 7, 3.0),
(2, 8, 5.0),
(2, 9, 4.5),
(3, 3, 5.0),
(3, 4, 4.0),
(3, 10, 5.0),
(3, 11, 3.5),
(3, 12, 4.5),
(4, 2, 4.5),
(4, 5, 4.0),
(4, 6, 5.0),
(4, 13, 3.5),
(4, 14, 4.5),
(5, 7, 4.0),
(5, 8, 5.0),
(5, 9, 3.5),
(5, 10, 4.5),
(5, 11, 4.0),
(6, 1, 5.0),
(6, 3, 4.5),
(6, 4, 3.5),
(6, 12, 4.0),
(6, 15, 5.0),
(7, 2, 4.5),
(7, 5, 4.0),
(7, 9, 3.5),
(7, 13, 4.5),
(7, 14, 4.0),
(8, 6, 4.5),
(8, 7, 5.0),
(8, 8, 4.0),
(8, 10, 3.5),
(8, 15, 4.5),
(9, 1, 4.0),
(9, 2, 4.5),
(9, 3, 3.0),
(9, 5, 5.0),
(9, 9, 4.5),
(10, 6, 5.0),
(10, 7, 4.5),
(10, 8, 4.0),
(10, 11, 3.5),
(10, 12, 4.5),
(11, 1, 4.0),
(11, 3, 3.5),
(12, 2, 5.0),
(12, 3, 4.0),
(12, 4, 4.5),
(13, 1, 3.5),
(13, 5, 4.5),
(14, 6, 5.0),
(14, 7, 4.0),
(14, 8, 4.5),
(15, 1, 5.0),
(15, 3, 4.5),
(16, 2, 3.5),
(16, 5, 5.0),
(17, 8, 4.0),
(18, 9, 4.5),
(18, 10, 4.0),
(18, 11, 4.5),
(22, 17, 3.5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ulubione`
--

CREATE TABLE `ulubione` (
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulubione`
--

INSERT INTO `ulubione` (`user_id`, `movie_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(3, 5),
(4, 7),
(5, 9),
(6, 10),
(7, 11),
(8, 12),
(9, 6),
(10, 8),
(11, 1),
(12, 3),
(13, 5),
(14, 7),
(15, 9),
(16, 2),
(17, 11),
(18, 12),
(1, 3),
(1, 5),
(2, 3),
(22, 1),
(22, 3),
(22, 20),
(22, 53),
(22, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `name`) VALUES
(1, 'Uzytkownik 1'),
(2, 'Uzytkownik 2'),
(3, 'Uzytkownik 3'),
(4, 'Piotr'),
(5, 'Anna'),
(6, 'Kamil'),
(7, 'Ewa'),
(8, 'Michał'),
(9, 'Katarzyna'),
(10, 'Tomasz'),
(11, 'Magda'),
(12, 'Robert'),
(13, 'Zofia'),
(14, 'Adam'),
(15, 'Ewelina'),
(16, 'Paulina'),
(17, 'Janusz'),
(18, 'Barbara'),
(19, 'Olek'),
(20, 'Karolina'),
(21, 'Łukasz'),
(22, 'Maxim'),
(23, 'Joseph Thompson'),
(24, 'Grace Garcia'),
(25, 'Samuel Martinez'),
(26, 'Chloe Robinson'),
(27, 'David Clark'),
(28, 'Sofia Rodriguez'),
(29, 'Anthony Lewis'),
(30, 'Avery Lee'),
(31, 'Robert Walker'),
(32, 'Lily Hall'),
(33, 'Charles Allen'),
(34, 'Scarlett Young'),
(35, 'Thomas King'),
(36, 'Aria Wright'),
(37, 'Jack Scott'),
(38, 'Nora Torres'),
(39, 'Henry Nguyen'),
(40, 'Eleanor Hill'),
(41, 'Owen Flores'),
(42, 'Luna Green'),
(43, 'Alexander Adams'),
(44, 'Zoe Nelson'),
(45, 'Isaac Baker'),
(46, 'Stella Carter'),
(47, 'Eli Mitchell'),
(48, 'Maya Perez'),
(49, 'Aaron Roberts'),
(50, 'Violet Turner'),
(51, 'Nathan Phillips'),
(52, 'Hazel Campbell'),
(53, 'Carter Parker'),
(54, 'Addison Evans'),
(55, 'Ryan Edwards'),
(56, 'Lucy Edwards'),
(57, 'Luke Collins'),
(58, 'Sadie Stewart'),
(59, 'Jameson Sanchez'),
(60, 'Skylar Morris'),
(61, 'Gavin Rivera'),
(62, 'Peyton Cooper'),
(63, 'Mason Reed'),
(64, 'Natalie Cook'),
(65, 'Hunter Morgan'),
(66, 'Riley Bell'),
(67, 'Justin Murphy'),
(68, 'Claire Bailey'),
(69, 'Dylan Rivera'),
(70, 'Brooklyn Hughes'),
(71, 'Miles Ward'),
(72, 'Aurora James'),
(73, 'Chase Flores'),
(74, 'Ellie Nguyen'),
(75, 'Cooper Reyes'),
(76, 'Lila Rogers'),
(77, 'Zachary Ramirez'),
(78, 'Julia Ramirez'),
(79, 'Axel Fisher'),
(80, 'Anna Mills'),
(81, 'Silas Sanchez'),
(82, 'Alice Grant'),
(83, 'Jonathan Wood'),
(84, 'Sophie Hunter'),
(85, 'Bryson Wright'),
(86, 'Emilia Brooks'),
(87, 'Santiago Torres'),
(88, 'Rachel Hughes'),
(89, 'Jaxon Martinez'),
(90, 'Megan Price'),
(91, 'Victor Collins'),
(92, 'Clara Simmons'),
(93, 'Levi Foster'),
(94, 'Cora Wood'),
(95, 'Ian Ramirez'),
(96, 'Elena Murphy'),
(97, 'Nolan Peterson'),
(98, 'Maddox Kelly'),
(99, 'Tristan Cox'),
(100, 'Madeline Sanders'),
(101, 'Timothy Ward'),
(102, 'Jasmine Wood'),
(103, 'Vincent Lopez'),
(104, 'Vivian Mitchell'),
(105, 'Bennett Gonzalez'),
(106, 'Josephine Ramirez'),
(107, 'Mark Peterson'),
(108, 'Raelynn Ward'),
(109, 'Blaine Fisher'),
(110, 'Kaitlyn Bailey'),
(111, 'Roman Morris'),
(112, 'Isabel Rivera'),
(113, 'Malachi Murphy'),
(114, 'Vivienne Wright'),
(115, 'Wesley Reed'),
(116, 'Ariella Price'),
(117, 'Ezekiel Cook'),
(118, 'Ashley Powell'),
(119, 'Victor Stewart'),
(120, 'Liliana Bell'),
(121, 'Jeremiah Rogers'),
(122, 'Hannah Rivera'),
(123, 'Gideon Foster'),
(124, 'Skylar Green'),
(125, 'Julian Murphy'),
(126, 'Noah King'),
(127, 'Piper Lee'),
(128, 'Ryder Young'),
(129, 'Sienna Brooks'),
(130, 'Zane Nguyen'),
(131, 'Rosie Martinez'),
(132, 'Dallas Hall'),
(133, 'Elliott Torres'),
(134, 'Lydia Sanders'),
(135, 'Preston Wood'),
(136, 'Nina Martinez'),
(137, 'Emery Clark'),
(138, 'Landon Phillips'),
(139, 'Paige Davis'),
(140, 'Jonah Martinez'),
(141, 'Daphne Lee'),
(142, 'Graham Jones'),
(143, 'Victoria Anderson'),
(144, 'Jett Williams'),
(145, 'Lena Scott'),
(146, 'Aidan Parker'),
(147, 'Vivian Ramirez'),
(148, 'Blake Campbell'),
(149, 'Margaret Sanchez'),
(150, 'Kellan Johnson'),
(151, 'Ivy Martinez'),
(152, 'Finn Rivera'),
(153, 'Sadie Hall'),
(154, 'Hugo Lewis'),
(155, 'Alana Carter'),
(156, 'Luca Rogers'),
(157, 'Danielle Miller'),
(158, 'Cash Parker'),
(159, 'Diana Brown'),
(160, 'Rafael Wilson'),
(161, 'Julianna Lee'),
(162, 'Cyrus Jackson'),
(163, 'Maggie White'),
(164, 'Simon Moore'),
(165, 'Ellie Adams'),
(166, 'Eric Thompson'),
(167, 'Giana Hall'),
(168, 'Trevor Garcia'),
(169, 'Sierra Williams'),
(170, 'Bodhi Taylor'),
(171, 'Sharon Parker'),
(172, 'Alvin Lee'),
(173, 'Fiona Edwards'),
(174, 'Devin Miller'),
(175, 'Gracie Davis'),
(176, 'Jason Martinez'),
(177, 'Lola Johnson'),
(178, 'Quinn Garcia'),
(179, 'Rory Carter'),
(180, 'Nina Wilson'),
(181, 'Dante Brown'),
(182, 'Julia Hill'),
(183, 'Victor Carter'),
(184, 'Juliet Robinson'),
(185, 'Harrison Taylor'),
(186, 'Sophia Allen'),
(187, 'Theo Martinez'),
(188, 'Brielle Johnson'),
(189, 'Milo Williams'),
(190, 'Elena Walker'),
(191, 'Parker Green'),
(192, 'Summer Martinez');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indeksy dla tabeli `ulubione`
--
ALTER TABLE `ulubione`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `filmy` (`id`);

--
-- Constraints for table `ulubione`
--
ALTER TABLE `ulubione`
  ADD CONSTRAINT `ulubione_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `ulubione_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `filmy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
