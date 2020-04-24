-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 05:07 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_copy`
--

-- --------------------------------------------------------

--
-- Table structure for table `beauty product`
--

CREATE TABLE `beauty product` (
  `BP_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(25) NOT NULL,
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beauty product`
--

INSERT INTO `beauty product` (`BP_Code`, `Item_Name`, `Item_Company`, `Item_Price`) VALUES
(401, 'WOW foaming facewash', 'Cloudtail India', 319.00),
(402, 'Aloe Vera', 'UNILEVER', 295.00),
(403, 'Beard Oil', 'Aichun', 220.00),
(404, 'AXE chocolate', 'AXE', 350.00),
(405, 'Playboy Vegas', 'Playboy', 390.00),
(406, 'Set Wet Swag Avatar', 'Set Wet', 250.00),
(407, 'Addidas Ice Dive', 'Addidas', 380.00),
(408, 'Wild Stone Red', 'Wild Stone', 480.00),
(409, 'Denver XTREME performance', 'Denver', 490.00),
(410, 'AXE Signature', 'AXE', 420.00);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `Manager_ID` int(10) NOT NULL,
  `Branch Place` varchar(20) NOT NULL,
  `Location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`Manager_ID`, `Branch Place`, `Location`) VALUES
(1001, 'Bashundhara,Dhaka', 'Block B,Road 17'),
(1003, 'Mirpur DOHS,Dhaka', 'Avenue 10, Road 9'),
(1009, 'Lalkhan Bazar, Chitt', ' Road 4,Block D');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(10) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Last_Name`, `First_Name`, `Customer_Email`, `Address`) VALUES
(3001, 'Randall', 'Matos', 'RMATOS', 'ST_CLERK'),
(3002, 'Peter', 'Vargas', 'PVARGAS', 'ST_CLERK'),
(3003, 'Eleni', 'Zlotkey', 'EZLOTKEY', 'SA_MAN'),
(3004, 'Ellen', 'Abel', 'EABEL', 'SA_REP'),
(3005, 'Jnathon', 'Taylor', 'JTAILOR', 'SA_MAN'),
(3006, 'Kimberely', 'Grant', 'KGRANT', 'SA_MAN'),
(3007, 'Jennifer', 'Whalem', 'JWHALEN', 'AD_ASST'),
(3008, 'Michael', 'Hartstein', 'MHARSTEIN', 'MK_MAN'),
(3009, 'Pat', 'Fay', 'PFAY', 'MK_REP');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `Electronics_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(32) NOT NULL DEFAULT 'Unknown',
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`Electronics_Code`, `Item_Name`, `Item_Company`, `Item_Price`) VALUES
(101, 'Galaxy S10', 'Samsung', 80000.00),
(102, '11 Pro', 'Apple', 125000.00),
(103, '7 Pro', 'One Plus', 58000.00),
(104, 'Note 7', 'Xiaomi', 15000.00),
(105, 'Tab 3', 'Samsung', 40000.00),
(106, 'iPad Pro', 'Apple', 78000.00),
(107, 'Tab 7', 'Xiaomi', 56000.00),
(108, 'Rog', 'Asus', 86000.00),
(109, 'Macbook Pro', 'Apple', 225000.00),
(110, 'Spectre', 'HP', 90000.00),
(111, 'Surface', 'Microsoft', 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `electronics accessories`
--

CREATE TABLE `electronics accessories` (
  `EA_Code` int(10) NOT NULL,
  `EA_Name` varchar(25) NOT NULL,
  `Company` varchar(32) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electronics accessories`
--

INSERT INTO `electronics accessories` (`EA_Code`, `EA_Name`, `Company`, `Type`, `Price`) VALUES
(201, '20000mah Power Brick', 'Xiaomi', 'Powerbank', 1300.00),
(202, 'Pk-40K', 'Awei', 'Powerbank', 3900.00),
(203, 'iPhone 7', 'Apple', 'Phone Case', 500.00),
(204, 'iPhone 11 Pro', 'Apple', 'Phone Case', 1000.00),
(205, 'Galaxy S10', 'Samsung', 'Phone Case', 800.00),
(206, 'Note 7', 'Xiaomi', 'Phone Case', 400.00),
(207, '64 Gb', 'San Disk', 'Sd Card', 1000.00),
(208, '32 Gb', 'San Disk', 'Sd Card', 800.00),
(209, 'USB C to 3.5mm', 'One Plus', 'Converter', 3000.00),
(210, 'OTG for iPhone', 'Awei', 'Converter', 2000.00),
(211, 'HDMI Cable', 'Awei', 'Converter', 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `Employee_ID` int(10) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Manager_ID` int(10) DEFAULT NULL,
  `Position_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`Employee_ID`, `Last_Name`, `First_Name`, `Email`, `Manager_ID`, `Position_ID`) VALUES
(1001, 'Steven', 'King', 'SKING', NULL, 2001),
(1002, 'Neena', 'Kochar', 'NKOCHAR', 1001, 2001),
(1003, 'Lex', 'De Haan', 'DEHAAN', NULL, 2003),
(1004, 'Alexander', 'Hunold', 'AHUNOLD', 1003, 2002),
(1005, 'Bruce', 'Ernst', 'BERNST', 1001, 2001),
(1006, 'Diana', 'Lorentz', 'DLORENTZ', 1009, 2002),
(1007, 'Kevin', 'Mourgos', 'KMORGOS', 1003, 2002),
(1008, 'Treena', 'Rajs', 'RRAJS', 1001, 2001),
(1009, 'Curtis', 'Davies', 'CDAVIES', NULL, 2003),
(1010, 'Randall', 'Matos', 'RMATOS', 1003, 2002);

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `Grocery_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(25) NOT NULL,
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`Grocery_Code`, `Item_Name`, `Item_Company`, `Item_Price`) VALUES
(501, 'Radhuni Mustard Oil', 'Radhuni', 217.00),
(502, 'Priyo Mustard Oil', 'Priyo', 248.00),
(503, 'Olitalia Sunflower Oil', 'Olitalia', 1150.00),
(504, 'Khushboo Premium Ghee', 'Khushboo', 766.00),
(505, 'Tropicana(Orange)', 'Tropicana', 36.00),
(506, 'Nutella', 'Ferrero SpA', 915.00),
(507, 'Nescafe Travel Kit', 'Nestle', 520.00),
(508, 'Nestle Milo Cereal', 'Nestle', 340.00),
(509, 'Nestle Corn Flakes', 'Nestle', 360.00),
(510, 'Crown Peanut Butter', 'Crown', 420.00),
(511, 'Amul butter', 'Amul', 340.00);

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle`
--

CREATE TABLE `lifestyle` (
  `Lifestyle_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(25) NOT NULL,
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lifestyle`
--

INSERT INTO `lifestyle` (`Lifestyle_Code`, `Item_Name`, `Item_Company`, `Item_Price`) VALUES
(601, 'Blue T-Shirt', 'Yellow', 350.00),
(602, 'Red Full sleeve T-Shirt', 'Gentle-Park', 360.00),
(603, 'Black Full Sleeve shirt', 'Cats Eye', 850.00),
(604, 'Casual Jeans', 'Ecstasy', 370.00),
(605, 'Dining Table', 'Otobi', 18000.00),
(606, 'Blue panjabi', 'Aarong', 1100.00),
(607, 'Blue Stirpes shirt', 'Lacoste', 1200.00),
(608, 'Bedroom Set', 'Furniture Bari', 25000.00),
(609, 'Bedroom Table', 'Regal Furniture', 8500.00),
(610, 'Sofa Set', 'Brothers Furniture', 24000.00);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Position_ID` int(10) NOT NULL,
  `Sector` varchar(20) NOT NULL,
  `Comission_Percent` double(2,2) DEFAULT NULL,
  `Max_Salary` double(8,2) NOT NULL,
  `Min_Salary` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Position_ID`, `Sector`, `Comission_Percent`, `Max_Salary`, `Min_Salary`) VALUES
(2001, 'IT', 0.20, 25000.00, 20000.00),
(2002, 'Clerk', 0.01, 15000.00, 10000.00),
(2003, 'Administration', 0.30, 25000.00, 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Sale_ID` int(10) NOT NULL,
  `Item_Code` int(10) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Sale_Amount` double(8,2) NOT NULL,
  `Item_Seller` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sale_ID`, `Item_Code`, `Customer_Email`, `Sale_Amount`, `Item_Seller`) VALUES
