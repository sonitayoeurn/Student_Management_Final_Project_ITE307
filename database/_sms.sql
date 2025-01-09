-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 10:38 AM
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
-- Database: `_sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `s_no` int(20) NOT NULL,
  `id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`s_no`, `id`, `fname`, `lname`, `dob`, `image`, `phone`, `gender`, `address`) VALUES
(2, 'A9876543210', 'Admin', 'Nita', '12/11/2024', 'A98765432101736311431.JPG', '1234567890', 'Female', 'no where');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `s_no` int(20) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`s_no`, `student_id`, `attendence`, `class`, `section`, `date`) VALUES
(2, 'S1733211478', '1', 'Year4', 'Cybersecurity', '2024-12-03 15:24:38'),
(3, 'S1733714390', '1', 'Year1', 'Cybersecurity', '2025-01-08 10:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `bus_title` varchar(100) NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `request` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`s_no`, `bus_id`, `bus_title`, `bus_number`, `request`) VALUES
(10, '1718791847', 'Bus 1', 'XXXXXX', ''),
(11, '1718791949', 'Bus 2', '999999', ''),
(12, '1718791984', 'Another bus', 'OOOOOOOO', '');

-- --------------------------------------------------------

--
-- Table structure for table `bus_root`
--

CREATE TABLE `bus_root` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `serial` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_root`
--

INSERT INTO `bus_root` (`s_no`, `bus_id`, `location`, `arrival_time`, `serial`) VALUES
(7, '1718791847', 'Stop 1', '06:50 AM', 1),
(8, '1718791847', 'Stop 2', '07:00 AM', 2),
(9, '1718791847', 'Stop 3', '07:10 AM', 3),
(10, '1718791847', 'SCHOOL', '10:00 AM', 4),
(13, '1718791949', 'Stop z', '06:35 AM', 1),
(14, '1718791949', 'SCHOOL', '10:00 AM', 2),
(15, '1718791984', 'Stop x', '06:45 AM', 1),
(16, '1718791984', 'SCHOOL', '10:00 AM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff`
--

CREATE TABLE `bus_staff` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_staff`
--

INSERT INTO `bus_staff` (`s_no`, `id`, `bus_id`, `name`, `contact`, `role`) VALUES
(1, 'B1718791847', '1718791847', 'driver ', '8080808080', 'driver'),
(2, 'B1718791847', '1718791847', 'helper ', '0000000000', 'helper'),
(3, 'B1718791949', '1718791949', 'driver 2', '7897898988', 'driver'),
(4, 'B1718791949', '1718791949', 'helper', '7897898988', 'helper'),
(5, 'B1718791984', '1718791984', 'another driver', '7897897898', 'driver'),
(6, 'B1718791984', '1718791984', 'another helper', '7894568796', 'helper');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `s_no` int(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(1) NOT NULL,
  `fees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `exam_title` varchar(512) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(50) NOT NULL,
  `total_marks` varchar(10) NOT NULL,
  `passing_marks` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`s_no`, `exam_id`, `exam_title`, `subject`, `class`, `section`, `total_marks`, `passing_marks`, `timestamp`) VALUES
