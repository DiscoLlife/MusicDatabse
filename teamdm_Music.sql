-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2022 at 09:32 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamdm_Music`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `ID` int NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Band_Or_Solo` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year_Started` int UNSIGNED NOT NULL,
  `Origin_Country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Typical_Genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`ID`, `Name`, `Band_Or_Solo`, `Year_Started`, `Origin_Country`, `Typical_Genre`) VALUES
(1, 'IOSYS', 'Band', 1998, 'Japan', 'J-Pop/Video-Game'),
(2, 'Jamie Christopherson', 'Solo', 2000, 'America', 'Various/Video-Game'),
(3, 'Christopher Larkin', 'Solo', 2012, 'Australia', 'Classical/Video-Game'),
(4, 'Man On The Internet', 'Solo', 2015, 'America', 'Various/Video-Game'),
(5, 'Daft Punk', 'Band', 1993, 'France', 'Electronic'),
(6, 'Akatsuki Records', 'Band', 2012, 'Japan', 'Rock/Video-Game'),
(7, 'Dream Theater', 'Band', 1985, 'America', 'Progressive-Metal/Hard Rock'),
(8, 'Coda', 'Solo', 2001, 'Japan', 'Rock/Otacore'),
(9, 'Billy Joel', 'Solo', 1964, 'America', 'Indie/Folk/Pop'),
(10, 'Pinocchio P', 'Solo', 2009, 'Japan', 'J-Pop/Otacore'),
(11, 'Imagine Dragons', 'Band', 2008, 'America', 'Indie-Rock/Progressive'),
(12, 'Fallout Boy', 'Band', 2001, 'America', 'Indie-Rock/Progressive'),
(13, 'Dan Bull', 'Solo', 2011, 'England', 'Nerdcore-Rap'),
(14, 'Cosmo Sheldrake', 'Solo', 2014, 'England', 'Indie/Electronic/Natural'),
(15, 'Mitchie M', 'Solo', 2011, 'Japan', 'J-Pop'),
(17, 'Bon Jovi', 'Band', 1983, 'America', 'Hard-Rock'),
(18, 'Conagusuri', 'Band', 2007, 'Japan', 'Video-Game/J-Pop'),
(19, 'AC/DC', 'Band', 1973, 'America', 'Hard-Rock/Heavy-Metal'),
(20, 'King Crimson', 'Band', 1968, 'England', 'Progressive-Rock'),
(21, 'Guns n\' Roses', 'Band', 1985, 'America', 'Hard-Rock/Heavy-Metal');

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `SongID` int NOT NULL,
  `Image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArtistID` int NOT NULL,
  `Genre` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rating` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`SongID`, `Image`, `Title`, `ArtistID`, `Genre`, `Rating`) VALUES
(1, 'Image 1', 'Scarlet Police Ghetto Patrol', 1, 'J-Pop/Video-Game', 10),
(2, 'Image 2', 'Marisa Stole The Precious Thing', 1, 'J-Pop/Video-Game', 10),
(3, 'Image 3', 'Cirno\'s Perfect Math Class', 1, 'J-Pop/Video-Game', 10),
(4, 'Image 4', 'Rules Of Nature', 2, 'Rock/Video-Game', 8),
(5, 'Image 5', 'I\'m My Own Master Now', 2, 'Rock/Video-Game', 8),
(6, 'Image 6', 'A Stranger I Remain', 2, 'Rock/Video-Game', 10),
(7, 'Image 7', 'Stains Of Time', 2, 'Rock/Video-Game', 10),
(8, 'Image 8', 'Red Sun', 2, 'Rock/Video-Game', 11),
(9, 'Image 9', 'The Only Thing I\'ve Ever Known', 2, 'Rock/Video-Game', 10),
(10, 'Image 10', 'Collective Consciousness', 2, 'Rock/Video-Game', 9),
(11, 'Image 11', 'It Has To Be This Way', 2, 'Rock/Video-Game', 10),
(12, 'Image 12', 'The Hot Wind Blowing', 2, 'Rock/Video-Game', 11),
(13, 'Image 13', 'Broken Vessel', 3, 'Classical/Video-Game', 7),
(14, 'Image 14', 'City Of Tears', 3, 'Classical/Video-Game', 11),
(15, 'Image 15', 'Dirtmouth', 3, 'Classical/Video-Game', 10),
(16, 'Image 16', 'Dung Defender', 3, 'Classical/Video-Game', 10),
(17, 'Image 17', 'False Knight', 3, 'Classical/Video-Game', 8),
(18, 'Image 18', 'Greenpath', 3, 'Classical/Video-Game', 10),
(19, 'Image 19', 'Hive Knight', 3, 'Classical/Video-Game', 10),
(20, 'Image 20', 'Hollow Knight', 3, 'Classical/Video-Game', 10),
(21, 'Image 21', 'Hornet', 3, 'Classical/Video-Game', 10),
(22, 'Image 22', 'Mantis Lords', 3, 'Classical/Video-Game', 10),
(23, 'Image 23', 'Nightmare King', 3, 'Classical/Video-Game', 10),
(24, 'Image 24', 'Radiance', 3, 'Classical/Video-Game', 9),
(25, 'Image 25', 'Sealed Vessel', 3, 'Classical/Video-Game', 10),
(26, 'Image 26', 'Around The World', 5, 'Electronic', 10),
(27, 'Image 27', 'Get Lucky', 5, 'Electronic', 9),
(28, 'Image 28', 'Harder, Better, Stronger, Faster', 5, 'Electronic', 9),
(29, 'Image 29', 'One More Time', 5, 'Electronic', 8),
(30, '', 'Yamuyamuyami', 6, 'Rock/Video-Game', 9),
(31, '', 'Shout it out loud', 6, 'Rock/Video-Game', 9),
(32, '', 'Reverse rebirth trigger', 6, 'Rock/Video-Game', 10),
(33, '', 'OMEN', 6, 'Rock/Video-Game', 8),
(34, '', 'Money Money', 6, 'Rock/Video-Game', 9),
(35, '', 'HANIPAGANDA', 6, 'Rock/Video-Game', 9),
(36, '', 'KILLLOVE FIREPROOF', 6, 'Rock/Video-Game', 10),
(37, '', 'HELLOHELL', 6, 'Rock/Video-Game', 9),
(38, '', 'VENTEN', 6, 'Rock/Video-Game', 10),
(39, '', 'Co~nsultant', 6, 'Rock/Video-Game', 10),
(40, '', 'Necromantic', 6, 'Rock/Video-Game', 11),
(41, '', 'Panic Attack', 7, 'Progressive-Metal', 11),
(42, '', 'Octavarium', 7, 'Alternative/Indie', 10),
(43, '', 'Never Enough', 7, 'Progressive-Metal', 10),
(44, '', 'Pull Me Under', 7, 'Progressive-Metal', 10),
(45, '', 'These Walls', 7, 'Indie/Rock', 9),
(46, '', 'Bloody Stream', 8, 'J-Pop/Otacore', 11),
(47, '', 'Sono Chi No Kioku', 8, 'J-Pop/Otacore', 9),
(48, '', 'Crazy My Beat', 8, 'J-Pop/Otacore', 10),
(49, '', 'Crazy Noisy Bizzare Town', 8, 'J-Pop/Otacore', 11),
(50, '', 'Great Days', 8, 'J-Pop/Otacore', 10),
(51, '', 'Fighting Gold', 8, 'J-Pop/Otacore', 10),
(52, '', 'We Didn\'t Start The Fire', 9, 'Pop/Indie', 10),
(53, '', 'Piano Man', 9, 'Indie/Folk', 11),
(54, '', 'Big Shot', 9, 'Indie/Pop', 10),
(55, '', 'It\'s Still Rock And Roll To Me', 9, 'Pop/Folk', 9),
(56, '', 'The Longest Time', 9, 'Indie/Pop', 9),
(57, '', 'Pressure', 9, 'Indie/Pop', 10),
(58, '', 'Uptown Girl', 9, 'Folk/Pop', 10),
(59, '', 'All i need is the things i like', 10, 'J-Pop/Otacore', 8),
(60, '', 'Magical girl and chocolate', 10, 'J-Pop/Otacore', 9),
(61, '', 'Beutiful Fiction', 10, 'J-Pop/Otacore', 8),
(62, '', 'Motivation is dead', 10, 'J-Pop/Otacore', 10),
(63, '', 'Believer', 11, 'Indie-Rock/Progressive', 10),
(64, '', 'Radioactive', 11, 'Indie-Rock/Progressive', 10),
(65, '', 'Demons', 11, 'Indie-Rock/Progressive', 10),
(66, '', 'Monster', 11, 'Indie-Rock/Progressive', 10),
(67, '', 'Natural', 11, 'Indie-Rock/Progressive', 10),
(68, '', 'Enemy', 11, 'Indie-Rock/Progressive', 10),
(69, '', 'Thunder', 11, 'Indie-Rock/Progressive', 7),
(70, '', 'Machine', 11, 'Indie-Rock/Progressive', 10),
(71, '', 'Chirumiru', 18, 'J-Pop/Video-Games', 11),
(72, '', 'Kapanet Nitori', 18, 'J-Pop/Video-Games', 9),
(73, '', 'Centuries', 12, 'Indie-Rock/Progressive', 10),
(74, '', 'Immortals', 12, 'Indie-Rock/Progressive', 10),
(75, '', 'Young Volcanoes', 12, 'Progressive/Soul/Indie', 9),
(76, '', 'Rat A Tat', 12, 'Indie-Rock/Progressive', 10),
(77, '', 'Death Valley', 12, 'Indie-Rock/Progressive', 10),
(78, '', 'American Beauty/American Psycho', 12, 'Indie-Rock/Progressive', 9),
(79, '', 'Mai Mai Mai', 15, 'J-Pop', 9),
(80, '', 'Viva Happy', 15, 'J-Pop', 10),
(81, '', 'Ai Dee', 15, 'J-Pop', 9),
(82, '', 'Ohedo Julia Knight', 15, 'J-Pop', 10),
(83, '', 'Seraphim On The Ring', 15, 'J-Pop', 10),
(84, '', 'Civilisation', 13, 'Nerdcore-Rap', 11),
(85, '', 'Humankind', 13, 'Nerdcore-Rap', 10),
(86, '', 'World of Warships', 13, 'Nerdcore-Rap', 10),
(87, '', 'I\'ve Got a Bone', 13, 'Nerdcore-Rap', 10),
(88, '', 'Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom', 13, 'Nerdcore-Rap', 8),
(89, '', 'The Arch Illager', 13, 'Nerdcore-Rap', 9),
(90, '', 'Nether Zombie Pigman', 13, 'Nerdcore-Rap', 10),
(91, '', 'The Ballad of Bob The Snowman', 13, 'Nerdcore-Rap', 8),
(92, '', 'Enderman', 13, 'Nerdcore-Rap', 10),
(93, '', 'Neko Miko Reimu', 1, 'J-Pop/Video-Games', 11),
(94, '', 'Come Along', 14, 'Indie/Electronic/Natural', 10),
(95, '', 'Solar', 14, 'Indie/Electronic/Natural', 10),
(96, '', 'Solar Waltz', 14, 'Indie/Electronic/Natural', 10),
(97, '', 'The Woods', 14, 'Indie/Electronic/Natural', 9),
(98, '', 'The Moss', 14, 'Indie/Electronic/Natural', 11),
(99, '', 'Mushi Miko ~Nya~ -Happy Happy-', 1, 'J-Pop/Video-Games', 11),
(100, '', 'Hero Wan Wan', 1, 'J-Pop/Video-Games', 10),
(101, '', 'Absolutely-will-kill Chang\'e man', 1, 'J-Pop/Video-Games', 10),
(102, '', 'Club Ibuki in break all', 1, 'J-Pop/Video-Games', 11),
(103, '', 'Always', 17, 'Hard-Rock', 9),
(104, '', 'Livin On A Prayer', 17, 'Hard-Rock', 11),
(105, '', 'You Give love A Bad Name', 17, 'Hard-Rock', 11),
(106, '', 'It\'s My Life', 17, 'Hard-Rock', 9),
(107, '', 'Wanted Dead Or Alive', 17, 'Hard-Rock', 10),
(108, '', 'Back in Black', 19, 'Hard-Rock/Heavy-Metal', 10),
(109, '', 'Ballbreaker', 19, 'Hard-Rock/Heavy-Metal', 7),
(110, '', 'Dirty Deeds Done Dirt Cheap', 19, 'Hard-Rock/Heavy-Metal', 11),
(111, '', 'High Voltage', 19, 'Hard-Rock/Heavy-Metal', 9),
(112, '', 'Highway to Hell', 19, 'Hard-Rock/Heavy-Metal', 10),
(113, '', 'Let There Be Rock', 19, 'Hard-Rock/Heavy-Metal', 10),
(114, '', 'Rock N Roll Train', 19, 'Hard-Rock/Heavy-Metal', 10),
(115, '', 'Thunderstruck', 19, 'Hard-Rock/Heavy-Metal', 11),
(116, '', 'TNT', 19, 'Hard-Rock/Heavy-Metal', 10),
(117, '', 'Wah Wah world', 15, 'J-Pop', 10),
(118, '', 'Agepoyo TONIGHT', 1, 'J-Pop/Video-Games', 11),
(119, '', 'Midnight lightning bolt', 1, 'J-Pop/Video-Games', 8),
(120, '', 'All is fair in love and Alimari', 1, 'J-Pop/Video-Games', 10),
(121, '', '21st Century Schizoid Man', 20, 'Progressive-Rock', 10),
(122, '', 'The Court Of The Crimson King', 20, 'Progressive-Rock', 10),
(123, '', 'Epitaph', 20, 'Progressive-Rock', 11),
(124, '', 'March For No Reason', 20, 'Progressive/Soul', 10),
(125, '', 'I Talk To The Wind', 20, 'Progressive/Soul', 11),
(126, '', 'Endless tewi park', 1, 'J-Pop/Video-Games', 10),
(127, '', 'Civil War', 21, 'Hard-Rock/Heavy-Metal', 10),
(128, '', 'November Rain', 21, 'Hard-Rock/Heavy-Metal', 10),
(129, '', 'Paradise City', 21, 'Hard-Rock/Heavy-Metal', 9),
(130, '', 'Sweet Child Of Mine', 21, 'Hard-Rock/Heavy-Metal', 11),
(131, '', 'Welcome To The Jungle', 21, 'Hard-Rock/Heavy-Metal', 10),
(132, '', 'Heart koishi -Eyes-', 6, 'J-Pop/Video-Games', 9),
(133, '', 'BloodDark', 6, 'J-Pop/Video-Games', 10),
(134, '', 'KARMANTIONS', 6, 'J-Pop/Video-Games', 11),
(135, '', 'Dig It Dig Out', 6, 'J-Pop/Video-Games', 10),
(136, '', 'WARNING×WARNING×WARNING', 6, 'J-Pop/Video-Games', 11),
(137, '', 'Pepsiman Theme with Lyrics', 4, 'Video-Game', 11),
(138, '', 'Zero 2 With Lyrics', 4, 'Video-Game', 11),
(139, '', 'Legendary Bytes: Groudon Vs Kyogre', 4, 'Video-Game', 9),
(140, '', 'Pokemon Bytes: Vs N', 4, 'Video-Game', 9),
(141, '', 'Grimm With Lyrics', 4, 'Video-Game', 10),
(142, '', 'Megalovania With Lyrics', 4, 'Video-Game', 10),
(143, '', 'Wrongalovania', 4, 'Video-Game', 12),
(144, '', 'Legendary Bytes: Vs Mewtwo', 4, 'Video-Game', 8),
(145, '', 'Your Contract Has Expired With Lyrics', 4, 'Video-Game', 10),
(146, '', 'Vs Marx With Lyrics', 4, 'Video-Game', 9),
(147, '', 'In The Final With Lyrics', 4, 'Video-Game', 10),
(148, '', 'Gangplank Galleon With Lyrics', 4, 'Video-Game', 11),
(149, '', 'Floral Fury With Lyrics', 4, 'Video-Game', 9),
(150, '', 'Vs Piers With Lyrics', 4, 'Video-Game', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
  ADD PRIMARY KEY (`SongID`),
  ADD KEY `ArtistID` (`ArtistID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artists`
--
ALTER TABLE `Artists`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
  MODIFY `SongID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