(10000, 201, 'MHARSTEIN', 1300.00, 1001),
(10001, 201, 'RMATOS', 15000.00, 1002),
(10002, 401, 'PVARGAS', 5000.00, 1002),
(10003, 601, 'EZLOTKEY', 6000.00, 1004),
(10004, 501, 'EABEL', 13000.00, 1005),
(10005, 701, 'JTAILOR', 5000.00, 1006),
(10006, 101, 'KGRANT', 100000.00, 1007),
(10007, 601, 'JWHALEN', 50000.00, 1008),
(10008, 501, 'MHARSTEIN', 600.00, 1006),
(10009, 101, 'PFAY', 40000.00, 1010);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `SportsItem_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(25) NOT NULL,
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`SportsItem_Code`, `Item_Name`, `Item_Company`, `Item_Price`) VALUES
(701, 'Cricket Bat', 'Reebok', 1300.00),
(702, 'Li-Ning Turbo Charged Bad', 'Li-Ning', 21000.00),
(703, 'Badminton Racket', 'Carbonex', 1400.00),
(704, '6 Piece Yonex Feather Cor', 'Yonex', 350.00),
(705, 'Badminton Raacket Grip', 'Cobra', 140.00),
(706, 'Kyncilor Thicken Warm Cyc', 'Kyncilor', 650.00),
(707, 'Sports One TB 500 Table T', 'Sports One', 20000.00),
(708, 'PSG Third Kit Short Sleev', 'Rakib Sports And Accessor', 550.00),
(709, 'Sports One Table Tennis B', 'Sports One', 1100.00),
(710, 'Batting Pad RH/LH', 'SG', 1120.00);

-- --------------------------------------------------------

--
-- Table structure for table `watches and accessories`
--

CREATE TABLE `watches and accessories` (
  `WA_Code` int(10) NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Company` varchar(25) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Item_Price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watches and accessories`
--

INSERT INTO `watches and accessories` (`WA_Code`, `Item_Name`, `Item_Company`, `Type`, `Item_Price`) VALUES
(301, 'NF1000', 'Naviforce', 'Mens Wrist Watch', 3000.00),
(302, 'Watchdog', 'Curren', 'Mens Wrist Watch', 2500.00),
(303, 'Millenium', 'Rolex', 'Mens Wrist Watch', 4500.00),
(304, 'Rock', 'Rolex', 'Mens Wrist Watch', 5500.00),
(305, 'Casual', 'Rolex', 'Mens Wrist Watch', 6000.00),
(306, 'WR222', 'IMKEI', 'Womens Wrist Watch', 4500.00),
(307, 'WKll', 'Naviforce', 'Womens Wrist Watch', 6000.00),
(308, 'Card Carrier', 'Aarong', 'Wallet', 3000.00),
(309, 'Purse', 'Chanel', 'Womens purse', 20000.00),
(310, 'Purse', 'Gucci', 'Womens purse', 35000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beauty product`
--
ALTER TABLE `beauty product`
  ADD PRIMARY KEY (`BP_Code`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`Manager_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`Electronics_Code`);

--
-- Indexes for table `electronics accessories`
--
ALTER TABLE `electronics accessories`
  ADD PRIMARY KEY (`EA_Code`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `Position_ID_idx` (`Position_ID`),
  ADD KEY `employee_info_ibfk_2` (`Manager_ID`);

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`Grocery_Code`);

--
-- Indexes for table `lifestyle`
--
ALTER TABLE `lifestyle`
  ADD PRIMARY KEY (`Lifestyle_Code`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Position_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sale_ID`),
  ADD KEY `Item_Seller_idx` (`Item_Seller`),
  ADD KEY `Customer_Email_idx` (`Customer_Email`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`SportsItem_Code`);

--
-- Indexes for table `watches and accessories`
--
ALTER TABLE `watches and accessories`
  ADD PRIMARY KEY (`WA_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3010;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sale_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`Position_ID`) REFERENCES `position` (`Position_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_info_ibfk_2` FOREIGN KEY (`Manager_ID`) REFERENCES `branches` (`Manager_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_9` FOREIGN KEY (`Item_Seller`) REFERENCES `employee_info` (`Employee_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
