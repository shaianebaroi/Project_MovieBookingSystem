-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 05:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theatre`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `ticket_id` varchar(30) DEFAULT NULL,
  `theatre_name` varchar(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  `showtime_ID` int(11) NOT NULL,
  `ticket_quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `ticket_date` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `ticket_id`, `theatre_name`, `u_id`, `showtime_ID`, `ticket_quantity`, `total_amount`, `ticket_date`, `date`) VALUES
(1, 'TKID4809676', 'A', 1, 1, 2, 400, 'Sunday 24th, April 2022', '2022-04-24'),
(2, 'TKID3692696', 'A', 1, 2, 2, 400, 'Sunday 24th, April 2022', '2022-04-24'),
(3, 'TKID8989783', 'A', 1, 2, 2, 400, 'Sunday 24th, April 2022', '2022-04-24'),
(6, 'TKID7521976', 'A', 1, 78, 1, 300, 'Sunday 24th, April 2022', '2022-04-24'),
(7, 'TKID3144014', 'A', 1, 15, 3, 900, 'Sunday 24th, April 2022', '2022-04-25'),
(8, 'TKID1665276', 'A', 18, 37, 2, 1000, 'Sunday 24th, April 2022', '2022-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `name` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`name`, `city`, `street`, `email`, `phone`) VALUES
('A', 'Dhaka', '6, PC Culture Housing Society', 'info@branch1.com', '01955555551'),
('B', 'Dhaka', 'Kemal Ataturk Avenue', 'info@branch2.com', '01955555552'),
('C', 'Dhaka', 'Shagupta-Mirpur Road', 'info@branch3.com', '01955555553');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `points`, `description`) VALUES
(1, 200, '2 Free Popcorns'),
(2, 400, '2 Free Popcorns and 2 Free Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `hall_no` int(11) NOT NULL,
  `hall_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`hall_no`, `hall_type`) VALUES
(1, 'Regular'),
(2, 'Regular'),
(3, 'Regular'),
(4, 'Premium'),
(5, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) DEFAULT NULL,
  `cast` varchar(500) DEFAULT NULL,
  `plot` varchar(1000) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `trailer` varchar(200) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `poster` varchar(200) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `cast`, `plot`, `genre`, `category`, `trailer`, `language`, `status`, `imdb_rating`, `poster`, `director`, `release_date`, `duration`) VALUES
(1, 'Mukhosh ', 'Mosharraf Karim, Pori Moni, Omar Faruk Nayon', 'A mystery thriller based on the director Iftekhar Shuvo\'s previously published novel \"Page No 44\".', 'Drama', '2D', 'https://www.youtube.com/watch?v=Y_btpUtQm0o', 'Bengali', 0, 8.7, 'posters/mukhosh.jpg', 'Efthakhar Suvo', '2022-03-04', '1h 57m'),
(2, 'The Batman', 'Robert Pattinson, Paul Dano', 'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.', 'Action, Adventure', '2D/3D', 'https://www.youtube.com/watch?v=zL4LFSbFPcw', 'English', 0, 8.3, 'posters/batman.jpg', 'Matt Reeves', '2022-03-04', '2h 56m'),
(3, 'Morbius', 'Jared Leto,Matt Smith,Adria Arjona,Jared Harris,Al Madrigal,Tyrese Gibson', 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.', 'Action, Drama, Adventure', '2D/3D', 'https://www.youtube.com/watch?v=oZ6iiRrz1SY', 'English', 0, 5.2, 'posters/morbius.jpg', 'Daniel Espinosa', '2022-04-01', '1h 44m'),
(4, 'Gunin', 'Shilpi Sharkar Apu,Azad Abul Kalam,Pori Moni', 'The story revolves around village exorcist Rojob Ali Gunin who possessed a vast spiritual power. The film follows the aftermath of Gunin\'s mysterious death.', 'Drama', '2D', 'https://www.youtube.com/watch?v=bjur51mFoWg', 'Bengali', 0, 6.6, 'posters/gunin1.jpg', 'Giasuddin Selim', '2022-03-11', '1h 58m'),
(5, 'Fantastic Beasts: The Secrets of Dumbledore', 'Eddie Redmayne,Jude Law,Ezra Miller,Dan Fogler,Alison Sudol,Callum Turner,Jessica Williams,Katherine Waterston,Mads Mikkelsen', 'Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald\'s growing legion of followers.', 'Fantasy,Adventure', '2D/3D', 'https://www.youtube.com/watch?v=DGhq0Kx8dzQ', 'English', 0, 6.6, 'posters/beasts.jpg', 'David Yates', '2022-04-08', '2h 23m'),
(6, 'The Lost City', 'Sandra Bullock,Brad Pitt,Channing Tatum,Daniel Radcliffe,Oscar Nunez,Patti Harrison', 'Reclusive author Loretta Sage writes about exotic places in her popular adventure novels that feature a handsome cover model named Alan. While on tour promoting her new book with Alan, Loretta gets kidnapped by an eccentric billionaire who hopes she can lead him to an ancient city\'s lost treasure from her latest story. Determined to prove he can be a hero in real life and not just on the pages of her books, Alan sets off to rescue her.', 'Action,Adventure,Comedy', '3D', 'https://www.youtube.com/watch?v=nfKO9rYDmE8', 'English', 0, 6.6, 'posters/lostcity.jpg', ' Aaron Nee', '2022-03-25', '1h 52m'),
(7, 'Doctor Strange In The Multiverse Of Madness', 'Benedict Cumberbatch,Elizabeth Olsen,Chiwetel Ejiofor,Benedict Wong,Xochitl Gomez,Michael Stuhlbarg,Rachel McAdams', 'Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions of himself, whose threat to humanity is too great for the combined forces of Strange, Wong, and Wanda Maximoff.', 'Action,Adventure,Fantasy', '2D/3D', 'https://www.youtube.com/watch?v=aWzlQ2N6qqg', 'English', 1, 0, 'posters/dr_st_mom.jpg', 'Sam Raimi', '2022-05-06', '2h 6m'),
(8, 'Black Adam', 'Dwayne Johnson, Noah Centineo, Aldis Hodge, Sarah Shahi, Quintessa Swindell, Pierce Brosnan', 'Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods-and imprisoned just as quickly-Black Adam (Johnson) is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.', 'Action,Adventure,Sci-Fi', '2D', 'https://www.youtube.com/watch?v=FPxheU-E0Tg', 'English', 1, 0, 'posters/black_adam.jpg', 'Jaume Collet-Serra', '2022-10-21', NULL),
(9, 'DC League of Super-Pets', 'Dwayne Johnson,Keanu Reeves,Kevin Hart,John Krasinski,Kevin Conroy,\r\nBen Schwartz,Kate McKinnon,Diego Luna,Marc Maron,Vanessa Bayer,Thomas Middleditch,Natasha Lyonne', 'Krypto the Super-Dog and Superman are inseparable best friends, sharing the same superpowers and fighting crime side by side in Metropolis. However, when the Man of Steel and the rest of the Justice League are kidnapped, Krypto must convince a ragtag group of animals to master their own newfound powers for a rescue mission.', 'Adventure/Action', '3D', 'https://www.youtube.com/watch?v=1jkw2JPCl18', 'English', 1, 0, 'posters/superpets.jpg', 'Jared Stern', '2022-07-29', NULL),
(10, 'Ambulance', 'Jake Gyllenhaal,Eiza González,Yahya Abdul-Mateen II,Kayli Tran,Devan Long,Garret Dillahunt,Moses Ingram,Olivia Stambouliah', 'Needing money to cover his wife\'s medical bills, a decorated veteran teams up with his adoptive brother to steal $32 million from a Los Angeles bank. However, when their getaway goes spectacularly wrong, the desperate thieves hijack an ambulance that is carrying a severely wounded cop and an EMT worker. Caught in a high-speed chase, the two siblings must figure out a way to outrun the law while keeping their hostages alive.', 'Action,Crime,Drama', '2D', 'https://www.youtube.com/watch?v=7NU-STboFeI', 'English', 1, 6.5, 'posters/ambulance.jpg', 'Michael Bay', '2022-04-08', '2h 16m');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price_id` int(11) NOT NULL,
  `movie_type` varchar(2) DEFAULT NULL,
  `hall_no` int(11) DEFAULT NULL,
  `hall_type` varchar(30) DEFAULT NULL,
  `ticket_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`price_id`, `movie_type`, `hall_no`, `hall_type`, `ticket_price`) VALUES
(1, '2D', 1, 'Regular', 300),
(2, '2D', 2, 'Regular', 300),
(3, '2D', 3, 'Regular', 300),
(4, '3D', 4, 'Premium', 500),
(5, '3D', 5, 'Premium', 500);

-- --------------------------------------------------------

--
-- Table structure for table `redeem`
--

CREATE TABLE `redeem` (
  `coupon_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `redeem`
--

INSERT INTO `redeem` (`coupon_id`, `u_id`, `description`) VALUES
(1, 1, '2 Free Popcorns');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `shows_ID` int(11) NOT NULL,
  `start_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`shows_ID`, `start_time`) VALUES
(1, '11:00:00'),
(2, '15:00:00'),
(3, '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `showtime_ID` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `theatre` varchar(100) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `shows_ID` int(11) NOT NULL,
  `movie_type` varchar(100) NOT NULL,
  `seats` int(11) NOT NULL,
  `hall_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`showtime_ID`, `date`, `theatre`, `movie_id`, `shows_ID`, `movie_type`, `seats`, `hall_no`) VALUES
