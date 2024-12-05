-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techlap_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_page_details_tbl`
--

CREATE TABLE `about_page_details_tbl` (
  `Content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_page_details_tbl`
--

INSERT INTO `about_page_details_tbl` (`Content`) VALUES
('<h2>About Techlap</h2><p>Welcome to Techlap, your trusted neighborhood grocery store where quality meets convenience. Born out of a passion for fresh, wholesome food, PureBite was founded with a simple mission: to provide our community with the finest groceries, sourced responsibly and delivered with care. From the beginning, we’ve been committed to creating a shopping experience that not only meets your needs but also enhances your lifestyle.</p><h3>What We Offer</h3><p>At techlap, we believe in the power of choice. That\'s why our shelves are stocked with a diverse range of products, from locally sourced organic produce to global culinary delights. Whether you\'re shopping for everyday essentials or looking to discover something new, our curated selection of groceries ensures you’ll find exactly what you need.</p><h3>Our Commitment</h3><p>At techlap, we’re more than just a grocery store. We’re a part of the community. Our commitment extends beyond providing great products; we aim to create a positive impact on our environment and the people around us. From reducing waste with sustainable practices to supporting local farmers and producers, we strive to make a difference with every bite.</p><h3>Why Choose Us?</h3><p>Shopping at techlap means more than just filling your pantry. It’s about making informed, mindful choices that contribute to a healthier lifestyle and a sustainable future. Our knowledgeable and friendly staff are always here to help you find the best products for your needs, whether you’re looking for specific dietary options or just need a recommendation for dinner tonight.</p><h3>Join the techlap Family</h3><p>We’re proud to serve our community, and we invite you to join the techlap family. Whether you visit us in-store or shop online, you’ll experience the same dedication to quality and service that has made us a trusted name in groceries. Come and discover why techlap is more than just a grocery store – it’s where you can feel good about what you eat and how you shop.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `address_details_tbl`
--

CREATE TABLE `address_details_tbl` (
  `Address_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address_details_tbl`
--

INSERT INTO `address_details_tbl` (`Address_Id`, `User_Id`, `Full_Name`, `Address`, `City`, `State`, `Pincode`, `Phone`) VALUES
(1, 1, 'Abhi Dudhagara', 'Rajkot', 'rajkot', 'gujrat', 360003, '9870123456'),
(2, 2, 'Prince Bhatt', 'kodariya', 'Rajkot', 'gujrat', 360001, '9876541230'),
(3, 1, 'Abhi Patel', 'ahijs', 'Rajkot', 'gujrat', 360003, '9870123456');

-- --------------------------------------------------------

--
-- Table structure for table `banner_details_tbl`
--

CREATE TABLE `banner_details_tbl` (
  `Banner_Id` int(11) NOT NULL,
  `Banner_Image` text NOT NULL,
  `View_Order` int(11) NOT NULL,
  `Active_Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_details_tbl`
--

INSERT INTO `banner_details_tbl` (`Banner_Id`, `Banner_Image`, `View_Order`, `Active_Status`) VALUES
(1, '6716833382e27GalaxBook4_pro_360_KV_1440x640.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_details_tbl`
--

