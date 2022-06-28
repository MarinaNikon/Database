-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 12:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_dentist_g00398315`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentNo` int(10) NOT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `LateCnsltnFee` decimal(9,2) DEFAULT NULL,
  `Reminder` bit(1) NOT NULL,
  `PatientNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentNo`, `AppointmentDate`, `AppointmentTime`, `LateCnsltnFee`, `Reminder`, `PatientNo`) VALUES
(1, '2020-04-01', '10:00:00', NULL, b'1', 1),
(2, '2020-05-10', '10:30:00', NULL, b'0', 5),
(3, '2020-03-27', '11:00:00', NULL, b'1', 6),
(4, '2020-07-01', '12:00:00', NULL, b'1', 4),
(5, '2021-04-03', '10:00:00', NULL, b'1', 15),
(6, '2019-04-03', '11:00:00', NULL, b'1', 13),
(7, '2020-08-15', '11:30:00', NULL, b'0', 7),
(8, '2020-03-15', '12:00:00', NULL, b'1', 8),
(9, '2020-07-27', '15:00:00', NULL, b'0', 12),
(10, '2020-04-04', '15:30:00', NULL, b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patientchart`
--

CREATE TABLE `patientchart` (
  `PatientNo` int(10) NOT NULL,
  `PatientName` varchar(50) DEFAULT NULL,
  `PatientSurname` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` int(15) DEFAULT NULL,
  `e-mail` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `TreatmentDescription` varchar(300) DEFAULT NULL,
  `DentalReport` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientchart`
--

INSERT INTO `patientchart` (`PatientNo`, `PatientName`, `PatientSurname`, `City`, `Postcode`, `Address`, `Phone`, `e-mail`, `DOB`, `TreatmentDescription`, `DentalReport`) VALUES
(1, 'Hanna', 'Collins', 'Ballincollig', 'P31 N250', '73, Park Rd.', 873806548, 'collins@gmail.com', '1973-06-17', 'Root Canal Treatments - Molar - (back) tooth', NULL),
(2, 'Patrickt', 'Murphy', 'Ballyandreen', 'P25 RC66', '38, Maple Lawn', 876337193, 'murphy@gmail.com', '1955-03-15', 'Ceramic Fixed Braces - 1 Arch', 'Necessary follow up consultation'),
(3, 'David', 'Smith', 'Ballincollig', 'P31 A393', '5, Castle Rd.', 893580808, 'smith@gmail.com', '2009-08-28', 'Back top left molar', NULL),
(4, 'Jorge', 'Gallagher ', 'Carrigrohane', 'P31 Y996', '47, Holly Rd.', 868156480, 'callagher@gmail.com', '1962-08-12', 'Gum treatment', NULL),
(5, 'Robert', 'Tighe', 'Ballincollig', 'P31 C593', '3, st. Ann\'s Hill', 863907175, 'tighe@gmail.com', '1975-04-17', 'Whitening', NULL),
(6, 'Mary', 'Flynn', 'Ballincollig', 'P31 K510', '7, Primrose Hill', 853635876, 'flynn@gmail.com', '1963-03-11', 'Should be referred to a specialist', 'Treatment was made'),
(7, 'Roger', 'Anderson', 'Carrigrohane', 'T13 Y93W', '46, Kerry Rd.', 981070780, 'anderson@gmail.com', '1967-04-05', 'Xray', NULL),
(8, 'Niall', 'O\'Kelly', 'Ballincollig', 'P31 PW71', '43, Laureston Ct.', 894741857, 'okelly@gmail.com', '1979-07-13', 'Bridge', 'Root Canal Treatments - Premolar - (side) tooth'),
(9, 'Emma', 'Connelly', 'Ballincollig', 'P31 R688', '56, Pearse Park', 864388365, 'connelly@gmail.com', '1987-07-24', 'Full examination', NULL),
(10, 'Peter', 'Byrne', 'Ballincollig', 'P31 XD76', '4, Goat\'s Ln.', 863610843, 'byrne@gmail.com', '1996-03-16', 'Back bottom left molar', NULL),
(11, 'Kate', 'O’Sullivan', 'Ballincollig', 'P31 N620', '37, Link Rd.', 895313763, 'osulivan@gmail.com', '1988-05-25', 'Cleaning', NULL),
(12, 'Lisa', 'McKinney', 'Ballinora', 'T13 FFC0', '4, John St.', 876844315, 'mckinney@gmail.com', '2005-07-03', 'Kids routine exam', NULL),
(13, 'John', 'Walsh', 'Ballincollig', 'P31 V627', '9, Main St.', 854374151, 'walsh@gmail.com', '1969-03-21', 'Crow', NULL),
(14, 'Sean', 'Kelly', 'Ballincollig', 'P31 ET78', '34, James St.', 894553831, 'kelly@gmail.com', '1967-12-15', 'Filling', NULL),
(15, 'Jack', 'Doyle', 'Ballincollig', 'P31 TY40', '43, O\'Brien Street', 857723483, 'doyle@gmail.com', '1983-10-30', 'Full examination', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentNo` int(10) NOT NULL,
  `TreatmentCostTotal` decimal(9,2) DEFAULT NULL,
  `TreatmentPaidAmount` decimal(9,2) DEFAULT NULL,
  `DueUnpaidAmount` decimal(9,2) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `PaymentPaidDate` date DEFAULT NULL,
  `LateCnsltnFee` decimal(9,2) DEFAULT NULL,
  `PatientNo` int(10) NOT NULL,
  `AppointmentNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentNo`, `TreatmentCostTotal`, `TreatmentPaidAmount`, `DueUnpaidAmount`, `PaymentMethod`, `PaymentPaidDate`, `LateCnsltnFee`, `PatientNo`, `AppointmentNo`) VALUES
