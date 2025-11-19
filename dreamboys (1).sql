-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 11:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamboys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'dreamboys@gmail.com', 'Dreamboys@123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(11) NOT NULL,
  `sname` varchar(300) NOT NULL,
  `batch` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `attend` varchar(200) NOT NULL,
  `acount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `sname`, `batch`, `date`, `attend`, `acount`) VALUES
(11, 'vishwa', 'Batch1', '2025-05-09', 'present', 1),
(12, 'akash', 'Batch2', '2025-05-020', 'present', 1),
(13, 'kushik', 'Batch3', '2025-05-25', 'absent', 0),
(14, 'janith', 'Batch2', '2025-05-09', 'present', 1),
(15, 'vinyas', 'Batch4', '2025-05-05', 'present', 1),
(16, 'vishwa', 'Batch3', '2025-05-13', 'present', 1),
(17, 'niyam', 'Batch1', '2025-05-07', 'present', 1),
(18, 'kushik', 'Batch1', '2025-05-08', 'present', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `bname` varchar(200) NOT NULL,
  `btime` varchar(200) NOT NULL,
  `fees` int(20) NOT NULL,
  `btype` varchar(100) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `bname`, `btime`, `fees`, `btype`, `image`) VALUES
(11, 'Batch1', '4.00-6.00', 500, 'Child', 0x67726f7570332e6a7067),
(12, 'Batch2', '6.00-8.00', 500, 'Adult', 0x67726f7570322e6a7067),
(13, 'Batch3', '4.00-7.00', 500, 'Adult', 0x636c6173732d312e6a7067),
(14, 'Batch4', '10:00-12:00', 500, 'Child', 0x6d61737465722d312e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `bookdance`
--

CREATE TABLE `bookdance` (
  `id` int(11) NOT NULL,
  `bookid` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` mediumtext NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdance`
--

INSERT INTO `bookdance` (`id`, `bookid`, `name`, `email`, `phone`, `address`, `image`, `status`) VALUES
(1, 1, 'Kaushik', 'kaushi029@gmail.com', '8951137153', 'mangalore', 'WhatsApp Image 2025-02-16 at 12.16.33.jpg', 'confirmed'),
(2, 1, 'yashashwi', 'yashaswiyashu2519@gmail.com', '8748966783', 'talapadi', 'WhatsApp Image 2023-05-31 at 18.51.01.jpg', 'confirmed'),
(3, 1, 'sakshi', 'sakshipoojary712@gmail.com', '6364400729', 'neermarga', 'maxresdefault.jpg', 'confirmed'),
(4, 12, 'Neha', 'bangeraneha026@gmail.com', '9632152601', 'ullal', 'class-3.jpg', 'confirmed'),
(5, 12, 'Ankith', 'ankitherror@gmail.com', '8970405883', 'Kumpala', 'class-1.jpg', 'confirmed'),
(6, 12, 'swathi', 'krishnaswathi440@gmail.com', '7996136343', 'abc', '1.jpg', 'confirmed'),
(7, 11, 'vishwa', 'vishsrcm@gmail.com', '9845874170', 'surathkal', 'class.jpg', 'confirmed'),
(8, 11, 'nitya', 'nitya026@gmail.com', '9845874170', 'kudup', '1.jpg', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `SID` int(11) NOT NULL,
  `INVOICE_NO` int(11) NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `CADDRESS` varchar(150) NOT NULL,
  `CCITY` varchar(50) NOT NULL,
  `GRAND_TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`SID`, `INVOICE_NO`, `INVOICE_DATE`, `CNAME`, `CADDRESS`, `CCITY`, `GRAND_TOTAL`) VALUES
