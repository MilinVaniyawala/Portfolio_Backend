-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 11:03 PM
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
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_inquiries`
--

CREATE TABLE `contact_inquiries` (
  `inquiry_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `passing_year` int(11) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `user_id`, `degree`, `location`, `passing_year`, `grade`) VALUES
(1, 1, 'Certification in Web Development', 'Humber College', 2024, NULL),
(2, 1, 'Bachelor of Engineering in Computer Engineering', 'Gujarat Technological University', 2020, '8.68');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `experience_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `icon_of_company` varchar(255) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`experience_id`, `user_id`, `icon_of_company`, `company_name`, `company_address`, `position`, `start_date`, `end_date`, `description`) VALUES
(1, 1, 'infozium.png', 'Infozium', 'Surat, India', 'Web Developer', '2020-10-01', '2021-10-31', NULL),
(2, 1, 'informix.png', 'Informix', 'Surat, India', 'Web Developer', '2021-11-01', '2022-02-28', NULL),
(3, 1, 'senza.png', 'Senza', 'Surat, India', 'Senior Web Developer', '2022-03-01', '2022-11-30', NULL),
(4, 1, 'letmegrab.png', 'Letmegrab', 'Surat, India', 'Front End Developer', '2022-11-01', '2023-08-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `technologies_stack` varchar(255) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `user_id`, `image`, `technologies_stack`, `website_link`, `project_name`) VALUES
(1, 1, 'applerocket.png', 'Figma', 'https://www.figma.com/proto/VqSsNnM4whiXvsEYu3rPlz/Landing-Page?node-id=3-2&scaling=min-zoom&page-id=0%3A1', 'Apple Rocket'),
(2, 1, 'chitchatchai.png', 'WordPress', 'https://www.chitchatchai.in/', 'Chit Chat Chai'),
(3, 1, 'dkassociate.png', 'WordPress', 'https://dkassociate.in/', 'Dk Associate'),
(4, 1, 'dvanza.png', 'WordPress', 'https://dvanza.com/', 'Dvanza'),
(5, 1, 'feverbee.png', 'WordPress', 'https://www.feverbee.com/', 'Feverbee'),
(6, 1, 'grabandpack.png', 'WordPress', 'https://grabandpack.com/', 'Grab & Pack'),
(7, 1, 'icastechnology.png', 'React', 'https://www.icastechnology.com/', 'ICAS Technology'),
(8, 1, 'lingscars.png', 'Figma', 'https://www.figma.com/proto/TEWnGMXT7IopnRrOF61117/LingsCars?node-id=212-476&scaling=min-zoom&page-id=44%3A489&starting-point-node-id=212%3A476', 'LingsCars'),
(9, 1, 'nvdiamonds.png', 'WordPress', 'https://nvdiamonds.in/', 'NV Diamonds'),
(10, 1, 'partsbrickmmo.png', 'PHP', 'https://parts.brickmmo.com/', 'BrickMMO Parts'),
(11, 1, 'rubabmen.png', 'Shopify', 'https://rubabmen.com/collections/beard', 'Rubab Men'),
(12, 1, 'saasmito.png', 'Figma', 'https://www.figma.com/proto/AbcULOw7l0cKePRrXlCmFX/SaaSmito-Replica?node-id=1-2&scaling=min-zoom&page-id=0%3A1', 'SaaSmito');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `user_id`, `icon`, `title`) VALUES
(1, 1, 'css.svg', 'CSS'),
(2, 1, 'figma.svg', 'Figma'),
(3, 1, 'html.svg', 'HTML'),
(4, 1, 'javascript.svg', 'JavaScript'),
(5, 1, 'laravel.svg', 'Laravel'),
(6, 1, 'mysql.svg', 'MySQL'),
(7, 1, 'php.svg', 'PHP'),
(8, 1, 'react.svg', 'React'),
(9, 1, 'wordpress.svg', 'WordPress');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `resume_upload` varchar(255) DEFAULT NULL,
  `cover_letter` varchar(255) DEFAULT NULL,
  `certificates` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `email`, `phone`, `resume_upload`, `cover_letter`, `certificates`, `username`, `password`) VALUES
(1, 'Milin', 'Vaniyawala', 'milinvaniyawala@gmail.com', '+1 4377665524', 'milin_vaniyawala_resume.pdf', NULL, NULL, 'Milin13', 'Milin@2345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_inquiries`
--
ALTER TABLE `contact_inquiries`
  ADD PRIMARY KEY (`inquiry_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_inquiries`
--
ALTER TABLE `contact_inquiries`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
