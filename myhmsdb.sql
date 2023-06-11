-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2023 lúc 01:11 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(12, 14, 'Tran Ha', 'Linh', 'Female', 'linhlinh@gmail.com', '0123456789', 'Dinesh', 700, '2023-06-30', '14:00:00', 1, 1),
(12, 15, 'Tran Ha', 'Linh', 'Female', 'linhlinh@gmail.com', '0123456789', 'Ganesh', 550, '2023-06-25', '14:00:00', 1, 1),
(1, 16, 'Do Hoang', 'Tung', 'Male', 'tung@gmail.com', '9876543210', 'Ganesh', 550, '2023-06-25', '08:00:00', 1, 1),
(12, 19, 'Tran Ha', 'Linh', 'Female', 'linhlinh@gmail.com', '0123456789', 'VD', 3000, '2023-06-24', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('Linh', 'linh1@gmail.com', '0258788282', 'friendly interface'),
('Van', 'van210@gmail.com', '0123456789', 'Lovely interface!!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctb`
--

CREATE TABLE `doctb` (
  `did` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `doctb`
--

INSERT INTO `doctb` (`did`, `username`, `password`, `email`, `spec`, `docFees`) VALUES
(12, 'Hong', '123456', 'hong123', 'Pathology', 800),
(13, 'Huyen', '123456', 'huyen123', 'Anesthesia', 1600),
(14, 'Hung', '123456', 'hung123', 'Dental Care', 600),
(15, 'Tran Ngoc Hiep', '123456', 'hiep123@gmail.com', 'General', 2000),
(16, 'Trinh Thuy Duong', '123456', 'duong@gmail.com', 'Cardiologist', 2500),
(17, 'Do Thuy Trang', '123456', 'trang123@gmail.com', 'Neurologist', 3000),
(18, 'Vanh Vanh', '123456', 'vanh@gmail.com', 'Pediatrician', 4000),
(19, 'Bui Ngoc Diep', '123456', 'diep@gmail.com', 'Pathology', 1500),
(20, 'Phan Khanh Ly', '123456', 'ly@gmail.com', 'Obstetrics and Gynecology', 450),
(21, 'Pham Thi Tuyet', '123456', 'tuyet@gmail.com', 'Internal Medicine', 3500),
(22, 'Bui Thi Hue', '123456', 'hue@gmail.com', 'Orthopedics', 6500),
(23, 'Nguyen Thu Hoai', '123456', 'hoai@gmail.com', 'Dermatologists', 850),
(24, 'Pham The Chien', '123456', 'chien@gmail.com', 'Anesthesia', 750),
(25, 'Nguyen Thuy Duong', '123456', 'duong@gmail.com', 'Dental Care', 2500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Do Hoang', 'Tung', 'Male', 'tung@gmail.com', '9876543210', 'tung123', 'tung123'),
(12, 'Tran Ha', 'Linh', 'Female', 'linhlinh@gmail.com', '0123456789', '123456', '123456'),
(13, 'Tran Thi Vân ', 'Anh', 'Female', 'abc123@gmail.com', '0123456789', '123456', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('Tran Ngoc Hiep', 12, 17, 'Tran Ha', 'Linh', '2023-06-18', '08:00:00', 'stomachache', 'Not', 'Drink warm water everyday'),
('Tran Ngoc Hiep', 1, 18, 'Do Hoang', 'Tung', '2023-06-11', '15:00:00', 'cough', 'nothing', 'drink warm water everyday');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`did`);

--
-- Chỉ mục cho bảng `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `doctb`
--
ALTER TABLE `doctb`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
