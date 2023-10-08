-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 07:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentID` int(11) DEFAULT NULL,
  `Problem` varchar(50) DEFAULT NULL,
  `PatientId` int(11) DEFAULT NULL,
  `DoctorName` varchar(50) DEFAULT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  `DoctorType` varchar(30) DEFAULT NULL,
  `Qualification` varchar(20) DEFAULT NULL,
  `DoctorFees` int(11) DEFAULT NULL,
  `Appointment_Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DoctorID` int(11) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Entry_Charge` int(11) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Doctor_Type` varchar(50) DEFAULT NULL,
  `Email_Id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DoctorID`, `First_Name`, `Last_Name`, `Gender`, `ContactNumber`, `Age`, `Entry_Charge`, `Qualification`, `Doctor_Type`, `Email_Id`) VALUES
(1, 'Vivek', 'Bhardwaj', 'M', '9243668213', 32, 400, 'MD', 'Eyes', 'bhardwajvivek@gmail.com'),
(2, 'Vinod', 'Gupta', 'M', '9382674321', 42, 300, 'BDS', 'Eyes', 'vinod24gupta@gmail.com'),
(3, 'Ashish', 'Arora', 'M', '8213264251', 47, 200, 'BHMS', 'Ear', 'arorashish5871@gmail.com'),
(4, 'Poonam', 'Mishra', 'F', '7782934712', 27, 700, 'MD', 'Ear', 'punamishra@gmail.com'),
(5, 'Madhu', 'Srivastva', 'F', '9982675837', 33, 500, 'MD', 'Heart', 'srivastvamadhu@gmail.com'),
(6, 'Anoop', 'Faujdar', 'M', '9788855387', 58, 550, 'MBBS', 'Heart', 'anoopfauji@gmail.com'),
(7, 'Ankita', 'Khandelwal', 'F', '9985671358', 36, 300, 'BAMS', 'Bone', 'khandelwalankita@gmail.com'),
(8, 'Abhishek', 'Agarwal', 'M', '8763505789', 25, 200, 'Phd', 'Bone', 'abhishekagarwal25@gmail.com'),
(9, 'Piyush', 'Gupta', 'M', '7855671213', 52, 400, 'MBBS', 'Lungs', 'piyushgupta562@gmail.com'),
(10, 'Priyanka', 'Jangid', 'F', '8005628135', 68, 600, 'BDS', 'Lungs', 'prinyanka456jangid@gmail.com'),
(11, 'Deepak', 'Sharma', 'M', '9505745565', 38, 250, 'MS', 'Kidney', 'dipakshramtalks@gmail.com'),
(12, 'Prakash', 'Yadav', 'M', '9460812415', 47, 350, 'BAMS', 'Kidney', 'yadavprakash79@gmail.com'),
(13, 'Harish', 'Chauhan', 'M', '9855762432', 54, 450, 'PhD', 'General Physicist', 'harishchauhanstarts@gmail.com'),
(14, 'Seema', 'Patodi', 'F', '9651404283', 63, 500, 'BHMS', 'General Physicist', 'meseemapatodi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `First_Name`, `Last_Name`, `Gender`, `ContactNumber`, `Age`, `EmailID`, `BloodGroup`, `Address`) VALUES
(1, 'Sanjay', 'Gosavi', 'M', '9828698648', 28, 'sanjay24gosavi@gmail.com', 'B+', 'D-402 Anand Nagar M.I. road Delhi'),
(2, 'Anand', 'Sharma', 'M', '9858688788', 30, 'anand54sharma@gmail.com', 'B+', 'E-002 Tilak Nagar New Delhi'),
(3, 'Subhash', 'Garg', 'M', '9667479292', 34, 'gargsubash1703@gmail.com', 'A+', 'Basant Vihar Pune'),
(4, 'Priya', 'Khandelwal', 'F', '8005629518', 28, 'sanjay24gosavi@gmail.com', 'B-', 'PlotNo. 104 Subhash chowk Chandigarh'),
(5, 'Pritam', 'Yadav', 'M', '9828652524', 18, 'letsmailprit02@gmail.com', 'AB+', 'C-03 Vaishali Nagar Jaipur'),
(6, 'Sanju', 'Sharma', 'M', '9279264253', 42, 'sansharma8@gmail.com', 'B-', 'Gopal Nagar Bharatpur'),
(7, 'Tejaswani', 'Goswami', 'F', '8005263213', 32, 'goswamiteja@gmail.com', 'A-', 'Prasad Dham Mumbai'),
(8, 'Sumit', 'Bhardwaj', 'M', '8214358648', 46, 'sumit4566bhardwaj@gmail.com', 'O+', 'Surya Path Roorki'),
(9, 'Kavita', 'Jain', 'F', '9825426363', 15, 'jain78kavi@gmail.com', 'AB+', 'Gaurav Path M.I. road Delhi'),
(10, 'Yogesh', 'Sihra', 'M', '9828565642', 28, 'yogeshshira28@gmail.com', 'AB-', 'Durgapur road Kolkatta'),
(11, 'Bhanu', 'Pratap', 'M', '8052674312', 68, 'bahnupratap@gmail.com', 'O+', 'vivekanand street Malipura'),
(12, 'Sonam', 'Tiwari', 'F', '9797465823', 18, 'sonamtiwari423@gmail.com', 'A+', 'E-03 Tonk Phatak Jaipur'),
(13, 'Neha', 'Mehta', 'F', '7073165498', 24, 'mehtaneha556@gmail.com', 'AB-', 'rani chawk jalandhar'),
(14, 'Roop', 'Devi', 'F', '8302567823', 56, 'roopdevima@gmail.com', 'B-', 'Chandni chawak Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ReportID` int(11) NOT NULL,
  `appointmentID` int(11) NOT NULL,
  `patientID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `MedicinePrescribed` varchar(200) NOT NULL,
  `DoctorComment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userType`, `Password`) VALUES
(1, 'Doctor', 'One'),
(1, 'Patient', 'One'),
(2, 'Doctor', 'Two'),
(2, 'Patient', 'Two'),
(3, 'Doctor', 'Three'),
(3, 'Patient', 'Three'),
(4, 'Doctor', 'Four'),
(4, 'Patient', 'Four'),
(5, 'Doctor', 'Five'),
(5, 'Patient', 'Five'),
(6, 'Doctor', 'Six'),
(6, 'Patient', 'Six'),
(7, 'Doctor', 'Seven'),
(7, 'Patient', 'Seven'),
(8, 'Doctor', 'Eight'),
(8, 'Patient', 'Eight'),
(9, 'Doctor', 'Nine'),
(9, 'Patient', 'Nine'),
(10, 'Doctor', 'Ten'),
(10, 'Patient', 'Ten'),
(11, 'Doctor', 'Eleven'),
(11, 'Patient', 'Eleven'),
(12, 'Doctor', 'Twelve'),
(12, 'Patient', 'Twelve'),
(13, 'Doctor', 'Thirteen'),
(13, 'Patient', 'Thirteen'),
(14, 'Patient', 'Fourteen'),
(14, 'Doctor', 'Fourteen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD KEY `FK_p` (`PatientId`),
  ADD KEY `FK_docid` (`DoctorID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ReportID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `FK_docid` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  ADD CONSTRAINT `FK_p` FOREIGN KEY (`PatientId`) REFERENCES `patients` (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
