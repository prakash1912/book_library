-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 04:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `PublicationYear` int(11) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Pages` int(11) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Format` varchar(20) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Availability` tinyint(1) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `Genre`, `PublicationYear`, `ISBN`, `Language`, `Pages`, `Publisher`, `Format`, `Price`, `Rating`, `Description`, `Availability`, `PurchaseDate`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald\'s ', 'Fiction', 1951, '9780316769480', 'English', 224, 'Little, Brown and Company', 'Paperback', 15.99, 4.2, 'A novel about teenage angst and rebellion.', 1, '2021-03-10'),
(2, 'Lolita', 'Vladimir Nabokov', 'Dystopian', 1949, '9780451524935', 'English', 328, 'Signet Classics', 'Hardcover', 12.50, 4.8, 'A classic depiction of a totalitarian society.', 1, '2021-04-05'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, '9780061120084', 'English', 336, 'HarperCollins', 'Paperback', 12.99, 4.5, 'A classic novel about racial injustice and moral growth.', 1, '2021-01-15'),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classics', 1925, '9780743273565', 'English', 180, 'Scribner', 'Hardcover', 14.95, 4.2, 'A tale of wealth, love, and the American Dream.', 1, '2021-02-20'),
(5, 'Moby-Dick', 'Herman Melville', 'Adventure', 1851, '9780142437247', 'English', 720, 'Penguin Classics', 'Paperback', 18.75, 4, 'The epic tale of Captain Ahab and the white whale.', 1, '2021-05-18'),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, '9780345339683', 'English', 310, 'Ballantine Books', 'Hardcover', 22.99, 4.7, 'A journey through Middle-earth with Bilbo Baggins.', 1, '2021-06-02'),
(7, 'War and Peace', 'Tolstoy ', 'Romance', 1869, '9780486284736', 'English', 279, 'Dover Publications', 'Paperback', 9.99, 4.6, 'A classic novel exploring love and social status.', 1, '2021-07-11'),
(8, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, '9780618640157', 'English', 1178, 'Houghton Mifflin', 'Hardcover', 29.99, 4.9, 'The epic trilogy set in the world of Middle-earth.', 1, '2021-08-27'),
(9, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, '9780060850524', 'English', 311, 'Harper Perennial Modern Classics', 'Paperback', 16.99, 4.1, 'A novel about a future society controlled by technology.', 1, '2021-09-15'),
(10, 'Frankenstein', 'Mary Shelley', 'Gothic', 1818, '9780486282114', 'English', 219, 'Dover Publications', 'Paperback', 11.50, 4.4, 'The story of Victor Frankenstein and his monstrous creation.', 1, '2021-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorite_books`
--

DROP TABLE IF EXISTS `user_favorite_books`;
CREATE TABLE `user_favorite_books` (
  `favorite_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_favorite_books`
--

INSERT INTO `user_favorite_books` (`favorite_book_id`, `user_id`, `book_id`) VALUES
(1, 2, 1),
(2, 2, 4),
(3, 3, 12),
(4, 3, 14),
(6, 2, 5),
(7, 2, 6),
(8, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
CREATE TABLE `user_tb` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'test', 'test@gmail.com', '123456'),
(5, 'test', 'test@gmail.com', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `user_favorite_books`
--
ALTER TABLE `user_favorite_books`
  ADD PRIMARY KEY (`favorite_book_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_favorite_books`
--
ALTER TABLE `user_favorite_books`
  MODIFY `favorite_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