(1, 465456, '2025-06-29', '45645', '4564', '5465rtt', 500.00),
(2, 2, '2025-07-04', 'swathi', '3 2 alape kallakatta', 'mangalore', 1000.00),
(3, 4564, '2025-07-01', 'tytuy', 'hghjg', 'gjg', 500.00),
(4, 1, '2025-07-04', 'Greeshma', 'mangalore', 'mangalore', 1000.00),
(5, 321, '2025-07-04', 'swathi', 'abc', 'ewf', 500.00),
(6, 1, '2025-07-11', 'Greeshma', 'mangalore', 'mangalore', 2000.00),
(7, 5345, '2025-07-06', 'Nitya', 'Alape  kallakkatta mane', 'Mangalore', 500.00),
(8, 4, '2025-07-05', 'vinyas', 'Alape  kallakkatta mane', 'Mangalore', 2500.00),
(9, 2012, '2025-01-01', 'vineethraj', 'mangaluru', 'mangaluru', 500.00),
(10, 1, '2025-07-06', 'vineetraj', 'ullal', 'mangalore', 500.00),
(11, 5, '2025-07-13', 'niyam', 'kerala', 'kerala', 2000.00),
(12, 1, '2025-07-08', 'kaushik', 'alape', 'mangaluru', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `ID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `PNAME` varchar(100) NOT NULL,
  `PRICE` double(10,2) NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`ID`, `SID`, `PNAME`, `PRICE`, `QTY`, `TOTAL`) VALUES
(1, 1, 'vishwa', 500.00, 1, 500.00),
(2, 2, 'vishwa', 500.00, 2, 1000.00),
(3, 3, 'akash', 500.00, 1, 500.00),
(4, 4, 'kaushik', 500.00, 2, 1000.00),
(5, 5, 'swathi', 500.00, 1, 500.00),
(6, 6, 'kaushik', 1000.00, 2, 2000.00),
(7, 7, 'janith', 500.00, 1, 500.00),
(8, 8, 'vinyas', 500.00, 1, 500.00),
(9, 8, 'akash', 1000.00, 2, 2000.00),
(10, 9, 'niyam', 500.00, 1, 500.00),
(11, 10, 'greeshma', 500.00, 1, 500.00),
(12, 11, 'sakshi', 2000.00, 1, 2000.00),
(13, 12, 'nitya', 500.00, 1, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `paymentrecord`
--

CREATE TABLE `paymentrecord` (
  `pid` int(11) NOT NULL,
  `studentname` varchar(200) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `paymenttype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentrecord`
--

INSERT INTO `paymentrecord` (`pid`, `studentname`, `amount`, `date`, `status`, `paymenttype`) VALUES
(2, 'vishwa', 500, '2025-05-01', 'paid', 'cash'),
(3, 'kaushik', 1000, '2025-05-04', 'paid', 'cash'),
(4, 'swathi', 500, '2025-05-04', 'paid', 'onlinepayment'),
(5, 'akash', 500, '2025-05-05', 'paid', 'onlinepayment'),
(6, 'kaushik', 500, '2025-05-09', 'paid', 'cash'),
(7, 'akash', 500, '2025-05-05', 'paid', 'cash'),
(8, 'nityam', 500, '2025-05-05', 'paid', 'cash'),
(9, 'kaushik', 500, '2025-05-05', 'paid', 'cash'),
(10, 'kaushik', 500, '2025-05-05', 'paid', 'cash'),
(11, 'janith', 500, '2025-05-06', 'paid', 'onlinepayment'),
(15, 'sakshi', 1000, '2025-05-05', 'paid', 'onlinepayment'),
(16, 'janith', 500, '2025-05-20', 'paid', 'cash'),
(17, 'vishwa', 500, '2025-05-07', 'paid', 'cash'),
(18, 'niyam', 500, '2025-05-07', 'paid', 'cash'),
(19, 'greeshma', 500, '2025-05-06', 'paid', 'cash'),
(20, 'greeshma', 500, '2025-05-07', 'paid', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `btype` varchar(200) NOT NULL,
  `address` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `status` varchar(200) NOT NULL,
  `totalclass` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sname`, `email`, `phone`, `btype`, `address`, `image`, `status`, `totalclass`) VALUES
(8, 'vishwa', 'vishwavish96@gmail.com', '9838561209', '3', 'surathkal', 'WhatsApp Image 2025-02-16 at 12.13.37.jpg', 'paid', 21),
(9, 'akash', 'akshbhandary082@gmail.com', '8381648346', '2', 'baikampady', 'maxresdefault.jpg', '', 3),
(10, 'sakshi', 'sakshipoojary712@gmail.com', '7238923746', '4', 'neermarga', 'class-2.jpg', '', 20),
(11, 'janith', 'janithj0238@gmail.com', '8736452647', '1', 'Alape  kallakkatta mane', 'class-1.jpg', '', 1),
(12, 'kaushik', 'kaushi9203@gamil.com', '9827465748', '2', 'mangaluru', 'maxresdefault.jpg', 'paid', 1),
(13, 'greeshma', 'greeshma0222@gmail.com', '6987364562', '1', 'bejai', '', '', 20),
(14, 'nitya', 'nitya349@gmail.com', '9372365720', '3', 'mangaluru', 'WhatsApp Image 2025-02-16 at 12.16.33.jpg', 'paid', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookdance`
--
ALTER TABLE `bookdance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paymentrecord`
--
ALTER TABLE `paymentrecord`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bookdance`
--
ALTER TABLE `bookdance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paymentrecord`
--
ALTER TABLE `paymentrecord`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
