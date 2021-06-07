-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 09:28 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(9, 'lajla', '827ccb0eea8a706c4c34a16891f84e7b', 'lajla.ljuca@hotmail.com', 'QMTZ2J', '2021-06-03 11:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 48, 'Cookie', 'Cookies are made of butter and love', '7.00', 'kilim.jpg'),
(12, 48, 'Dorucak', 'Breakfast is the most important meal of the day', '15.00', 'plata.jpg'),
(13, 49, 'Cheeseburger', 'Say cheese(bzrgers)!', '7.00', 'rev2.jpg'),
(14, 50, 'Plata', 'Grill and chill!', '30.00', '1.jpg'),
(15, 51, 'Piletina quattro', 'We all like chicken.', '4.80', 'k.jpg'),
(16, 52, 'Kobasice', 'Breakfast food can cure all sadness away.', '9.00', 'gastro1.jpg'),
(17, 53, 'Vucko burger', 'It is burger o clock', '9.00', 'burger.jpg'),
(18, 54, 'Kolac', 'What diet?', '5.00', '60b8cefb9ff22.jpg'),
(19, 55, 'Maslenica', 'It was just literally small calzone', '6.00', '60b8e79105ce5.jpg'),
(21, 52, 'Supa', 'Made with love', '4.00', '60b8e8c9871cc.jpg'),
(22, 48, 'Pasta sa morskim plodovima', 'Life is combination of magic and pasta', '7.00', '60b8e960e4cd0.jpg'),
(23, 49, 'Dorucak', 'First, we eat breakfast. Then, we change the world', '10.00', '60b8ea61d481f.jpg'),
(24, 56, 'Sushi palacinci', 'Honey comes from bees, but pancakes come from heaven', '8.00', '60b8eab514cc7.jpg'),
(25, 56, 'Cokoladni kolac', 'Chocolate makes everything better ', '5.00', '60b8eaf4ca21b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2021-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2021-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2021-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2021-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2021-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2021-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2021-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2021-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2021-04-18 19:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`) VALUES
(48, 5, 'Kilim', 'kilimilidza@gmail.com', ' 061050808', 'kilim.com', '7am', '11pm', 'mon-sun', ' Hrasnicka cesta 3, Ilidza', 'kilim.jpg'),
(49, 5, 'Revolucija 1764', 'contact@revolucija.com', '033203600', 'revolucija.ba', '7am', '12am', 'mon-sun', 'Ferhadija 5, Sarajevo 71000', 'revka.jpg'),
(50, 6, 'Restoran Brajlovic', 'info@restoranbrajlovic.com', '061494806', 'restoranbrajlovic.com', '7am', '11pm', 'mon-sat', 'Samira ?atovi?a Kobre 6, Ilidža 71210', 'brajlovic.jpg'),
(51, 7, 'Chipas', 'chipas@gmail.com', '033209790', 'chipas.com', '8am', '11pm', 'mon-sat', 'Kolodvorska 12, Sarajevo 71000', 'chipas.jpg'),
(52, 8, 'Gastro Pub 13', 'gastropubtrinaest@gmail.com', '033833335', 'gastropub13.eu', '7am', '11pm', 'mon-sun', 'Stupska 6a, Sarajevo 71000', 'gastro.jpg'),
(53, 12, 'Gastro Pub Vucko', 'vucko@gmail.com', '4512545784', 'gastropubvucko.com', '7am', '11pm', 'mon-sun', 'Radi?eva 10, Sarajevo 71000', '60bd03ed3d1f5.jpg'),
(54, 7, 'The Four Rooms Of Mrs.Safija', 'safija@gmail.com', '033202745', 'restoransarajevo.com', '7am', '10pm', 'mon-sun', 'Cekalusa 61, Sarajevo 71000', '60b8c78438032.jpg'),
(55, 6, 'Montana', 'montana@gmail.com', '38733333333', 'montana@gmail.com', '7am', '10pm', 'mon-sun', 'Montana', '60b8ca1b56d59.jpg'),
(56, 8, 'Coffe Station', 'station@gmail.com', '0603332426', 'station.com', '7am', '11pm', 'mon-sun', 'Hamdije Kresevljakovica 8, sarajevo 71000', '60b8ca7d7b95b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Grill', '2021-06-07 19:21:49'),
(6, 'Pizza', '2021-06-07 19:23:57'),
(11, 'Sweets', '2021-06-03 12:46:22'),
(12, 'Chicken', '2021-06-03 12:46:31'),
(13, 'Breakfast', '2021-06-03 12:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'korisnik', 'Neko', 'Nekic', 'neko@gmail.com', '12345678999', 'c33367701511b4f6020ec61ded352059', 'Hamdije Kresevljakovica 2', 1, '2021-06-03 11:24:49'),
(34, 'ljuca', 'Lajla', 'Ljuca', 'ljuca@hotmail.com', '38762667939', 'e10adc3949ba59abbe56e057f20f883e', 'Aneks', 1, '2021-06-06 14:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(39, 33, 'Sushi palacinci', 1, '8.00', NULL, '2021-06-03 14:49:02'),
(40, 34, 'Cookie', 1, '7.00', NULL, '2021-06-06 17:45:46'),
(41, 34, 'Piletina quattro', 1, '4.80', NULL, '2021-06-07 10:52:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
