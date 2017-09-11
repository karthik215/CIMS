-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2017 at 02:13 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fm_cims_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fm_animaldata`
--

CREATE TABLE `fm_animaldata` (
  `IdAnimal` int(11) NOT NULL,
  `IdBeneficary` int(30) NOT NULL,
  `IdEnrolment` int(30) NOT NULL,
  `AnimalRegNo` int(30) NOT NULL,
  `TagNo` int(30) NOT NULL,
  `AnimalType` varchar(15) NOT NULL,
  `BreedType` varchar(15) NOT NULL,
  `AgeinMonths` int(11) NOT NULL,
  `PregnencyStage` int(11) NOT NULL,
  `ColorTone` varchar(15) NOT NULL,
  `PreviousCalvings` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `DateEnrolled` date NOT NULL,
  `excelfilename` varchar(150) NOT NULL,
  `PeriodOfInsurance` int(11) NOT NULL,
  `AnimalValue` int(11) NOT NULL,
  `AnimalStatus` varchar(15) NOT NULL,
  `DateofDeath` date NOT NULL,
  `Purpose` varchar(15) NOT NULL,
  `DateofPostMortam` date NOT NULL,
  `ReasonofDeath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_auditlog`
--

CREATE TABLE `fm_auditlog` (
  `ID` int(11) NOT NULL,
  `datetime` date NOT NULL,
  `Action` varchar(60) NOT NULL,
  `Screenname` varchar(60) NOT NULL,
  `ActionDetails` text NOT NULL,
  `actionby` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_beneficary`
--

