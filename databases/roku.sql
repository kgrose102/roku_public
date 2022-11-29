-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2022 at 08:01 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

DROP TABLE IF EXISTS `audio`;
CREATE TABLE IF NOT EXISTS `audio` (
  `audio_id` int(3) NOT NULL AUTO_INCREMENT,
  `audio_cover` varchar(30) NOT NULL,
  `audio_title` varchar(30) NOT NULL,
  `audio_year` varchar(4) NOT NULL,
  `audio_runtime` varchar(5) NOT NULL,
  `audio_artist` varchar(30) NOT NULL,
  `audio_sound` varchar(30) NOT NULL,
  `audio_permission` int(1) NOT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`audio_id`, `audio_cover`, `audio_title`, `audio_year`, `audio_runtime`, `audio_artist`, `audio_sound`, `audio_permission`) VALUES
(1, 'lilyallen.jpg', 'Fuck You', '2009', '3:43', 'Lily Allen', 'lilyallen.mp3', 3),
(2, 'sameteam.jpg', 'Same Team', '2022', '3:31', 'Alice Merton', 'sameteam.mp3', 1),
(3, 'seashanty.jpg', 'The Last Sea Shanty', '2016', '3:47', 'Derina Harvey Band', 'seashanty.mp3', 1),
(4, 'whatawaste.jpg', 'What A Waste', '2021', '3:13', 'GRACEY', 'whatawaste.mp3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `roku_flashback`
--

DROP TABLE IF EXISTS `roku_flashback`;
CREATE TABLE IF NOT EXISTS `roku_flashback` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  `movies_permissions` int(1) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roku_flashback`
--

INSERT INTO `roku_flashback` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`, `movies_permissions`) VALUES
(1, 'guardians2.jpg', 'Guardians of the Galaxy Vol. 2', '2017', '2h 16m', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill&rsquo;s true parentage.', 'Guardians2.mp4', 'May 5, 2017', 0),
(2, 'dunkirk.jpg', 'Dunkirk', '2017', '1h 46m', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', 'Dunkirk.mp4', 'July 21, 2017', 3),
(3, 'logan.jpg', 'Logan', '2017', '2h 17m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan&rsquo;s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', 'Logan.mp4', 'March 3,2017', 3),
(4, 'okja.jpg', 'Okja', '2017', '2h', ' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ', 'Okja.mp4', 'June 28,2017', 0),
(5, 'beauty.jpg', 'Beauty and the Beast', '2017', '2h 9min', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'Beauty.mp4', 'March 17, 2017', 0),
(6, 'hacksaw.jpg', 'Hacksaw Ridge', '2016', '2h 19m', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 'Hacksaw.mp4', 'November 4, 2016', 3),
(7, 'deadpool.jpg', 'Deadpool', '2016', '1h 48m', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'Deadpool.mp4', 'Febuary 12, 2016', 3),
(8, 'arrival.jpg', 'Arrival', '2016', '1h 56m', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 'Arrival.mp4', 'November 11, 2016', 3),
(9, 'eddie.jpg', 'Eddie the Eagle', '2016', '1h 46m', 'The story of Eddie Edwards, the notoriously tenacious British underdog ski jumper who charmed the world at the 1988 Winter Olympics.', 'Eddie.mp4', 'Febuary 26, 2016', 2),
(10, 'trolls.jpg', 'Trolls', '2016', '1h 32m', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.', 'Trolls.mp4', 'November 4, 2016', 0),
(11, 'revenant.jpg', 'The Revenant', '2015', '2h 36m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', 'Revenant.mp4', 'January 8, 2015', 3),
(12, 'brooklyn.jpg', 'Brooklyn', '2015', '1h 57m', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', 'Brooklyn.mp4', 'November 25, 2015', 2),
(13, 'walk.jpg', 'The Walk', '2015', '2h 3m', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', 'Walk.mp4', 'October 9, 2015', 2),
(14, 'colonia.jpg', 'Colonia', '2015', '1h 46m', 'A young woman&rsquo;s desperate search for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.', 'Colonia.mp4', 'April 15, 2015', 3),
(15, 'force.jpg', 'Star Wars: The Force Awakens', '2015', '2h 16m', 'Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.', 'Force.mp4', 'December 18, 2015', 2),
(16, 'whiplash.jpg', 'Whiplash', '2014', '1h 47m', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'Whiplash.mp4', 'October 15, 2014', 3),
(17, 'guardians.jpg', 'Guardians of the Galaxy', '2014', '2h 1m', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 'Guardians.mp4', 'August 1, 2014', 0),
(18, 'donjon.jpg', 'Don Jon', '2013', '1h 30m', 'A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.', 'Donjon.mp4', 'September 27, 2013', 3),
(19, 'gravity.jpg', 'Gravity', '2013', '1h 31m', 'Two astronauts work together to survive after an accident which leaves them alone in space.', 'Gravity.mp4', 'October 4, 2013', 3),
(20, 'pi.jpg', 'Life of Pi', '2012', '2h 7m', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 'Pi.mp4', 'November 21, 2012', 2),
(21, 'silver.jpg', 'Silver Linings Playbook', '2012', '2h 2m', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 'Silver.mp4', 'December 25, 2012', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
CREATE TABLE IF NOT EXISTS `tv_shows` (
  `shows_id` int(2) NOT NULL AUTO_INCREMENT,
  `shows_cover` varchar(20) NOT NULL,
  `shows_title` varchar(20) NOT NULL,
  `shows_year` int(4) NOT NULL,
  `shows_seasons` int(3) NOT NULL,
  `shows_storyline` varchar(300) NOT NULL,
  `shows_trailer` varchar(30) NOT NULL,
  `shows_permissions` int(1) NOT NULL,
  PRIMARY KEY (`shows_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`shows_id`, `shows_cover`, `shows_title`, `shows_year`, `shows_seasons`, `shows_storyline`, `shows_trailer`, `shows_permissions`) VALUES
(1, 'babyshark.jpg', 'Baby Shark\'s Show', 2021, 1, 'Baby Shark and his best friend, William, embark on fun-filled adventures in their community of Carnivore Cove.', 'babyshark.mp4', 0),
(2, 'fringe.jpg', 'Fringe', 2008, 5, 'FBI Special Agent Olivia Dunham is assigned to the bureau\'s Fringe Division, in which she investigates unusual crimes and occurrences.', 'fringe.mp4', 2),
(3, 'russiandoll.jpg', 'Russian Doll', 2019, 2, 'Nadia gets caught in a mysterious loop as she repeatedly attends the same event and dies at the end of the night each time -- only to awaken the next day unharmed as if nothing had happened', 'russiandoll.mp4', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