CREATE TABLE `cart_details_tbl` (
  `Product_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_details_tbl`
--

INSERT INTO `cart_details_tbl` (`Product_Id`, `Quantity`, `User_Id`) VALUES
(4, 1, 2),
(4, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `category_details_tbl`
--

CREATE TABLE `category_details_tbl` (
  `Category_Id` int(11) NOT NULL,
  `Category_Name` varchar(100) NOT NULL,
  `Parent_Category_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_details_tbl`
--

INSERT INTO `category_details_tbl` (`Category_Id`, `Category_Name`, `Parent_Category_Id`) VALUES
(1, 'Gaming', NULL),
(2, 'Ultrabooks', NULL),
(3, 'Chromebooks', NULL),
(4, ' Convertible 2-in-1', NULL),
(5, ' MacBook', NULL),
(6, 'Netbook', NULL),
(7, 'GalaxyBook', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_page_details_tbl`
--

CREATE TABLE `contact_page_details_tbl` (
  `Contact_Email` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_page_details_tbl`
--

INSERT INTO `contact_page_details_tbl` (`Contact_Email`, `Contact_Number`) VALUES
('janki.kansagra@gmail.com', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `offer_details_tbl`
--

CREATE TABLE `offer_details_tbl` (
  `Offer_Id` int(11) NOT NULL,
  `Offer_Code` varchar(20) NOT NULL,
  `Offer_Description` text DEFAULT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Max_Discount` float NOT NULL,
  `Minimum_Order` decimal(7,2) DEFAULT NULL,
  `offer_type` int(11) DEFAULT 1,
  `active_status` int(11) DEFAULT 1,
  `Start_Date` datetime DEFAULT NULL,
  `End_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer_details_tbl`
--

INSERT INTO `offer_details_tbl` (`Offer_Id`, `Offer_Code`, `Offer_Description`, `Discount`, `Max_Discount`, `Minimum_Order`, `offer_type`, `active_status`, `Start_Date`, `End_Date`) VALUES
(2, '10DISCOUNT', '10% Discount on orders above ₹145', 10, 100, '145.00', 1, 1, '2024-11-21 21:48:06', '2024-11-30 21:48:37'),
(3, 'FIRSTORDER', 'First purchase discount', 5, 50, NULL, 2, 1, '2024-11-21 21:48:20', '2024-11-30 21:48:37'),
(4, 'FREESHIPPING', 'Free shipping offer', NULL, 0, '300.00', 3, 1, '2024-11-21 21:48:25', '2024-11-30 21:48:37'),
(7, '15DISCOUNT', '15% Discount on orders above ₹200', 15, 150, '200.00', 1, 1, '2024-11-14 21:48:28', '2024-11-30 21:48:37'),
(8, '20DISCOUNT', '20% Discount on orders above ₹300', 20, 60, '99999.99', 1, 1, '2024-11-21 21:48:32', '2024-11-30 21:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_details_tbl`
--

CREATE TABLE `order_details_tbl` (
  `Order_Id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details_tbl`
--

INSERT INTO `order_details_tbl` (`Order_Id`, `Product_Id`, `Quantity`, `Price`) VALUES
(2, 0, 1, '0.00'),
(2, 2, 1, '72900.00'),
(3, 1, 2, '81000.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_header_tbl`
--

CREATE TABLE `order_header_tbl` (
  `Order_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Order_Date` datetime NOT NULL,
  `Order_Status` varchar(10) NOT NULL,
  `Billing_Address_Id` int(11) NOT NULL,
  `Shipping_Address_Id` int(11) NOT NULL,
  `Shipping_Charge` float NOT NULL DEFAULT 0,
  `Total` double NOT NULL DEFAULT 0,
  `Payment_Mode` varchar(50) DEFAULT 'Cash on Delivery'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_header_tbl`
--

INSERT INTO `order_header_tbl` (`Order_Id`, `User_Id`, `Order_Date`, `Order_Status`, `Billing_Address_Id`, `Shipping_Address_Id`, `Shipping_Charge`, `Total`, `Payment_Mode`) VALUES
(2, 3, '2024-10-23 00:00:00', 'Pending', 2, 2, 0, 72900, 'Cash on Delivery'),
(3, 1, '2024-11-27 16:01:17', 'Pending', 3, 3, 0, 0, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `product_details_tbl`
--

CREATE TABLE `product_details_tbl` (
  `Product_Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Product_Image` varchar(255) NOT NULL,
  `Sale_Price` decimal(10,2) NOT NULL,
  `Cost_Price` decimal(10,2) NOT NULL,
  `Discount` tinyint(4) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details_tbl`
--

INSERT INTO `product_details_tbl` (`Product_Id`, `Category_Id`, `Product_Name`, `Description`, `Product_Image`, `Sale_Price`, `Cost_Price`, `Discount`, `stock`, `is_active`) VALUES
(1, 7, 'Galaxy Book', 'Good', '6716826b84d3f_in-galaxy-book-np960qgk-lg1in-top-gray-thumb-541800275.jpg', '90000.00', '80000.00', 10, 5, 0),
(2, 5, 'Apple MacBook Air', 'Apple MacBook Air Laptop: Apple M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Space Grey', '6717c763921f5316ArzLeJ2L._SY445_SX342_QL70_FMwebp_.png', '81000.00', '80000.00', 10, 6, 1),
(3, 2, 'Galaxy Book', 'good', '671875300111bGalaxBook4_pro_360_KV_1440x640.jpg', '19000.00', '20000.00', 10, 5, 1),
(4, 5, 'Apple MacBook Air', 'good', '6718756b8708amac.png', '90000.00', '100000.00', 20, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `responses_tbl`
--

CREATE TABLE `responses_tbl` (
  `Response_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(320) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Message` text NOT NULL,
  `Reply` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_details_tbl`
--

CREATE TABLE `review_details_tbl` (
  `Review_Id` int(11) NOT NULL,
  `Reply_To` int(11) DEFAULT NULL,
  `Product_Id` int(11) DEFAULT NULL,
  `User_Id` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Review` text NOT NULL,
  `Review_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_details_tbl`
--

INSERT INTO `review_details_tbl` (`Review_Id`, `Reply_To`, `Product_Id`, `User_Id`, `Rating`, `Review`, `Review_Date`) VALUES
(2, 1, NULL, 1, NULL, 'good', '2024-10-23 09:46:57'),
(3, NULL, 2, 3, 5, 'good', '2024-10-23 09:52:59'),
(4, 3, NULL, 1, NULL, 'best', '2024-10-23 09:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_details_tbl`
--

CREATE TABLE `user_details_tbl` (
  `User_Id` int(11) NOT NULL,
  `User_Role_Id` int(11) DEFAULT 0,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(320) NOT NULL,
  `Mobile_No` varchar(20) NOT NULL,
  `Active_Status` tinyint(4) NOT NULL,
  `Profile_Picture` varchar(255) DEFAULT 'default-img.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details_tbl`
--

INSERT INTO `user_details_tbl` (`User_Id`, `User_Role_Id`, `First_Name`, `Last_Name`, `Password`, `Email`, `Mobile_No`, `Active_Status`, `Profile_Picture`) VALUES
(1, 1, 'Abhi', 'Dudhagra', '12345678', 'adudhagara353@rku.ac.in', '9825768543', 1, '671680c9ea272_20200121_214833.jpg'),
(2, 0, 'Prince', 'bhatt', '12345678', 'pbhatt444@rku.ac.in', '9825768540', 1, '67189509d938c_WhatsApp Image 2024-10-15 at 08.39.29_2e31a393.jpg'),
(3, 0, 'janki', 'kansagra', '12345678', 'janki.kansagra@rku.ac.in', '987654321', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_details_tbl`
--

CREATE TABLE `wishlist_details_tbl` (
  `Product_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist_details_tbl`
--

INSERT INTO `wishlist_details_tbl` (`Product_Id`, `User_Id`) VALUES
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_details_tbl`
--
ALTER TABLE `address_details_tbl`
  ADD PRIMARY KEY (`Address_Id`);

--
-- Indexes for table `banner_details_tbl`
--
ALTER TABLE `banner_details_tbl`
  ADD PRIMARY KEY (`Banner_Id`);

--
-- Indexes for table `cart_details_tbl`
--
ALTER TABLE `cart_details_tbl`
  ADD PRIMARY KEY (`Product_Id`,`User_Id`);

--
-- Indexes for table `category_details_tbl`
--
ALTER TABLE `category_details_tbl`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `offer_details_tbl`
--
ALTER TABLE `offer_details_tbl`
  ADD PRIMARY KEY (`Offer_Id`);

--
-- Indexes for table `order_header_tbl`
--
ALTER TABLE `order_header_tbl`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `product_details_tbl`
--
ALTER TABLE `product_details_tbl`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `responses_tbl`
--
ALTER TABLE `responses_tbl`
  ADD PRIMARY KEY (`Response_Id`);

--
-- Indexes for table `review_details_tbl`
--
ALTER TABLE `review_details_tbl`
  ADD PRIMARY KEY (`Review_Id`);

--
-- Indexes for table `user_details_tbl`
--
ALTER TABLE `user_details_tbl`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_details_tbl`
--
ALTER TABLE `address_details_tbl`
  MODIFY `Address_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner_details_tbl`
--
ALTER TABLE `banner_details_tbl`
  MODIFY `Banner_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_details_tbl`
--
ALTER TABLE `category_details_tbl`
  MODIFY `Category_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offer_details_tbl`
--
ALTER TABLE `offer_details_tbl`
  MODIFY `Offer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_header_tbl`
--
ALTER TABLE `order_header_tbl`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_details_tbl`
--
ALTER TABLE `product_details_tbl`
  MODIFY `Product_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `responses_tbl`
--
ALTER TABLE `responses_tbl`
  MODIFY `Response_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_details_tbl`
--
ALTER TABLE `review_details_tbl`
  MODIFY `Review_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_details_tbl`
--
ALTER TABLE `user_details_tbl`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
