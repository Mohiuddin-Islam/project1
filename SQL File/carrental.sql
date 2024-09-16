-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 02:41 PM
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
(1, 'mohiuddin', '04d17d9b481732798b8b0d4934805e7e', '2024-09-16 12:10:57');

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
(4, 139913682, 'mohiuddin@gmail.com', 4, '2024-09-08', '2024-09-10', 'Argent', 2, '2024-09-08 14:59:24', '2024-09-09 16:52:33'),
(5, 416388746, 'arif@gmail.com', 1, '2024-09-11', '2024-09-14', 'Argently', 2, '2024-09-11 13:52:39', '2024-09-11 13:57:25'),
(6, 383977928, 'mohiuddin@gmail.com', 10, '2024-09-18', '2024-09-20', 'Need Urgently', 1, '2024-09-16 12:35:39', '2024-09-16 12:37:56');

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
(7, 'Volkswagon', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(8, 'Mitsubishi', '2024-09-15 16:51:57', NULL);

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
(1, '54, Inner Circular Road, Purana Paltan Scout Market', 'mohiuddincr7@gmail.com', '01567980553');

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
(2, 'Mohiuddin Islam', 'mahmudul21124@gmail.com', '0156798055', 'I want to need good car', '2024-09-09 19:44:12', 1),
(3, 'Safin Ahmed', 'arif@gmail.com', '01753548921', 'Need a good car', '2024-09-09 19:50:57', 1),
(4, 'Jamil Ahmed', 'jamil@gmail.com', '0175698254', 'Do you have beautiful car?', '2024-09-09 19:58:17', 1);

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
(1, 'Terms and Conditions', 'terms', '																																								<p align=\"justify\"><strong style=\"\"><font color=\"#990000\" style=\"font-size: x-large;\">ACCEPTANCE OF TERMS</font></strong></p><p align=\"justify\"><span style=\"background-color: rgb(248, 248, 248); color: rgb(51, 51, 51); font-family: Custom-Regular, Arial, sans-serif;\">These Rental Terms and Conditions, any documents signed by you or to which you have electronically consented, any documents or agreements (or links to online documents or agreements) sent to you electronically in connection with your rental, the Privacy Notice, and a return record with the computed rental charges together constitute the rental agreement (collectively, “Agreement”) between you and Avis Rent A Car System, LLC, and any affiliate conducting business under the Avis brand or independent Avis System Licensee identified in the Agreement (collectively, “Avis”). “We”, “our”, and “us” means Avis, and “you” and “your” means the person who signs the Agreement. You agree that you are not our agent for any purpose and that you cannot assign or transfer your obligations under this Agreement. You rent from us the Vehicle described in the Agreement, which rental is solely a bailment for mutual benefit. By renting a Vehicle from Avis, you agree to these Rental Terms and Conditions, if such term is not prohibited by Applicable Law of a jurisdiction covering this rental, in which case such law controls. You agree that failure to comply with these Rental Terms and Conditions will constitute a breach of the Agreement. If you breach the Agreement, we may exercise all remedies permitted to us under this Agreement or by law, which include but are not limited to terminating the current rental, refusing to enter future rental agreements with you, and/or asserting claims against you for any damages we incur because of your breach.</span><font size=\"2\"><strong><br></strong></font></p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">You should keep handy the following phone numbers during your rental:</span></p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\">o&nbsp;&nbsp;&nbsp;<span style=\"font-weight: 700; font-family: inherit;\">For rental extension requests:&nbsp;</span>1-<a name=\"_Hlk138083618\" id=\"_Hlk138083618\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); text-decoration-line: underline; outline: 0px;\"></a>888-897-8448</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\">o&nbsp;&nbsp;&nbsp;<span style=\"font-weight: 700; font-family: inherit;\">For reservations:</span>&nbsp;1-800-331-1212</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\">o&nbsp;&nbsp;&nbsp;<span style=\"font-weight: 700; font-family: inherit;\">For emergency 24-hour Roadside Assistance:&nbsp;</span>1-800-354<span style=\"font-weight: 700; font-family: inherit;\">-</span>2847</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\">o&nbsp;&nbsp;&nbsp;<span style=\"font-weight: 700; font-family: inherit;\">For incidents involving law enforcement:</span>&nbsp;1-800-533-9056</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1. Vehicle Use Terms.</span></p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.1 Who May Drive the Vehicle.</span>&nbsp;Only you may operate the Vehicle, except as provided below. You represent that you are a capable and validly licensed driver. You represent that the license you provided is valid, and that it is not modified, suspended, revoked, or restricted. Digital and temporary licenses are not acceptable for purposes of the rental. You acknowledge that we may use a device or application to scan your license for purposes such as verifying its authenticity, confirming your identity, or as authorized under Applicable Law. By providing us with your license, you consent to this scanning and the use of your personal information as described in our Privacy Notice at Avis.com/privacy. We reserve the right to deny any rental or to terminate this rental in our sole discretion. Except where specifically required by Applicable Law, only you, your spouse or domestic partner, or, if you rent from us under your employer’s corporate account agreement, your employer or a regular fellow employee incidental to business duties may drive the Vehicle, but only with your prior permission. Authorized Drivers must be (i) at least 25 years old (or in some states, at least 18 years old), and (ii) capable and validly licensed drivers in possession of a license that is not modified, suspended, revoked, or restricted. Where permitted by Applicable Law, we may charge a fee for each additional Authorized Driver, which charge is specified in the Agreement. You are responsible for ensuring that the Vehicle is used according to the terms of this Agreement by all Authorized Drivers. You agree that you will remain financially responsible under the Agreement even if the car is operated by an Authorized Driver or someone other than yourself.</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.2 Keeping the Vehicle Safe and Secure.&nbsp;</span>You, and any Authorized Driver, must operate and park the Vehicle in compliance with all laws, regulations, and ordinances, including using child safety seats (see Paragraph 2.6(n)) and passenger safety restraints wherever required by Applicable Law. You, and any Authorized Driver, must refrain from using mobile phones or other handheld devices while operating the Vehicle and must otherwise exercise sound judgment and safe-driving practices while operating the Vehicle. You may not leave the Vehicle unattended unless all windows, doors and trunks are closed and locked, and the Vehicle is in a secure location where you are allowed to park. You must take reasonable precautions to safeguard the keys to the Vehicle from anyone other than yourself and any Authorized Driver.</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.3 No Smoking or Vaping.</span>&nbsp;We maintain a 100% smoke-free fleet. No one may smoke or vape any substance inside or immediately surrounding the Vehicle. If, in our sole discretion, we determine the Vehicle smells of smoke, vape or any other substance, we may charge you a fee, as per Paragraph 2.6(c).</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.4 Returning the Vehicle.</span>&nbsp;&nbsp;</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.4(a) When to Return the Vehicle.</span>&nbsp;You must return the Vehicle in the same condition you received it, ordinary wear and tear excepted, at the Designated Return Time identified in the Agreement. You must return it sooner on our demand. If you return it earlier or later, a different or higher rental rate may apply and, if returned later, you may also be charged a late return fee. You may not return the Vehicle to a location when the location is closed. If you do so, we will treat the Vehicle as though it was not returned until the location reopens and we take actual possession of the Vehicle. You will remain responsible for daily charges, late fees, damages, and/or loss until we take actual possession of the Vehicle, including its keys. If we do not find the Vehicle when the location reopens, you are responsible for all charges and for damage to or loss of the Vehicle until the Vehicle is returned or recovered. If you wish to extend any rental contract, you must contact us at 888-897-8448 prior to the Designated Return Time. We may grant or deny an extension, in our sole discretion, for part of or the entire period you request. If we do grant an extension, a different or higher rate and a service fee may apply to the extension period.</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.4(b) Where to Return the Vehicle.&nbsp;</span>You must return the Vehicle to the Designated Return Location identified in the Agreement. Express Car Return may be available at certain locations. If you wish to return the Vehicle at a location other than the Designated Return Location, you must contact us prior to the Designated Return Time. We may, in our sole discretion, deny permission to return the Vehicle to an alternative location. If we grant permission to return the Vehicle to an alternative location, we may apply different rates and additional fees or charges, which could increase the cost paid by you.</p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.4(b)(1) Returning Electric Vehicles.</span>&nbsp;Due to the unique infrastructure needs associated with an Electric Vehicle (“EV”) (e.g., a specific charger), your EV must be returned to the Designated Return Location,<span style=\"font-weight: 700; font-family: inherit;\">&nbsp;</span>and if it is not, all costs incurred in transporting your EV to the Designated Return Location will be assessed to you. In addition, you will be assessed a fee for Avis’s loss of use of the EV between the time that you should have returned the EV and the time that it is returned to the Designated Return Location, up to a maximum of thirty (30) days. The loss-of-use fee will be your daily rental rate.<span style=\"font-weight: 700; font-family: inherit;\"></span></p><p style=\"text-align: justify; margin-bottom: 10px; font-family: Custom-Regular, Arial, sans-serif; font-size: 14px; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248);\"><span style=\"font-weight: 700; font-family: inherit;\">1.4(c) If You Fail to Return the Vehicle.&nbsp;</span>If you fail to return the Vehicle at the Designated Return Time and to the Designated Return Location, subject to any approved extensions or modifications described in Paragraph 1.4(b), you will breach this Agreement. We may, at our discretion and subject to any notice requirements imposed by Applicable Law, treat your failure to return the Vehicle according to the terms of this Agreement as a theft or other illegal taking. You may be charged for any fees associated with the failure to return the Vehicle, and any payment by the payment card does not constitute a waiver of our right to treat the Vehicle as stolen.</p>\r\n	\r\n	\r\n	\r\n	'),
(2, 'Privacy Policy', 'privacy', '<p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">1.1 Welcome to the privacy policy of Rhodes Car Rental.</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We value your privacy and are dedicated to safeguarding your personal data. This privacy policy outlines how we protect your personal data as a customer and provides updates on your privacy rights and legal protection. Our company is responsible for the collection, handling, and processing of your personal data.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">1.2 You are entitled to all the rights guaranteed by the 2016/679 EU regulations and relevant European and national laws. We will process your personal data strictly in compliance with these regulations.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We will use your personal data when:</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">We have obtained your explicit consent.</div><div style=\"text-align: justify;\">It is necessary to fulfill a contract we are about to enter into or have already entered into with you.</div><div style=\"text-align: justify;\">It is required to pursue our legitimate interests (or those of a third party) when your interests and fundamental rights do not override these interests.</div><div style=\"text-align: justify;\">We need to comply with legal or regulatory obligations.</div><div style=\"text-align: justify;\">It is mandated by law.</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">2. Why We Process Your Personal Data</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We process any personal data that you willingly provide and for which we have secured your consent. This processing is necessary for executing contracts between us or for taking pre-contractual steps at your request. The specific purposes include car rentals to third parties with or without drivers, car sales to third parties (wholesale or retail), and truck and van rentals with or without drivers.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">3. Categories of Information Collected</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We have the right to collect, process, store, and transmit various types of personal data, categorized as follows:</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">Identity data, including full name (business name for sole proprietorships), parents\' names, date of birth, identity card (number, date of issue/expiry, and place of issue), or passport (number, date of issue/expiry, and place of issue), residence permit, valid driver\'s license (number, date of issue/expiry, and place of issue).</div><div style=\"text-align: justify;\">Contact data, including home address, email, and phone numbers.</div><div style=\"text-align: justify;\">Financial data, including taxpayer ID, bank account number, payment card details, indication of VAT exemption, business activity (for companies), tax office (for companies), headquarters (for sole companies).</div><div style=\"text-align: justify;\">Credit ratings and legal documents (for companies).</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We do not collect sensitive personal data in any of our activities or countries of operation, except for health data acquired with your consent in the event of a traffic accident injury, solely for transmission to the insurance agency that insures our vehicles.</p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">4. How We Collect Your Data</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We collect your personal data in digital or physical form whenever you use our services. This includes in-person service points, our websites, phone services, mobile applications, and company email. You can browse our website without providing personal information. Information about our cookie policy is available on our company website.</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">We collect personal data from customers or drivers when booking short or long-term car rentals or car sales. This data may include full name, address, phone number, driver\'s license, credit card details, taxpayer ID, etc. (as specified in paragraph 3).</div><div style=\"text-align: justify;\">We may collect personal data with your consent through various channels, including telephone calls, customer service interactions, websites, and other sources.</div></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><span style=\"font-weight: bold;\">5. How Long We Retain Your Personal Data.</span></p><p class=\"lh-base\" style=\"text-align: justify; margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\">We retain your personal data only as long as necessary to fulfill the purposes for which they were collected, including compliance with legal or accounting obligations. The retention period is determined based on factors such as data quantity, nature, sensitivity, potential risks, processing purposes, and legal requirements.</p><p class=\"lh-base\" style=\"margin-bottom: 1rem; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 16px; line-height: 1.5 !important;\"><div style=\"text-align: justify;\">Tax data are kept for ten (10) years from the date of each tax document issuance, as required by tax authorities.</div><div style=\"text-align: justify;\">Data relevant to legal claims are retained for up to twenty (20) years or as required by law.</div><div style=\"text-align: justify;\">We may keep customer personal data beyond the initial purpose if legally obligated.</div></p>'),
(3, 'About Us ', 'aboutus', '																																																												<p style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: x-large; font-family: &quot;times new roman&quot;;\"><span style=\"color: rgb(51, 51, 51);\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52);\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.<br></span></span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(62, 62, 62); font-weight: bold; font-size: x-large; font-family: &quot;times new roman&quot;;\">Your mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span></p><p></p>										\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	'),
(11, 'FAQs', 'faqs', '																																																																																																																																																						<div><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; font-size: x-large;\">1.\r\nCan the car be picked up by the second driver?</span><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bookings\r\nare done under the name of a single driver, and as such, only this person will\r\nbe able to pick up the vehicle. We are able to add additional drivers to the\r\nrental agreement, but this must always be accompanied by the authorization of\r\nthe booking? lead driver.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Both\r\ndrivers must come in person to the store to sign the rental agree and submit\r\nall the necessary documentation to be included as drivers of the rental\r\nvehicle.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; font-size: x-large;\">2.\r\nWhat is the minimum age and how old do I have to be to rent a vehicle?</span><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">For\r\nrentals in Spain, Italy, Portugal, France and Germany: Each driver must be at\r\nleast 18 years of age and hold a valid driving license for the duration of the\r\nrental period. A minimum of one year\'s driving licenses is not required. Cargo\r\nvans are excluded, for which a minimum of 20 years of age and 2 years of\r\ndriving licenses are compulsory. In addition, you they present a valid European\r\nID card or passport. There is a Young Driver supplement applicable to those\r\naged between 18 and 25, both included, of 10 per day with a minimum of 24 and a\r\nmaximum of 300.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">For\r\nrentals in Greece and Malta: Each driver must be at least 21 years of age and\r\nhave held for at least one year, a valid driving licenses for the entire rental\r\nperiod. In addition, you they present a valid European ID card or passport.\r\nThere is a Young Driver supplement applicable to those aged between 21 and 25,\r\nboth included, of 10 per day with a minimum of 24 and a maximum of 300.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Please\r\nnote that we have different types of vehicles available. In section 3.\r\nGenerally, and avoiding some small exceptions, the age is 18 years without\r\nminimum time holding a driving license.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; font-size: x-large;\">3.\r\nWhat document do I need to rent a vehicle?</span><span style=\"font-family:\r\n&quot;Times New Roman&quot;,serif\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">We\r\nneed: Driving licenses, valid ID card or passport recognized by Spanish law and\r\na credit card in the name of the main driver. The documents required to rent a\r\nvehicle with us are:<o:p></o:p></span></p>\r\n\r\n<ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Valid\r\n     National Identity Card or Passport<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Driving\r\n     license and, if necessary, an international driving license (depending on\r\n     where you come from).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Credit\r\n     and/or debit card (the latter subject to conditions) in the name of the\r\n     main driver.<o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; font-size: x-large;\">4.\r\nWhich driving permits are accepted?</span><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">OK\r\nMobility accepts all valid driving licenses that are submitted together with\r\nthe documents required by law. Remember that the National ID document or\r\nPassport must have been issued by the same country as the driving licenses.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; font-size: x-large;\">5. Is there a km limit on my\r\nrental?</span></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n</p><ul style=\"margin-top:0in\" type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Cars:\r\n     300km/day, 3000km/contract (except Stores with unlimited km).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Motorbikes:\r\n     Unlimited mileage (in all Stores, there is no exception, and regardless of\r\n     the length of the booking).<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;mso-list:l0 level1 lfo1;\r\n     tab-stops:list .5in\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Cargo\r\n     and Camper: 400km/day, 4000km/contract (in all Stores, there is no\r\n     exception, regardless of the length of the booking).<o:p></o:p></span></li>\r\n</ul></div>\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	');

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
(3, 'Mohiuddin', 'mohiuddin@gmail.com', '4cf14deea726b236271f0f6538f3037e', '01752437955', '02october1997', 'Malibagh', 'Dhaka', 'Bangladesh', '2024-09-08 12:05:50', NULL),
(4, 'Mohiuddin', 'mohiuddinislam@gmail.com', '4cf14deea726b236271f0f6538f3037e', '0175243795', NULL, NULL, NULL, NULL, '2024-09-10 02:50:08', NULL),
(5, 'Safin Ahmed', 'arif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0175243795', NULL, NULL, NULL, NULL, '2024-09-11 13:51:32', NULL);

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
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti?s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(9, 'Toyota Land Cruiser', 5, 'Land Cruiser\'s full-time 4-wheel-drive system provides power continuously to the front and rear axles to improve traction and stability on various surfaces. An electronically controlled 2-speed transfer case allows you to select the right amount of torque for your driving conditions.\r\n•	DESIGN: Heritage-Inspired Styling\r\n•	PERFORMANCE: Full-Time 4WD\r\n•	POWERTRAIN: 2.4L 4 Cylinder I-FORCE MAX Hybrid Powertrain\r\n•	CAPABILITY: Standard Crawl Control (CRAWL) * and Available Multi-Terrain Select (MTS)', 2500, 'Petrol', 2022, 8, 'toyta1.jpg', 'toyta3.jpg', 'toyta5.jpg', 'toyta4.jpg', 'toyta2.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-09-10 16:57:03', '2024-09-10 17:39:32'),
(10, 'X-Pandar', 8, 'The all-new Mitsubishi Xpander blends futuristic Dynamic Shield design, ever-reliable performance, and true 7-seater spaciousness to expand your lifestyle. Whether driving around town or vacationing with friends and family, its unrivaled practicality will set you …', 2000, 'Petrol', 2023, 5, '2015-Mitsubishi-ASX-Malaysia.webp', 'mitsubishi_xpandar.jpg', 'xpandar2.jpg', 'xpandar.jpg', 'listing_img5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-09-16 12:27:17', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