(3, 'E17187917486672ae442b976', 'Monthly test ', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:39:08'),
(4, 'E17187928006672b26095672', 'Hindi exam result', 'Hindi', '12c', 'A', '100', '33', '2024-06-19 15:56:40'),
(5, 'E17187929656672b305cbb25', 'sldfj', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:59:25'),
(6, 'E1733213924674ebee4d56bd', 'Testing', 'OWASP', 'Year4', 'Cybersecurity', '100', '80', '2024-12-03 15:18:44'),
(7, 'E1733215776674ec6203418a', 'nmap', 'NMAP', 'Year4', 'Cybersecurity', '100', '90', '2024-12-03 15:49:36'),
(8, 'E1733215975674ec6e7c8256', 't', 'React', 'Year4', 'WebDevelopment', '100', '90', '2024-12-03 15:52:55'),
(9, 'E1733216122674ec77ab5383', 'web', 'ALL', 'Year1', 'WebDevelopment', '100', '90', '2024-12-03 15:55:22'),
(10, 'E1736324029677e33bd4fcad', 'Mid-Term Exam', 'ALL', 'Year1', 'SOC', '100', '50', '2025-01-08 15:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `s_no` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`s_no`, `sender_id`, `receiver_id`, `msg`, `timestamp`) VALUES
(10, 'A9876543210', 'S1733714533', 'Good job, Gojo! You\'re a good student; keep it up!', '2025-01-08 16:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `fee_record`
--

CREATE TABLE `fee_record` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `other_collection` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `s_no` int(10) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `send_date` datetime NOT NULL DEFAULT current_timestamp(),
  `leave_type` varchar(100) NOT NULL,
  `leave_desc` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`s_no`, `sender_id`, `send_date`, `leave_type`, `leave_desc`, `start_date`, `end_date`, `status`) VALUES
(14, 'T1733714255', '2025-01-08 15:49:42', 'Marriage Leave', 'Leave 7 days', '2025-01-09 00:00:00', '2025-01-15 00:00:00', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `marks` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`s_no`, `exam_id`, `subject`, `student_id`, `marks`) VALUES
(13, 'E1736324029677e33bd4fcad', 'Introduction to Web Development', 'S1733714533', '90'),
(14, 'E1736324029677e33bd4fcad', 'Computer Networking', 'S1733714533', '80'),
(15, 'E1736324029677e33bd4fcad', 'Fundamentals of Cybersecurity', 'S1733714533', '80'),
(16, 'E1736324029677e33bd4fcad', 'Database Management Systems', 'S1733714533', '90'),
(17, 'E1736324029677e33bd4fcad', 'Python Programming', 'S1733714533', '80');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`s_no`, `sender_id`, `editor_id`, `class`, `subject`, `title`, `comment`, `file`, `timestamp`) VALUES
(1, 'A9876543210', 'A9876543210', '12c', 'Hindi', 'Hindi Homework ', 'do this on time', 'A98765432101718791715.png', '2024-06-19 15:38:35'),
(2, 'T1718791191', 'T1718791191', 'Year4', 'Network', 'Testing', '123', 'T17187911911733213269.png', '2024-12-03 15:07:49'),
(3, 'T1733714255', 'T1733714255', 'Year1', 'Introduction to Web Development', 'Homework for year 1', 'Deadline: 11:59 PM, 8th January 2025', 'T17337142551736322827.jpg', '2025-01-08 14:53:47'),
(4, 'T1733714255', 'T1733714255', 'Year2', 'Web Technologies and Frameworks', 'Homework for year 2', 'Deadline: 11:59 PM, 11th January 2025', 'T17337142551736322911.pdf', '2025-01-08 14:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `importance` varchar(5) NOT NULL DEFAULT '1',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`s_no`, `sender_id`, `editor_id`, `title`, `body`, `file`, `importance`, `timestamp`, `role`, `class`) VALUES
(51, 'A9876543210', 'A9876543210', 'Notice title', 'body', 'A98765432101718791385.png', '2', '2024-06-19 15:33:05', '', ''),
(52, 'A9876543210', 'A9876543210', 'Title 2', 'body 2', 'A98765432101718791411.png', '3', '2024-06-19 15:33:31', '', ''),
(53, 'A9876543210', 'A9876543210', 'Holiday notice', 'enjoy your holidays', 'A98765432101718791447.png', '1', '2024-06-19 15:34:07', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `s_no` int(11) NOT NULL,
  `id` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_no` varchar(40) NOT NULL,
  `ifsc_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`s_no`, `id`, `message`, `status`) VALUES
(70, 'A9876543210', 'Reminder for myself : have a good day', 'pending'),
(71, 'A9876543210', '\nBest of luck', 'completed'),
(72, 'T1733714255', 'Review student records and prepare the report by the end of the day.', 'pending'),
(73, 'T1733714255', 'Meeting with teacher scheduled for 08 Jan 2024 at 10:00 AM. ', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `request_date` varchar(30) NOT NULL,
  `request_time` varchar(30) NOT NULL,
  `request` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_no`, `id`, `fname`, `lname`, `father`, `gender`, `class`, `section`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `request_date`, `request_time`, `request`) VALUES
(6, 'S1733714390', 'Nita', 'Naty', 'Whatever', 'Female', 'Year1', 'EthicalHacking', '09-12-2024', 'S17337143901733714390.jpg', '0987654344', 'nita@gmail.com', 'Sensok', 'Phnom Penh', '1208', 'Tboung Khmum', '', '', ''),
(7, 'S1733714533', 'Go', 'Jo', 'Qw', 'Male', 'Year1', 'SOC', '01-01-2025', 'S17337143901733714391.jpg', '0987654344', 'gojo@gmail.com', 'Sensok', 'Phnom Penh', '1208', 'Takeo', '', '', ''),
(8, 'S1736306529', 'Sok', 'Sao', 'Chan', 'Male', 'Year2', 'EthicalHacking', '08-01-2025', 'S17363065291736306529.jpg', '0123356677', 'sao@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(9, 'S1736306686', 'John', 'Doe', 'Robert Doe', 'Male', 'Year2', 'SOC', '09-01-2001', 'S17363066861736306686.jpg', '0123356677', 'doe@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(10, 'S1736306814', 'Emily ', 'Davis', 'William Davis', 'Female', 'Year3', 'EthicalHacking', '09-02-2001', 'S17363068141736306814.jpg', '0123356677', 'emily@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(11, 'S1736306884', 'David', 'Lee', 'Daniel Lee', 'Female', 'Year3', 'SOC', '10-02-2001', 'S17363068841736306884.jpg', '0123356677', 'david@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(12, 'S1736306965', 'Kevin', 'Adams', 'Brian Adams', 'Male', 'Year4', 'EthicalHacking', '11-02-2001', 'S17363069651736306965.jpg', '0123356677', 'kevin@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(13, 'S1736307087', 'Lisa', 'Lewis', 'Paul Lewis', 'Female', 'Year4', 'SOC', '13-02-2001', 'S17363070871736307087.jpg', '0123356677', 'lisa@gmail.com', 'St#72, Toul Kork', 'Cambodia', '1208', 'Phnom Penh', '', '', ''),
(14, 'S1736324108', 'Susi', 'San', 'San San', 'Female', 'Year1', 'SOC', '08-01-2025', 'S17363241081736324108.jpg', '0987654344', 'susi@gmail.com', 'Sensok', 'Phnom Penh', '1208', 'Kandal', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_guardian`
--

CREATE TABLE `student_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(200) NOT NULL,
  `gcity` varchar(100) NOT NULL,
  `gzip` varchar(50) NOT NULL,
  `relation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_guardian`
--

INSERT INTO `student_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(1, 'S1718791292', 'Regan Clemons', '4567894562', 'Eum sit et laboriosa', 'Abbot', 'Hunter', 'Culpa odio laboriosa'),
(6, 'S1733714390', 'Happy', '0987654344', 'Sensok', 'Phnom Penh', '1208', 'Teacher'),
(7, 'S1733714533', 'Happy', '0987654344', 'Sensok', 'Phnom Penh', '1208', 'Teacher'),
(8, 'S1736306529', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(9, 'S1736306686', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(10, 'S1736306814', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(11, 'S1736306884', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(12, 'S1736306965', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(13, 'S1736307087', 'Puth', '0123456789', 'St#72, Toul Kork', 'Cambodia', '1208', 'Mother'),
(14, 'S1736324108', 'dfgdfg', '0987654344', 'Sensok', 'Phnom Penh', '1208', 'MAMA');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `s_no` int(20) NOT NULL,
  `subject_id` varchar(40) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`s_no`, `subject_id`, `subject_name`, `class`) VALUES
(10, 'Year1677df7e38678a', 'Introduction to Web Development', 'Year1'),
(11, 'Year1677df889ad9f1', 'Computer Networking', 'Year1'),
(12, 'Year1677df8b3296e1', 'Fundamentals of Cybersecurity', 'Year1'),
(13, 'Year1677df8bc2fef7', 'Database Management Systems', 'Year1'),
(14, 'Year1677df8e2d26c0', 'Python Programming', 'Year1'),
(15, 'Year2677df92892a26', 'Web Technologies and Frameworks', 'Year2'),
(16, 'Year2677df93a4401d', 'Network Security', 'Year2'),
(17, 'Year2677df9457f0e3', 'Ethical Hacking and Penetration Testing', 'Year2'),
(18, 'Year2677df94d9d42d', 'Operating Systems and Virtualization', 'Year2'),
(19, 'Year2677df95839306', 'Software Development Lifecycle and Methodologies', 'Year2'),
(20, 'Year3677df9668da1f', 'Advanced Web Development', 'Year3'),
(21, 'Year3677df96e99877', 'Cyber Threat Intelligence', 'Year3'),
(22, 'Year3677e01ec49594', 'Threat Intelligence and Incident Response', 'Year3'),
(23, 'Year3677e01f4e5577', 'Cloud Security and Virtualization', 'Year3'),
(24, 'Year3677e01fd814e5', 'Forensic Analysis', 'Year3'),
(25, 'Year4677e020f3285b', 'Penetration Testing Methodologies', 'Year4'),
(26, 'Year4677e0216f116b', 'Governance, Risk, and Compliance (GRC)', 'Year4'),
(27, 'Year4677e022244a4a', 'Security Operations Center (SOC)', 'Year4'),
(28, 'Year4677e022a6ef55', 'Legal and Ethical Aspects of Hacking', 'Year4'),
(29, 'Year4677e02334f073', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Year4');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`s_no`, `class`, `subject`, `file`) VALUES
(12, '12c', 'Hindi', 'T17187911911718792274.png'),
(13, '12c', 'English', 'T17187911911718792285.png');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`s_no`, `id`, `fname`, `lname`, `father`, `subject`, `gender`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `class`, `section`) VALUES
(3, 'T1733714255', 'Mr.', 'Koko', '', 'Hacking', 'Male', '09-12-2024', 'T17337142551736326205.jpg', '0875278777', 'koko@gmail.com', 'Sensok', 'Phnom Penh', '1208', 'Prey Veng', 'Year1', 'EthicalHacking');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_guardian`
--

CREATE TABLE `teacher_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(256) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(256) NOT NULL,
  `gcity` varchar(50) NOT NULL,
  `gzip` varchar(20) NOT NULL,
  `relation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_guardian`
--

INSERT INTO `teacher_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(3, 'T1733714255', 'Happy', '0987654344', 'Sensok', 'Phnom Penh', '1208', 'MAMA');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `mon` varchar(100) NOT NULL,
  `tue` varchar(100) NOT NULL,
  `wed` varchar(100) NOT NULL,
  `thu` varchar(100) NOT NULL,
  `fri` varchar(100) NOT NULL,
  `sat` varchar(100) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`s_no`, `class`, `section`, `start_time`, `end_time`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `editor_id`, `timestamp`) VALUES
(5937, 'Year1', 'EthicalHacking', '09:00 AM', '10:00 AM', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'A9876543210', '2025-01-08 15:37:43'),
(5938, 'Year1', 'EthicalHacking', '10:00 AM', '11:00 AM', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'A9876543210', '2025-01-08 15:37:43'),
(5939, 'Year1', 'EthicalHacking', '11:00 AM', '12:00 PM', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'A9876543210', '2025-01-08 15:37:43'),
(5940, 'Year1', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:37:43'),
(5941, 'Year1', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:37:43'),
(5942, 'Year1', 'EthicalHacking', '02:30 PM', '03:30 PM', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'A9876543210', '2025-01-08 15:37:43'),
(5943, 'Year1', 'EthicalHacking', '03:30 PM', '04:30 PM', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'A9876543210', '2025-01-08 15:37:43'),
(5944, 'Year1', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:37:43'),
(5945, 'Year2', 'EthicalHacking', '09:00 AM', '10:00 AM', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'A9876543210', '2025-01-08 13:26:28'),
(5946, 'Year2', 'EthicalHacking', '10:00 AM', '11:00 AM', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Cryptography', 'A9876543210', '2025-01-08 13:26:28'),
(5947, 'Year2', 'EthicalHacking', '11:00 AM', '12:00 PM', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Database Security', 'A9876543210', '2025-01-08 13:26:28'),
(5948, 'Year2', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:26:28'),
(5949, 'Year2', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:26:28'),
(5950, 'Year2', 'EthicalHacking', '02:30 PM', '03:30 PM', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'A9876543210', '2025-01-08 13:26:28'),
(5951, 'Year2', 'EthicalHacking', '03:30 PM', '04:30 PM', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Network Security', 'A9876543210', '2025-01-08 13:26:28'),
(5952, 'Year2', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:26:28'),
(5953, 'Year2', 'SOC', '09:00 AM', '10:00 AM', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'A9876543210', '2025-01-08 13:23:54'),
(5954, 'Year2', 'SOC', '10:00 AM', '11:00 AM', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Cryptography', 'A9876543210', '2025-01-08 13:23:54'),
(5955, 'Year2', 'SOC', '11:00 AM', '12:00 PM', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Database Security', 'A9876543210', '2025-01-08 13:23:54'),
(5956, 'Year2', 'SOC', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:23:54'),
(5957, 'Year2', 'SOC', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:23:54'),
(5958, 'Year2', 'SOC', '02:30 PM', '03:30 PM', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'A9876543210', '2025-01-08 13:23:54'),
(5959, 'Year2', 'SOC', '03:30 PM', '04:30 PM', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Network Security', 'A9876543210', '2025-01-08 13:23:54'),
(5960, 'Year2', 'SOC', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:23:54'),
(5961, 'Year1', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:37:43'),
(5962, 'Year1', 'Ethical Hacking', '09:00 AM', '10:00 AM', 'Introduction to Ethical Hacking', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'A9876543210', '2025-01-08 15:41:01'),
(5963, 'Year1', 'EthicalHacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:37:43'),
(5964, 'Year1', 'Ethical Hacking', '10:00 AM', '11:00 AM', 'Basic Computer Networks', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'A9876543210', '2025-01-08 15:41:01'),
(5965, 'Year1', 'Ethical Hacking', '11:00 AM', '12:00 AM', 'Operating Systems', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'A9876543210', '2025-01-08 15:41:01'),
(5966, 'Year1', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:41:01'),
(5967, 'Year1', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:41:01'),
(5968, 'Year1', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:41:01'),
(5969, 'Year2', 'Ethical Hacking', '09:00 AM', '10:00 AM', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'A9876543210', '2025-01-08 13:32:40'),
(5970, 'Year2', 'Ethical Hacking', '10:00 AM', '11:00 AM', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Cryptography', 'A9876543210', '2025-01-08 13:32:40'),
(5971, 'Year2', 'Ethical Hacking', '11:00 AM', '12:00 PM', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Database Security', 'A9876543210', '2025-01-08 13:32:40'),
(5972, 'Year2', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:32:40'),
(5973, 'Year2', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:32:40'),
(5974, 'Year2', 'Ethical Hacking', '02:30 PM', '03:30 PM', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'A9876543210', '2025-01-08 13:32:40'),
(5975, 'Year2', 'Ethical Hacking', '03:30 PM', '04:30 PM', 'Database Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Network Security', 'A9876543210', '2025-01-08 13:32:40'),
(5976, 'Year2', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:32:40'),
(5977, 'Year2', 'Security Operation Center', '09:00 AM', '10:00 AM', 'Web Application Security', 'Network Security', 'Cryptography', 'Linux and UNIX Security', 'Database Security', 'Web Application Security', 'A9876543210', '2025-01-08 13:36:58'),
(5978, 'Year2', 'Security Operation Center', '10:00 AM', '11:00 AM', 'Cryptography', 'Database Security', 'Linux and UNIX Security', 'Web Application Security', 'Network Security', 'Cryptography', 'A9876543210', '2025-01-08 13:36:58'),
(5979, 'Year2', 'Security Operation Center', '11:00 AM', '12:00 PM', 'Database Security', 'Linux and UNIX Security', 'Web Application Security', 'Network Security', 'Cryptography', 'Database Security', 'A9876543210', '2025-01-08 13:36:58'),
(5980, 'Year2', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:36:58'),
(5981, 'Year2', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:36:58'),
(5982, 'Year2', 'Security Operation Center', '02:30 PM', '03:30 PM', 'Linux and UNIX Security', 'Web Application Security', 'Database Security', 'Cryptography', 'Linux and UNIX Security', 'Linux and UNIX Security', 'A9876543210', '2025-01-08 13:36:58'),
(5983, 'Year2', 'Security Operation Center', '03:30 PM', '04:30 PM', 'Network Security', 'Cryptography', 'Network Security', 'Database Security', 'Web Application Security', 'Network Security', 'A9876543210', '2025-01-08 13:36:58'),
(5984, 'Year2', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:36:58'),
(5985, 'Year1', 'Security Operation Center', '09:00 AM', '10:00 AM', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'A9876543210', '2025-01-08 15:42:26'),
(5986, 'Year1', 'Security Operation Center', '10:00 AM', '11:00 AM', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'A9876543210', '2025-01-08 15:42:26'),
(5987, 'Year1', 'Security Operation Center', '11:00 AM', '12:00 PM', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'A9876543210', '2025-01-08 15:42:26'),
(5988, 'Year1', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:42:26'),
(5989, 'Year1', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:42:26'),
(5990, 'Year1', 'Security Operation Center', '02:30 PM', '03:30 PM', 'Python Programming', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'A9876543210', '2025-01-08 15:42:26'),
(5991, 'Year1', 'Security Operation Center', '03:30 PM', '04:30 PM', 'Information Security Fundamentals', 'Introduction to Ethical Hacking', 'Basic Computer Networks', 'Operating Systems', 'Python Programming', 'Information Security Fundamentals', 'A9876543210', '2025-01-08 15:42:26'),
(5992, 'Year1', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 15:42:26'),
(5993, 'Year1', 'SOC', '09:00 AM', '10:00 AM', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'Introduction to Ethical Hacking', 'T1733714255', '2025-01-08 15:20:43'),
(5994, 'Year1', 'SOC', '10:00 AM', '11:00 AM', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'Basic Computer Networks', 'T1733714255', '2025-01-08 15:20:43'),
(5995, 'Year1', 'SOC', '11:00 AM', '12:00 PM', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'Operating Systems', 'T1733714255', '2025-01-08 15:20:43'),
(5996, 'Year1', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 15:20:43'),
(5997, 'Year1', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 15:20:43'),
(5998, 'Year1', 'SOC', '02:30 PM', '03:30 PM', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'Python Programming ', 'T1733714255', '2025-01-08 15:20:43'),
(5999, 'Year1', 'SOC', '03:30 PM', '04:30 PM', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'Information Security Fundamentals', 'T1733714255', '2025-01-08 15:20:43'),
(6000, 'Year1', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 15:20:43'),
(6001, 'Year3', 'Ethical Hacking', '09:00 AM', '10:00 AM', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'A9876543210', '2025-01-08 14:17:17'),
(6002, 'Year3', 'Ethical Hacking', '10:00 AM', '11:00 AM', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'A9876543210', '2025-01-08 14:17:17'),
(6003, 'Year3', 'Ethical Hacking', '11:00 AM', '12:00 PM', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'A9876543210', '2025-01-08 14:17:17'),
(6004, 'Year3', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:17:17'),
(6005, 'Year3', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:17:17'),
(6006, 'Year3', 'Ethical Hacking', '02:30 PM', '03:30 PM', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'A9876543210', '2025-01-08 14:17:17'),
(6007, 'Year3', 'Ethical Hacking', '03:30 PM', '04:30 PM', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'A9876543210', '2025-01-08 14:17:17'),
(6008, 'Year3', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:17:17'),
(6009, 'Year3', 'Security Operation Center', '09:00 AM', '10:00 AM', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'A9876543210', '2025-01-08 14:16:34'),
(6010, 'Year3', 'Security Operation Center', '10:00 AM', '11:00 AM', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'A9876543210', '2025-01-08 14:16:34'),
(6011, 'Year3', 'Security Operation Center', '11:00 AM', '12:00 PM', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'A9876543210', '2025-01-08 14:16:34'),
(6012, 'Year3', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:16:34'),
(6013, 'Year3', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:16:34'),
(6014, 'Year3', 'Security Operation Center', '02:30 PM', '03:30 PM', 'Cloud Security and Virtualization', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'A9876543210', '2025-01-08 14:16:34'),
(6015, 'Year3', 'Security Operation Center', '03:30 PM', '04:30 PM', 'Forensic Analysis', 'Advanced Ethical Hacking', 'Mobile and IoT Security', 'Threat Intelligence and Incident Response', 'Cloud Security and Virtualization', 'Forensic Analysis', 'A9876543210', '2025-01-08 14:16:34'),
(6016, 'Year3', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:16:34'),
(6017, 'Year4', 'Ethical Hacking', '09:00 AM', '10:00 AM', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'A9876543210', '2025-01-08 13:57:30'),
(6018, 'Year4', 'Ethical Hacking', '10:00 AM', '11:00 AM', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'A9876543210', '2025-01-08 13:57:30'),
(6019, 'Year4', 'Ethical Hacking', '11:00 AM', '12:00 PM', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'A9876543210', '2025-01-08 13:57:30'),
(6020, 'Year4', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:57:30'),
(6021, 'Year4', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:57:30'),
(6022, 'Year4', 'Ethical Hacking', '02:30 PM', '03:30 PM', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'A9876543210', '2025-01-08 13:57:30'),
(6023, 'Year4', 'Ethical Hacking', '03:30 PM', '04:30 PM', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'A9876543210', '2025-01-08 13:57:30'),
(6024, 'Year4', 'Ethical Hacking', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 13:57:30'),
(6025, 'Year4', 'Security Operation Center', '09:00 AM', '10:00 AM', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'A9876543210', '2025-01-08 14:14:07'),
(6026, 'Year4', 'Security Operation Center', '10:00 AM', '11:00 AM', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'A9876543210', '2025-01-08 14:14:07'),
(6027, 'Year4', 'Security Operation Center', '11:00 AM', '12:00 PM', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'A9876543210', '2025-01-08 14:14:07'),
(6028, 'Year4', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:14:07'),
(6029, 'Year4', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:14:07'),
(6030, 'Year4', 'Security Operation Center', '02:30 PM', '03:30 PM', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'A9876543210', '2025-01-08 14:14:07'),
(6031, 'Year4', 'Security Operation Center', '03:30 PM', '04:30 PM', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Penetration Testing Methodologies', 'Governance, Risk, and Compliance (GRC)', 'Security Operations Center (SOC)', 'Legal and Ethical Aspects of Hacking', 'Capstone Project: Ethical Hacking and Cyber Defense', 'A9876543210', '2025-01-08 14:14:07'),
(6032, 'Year4', 'Security Operation Center', '', '', '', '', '', '', '', '', 'A9876543210', '2025-01-08 14:14:07'),
(6033, 'Year3', 'SOC', '09:00 AM', '10:00 AM', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'T1733714255', '2025-01-08 14:46:22'),
(6034, 'Year3', 'SOC', '10:00 AM', '11:00 AM', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'T1733714255', '2025-01-08 14:46:22'),
(6035, 'Year3', 'SOC', '11:00 AM', '12:00 PM', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'T1733714255', '2025-01-08 14:46:22'),
(6036, 'Year3', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:46:22'),
(6037, 'Year3', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:46:22'),
(6038, 'Year3', 'SOC', '02:30 PM', '03:30 PM', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'T1733714255', '2025-01-08 14:46:22'),
(6039, 'Year3', 'SOC', '03:30 PM', '04:30 PM', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'T1733714255', '2025-01-08 14:46:22'),
(6040, 'Year3', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:46:22'),
(6041, 'Year3', 'EthicalHacking', '09:00 AM', '10:00 AM', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'Advanced Ethical Hacking', 'T1733714255', '2025-01-08 14:45:33'),
(6042, 'Year3', 'EthicalHacking', '10:00 AM', '11:00 AM', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'Mobile and IoT Security', 'T1733714255', '2025-01-08 14:45:33'),
(6043, 'Year3', 'EthicalHacking', '11:00 AM', '12:00 PM', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'Threat Intelligence and Incident Response', 'T1733714255', '2025-01-08 14:45:33'),
(6044, 'Year3', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:45:33'),
(6045, 'Year3', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:45:33'),
(6046, 'Year3', 'EthicalHacking', '02:30 PM', '03:30 PM', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'Cloud Security and Virtualization', 'T1733714255', '2025-01-08 14:45:33'),
(6047, 'Year3', 'EthicalHacking', '03:30 PM', '04:30 PM', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'Forensic Analysis', 'T1733714255', '2025-01-08 14:45:33'),
(6048, 'Year3', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:45:33'),
(6049, 'Year4', 'SOC', '09:00 AM', '10:00 AM', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'T1733714255', '2025-01-08 14:48:01'),
(6050, 'Year4', 'SOC', '10:00 AM', '11:00 AM', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'T1733714255', '2025-01-08 14:48:01'),
(6051, 'Year4', 'SOC', '11:00 AM', '12:00 PM', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'T1733714255', '2025-01-08 14:48:01'),
(6052, 'Year4', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:48:01'),
(6053, 'Year4', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:48:01'),
(6054, 'Year4', 'SOC', '02:30 PM', '03:30 PM', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'T1733714255', '2025-01-08 14:48:01'),
(6055, 'Year4', 'SOC', '03:30 PM', '04:30 PM', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'T1733714255', '2025-01-08 14:48:01'),
(6056, 'Year4', 'SOC', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:48:01'),
(6057, 'Year4', 'EthicalHacking', '09:00 AM', '10:00 AM', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'Governance, Risk, and Compliance (GRC)', 'T1733714255', '2025-01-08 14:50:04'),
(6058, 'Year4', 'EthicalHacking', '10:00 AM', '11:00 AM', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'Security Operations Center (SOC)', 'T1733714255', '2025-01-08 14:50:04'),
(6059, 'Year4', 'EthicalHacking', '11:00 AM', '12:00 PM', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'Legal and Ethical Aspects of Hacking', 'T1733714255', '2025-01-08 14:50:04'),
(6060, 'Year4', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:50:04'),
(6061, 'Year4', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:50:04'),
(6062, 'Year4', 'EthicalHacking', '02:30 PM', '03:30 PM', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'Capstone Project: Ethical Hacking and Cyber Defense', 'T1733714255', '2025-01-08 14:50:04'),
(6063, 'Year4', 'EthicalHacking', '03:30 PM', '04:30 PM', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'Penetration Testing Methodologies', 'T1733714255', '2025-01-08 14:50:04'),
(6064, 'Year4', 'EthicalHacking', '', '', '', '', '', '', '', '', 'T1733714255', '2025-01-08 14:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `s_no` int(15) NOT NULL,
  `id` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(700) NOT NULL,
  `role` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`s_no`, `id`, `email`, `password_hash`, `role`, `theme`) VALUES
(1, 'A9876543210', 'admin@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'admin', 'light'),
(3, 'S1718791292', 'student@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'student', 'light'),
(4, 'O7898987845', 'owner@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'owner', 'light'),
(10, 'T1733714255', 'koko@gmail.com', '$2y$10$sgKWqSp5FbLvSKQMuGVPjeZU9KPQsmrn.pPb8h5UCqeGSvVWOkhiW', 'teacher', 'light'),
(11, 'S1733714390', 'nita@gmail.com', '$2y$10$Y6KEKYt37BdLQtWje47AV.9w1Dp9Dot/BxdgYBt7b.25UznRZDPq6', 'student', 'light'),
(12, 'S1733714533', 'gojo@gmail.com', '$2y$10$QRedkTwS4bNNPtq6Dp3q/eHnCaVpjYtAHOqlACo2gj12VU1b.FvQe', 'student', 'light'),
(13, 'S1736306529', 'sao@gmail.com', '$2y$10$cMQROraiT4OYlIj8lXiSbuIwjmNwR.YqoBxZTolrnbHiU08lRJ65G', 'student', 'light'),
(14, 'S1736306686', 'doe@gmail.com', '$2y$10$MJ/F630p8k3LyYlTUygd.u7ED8Zajk/kuKPia8E1SusekXAEueL/m', 'student', 'light'),
(15, 'S1736306814', 'emily@gmail.com', '$2y$10$OhrIqj9BshqoH2ccQtJMoea6i8Wp6OC1a0P.j6VJk6JAUwTAU5TYK', 'student', 'light'),
(16, 'S1736306884', 'david@gmail.com', '$2y$10$GyRDtbgnFPP6iGRkUmT1muXzJuvUCzGdjyJcr/Mgqmq.i.novE7YC', 'student', 'light'),
(17, 'S1736306965', 'kevin@gmail.com', '$2y$10$J5yIDNLQJcYuKdBVwFPr4OOGY7bGcwotdLIstiklZ76cTSgNPwM0W', 'student', 'light'),
(18, 'S1736307087', 'lisa@gmail.com', '$2y$10$3UzpqTQ/AhANxuazTDqkwusrtTwT7rB9QA4OZKg9WTlPyPsC.76si', 'student', 'light'),
(19, 'S1736324108', 'susi@gmail.com', '$2y$10$FMp1HWEFoMaI2zm9CuwCWutYchCg19j3fmHw/kHt83.jRgDyo49R2', 'student', 'light');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_root`
--
ALTER TABLE `bus_root`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_staff`
--
ALTER TABLE `bus_staff`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fee_record`
--
ALTER TABLE `fee_record`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_guardian`
--
ALTER TABLE `student_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bus_root`
--
ALTER TABLE `bus_root`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bus_staff`
--
ALTER TABLE `bus_staff`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_record`
--
ALTER TABLE `fee_record`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_guardian`
--
ALTER TABLE `student_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6065;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `s_no` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