CREATE TABLE `fm_beneficary` (
  `IdBeneficary` int(11) NOT NULL,
  `BeneficaryName` varchar(100) NOT NULL,
  `FatherSpouse` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `AadharNo` varchar(60) NOT NULL,
  `RationCardNo` varchar(25) NOT NULL,
  `caste` varchar(25) NOT NULL,
  `Disabled` char(1) NOT NULL,
  `FarmerCategory` varchar(50) NOT NULL,
  `MobileNo` int(20) NOT NULL,
  `Nominee` varchar(100) NOT NULL,
  `Relationship` varchar(50) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `BranchName` varchar(50) NOT NULL,
  `IFSCCode` varchar(50) NOT NULL,
  `BankAcNo` varchar(50) NOT NULL,
  `AgeOfBeneficary` int(11) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(50) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `uploadfilename` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_district`
--

CREATE TABLE `fm_district` (
  `IdDistrict` int(11) NOT NULL,
  `DistrictName` varchar(50) NOT NULL,
  `DistrictCode` varchar(10) NOT NULL,
  `IDState` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_district`
--

INSERT INTO `fm_district` (`IdDistrict`, `DistrictName`, `DistrictCode`, `IDState`) VALUES
(1, 'RangaReddy', 'RR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fm_division`
--

CREATE TABLE `fm_division` (
  `IdDivision` int(11) NOT NULL,
  `DivisionName` varchar(50) NOT NULL,
  `DivisionCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_dropdowns`
--

CREATE TABLE `fm_dropdowns` (
  `id` int(11) NOT NULL,
  `DDType` varchar(100) NOT NULL,
  `DDText` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_dropdowns`
--

INSERT INTO `fm_dropdowns` (`id`, `DDType`, `DDText`) VALUES
(1, 'Gender', 'M'),
(2, 'Gender', 'F'),
(3, 'Caste', 'OC'),
(4, 'Caste', 'BC'),
(5, 'Caste', 'SC'),
(6, 'Caste', 'ST'),
(7, 'Caste', 'Miniority'),
(8, 'Category', 'SF'),
(9, 'Category', 'MF'),
(10, 'Category', 'AL'),
(11, 'AnimalType', 'Cow'),
(12, 'AnimalType', 'Buffalo'),
(13, 'Breed', 'Graded Murrah'),
(14, 'Breed', 'Mehsana'),
(15, 'Breed', 'PCBHF'),
(16, 'Breed', 'Others'),
(17, 'Breed', 'Exotic/Cb HF'),
(18, 'Breed', 'HFX'),
(19, 'Breed', 'Cow'),
(20, 'Breed', 'CB Cow'),
(21, 'Breed', 'PCBJ'),
(22, 'Breed', 'ExoticJersey'),
(23, 'Breed', 'Murrahy'),
(24, 'Breed', 'Godavari'),
(25, 'Breed', 'Ongole'),
(26, 'Breed', 'Ongole X'),
(27, 'Breed', 'Non Descript Cow'),
(28, 'Breed', 'Non Descript Buffallow'),
(29, 'Breed', 'Tarparkar'),
(30, 'SkinCoat', 'White'),
(31, 'SkinCoat', 'Blue'),
(32, 'SkinCoat', 'Black'),
(33, 'SkinCoat', 'Brown'),
(34, 'SkinCoat', 'Red'),
(35, 'SkinCoat', 'Black&White'),
(36, 'SkinCoat', 'Brown&White'),
(37, 'StageOfPrenancy', '1'),
(38, 'StageOfPrenancy', '2'),
(39, 'StageOfPrenancy', '3'),
(40, 'StageOfPrenancy', '4'),
(41, 'StageOfPrenancy', '5'),
(42, 'StageOfPrenancy', '6'),
(43, 'StageOfPrenancy', '7'),
(44, 'StageOfPrenancy', '8'),
(45, 'StageOfPrenancy', '9'),
(46, 'StageOfPrenancy', '10'),
(47, 'AgeinMonths', '26'),
(48, 'AgeinMonths', '27'),
(49, 'AgeinMonths', '28'),
(50, 'AgeinMonths', '29'),
(51, 'AgeinMonths', '30'),
(52, 'AgeinMonths', '31'),
(53, 'AgeinMonths', '32'),
(54, 'AgeinMonths', '33'),
(55, 'AgeinMonths', '34'),
(56, 'AgeinMonths', '35'),
(57, 'AgeinMonths', '36'),
(58, 'AgeinMonths', '37'),
(59, 'AgeinMonths', '38'),
(60, 'AgeinMonths', '39'),
(61, 'AgeinMonths', '40'),
(62, 'AgeinMonths', '41'),
(63, 'AgeinMonths', '42'),
(64, 'AgeinMonths', '43'),
(65, 'AgeinMonths', '44'),
(66, 'AgeinMonths', '45'),
(67, 'AgeinMonths', '46'),
(68, 'AgeinMonths', '47'),
(69, 'AgeinMonths', '48'),
(70, 'AgeinMonths', '49'),
(71, 'AgeinMonths', '50'),
(72, 'AgeinMonths', '51'),
(73, 'AgeinMonths', '52'),
(74, 'AgeinMonths', '53'),
(75, 'AgeinMonths', '54'),
(76, 'AgeinMonths', '55'),
(77, 'AgeinMonths', '56'),
(78, 'AgeinMonths', '57'),
(79, 'AgeinMonths', '58'),
(80, 'AgeinMonths', '59'),
(81, 'AgeinMonths', '60'),
(82, 'AgeinMonths', '61'),
(83, 'AgeinMonths', '62'),
(84, 'AgeinMonths', '63'),
(85, 'AgeinMonths', '64'),
(86, 'AgeinMonths', '65'),
(87, 'AgeinMonths', '66'),
(88, 'AgeinMonths', '67'),
(89, 'AgeinMonths', '68'),
(90, 'AgeinMonths', '69'),
(91, 'AgeinMonths', '70'),
(92, 'AgeinMonths', '71'),
(93, 'AgeinMonths', '72'),
(94, 'AgeinMonths', '73'),
(95, 'AgeinMonths', '74'),
(96, 'AgeinMonths', '75'),
(97, 'AgeinMonths', '76'),
(98, 'AgeinMonths', '77'),
(99, 'AgeinMonths', '78'),
(100, 'AgeinMonths', '79'),
(101, 'AgeinMonths', '80'),
(102, 'AgeinMonths', '81'),
(103, 'AgeinMonths', '82'),
(104, 'AgeinMonths', '83'),
(105, 'AgeinMonths', '84'),
(106, 'AgeinMonths', '85'),
(107, 'AgeinMonths', '86'),
(108, 'AgeinMonths', '87'),
(109, 'AgeinMonths', '88'),
(110, 'AgeinMonths', '89'),
(111, 'AgeinMonths', '90'),
(112, 'AgeinMonths', '91'),
(113, 'AgeinMonths', '92'),
(114, 'AgeinMonths', '93'),
(115, 'AgeinMonths', '94'),
(116, 'AgeinMonths', '95'),
(117, 'AgeinMonths', '96'),
(118, 'AgeinMonths', '97'),
(119, 'AgeinMonths', '98'),
(120, 'AgeinMonths', '99'),
(121, 'AgeinMonths', '100'),
(122, 'AnimalValue', '10000'),
(123, 'AgeinMonths', '15000'),
(124, 'AgeinMonths', '20000'),
(125, 'AgeinMonths', '25000'),
(126, 'AgeinMonths', '30000'),
(127, 'AgeinMonths', '35000'),
(128, 'AgeinMonths', '40000'),
(129, 'AgeinMonths', '45000'),
(130, 'AgeinMonths', '50000'),
(131, 'AgeinMonths', '55000'),
(132, 'AgeinMonths', '60000'),
(133, 'FarmerCategory', 'SF'),
(134, 'FarmerCategory', 'MF'),
(135, 'FarmerCategory', 'AL');

-- --------------------------------------------------------

--
-- Table structure for table `fm_enrolment`
--

CREATE TABLE `fm_enrolment` (
  `IdEnrolment` int(11) NOT NULL,
  `IdBeneficary` int(20) NOT NULL,
  `PolicyNumber` varchar(100) NOT NULL,
  `UTRno` varchar(100) NOT NULL,
  `PolicyPeriod` int(11) NOT NULL,
  `CoverStart` date NOT NULL,
  `CoverEnd` date NOT NULL,
  `Insurer` varchar(50) NOT NULL,
  `CoverNoteCode` int(10) NOT NULL,
  `PreviousPolicyNumber` int(60) NOT NULL,
  `VillageCode` varchar(10) NOT NULL,
  `VillageName` varchar(50) NOT NULL,
  `NameofHamlet` varchar(50) NOT NULL,
  `DisrictCode` varchar(10) NOT NULL,
  `DistrictName` varchar(50) NOT NULL,
  `DivisionName` varchar(50) NOT NULL,
  `MandalName` varchar(50) NOT NULL,
  `PanchayatName` varchar(50) NOT NULL,
  `NameofEO` varchar(60) NOT NULL,
  `DateofEnrolment` date NOT NULL,
  `EOPhone` int(20) NOT NULL,
  `EOEmail` varchar(255) NOT NULL,
  `EORegID` varchar(100) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(50) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `uploadfilename` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_mandal`
--

CREATE TABLE `fm_mandal` (
  `IdMandal` int(11) NOT NULL,
  `MandalName` varchar(50) NOT NULL,
  `MandalCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_panchayat`
--

CREATE TABLE `fm_panchayat` (
  `IdPanchayat` int(11) NOT NULL,
  `PanchayatlName` varchar(50) NOT NULL,
  `PanchayatCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fm_scheme`
--

CREATE TABLE `fm_scheme` (
  `idScheme` int(11) NOT NULL,
  `SchemeName` varchar(60) NOT NULL,
  `DefaultScheme` char(2) NOT NULL,
  `Status` char(10) NOT NULL,
  `modifiedBy` varchar(120) NOT NULL,
  `modifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_scheme`
--

INSERT INTO `fm_scheme` (`idScheme`, `SchemeName`, `DefaultScheme`, `Status`, `modifiedBy`, `modifiedDate`) VALUES
(1, 'TSLDA - 2017 - 18', 'Y', 'Active', '', '2017-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `fm_state`
--

CREATE TABLE `fm_state` (
  `IDState` int(11) NOT NULL,
  `StateName` varchar(50) NOT NULL,
  `StateCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_state`
--

INSERT INTO `fm_state` (`IDState`, `StateName`, `StateCode`) VALUES
(1, 'Telangana', 'TG');

-- --------------------------------------------------------

--
-- Table structure for table `fm_users`
--

CREATE TABLE `fm_users` (
  `IdUser` int(11) NOT NULL,
  `FullName` varchar(120) NOT NULL,
  `UserName` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Status` char(2) NOT NULL,
  `CreatedBy` varchar(60) NOT NULL,
  `CreatedDate` date NOT NULL,
  `IdUserType` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_users`
--

INSERT INTO `fm_users` (`IdUser`, `FullName`, `UserName`, `Password`, `Status`, `CreatedBy`, `CreatedDate`, `IdUserType`) VALUES
(1, 'SuperAdmin', 'sadmin', 'spassword', 'Y', '', '2017-09-09', 1),
(2, 'InsuranceAdmin', 'iadmin', 'ipassword', 'Y', 'SuperAdmin', '2017-09-11', 2),
(3, 'Operations', 'operations', 'opassword', 'Y', 'SuperAdmin', '2017-09-11', 3),
(4, 'Karthik', 'karthik', 'karthik@123', 'Y', 'SuperAdmin', '2017-09-12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fm_usertypes`
--

CREATE TABLE `fm_usertypes` (
  `IdUserType` int(50) NOT NULL,
  `UserTypeName` varchar(60) NOT NULL,
  `MenuAccess` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fm_usertypes`
--

INSERT INTO `fm_usertypes` (`IdUserType`, `UserTypeName`, `MenuAccess`) VALUES
(1, 'SuperAdmin', 'All'),
(2, 'InsuranceAdmin', ''),
(3, 'Operations', ''),
(4, 'User', '');

-- --------------------------------------------------------

--
-- Table structure for table `fm_village`
--

CREATE TABLE `fm_village` (
  `IdVillage` int(11) NOT NULL,
  `VillageCode` int(20) NOT NULL,
  `IDState` int(20) NOT NULL,
  `DistrictCode` int(20) NOT NULL,
  `DivisionCode` int(20) NOT NULL,
  `MandalCode` int(20) NOT NULL,
  `PanchayatCode` int(20) NOT NULL,
  `VillageName` varchar(50) NOT NULL,
  `HAMLET` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fm_animaldata`
--
ALTER TABLE `fm_animaldata`
  ADD PRIMARY KEY (`IdAnimal`),
  ADD KEY `IdBeneficary` (`IdBeneficary`),
  ADD KEY `IdEnrolment` (`IdEnrolment`);

--
-- Indexes for table `fm_auditlog`
--
ALTER TABLE `fm_auditlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fm_beneficary`
--
ALTER TABLE `fm_beneficary`
  ADD PRIMARY KEY (`IdBeneficary`);

--
-- Indexes for table `fm_district`
--
ALTER TABLE `fm_district`
  ADD PRIMARY KEY (`IdDistrict`),
  ADD KEY `IDState` (`IDState`);

--
-- Indexes for table `fm_division`
--
ALTER TABLE `fm_division`
  ADD PRIMARY KEY (`IdDivision`);

--
-- Indexes for table `fm_dropdowns`
--
ALTER TABLE `fm_dropdowns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fm_enrolment`
--
ALTER TABLE `fm_enrolment`
  ADD PRIMARY KEY (`IdEnrolment`),
  ADD KEY `IdBeneficary` (`IdBeneficary`);

--
-- Indexes for table `fm_mandal`
--
ALTER TABLE `fm_mandal`
  ADD PRIMARY KEY (`IdMandal`);

--
-- Indexes for table `fm_panchayat`
--
ALTER TABLE `fm_panchayat`
  ADD PRIMARY KEY (`IdPanchayat`);

--
-- Indexes for table `fm_scheme`
--
ALTER TABLE `fm_scheme`
  ADD PRIMARY KEY (`idScheme`);

--
-- Indexes for table `fm_state`
--
ALTER TABLE `fm_state`
  ADD PRIMARY KEY (`IDState`);

--
-- Indexes for table `fm_users`
--
ALTER TABLE `fm_users`
  ADD PRIMARY KEY (`IdUser`);

--
-- Indexes for table `fm_usertypes`
--
ALTER TABLE `fm_usertypes`
  ADD PRIMARY KEY (`IdUserType`);

--
-- Indexes for table `fm_village`
--
ALTER TABLE `fm_village`
  ADD PRIMARY KEY (`IdVillage`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fm_animaldata`
--
ALTER TABLE `fm_animaldata`
  MODIFY `IdAnimal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_auditlog`
--
ALTER TABLE `fm_auditlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_beneficary`
--
ALTER TABLE `fm_beneficary`
  MODIFY `IdBeneficary` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_district`
--
ALTER TABLE `fm_district`
  MODIFY `IdDistrict` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fm_division`
--
ALTER TABLE `fm_division`
  MODIFY `IdDivision` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_dropdowns`
--
ALTER TABLE `fm_dropdowns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `fm_enrolment`
--
ALTER TABLE `fm_enrolment`
  MODIFY `IdEnrolment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_mandal`
--
ALTER TABLE `fm_mandal`
  MODIFY `IdMandal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_panchayat`
--
ALTER TABLE `fm_panchayat`
  MODIFY `IdPanchayat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fm_scheme`
--
ALTER TABLE `fm_scheme`
  MODIFY `idScheme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fm_state`
--
ALTER TABLE `fm_state`
  MODIFY `IDState` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fm_users`
--
ALTER TABLE `fm_users`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fm_usertypes`
--
ALTER TABLE `fm_usertypes`
  MODIFY `IdUserType` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fm_village`
--
ALTER TABLE `fm_village`
  MODIFY `IdVillage` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fm_animaldata`
--
ALTER TABLE `fm_animaldata`
  ADD CONSTRAINT `fm_animaldata_ibfk_1` FOREIGN KEY (`IdBeneficary`) REFERENCES `fm_beneficary` (`IdBeneficary`),
  ADD CONSTRAINT `fm_animaldata_ibfk_2` FOREIGN KEY (`IdEnrolment`) REFERENCES `fm_enrolment` (`IdEnrolment`);

--
-- Constraints for table `fm_district`
--
ALTER TABLE `fm_district`
  ADD CONSTRAINT `fm_district_ibfk_1` FOREIGN KEY (`IDState`) REFERENCES `fm_state` (`IDState`);

--
-- Constraints for table `fm_enrolment`
--
ALTER TABLE `fm_enrolment`
  ADD CONSTRAINT `fm_enrolment_ibfk_1` FOREIGN KEY (`IdBeneficary`) REFERENCES `fm_beneficary` (`IdBeneficary`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