(2, 'Sunday 24th, April 2022', 'A', 1, 3, '2D', 200, 1),
(3, 'Monday 25th, April 2022', 'A', 1, 1, '2D', 200, 1),
(4, 'Monday 25th, April 2022', 'A', 1, 3, '2D', 200, 1),
(5, 'Tuesday 26th, April 2022', 'A', 1, 1, '2D', 200, 1),
(6, 'Tuesday 26th, April 2022', 'A', 1, 3, '2D', 200, 1),
(7, 'Wednesday 27th, April 2022', 'A', 1, 1, '2D', 200, 1),
(8, 'Wednesday 27th, April 2022', 'A', 1, 3, '2D', 200, 1),
(9, 'Thursday 28th, April 2022', 'A', 1, 1, '2D', 200, 1),
(10, 'Thursday 28th, April 2022', 'A', 1, 3, '2D', 200, 1),
(11, 'Friday 29th, April 2022', 'A', 1, 1, '2D', 200, 1),
(12, 'Friday 29th, April 2022', 'A', 1, 3, '2D', 200, 1),
(13, 'Saturday 30th, April 2022', 'A', 1, 1, '2D', 200, 1),
(14, 'Saturday 30th, April 2022', 'A', 1, 3, '2D', 200, 1),
(15, 'Sunday 24th, April 2022', 'A', 2, 1, '2D', 197, 2),
(16, 'Sunday 24th, April 2022', 'A', 2, 2, '3D', 200, 5),
(17, 'Sunday 24th, April 2022', 'A', 2, 3, '2D', 200, 2),
(18, 'Monday 25th, April 2022', 'A', 2, 1, '2D', 200, 2),
(19, 'Monday 25th, April 2022', 'A', 2, 2, '3D', 200, 5),
(20, 'Monday 25th, April 2022', 'A', 2, 3, '2D', 200, 2),
(21, 'Tuesday 26th, April 2022', 'A', 2, 1, '2D', 200, 2),
(22, 'Tuesday 26th, April 2022', 'A', 2, 2, '3D', 200, 5),
(23, 'Tuesday 26th, April 2022', 'A', 2, 3, '2D', 200, 2),
(24, 'Wednesday 27th, April 2022', 'A', 2, 1, '2D', 200, 2),
(25, 'Wednesday 27th, April 2022', 'A', 2, 2, '3D', 200, 5),
(26, 'Wednesday 27th, April 2022', 'A', 2, 3, '2D', 200, 2),
(27, 'Thursday 28th, April 2022', 'A', 2, 1, '2D', 200, 2),
(28, 'Thursday 28th, April 2022', 'A', 2, 2, '3D', 200, 5),
(29, 'Thursday 28th, April 2022', 'A', 2, 3, '2D', 200, 2),
(30, 'Friday 29th, April 2022', 'A', 2, 1, '2D', 200, 2),
(31, 'Friday 29th, April 2022', 'A', 2, 2, '3D', 200, 5),
(32, 'Friday 29th, April 2022', 'A', 2, 3, '2D', 200, 2),
(33, 'Saturday 30th, April 2022', 'A', 2, 1, '2D', 200, 2),
(34, 'Saturday 30th, April 2022', 'A', 2, 2, '3D', 200, 5),
(35, 'Saturday 30th, April 2022', 'A', 2, 3, '2D', 200, 2),
(36, 'Sunday 24th, April 2022', 'A', 3, 1, '2D', 200, 3),
(37, 'Sunday 24th, April 2022', 'A', 3, 2, '3D', 198, 4),
(38, 'Sunday 24th, April 2022', 'A', 3, 3, '2D', 200, 3),
(39, 'Monday 25th, April 2022', 'A', 3, 1, '2D', 200, 3),
(40, 'Monday 25th, April 2022', 'A', 3, 2, '3D', 200, 4),
(41, 'Monday 25th, April 2022', 'A', 3, 3, '2D', 200, 3),
(42, 'Tuesday 26th, April 2022', 'A', 3, 1, '2D', 200, 3),
(43, 'Tuesday 26th, April 2022', 'A', 3, 2, '3D', 200, 4),
(44, 'Tuesday 26th, April 2022', 'A', 3, 3, '2D', 200, 3),
(45, 'Wednesday 27th, April 2022', 'A', 3, 1, '2D', 200, 3),
(46, 'Wednesday 27th, April 2022', 'A', 3, 2, '3D', 200, 4),
(47, 'Wednesday 27th, April 2022', 'A', 3, 3, '2D', 200, 3),
(48, 'Thursday 28th, April 2022', 'A', 3, 1, '2D', 200, 3),
(49, 'Thursday 28th, April 2022', 'A', 3, 2, '3D', 200, 4),
(50, 'Thursday 28th, April 2022', 'A', 3, 3, '2D', 200, 3),
(51, 'Friday 29th, April 2022', 'A', 3, 1, '2D', 200, 3),
(52, 'Friday 29th, April 2022', 'A', 3, 2, '3D', 200, 4),
(53, 'Friday 29th, April 2022', 'A', 3, 3, '2D', 200, 3),
(54, 'Saturday 30th, April 2022', 'A', 3, 1, '2D', 200, 3),
(55, 'Saturday 30th, April 2022', 'A', 3, 2, '3D', 200, 4),
(56, 'Saturday 30th, April 2022', 'A', 3, 3, '2D', 200, 3),
(57, 'Sunday 24th, April 2022', 'A', 4, 2, '2D', 200, 1),
(58, 'Monday 25th, April 2022', 'A', 4, 2, '2D', 200, 1),
(59, 'Tuesday 26th, April 2022', 'A', 4, 2, '2D', 200, 1),
(60, 'Wednesday 27th, April 2022', 'A', 4, 2, '2D', 200, 1),
(61, 'Thursday 28th, April 2022', 'A', 4, 2, '2D', 200, 1),
(62, 'Friday 29th, April 2022', 'A', 4, 2, '2D', 200, 1),
(63, 'Saturday 30th, April 2022', 'A', 4, 2, '2D', 200, 1),
(64, 'Sunday 24th, April 2022', 'A', 5, 2, '2D', 200, 2),
(65, 'Sunday 24th, April 2022', 'A', 5, 3, '3D', 200, 4),
(66, 'Monday 25th, April 2022', 'A', 5, 2, '2D', 200, 2),
(67, 'Monday 25th, April 2022', 'A', 5, 3, '3D', 200, 4),
(68, 'Tuesday 26th, April 2022', 'A', 5, 2, '2D', 200, 2),
(69, 'Tuesday 26th, April 2022', 'A', 5, 3, '3D', 200, 4),
(70, 'Wednesday 27th, April 2022', 'A', 5, 2, '2D', 200, 2),
(71, 'Wednesday 27th, April 2022', 'A', 5, 3, '3D', 200, 4),
(72, 'Thursday 28th, April 2022', 'A', 5, 2, '2D', 200, 2),
(73, 'Thursday 28th, April 2022', 'A', 5, 3, '3D', 200, 4),
(74, 'Friday 29th, April 2022', 'A', 5, 2, '2D', 200, 2),
(75, 'Friday 29th, April 2022', 'A', 5, 3, '3D', 200, 4),
(76, 'Saturday 30th, April 2022', 'A', 5, 2, '2D', 200, 2),
(77, 'Saturday 30th, April 2022', 'A', 5, 3, '3D', 200, 4),
(78, 'Sunday 24th, April 2022', 'A', 6, 2, '2D', 200, 3),
(79, 'Monday 25th, April 2022', 'A', 6, 2, '2D', 200, 3),
(80, 'Tuesday 26th, April 2022', 'A', 6, 2, '2D', 200, 3),
(81, 'Wednesday 27th, April 2022', 'A', 6, 2, '2D', 200, 3),
(82, 'Thursday 28th, April 2022', 'A', 6, 2, '2D', 200, 3),
(83, 'Friday 29th, April 2022', 'A', 6, 2, '2D', 200, 3),
(84, 'Saturday 30th, April 2022', 'A', 6, 2, '2D', 200, 3),
(85, 'Sunday 24th, April 2022', 'B', 1, 1, '2D', 200, 1),
(86, 'Sunday 24th, April 2022', 'B', 1, 3, '2D', 200, 1),
(87, 'Monday 25th, April 2022', 'B', 1, 1, '2D', 200, 1),
(88, 'Monday 25th, April 2022', 'B', 1, 3, '2D', 200, 1),
(89, 'Tuesday 26th, April 2022', 'B', 1, 1, '2D', 200, 1),
(90, 'Tuesday 26th, April 2022', 'B', 1, 3, '2D', 200, 1),
(91, 'Wednesday 27th, April 2022', 'B', 1, 1, '2D', 200, 1),
(92, 'Wednesday 27th, April 2022', 'B', 1, 3, '2D', 200, 1),
(93, 'Thursday 28th, April 2022', 'B', 1, 1, '2D', 200, 1),
(94, 'Thursday 28th, April 2022', 'B', 1, 3, '2D', 200, 1),
(95, 'Friday 29th, April 2022', 'B', 1, 1, '2D', 200, 1),
(96, 'Friday 29th, April 2022', 'B', 1, 3, '2D', 200, 1),
(97, 'Saturday 30th, April 2022', 'B', 1, 1, '2D', 200, 1),
(98, 'Saturday 30th, April 2022', 'B', 1, 3, '2D', 200, 1),
(99, 'Sunday 24th, April 2022', 'B', 2, 2, '3D', 200, 5),
(100, 'Sunday 24th, April 2022', 'B', 2, 3, '2D', 200, 2),
(101, 'Monday 25th, April 2022', 'B', 2, 2, '3D', 200, 5),
(102, 'Monday 25th, April 2022', 'B', 2, 3, '2D', 200, 2),
(103, 'Tuesday 26th, April 2022', 'B', 2, 2, '3D', 200, 5),
(104, 'Tuesday 26th, April 2022', 'B', 2, 3, '2D', 200, 2),
(105, 'Wednesday 27th, April 2022', 'B', 2, 2, '3D', 200, 5),
(106, 'Wednesday 27th, April 2022', 'B', 2, 3, '2D', 200, 2),
(107, 'Thursday 28th, April 2022', 'B', 2, 2, '3D', 200, 5),
(108, 'Thursday 28th, April 2022', 'B', 2, 3, '2D', 200, 2),
(109, 'Friday 29th, April 2022', 'B', 2, 2, '3D', 200, 5),
(110, 'Friday 29th, April 2022', 'B', 2, 3, '2D', 200, 2),
(111, 'Saturday 30th, April 2022', 'B', 2, 2, '3D', 200, 5),
(112, 'Saturday 30th, April 2022', 'B', 2, 3, '2D', 200, 2),
(113, 'Sunday 24th, April 2022', 'B', 3, 1, '2D', 200, 3),
(114, 'Sunday 24th, April 2022', 'B', 3, 2, '3D', 200, 4),
(115, 'Sunday 24th, April 2022', 'B', 3, 3, '2D', 200, 3),
(116, 'Monday 25th, April 2022', 'B', 3, 1, '2D', 200, 3),
(117, 'Monday 25th, April 2022', 'B', 3, 2, '3D', 200, 4),
(118, 'Monday 25th, April 2022', 'B', 3, 3, '2D', 200, 3),
(119, 'Tuesday 26th, April 2022', 'B', 3, 1, '2D', 200, 3),
(120, 'Tuesday 26th, April 2022', 'B', 3, 2, '3D', 200, 4),
(121, 'Tuesday 26th, April 2022', 'B', 3, 3, '2D', 200, 3),
(122, 'Wednesday 27th, April 2022', 'B', 3, 1, '2D', 200, 3),
(123, 'Wednesday 27th, April 2022', 'B', 3, 2, '3D', 200, 4),
(124, 'Wednesday 27th, April 2022', 'B', 3, 3, '2D', 200, 3),
(125, 'Thursday 28th, April 2022', 'B', 3, 1, '2D', 200, 3),
(126, 'Thursday 28th, April 2022', 'B', 3, 2, '3D', 200, 4),
(127, 'Thursday 28th, April 2022', 'B', 3, 3, '2D', 200, 3),
(128, 'Friday 29th, April 2022', 'B', 3, 1, '2D', 200, 3),
(129, 'Friday 29th, April 2022', 'B', 3, 2, '3D', 200, 4),
(130, 'Friday 29th, April 2022', 'B', 3, 3, '2D', 200, 3),
(131, 'Saturday 30th, April 2022', 'B', 3, 1, '2D', 200, 3),
(132, 'Saturday 30th, April 2022', 'B', 3, 2, '3D', 200, 4),
(133, 'Saturday 30th, April 2022', 'B', 3, 3, '2D', 200, 3),
(134, 'Sunday 24th, April 2022', 'B', 4, 2, '2D', 200, 1),
(135, 'Monday 25th, April 2022', 'B', 4, 2, '2D', 200, 1),
(136, 'Tuesday 26th, April 2022', 'B', 4, 2, '2D', 200, 1),
(137, 'Wednesday 27th, April 2022', 'B', 4, 2, '2D', 200, 1),
(138, 'Thursday 28th, April 2022', 'B', 4, 2, '2D', 200, 1),
(139, 'Friday 29th, April 2022', 'B', 4, 2, '2D', 200, 1),
(140, 'Saturday 30th, April 2022', 'B', 4, 2, '2D', 200, 1),
(141, 'Sunday 24th, April 2022', 'B', 5, 2, '2D', 200, 2),
(142, 'Sunday 24th, April 2022', 'B', 5, 3, '3D', 200, 4),
(143, 'Monday 25th, April 2022', 'B', 5, 2, '2D', 200, 2),
(144, 'Monday 25th, April 2022', 'B', 5, 3, '3D', 200, 4),
(145, 'Tuesday 26th, April 2022', 'B', 5, 2, '2D', 200, 2),
(146, 'Tuesday 26th, April 2022', 'B', 5, 3, '3D', 200, 4),
(147, 'Wednesday 27th, April 2022', 'B', 5, 2, '2D', 200, 2),
(148, 'Wednesday 27th, April 2022', 'B', 5, 3, '3D', 200, 4),
(149, 'Thursday 28th, April 2022', 'B', 5, 2, '2D', 200, 2),
(150, 'Thursday 28th, April 2022', 'B', 5, 3, '3D', 200, 4),
(151, 'Friday 29th, April 2022', 'B', 5, 2, '2D', 200, 2),
(152, 'Friday 29th, April 2022', 'B', 5, 3, '3D', 200, 4),
(153, 'Saturday 30th, April 2022', 'B', 5, 2, '2D', 200, 2),
(154, 'Saturday 30th, April 2022', 'B', 5, 3, '3D', 200, 4),
(155, 'Sunday 24th, April 2022', 'B', 6, 2, '2D', 200, 1),
(156, 'Monday 25th, April 2022', 'B', 6, 2, '2D', 200, 1),
(157, 'Tuesday 26th, April 2022', 'B', 6, 2, '2D', 200, 1),
(158, 'Wednesday 27th, April 2022', 'B', 6, 2, '2D', 200, 1),
(159, 'Thursday 28th, April 2022', 'B', 6, 2, '2D', 200, 1),
(160, 'Friday 29th, April 2022', 'B', 6, 2, '2D', 200, 1),
(161, 'Saturday 30th, April 2022', 'B', 6, 2, '2D', 200, 1),
(162, 'Sunday 24th, April 2022', 'C', 1, 1, '2D', 200, 1),
(163, 'Sunday 24th, April 2022', 'C', 1, 3, '2D', 200, 1),
(164, 'Monday 25th, April 2022', 'C', 1, 1, '2D', 200, 1),
(165, 'Monday 25th, April 2022', 'C', 1, 3, '2D', 200, 1),
(166, 'Tuesday 26th, April 2022', 'C', 1, 1, '2D', 200, 1),
(167, 'Tuesday 26th, April 2022', 'C', 1, 3, '2D', 200, 1),
(168, 'Wednesday 27th, April 2022', 'C', 1, 1, '2D', 200, 1),
(169, 'Wednesday 27th, April 2022', 'C', 1, 3, '2D', 200, 1),
(170, 'Thursday 28th, April 2022', 'C', 1, 1, '2D', 200, 1),
(171, 'Thursday 28th, April 2022', 'C', 1, 3, '2D', 200, 1),
(172, 'Friday 29th, April 2022', 'C', 1, 1, '2D', 200, 1),
(173, 'Friday 29th, April 2022', 'C', 1, 3, '2D', 200, 1),
(174, 'Saturday 30th, April 2022', 'C', 1, 1, '2D', 200, 1),
(175, 'Saturday 30th, April 2022', 'C', 1, 3, '2D', 200, 1),
(176, 'Sunday 24th, April 2022', 'C', 2, 1, '2D', 200, 2),
(177, 'Sunday 24th, April 2022', 'C', 2, 2, '3D', 200, 5),
(178, 'Sunday 24th, April 2022', 'C', 2, 3, '2D', 200, 2),
(179, 'Monday 25th, April 2022', 'C', 2, 1, '2D', 200, 2),
(180, 'Monday 25th, April 2022', 'C', 2, 2, '3D', 200, 5),
(181, 'Monday 25th, April 2022', 'C', 2, 3, '2D', 200, 2),
(182, 'Tuesday 26th, April 2022', 'C', 2, 1, '2D', 200, 2),
(183, 'Tuesday 26th, April 2022', 'C', 2, 2, '3D', 200, 5),
(184, 'Tuesday 26th, April 2022', 'C', 2, 3, '2D', 200, 2),
(185, 'Wednesday 27th, April 2022', 'C', 2, 1, '2D', 200, 2),
(186, 'Wednesday 27th, April 2022', 'C', 2, 2, '3D', 200, 5),
(187, 'Wednesday 27th, April 2022', 'C', 2, 3, '2D', 200, 2),
(188, 'Thursday 28th, April 2022', 'C', 2, 1, '2D', 200, 2),
(189, 'Thursday 28th, April 2022', 'C', 2, 2, '3D', 200, 5),
(190, 'Thursday 28th, April 2022', 'C', 2, 3, '2D', 200, 2),
(191, 'Friday 29th, April 2022', 'C', 2, 1, '2D', 200, 2),
(192, 'Friday 29th, April 2022', 'C', 2, 2, '3D', 200, 5),
(193, 'Friday 29th, April 2022', 'C', 2, 3, '2D', 200, 2),
(194, 'Saturday 30th, April 2022', 'C', 2, 1, '2D', 200, 2),
(195, 'Saturday 30th, April 2022', 'C', 2, 2, '3D', 200, 5),
(196, 'Saturday 30th, April 2022', 'C', 2, 3, '2D', 200, 2),
(197, 'Sunday 24th, April 2022', 'C', 3, 1, '2D', 200, 3),
(198, 'Sunday 24th, April 2022', 'C', 3, 2, '3D', 200, 4),
(199, 'Sunday 24th, April 2022', 'C', 3, 3, '2D', 200, 3),
(200, 'Monday 25th, April 2022', 'C', 3, 1, '2D', 200, 3),
(201, 'Monday 25th, April 2022', 'C', 3, 2, '3D', 200, 4),
(202, 'Monday 25th, April 2022', 'C', 3, 3, '2D', 200, 3),
(203, 'Tuesday 26th, April 2022', 'C', 3, 1, '2D', 200, 3),
(204, 'Tuesday 26th, April 2022', 'C', 3, 2, '3D', 200, 4),
(205, 'Tuesday 26th, April 2022', 'C', 3, 3, '2D', 200, 3),
(206, 'Wednesday 27th, April 2022', 'C', 3, 1, '2D', 200, 3),
(207, 'Wednesday 27th, April 2022', 'C', 3, 2, '3D', 200, 4),
(208, 'Wednesday 27th, April 2022', 'C', 3, 3, '2D', 200, 3),
(209, 'Thursday 28th, April 2022', 'C', 3, 1, '2D', 200, 3),
(210, 'Thursday 28th, April 2022', 'C', 3, 2, '3D', 200, 4),
(211, 'Thursday 28th, April 2022', 'C', 3, 3, '2D', 200, 3),
(212, 'Friday 29th, April 2022', 'C', 3, 1, '2D', 200, 3),
(213, 'Friday 29th, April 2022', 'C', 3, 2, '3D', 200, 4),
(214, 'Friday 29th, April 2022', 'C', 3, 3, '2D', 200, 3),
(215, 'Saturday 30th, April 2022', 'C', 3, 1, '2D', 200, 3),
(216, 'Saturday 30th, April 2022', 'C', 3, 2, '3D', 200, 4),
(217, 'Saturday 30th, April 2022', 'C', 3, 3, '2D', 200, 3),
(218, 'Sunday 24th, April 2022', 'C', 5, 2, '2D', 200, 2),
(219, 'Monday 25th, April 2022', 'C', 5, 2, '2D', 200, 2),
(220, 'Tuesday 26th, April 2022', 'C', 5, 2, '2D', 200, 2),
(221, 'Wednesday 27th, April 2022', 'C', 5, 2, '2D', 200, 2),
(222, 'Thursday 28th, April 2022', 'C', 5, 2, '2D', 200, 2),
(223, 'Friday 29th, April 2022', 'C', 5, 2, '2D', 200, 2),
(224, 'Saturday 30th, April 2022', 'C', 5, 2, '2D', 200, 2),
(225, 'Sunday 24th, April 2022', 'C', 6, 2, '2D', 200, 1),
(226, 'Monday 25th, April 2022', 'C', 6, 2, '2D', 200, 1),
(227, 'Tuesday 26th, April 2022', 'C', 6, 2, '2D', 200, 1),
(228, 'Wednesday 27th, April 2022', 'C', 6, 2, '2D', 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `membership` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `pass`, `email`, `age`, `phone`, `gender`, `membership`, `type`, `points`) VALUES
(1, 'John321', 'John@123', 'johnson321@gmail.com', 21, '01725184342', 'male', 1, 1, 200),
(2, 'Harry103', 'h@rry103', 'harry103@gmail.com', 18, '01922842451', 'male', 1, 1, 160),
(3, 'Mia', 'Mia69', 'mia69@yahoo.com', 18, '01773434292', 'female', 0, 1, 0),
(4, 'Kiara', 'ki@ra123', 'kiara103@gmail.com', 19, '01730219133', 'female', 1, 1, 240),
(5, 'admin', '@dmin123', 'admin123@gmail.com', NULL, NULL, NULL, NULL, 0, 0),
(6, 'Sara64', 's@r@!64', 'sara64@yahoo.com', 16, '01322954321', 'female', 1, 1, 0),
(7, 'Erick45', 'er!ck$45', 'erickson45@gmail.com', 18, '01723434489', 'other', 0, 1, 0),
(8, 'Peter', 'peter@31', 'peterparker12@gmail.com', 15, '01353599461', 'male', 1, 1, 0),
(9, 'Ron', 'ron@ld$$', 'ronaldron42@gmail.com', 16, '01348952433', 'male', 1, 1, 20),
(10, 'Jenny', 'j8n8yY!$', 'jenny452@yahoo.com', 20, '01643295413', 'female', 0, 1, 0),
(11, 'Alan123', 'aL@n&$$', 'alanwalker34@gmail.com', 22, '01913528941', 'male', 0, 1, 0),
(12, 'Bob', 'b0b64$$', 'bobthebuilder64@gmail.com', 21, '01327254662', 'male', 1, 1, 0),
(13, 'Amy32', 'peter@31', 'amy32@yahoo.com', 18, '01722294342', 'female', 0, 1, 0),
(14, 'Jane321', 'j@ne&321', 'jane321@gmail.com', 20, '01748432526', 'female', 0, 1, 0),
(15, 'Rachel65', 'r@CheL65', 'rachel65@gmail.com', 21, '01943462818', 'female', 1, 1, 0),
(16, 'Samantha', 's@m@nTh@', 'samantha42@yahoo.com', 16, '01754481254', 'female', 0, 1, 0),
(17, 'Tirtho496', 'apnarabba123', 'tirthoxyz@yahoo.com', 22, '01721212124', 'Male', 0, 1, 0),
(18, 'Fahmid', 'fahmid123', 'fahmid@hotmail.com', 22, '01712343422', 'Male', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `u_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`),
  ADD KEY `theatre_name` (`theatre_name`,`u_id`,`showtime_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`hall_no`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `hall_no` (`hall_no`);

--
-- Indexes for table `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`coupon_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`shows_ID`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`showtime_ID`),
  ADD KEY `theatre` (`theatre`,`movie_id`,`shows_ID`,`hall_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD KEY `u_id` (`u_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `redeem`
--
ALTER TABLE `redeem`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `showtime`
--
ALTER TABLE `showtime`
  MODIFY `showtime_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
