-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 05:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Mohiuddin', '817a5dbe09dfdf7ca0232748548e012d', '2024-09-09 15:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ToDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(3, 376986870, 'mohiuddin@gmail.com', 2, '2024-09-08', '2024-09-20', 'Need Argenty', 2, '2024-09-08 13:01:59', '2024-09-09 16:51:20'),
(4, 139913682, 'mohiuddin@gmail.com', 4, '2024-09-08', '2024-09-10', 'Argent', 2, '2024-09-08 14:59:24', '2024-09-09 16:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2024-05-01 16:24:34', '2024-06-05 05:26:25'),
(2, 'BMW', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(3, 'Audi', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(4, 'Nissan', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(5, 'Toyota', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(7, 'Volkswagon', '2024-05-01 16:24:34', '2024-06-05 05:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EmailId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ContactNo` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Purana Paltan Scout Market', 'mohiuddincr7@gmail.com', '01567980553');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EmailId` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ContactNumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Mohiuddin Islam', 'mahmudul21124@gmail.com', '0156798055', 'I want to need good car', '2024-09-09 19:44:12', NULL),
(3, 'Safin Ahmed', 'arif@gmail.com', '01753548921', 'Need a good car', '2024-09-09 19:50:57', NULL),
(4, 'Jamil Ahmed', 'jamil@gmail.com', '0175698254', 'Do you have beautiful car?', '2024-09-09 19:58:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">1.1 Welcome to the privacy policy of Rhodes Car Rental.</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We value your privacy and are dedicated to safeguarding your personal data. This privacy policy outlines how we protect your personal data as a customer and provides updates on your privacy rights and legal protection. Our company is responsible for the collection, handling, and processing of your personal data.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">1.2 You are entitled to all the rights guaranteed by the 2016/679 EU regulations and relevant European and national laws. We will process your personal data strictly in compliance with these regulations.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We will use your personal data when:</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">We have obtained your explicit consent.</div><div style=\"text-align: justify;\">It is necessary to fulfill a contract we are about to enter into or have already entered into with you.</div><div style=\"text-align: justify;\">It is required to pursue our legitimate interests (or those of a third party) when your interests and fundamental rights do not override these interests.</div><div style=\"text-align: justify;\">We need to comply with legal or regulatory obligations.</div><div style=\"text-align: justify;\">It is mandated by law.</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">2. Why We Process Your Personal Data</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We process any personal data that you willingly provide and for which we have secured your consent. This processing is necessary for executing contracts between us or for taking pre-contractual steps at your request. The specific purposes include car rentals to third parties with or without drivers, car sales to third parties (wholesale or retail), and truck and van rentals with or without drivers.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">3. Categories of Information Collected</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We have the right to collect, process, store, and transmit various types of personal data, categorized as follows:</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">Identity data, including full name (business name for sole proprietorships), parents\' names, date of birth, identity card (number, date of issue/expiry, and place of issue), or passport (number, date of issue/expiry, and place of issue), residence permit, valid driver\'s license (number, date of issue/expiry, and place of issue).</div><div style=\"text-align: justify;\">Contact data, including home address, email, and phone numbers.</div><div style=\"text-align: justify;\">Financial data, including taxpayer ID, bank account number, payment card details, indication of VAT exemption, business activity (for companies), tax office (for companies), headquarters (for sole companies).</div><div style=\"text-align: justify;\">Credit ratings and legal documents (for companies).</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We do not collect sensitive personal data in any of our activities or countries of operation, except for health data acquired with your consent in the event of a traffic accident injury, solely for transmission to the insurance agency that insures our vehicles.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">4. How We Collect Your Data</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We collect your personal data in digital or physical form whenever you use our services. This includes in-person service points, our websites, phone services, mobile applications, and company email. You can browse our website without providing personal information. Information about our cookie policy is available on our company website.</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">We collect personal data from customers or drivers when booking short or long-term car rentals or car sales. This data may include full name, address, phone number, driver\'s license, credit card details, taxpayer ID, etc. (as specified in paragraph 3).</div><div style=\"text-align: justify;\">We may collect personal data with your consent through various channels, including telephone calls, customer service interactions, websites, and other sources.</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">5. How Long We Retain Your Personal Data.</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We retain your personal data only as long as necessary to fulfill the purposes for which they were collected, including compliance with legal or accounting obligations. The retention period is determined based on factors such as data quantity, nature, sensitivity, potential risks, processing purposes, and legal requirements.</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">Tax data are kept for ten (10) years from the date of each tax document issuance, as required by tax authorities.</div><div style=\"text-align: justify;\">Data relevant to legal claims are retained for up to twenty (20) years or as required by law.</div><div style=\"text-align: justify;\">We may keep customer personal data beyond the initial purpose if legally obligated.</div></p>'),
(3, 'About Us ', 'aboutus', '																														<div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: x-large; font-family: &quot;times new roman&quot;;\"><span style=\"color: rgb(51, 51, 51);\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52);\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span></span></div>										<div style=\"text-align: justify;\"><span style=\"color: rgb(62, 62, 62); font-size: large; font-family: &quot;times new roman&quot;; font-weight: bold;\">Your mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>\r\n	\r\n	\r\n	\r\n	'),
(11, 'FAQs', 'faqs', '																																																																																										<div><span style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold;\">1. Can the car be picked up by the second driver?</span></div><div><span style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold;\"><br></span></div><span style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">Bookings are done under the name of a single driver, and as such, only this person will be able to pick up the vehicle. We are able to add additional drivers to the rental agreement, but this must always be accompanied by the authorization of the booking?s lead driver.</div></span><div style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Both drivers must come in person to the store to sign the rental agree and submit all the necessary documentation to be included as drivers of the rental vehicle.</div><div style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><br></div><div style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-weight: bold;\">2. What is the minimum age and how old do I have to be to rent a vehicle?</span></div><div style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><p style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; margin-bottom: 0px; line-height: 30px;\">For rentals in Spain, Italy, Portugal, France and Germany: Each driver must be at least 18 years of age and hold a valid driving licences for the duration of the rental period. A minimum of one year\'s driving licences is not required. Cargo vans are excluded, for which a minimum of 20 years of age and 2 years of driving licences are compulsory. In addition, you they present a valid European ID card or passport. There is a Young Driver supplement applicable to those aged between 18 and 25, both included, of ? 10 per day with a minimum of ?2 4 and a maximum of ? 300.</p><p style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; margin-bottom: 0px; line-height: 30px;\">For rentals in Greece and Malta: Each driver must be at least 21 years of age and have held for at least one year, a valid driving licences for the entire rental period. In addition, you they present a valid European ID card or passport. There is a Young Driver supplement applicable to those aged between 21 and 25, both included, of ?10 per day with a minimum of ? 24 and a maximum of ? 300.</p><p style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; margin-bottom: 0px; line-height: 30px;\">Please note that we have different types of vehicles available. In section 3. Generally and avoiding some small exceptions, the age is 18 years without minimum time holding a driving licences.</p><p style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; margin-bottom: 0px; line-height: 30px;\"><span style=\"font-weight: bold;\">3. What document do I need to rent a vehicle?</span><br></p><p style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; margin-bottom: 0px; line-height: 30px;\">We need: Driving licences, valid ID card or passport recognized by Spanish law and a credit card in the name of the main driver. The documents required to rent a vehicle with us are:</p><ul style=\"margin-top: 10px; color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: left;\"><li style=\"margin-bottom: 10px;\">Valid National Identity Card or Passport</li><li style=\"margin-bottom: 10px;\">Driving licence and, if necessary, an international driving licence (depending on where you come from).</li><li style=\"margin-bottom: 10px;\">Credit and/or debit card (the latter subject to conditions) in the name of the main driver.</li></ul><p style=\"margin-bottom: 0px; line-height: 30px;\"><span style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold;\">4. Which driving permits are accepted?</span></p><p style=\"margin-bottom: 0px; line-height: 30px;\"><span style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px;\">OK Mobility accepts all valid driving licences that are submitted together with the documents required by law. Remember that the National ID document or Passport must have been issued by the same country as the driving licences.</span></p><ul style=\"color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 10px; text-align: left;\"><li style=\"margin-bottom: 10px;\"><span style=\"font-weight: bold;\">5. Is there a km limit on my rental?</span><br></li></ul></div><div style=\"text-align: justify;\"><ul style=\"margin-top: 10px; color: rgb(2, 4, 65); font-family: Opensans, Arial, Helvetica, sans-serif; font-size: 16px; text-align: left;\"><li style=\"margin-bottom: 10px;\">Cars: 300km/day, 3000km/contract (except Stores with unlimited km).</li><li style=\"margin-bottom: 10px;\">Motorbikes: Unlimited mileage (in all Stores, there is no exception, and regardless of the length of the booking).</li><li style=\"margin-bottom: 10px;\">Cargo and Camper: 400km/day, 4000km/contract (in all Stores, there is no exception, regardless of the length of the booking).</li></ul></div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'arif@gmail.com', '2024-09-10 03:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Testimonial` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ContactNo` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dob` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(3, 'Mohiuddin', 'mohiuddin@gmail.com', '8d4dbcc84b4640db48d3fe8a4e937b3b', '0175243795', NULL, NULL, NULL, NULL, '2024-09-08 12:05:50', NULL),
(4, 'Mohiuddin', 'mohiuddinislam@gmail.com', '4cf14deea726b236271f0f6538f3037e', '0175243795', NULL, NULL, NULL, NULL, '2024-09-10 02:50:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Vimage2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Vimage3` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Vimage4` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Vimage5` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R?s continuation in the BS6 era is part of the carmaker?s ?Mission Green Million? initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit?s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:19'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti?s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-05-10 07:04:35', '2024-06-05 05:30:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