(1, '300.00', '150.00', '150.00', 'cash', '2020-05-10', NULL, 5, 2),
(2, '30.00', '30.00', '0.00', 'cash', '2020-04-04', NULL, 15, 5),
(3, '1200.00', '1000.00', '200.00', 'CreditCard', '2021-04-03', NULL, 13, 6),
(4, '15.00', '15.00', '0.00', 'cash', '2020-08-15', NULL, 7, 7),
(5, '80.00', '30.00', '50.00', 'cash', '2020-04-04', NULL, 4, 4),
(6, '700.00', '250.00', '450.00', 'cash', '2020-04-04', NULL, 8, 8),
(7, '0.00', '0.00', '0.00', NULL, '2020-04-04', NULL, 12, 9),
(8, '300.00', '300.00', '0.00', NULL, '2020-04-01', NULL, 1, 1),
(9, '50.00', '50.00', '0.00', 'CreditCard', '2020-03-25', NULL, 6, 3),
(10, '350.00', '0.00', '350.00', NULL, '2020-04-04', NULL, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `SpecialistNo` int(10) NOT NULL,
  `SpecialistName` varchar(50) DEFAULT NULL,
  `SpecialistSurname` varchar(50) DEFAULT NULL,
  `SpecialistEmail` varchar(100) DEFAULT NULL,
  `TreatmentDescription` varchar(300) DEFAULT NULL,
  `SpecialistDate` date DEFAULT NULL,
  `SpecialistTime` time DEFAULT NULL,
  `PatientNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`SpecialistNo`, `SpecialistName`, `SpecialistSurname`, `SpecialistEmail`, `TreatmentDescription`, `SpecialistDate`, `SpecialistTime`, `PatientNo`) VALUES
(1, 'Grania', 'O\'Connell', 'reception@corkdentalcare.com', 'Ceramic Fixed Braces - 1 Arch', '2020-03-04', '16:00:00', 2),
(2, 'Grania', 'O\'Connell', 'reception@corkdentalcare.com', 'follow up consultation', '2020-05-04', '16:00:00', 2),
(3, 'Emma', 'Vahey', 'reception@corkdentalcare.com', 'Root Canal Treatments - Premolar - (side) tooth', '2019-10-07', '18:00:00', 8),
(4, 'Miechael', 'Doyle', 'info@corkcitydentist.ie', 'Extractions – surgical', '2019-11-07', '16:00:00', 9),
(5, 'Miechael', 'Doyle', 'info@corkcitydentist.ie', NULL, '2021-03-04', '16:00:00', 13);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TreatmentNo` varchar(15) NOT NULL,
  `TreatmentDescription` varchar(300) DEFAULT NULL,
  `TreatmentCostTotal` decimal(9,2) DEFAULT NULL,
  `DentalReport` varchar(300) DEFAULT NULL,
  `PaymentNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TreatmentNo`, `TreatmentDescription`, `TreatmentCostTotal`, `DentalReport`, `PaymentNo`) VALUES
('tr_01', 'Whitening', '300.00', NULL, 1),
('tr_02', 'Full examination', '30.00', NULL, 2),
('tr_03', 'Crow', '1200.00', NULL, 3),
('tr_04', 'Xray', '15.00', NULL, 4),
('tr_05', 'Gum treatment', '80.00', NULL, 5),
('tr_06', 'Bridge', '700.00', 'Root Canal Treatments - Premolar - (side) tooth', 6),
('tr_07', 'Kids routine exam', '0.00', NULL, 7),
('tr_08', 'Root Canal Treatments - Molar - (back) tooth', '300.00', NULL, 8),
('tr_09', 'Should be referred to a specialist', '50.00', 'Treatment was made', 9),
('tr_10', 'Root Canal Treatments - Molar - (back) tooth', '350.00', NULL, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentNo`),
  ADD KEY `PatientNo` (`PatientNo`);

--
-- Indexes for table `patientchart`
--
ALTER TABLE `patientchart`
  ADD PRIMARY KEY (`PatientNo`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentNo`),
  ADD KEY `PatientNo` (`PatientNo`),
  ADD KEY `AppointmentNo` (`AppointmentNo`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`SpecialistNo`),
  ADD KEY `PatientNo` (`PatientNo`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TreatmentNo`),
  ADD KEY `PaymentNo` (`PaymentNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientNo`) REFERENCES `patientchart` (`PatientNo`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`PatientNo`) REFERENCES `patientchart` (`PatientNo`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`AppointmentNo`) REFERENCES `appointment` (`AppointmentNo`);

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_ibfk_1` FOREIGN KEY (`PatientNo`) REFERENCES `patientchart` (`PatientNo`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`PaymentNo`) REFERENCES `payment` (`PaymentNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
