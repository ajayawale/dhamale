-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 09:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmcnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_details`
--

CREATE TABLE `admission_details` (
  `ad_id` int(10) UNSIGNED NOT NULL,
  `ad_student` int(10) UNSIGNED NOT NULL,
  `ad_batch_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_batch` int(10) UNSIGNED DEFAULT NULL,
  `ad_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_standard` int(10) UNSIGNED NOT NULL,
  `ad_medium` int(10) UNSIGNED DEFAULT NULL,
  `ad_subjects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_fees` int(11) DEFAULT NULL,
  `ad_remaining_fees` int(10) NOT NULL DEFAULT '0',
  `ad_pre_percent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_status` tinyint(1) NOT NULL DEFAULT '0',
  `ad_reffered_by` text COLLATE utf8mb4_unicode_ci,
  `ad_preffered_batches` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_details`
--

INSERT INTO `admission_details` (`ad_id`, `ad_student`, `ad_batch_year`, `ad_batch`, `ad_school`, `ad_standard`, `ad_medium`, `ad_subjects`, `ad_fees`, `ad_remaining_fees`, `ad_pre_percent`, `ad_status`, `ad_reffered_by`, `ad_preffered_batches`, `created_at`, `updated_at`) VALUES
(1, 1, '2015-16', 1, 'pune', 1, 1, '1', 50000, 49000, NULL, 1, NULL, NULL, '2018-07-18 05:39:49', '2018-07-19 04:41:33'),
(2, 2, '2018-19', 1, 'pune', 1, 1, '1,3', 50000, 49998, NULL, 1, NULL, '10pm', '2018-07-18 05:44:13', '2018-07-20 00:31:14'),
(3, 3, '2017-18', 1, 'pune', 1, 1, '1,3', 10000, 0, NULL, 1, NULL, NULL, '2018-07-18 05:52:24', '2018-07-20 00:31:41'),
(4, 4, '2015-16', 1, 'pune', 2, 1, '2', 12000, 11000, NULL, 1, NULL, NULL, '2018-07-18 06:05:12', '2018-07-19 14:09:53'),
(5, 5, '2018-19', 1, 'pune', 1, 1, '1', 50000, 48000, '50.00', 1, NULL, NULL, '2018-07-19 01:03:22', '2018-07-19 04:32:08'),
(6, 6, '2018-19', 2, 'pune', 2, 1, '2', 50000, 49800, '33.00', 1, NULL, NULL, '2018-07-19 01:16:43', '2018-07-19 04:27:04'),
(7, 7, '2018-19', 1, 'pune', 1, 1, '3', 50000, 50000, NULL, 1, NULL, NULL, '2018-07-19 03:29:12', '2018-07-20 03:08:09'),
(8, 8, NULL, 1, 'pune', 1, 1, '1', NULL, 0, NULL, 0, NULL, NULL, '2018-07-19 11:22:13', '2018-07-19 11:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `att_id` int(10) UNSIGNED NOT NULL,
  `att_batch` int(10) UNSIGNED NOT NULL,
  `att_standard` int(10) UNSIGNED NOT NULL,
  `att_medium` int(10) UNSIGNED NOT NULL,
  `att_subject` int(10) UNSIGNED NOT NULL,
  `att_student` int(10) UNSIGNED NOT NULL,
  `att_result` tinyint(1) NOT NULL DEFAULT '0',
  `att_added` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`att_id`, `att_batch`, `att_standard`, `att_medium`, `att_subject`, `att_student`, `att_result`, `att_added`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 2, 1, '18-07-2018', '2018-07-19 01:18:56', '2018-07-19 01:18:56'),
(2, 1, 1, 1, 3, 3, 0, '18-07-2018', '2018-07-19 01:19:00', '2018-07-19 01:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `balance_sheets`
--

CREATE TABLE `balance_sheets` (
  `bs_id` int(10) UNSIGNED NOT NULL,
  `bs_particular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bs_purpose` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bs_debit` int(11) NOT NULL DEFAULT '0',
  `bs_credit` int(11) NOT NULL DEFAULT '0',
  `bs_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance_sheets`
--

INSERT INTO `balance_sheets` (`bs_id`, `bs_particular`, `bs_purpose`, `bs_debit`, `bs_credit`, `bs_created_at`) VALUES
(1, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 13:50:18'),
(2, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 13:50:32'),
(3, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 13:55:07'),
(4, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 13:55:12'),
(5, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 13:56:57'),
(6, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 14:04:21'),
(7, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-18 14:04:28'),
(8, 'ajay awale ( 0001 )', 'Classes Maintenance', 4444, 0, '2018-07-18 14:09:13'),
(9, 'ss awale ( 0001 )', 'Classes Maintenance', 22222, 0, '2018-07-18 14:41:55'),
(10, 'aa aa ( 0001 )', 'Publication', 22222, 0, '2018-07-18 15:07:37'),
(11, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 00:52:07'),
(12, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 00:52:17'),
(13, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 00:52:28'),
(14, 'vijay awale ( 0001 )', 'Publication', 22222, 0, '2018-07-19 00:53:38'),
(15, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:01:25'),
(16, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:06:55'),
(17, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:08:54'),
(18, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:09:05'),
(19, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:13:41'),
(20, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:13:50'),
(21, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 01:24:01'),
(22, 'vijay awale ( 0001 )', 'Traveling Allowance', 123, 0, '2018-07-19 11:15:42'),
(23, 'vijay awale ( 0001 )', 'Traveling Allowance', 123, 0, '2018-07-19 11:15:47'),
(24, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 11:18:40'),
(25, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 11:18:46'),
(26, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 11:27:31'),
(27, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 11:29:35'),
(28, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 11:29:44'),
(29, 'vijay awale ( 0001 )', 'Traveling Allowance', 123, 0, '2018-07-19 11:30:51'),
(30, 'vijay awale ( 0001 )', 'Traveling Allowance', 123, 0, '2018-07-19 11:30:57'),
(31, 'vijay awale ( 0001 )', 'Publication', 22222, 0, '2018-07-19 11:38:04'),
(32, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 12:04:59'),
(33, 'vijay awale ( 0001 )', 'Publication', 123, 0, '2018-07-19 12:07:14'),
(34, 'vijay awale ( 0001 )', 'Publication', 123, 0, '2018-07-19 12:14:03'),
(35, 'vijay awale ( 0001 )', 'Publication', 123, 0, '2018-07-19 12:14:23'),
(36, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 12:17:48'),
(37, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 13:04:16'),
(38, 'hhhh awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 14:03:07'),
(39, 'hhhh awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 14:03:18'),
(40, 'vijay awale ( 0001 )', 'Traveling Allowance', 22222, 0, '2018-07-19 22:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(10) UNSIGNED NOT NULL,
  `batch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_name`) VALUES
(1, 'Morning'),
(2, 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `enq_id` int(10) UNSIGNED NOT NULL,
  `enq_student` int(10) UNSIGNED NOT NULL,
  `enq_parent` int(10) UNSIGNED NOT NULL,
  `enq_admission` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`enq_id`, `enq_student`, `enq_parent`, `enq_admission`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2018-07-18 05:39:49', '2018-07-18 05:39:49'),
(2, 2, 2, 2, '2018-07-18 05:44:13', '2018-07-18 05:44:13'),
(3, 5, 5, 5, '2018-07-19 01:03:22', '2018-07-19 01:03:22'),
(4, 8, 8, 8, '2018-07-19 11:22:13', '2018-07-19 11:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `install_id` int(10) UNSIGNED NOT NULL,
  `install_student` int(10) NOT NULL,
  `install_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `install_due_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `install_amount` int(11) NOT NULL,
  `install_pdc_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `install_pdc_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `install_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `install_status` tinyint(1) NOT NULL DEFAULT '0',
  `install_sequence` int(5) NOT NULL DEFAULT '0',
  `install_invoice` int(10) DEFAULT NULL,
  `install_created_at` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installments`
--

INSERT INTO `installments` (`install_id`, `install_student`, `install_type`, `install_due_date`, `install_amount`, `install_pdc_no`, `install_pdc_date`, `install_bank_name`, `install_status`, `install_sequence`, `install_invoice`, `install_created_at`, `updated_at`, `created_at`) VALUES
(1, 7, 'Instalment 1', '20-07-2018', 22222, '1111', '20-07-2018', 'aaaa', 0, 1, NULL, '20-07-2018', '2018-07-20 09:24:02', '2018-07-20 09:24:02'),
(2, 7, 'Instalment 2', '20-07-2018', 123, '1111', '20-07-2018', 'aaaa', 0, 2, NULL, '20-07-2018', '2018-07-20 09:25:44', '2018-07-20 09:25:44'),
(3, 5, 'Instalment 1', '20-07-2018', 22222, '1111', '20-07-2018', 'aaaa', 0, 1, NULL, '20-07-2018', '2018-07-20 09:27:10', '2018-07-20 09:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `in_id` int(10) UNSIGNED NOT NULL,
  `in_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_add_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_receipt_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_student` int(10) UNSIGNED NOT NULL,
  `in_receiver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_paid_amount` int(11) DEFAULT NULL,
  `in_remaining_fees` int(11) DEFAULT NULL,
  `in_payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_dd_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_cheque_date` date DEFAULT NULL,
  `in_cheque_bank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_account_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_admission_incharge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`in_id`, `in_type`, `in_add_date`, `in_receipt_no`, `in_student`, `in_receiver_name`, `in_paid_amount`, `in_remaining_fees`, `in_payment_mode`, `in_cheque_number`, `in_dd_number`, `in_cheque_date`, `in_cheque_bank`, `in_account_type`, `in_admission_incharge`, `in_created_at`) VALUES
(1, 'Tution Fees', '2018-07-18', '0001', 7, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'ajay', '2018-07-18 18:13:31'),
(2, 'Tution Fees', '2018-07-19', '0002', 6, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'aaa', '2018-07-18 18:57:04'),
(3, 'Tution Fees', '2018-07-19', '0003', 5, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'aaa', '2018-07-18 19:02:08'),
(4, 'Tution Fees', '2018-07-19', '0004', 1, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'll', '2018-07-18 19:11:33'),
(5, 'Tution Fees', '2018-07-19', '0005', 4, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'aaa', '2018-07-19 04:39:53'),
(6, 'Tution Fees', '2018-07-19', '0006', 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'ajay', '2018-07-19 15:01:15'),
(7, 'Publlication', '2018-07-19', '0007', 3, NULL, 10000, NULL, NULL, NULL, NULL, NULL, NULL, '-1', 'ajay', '2018-07-19 15:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `marksheets`
--

CREATE TABLE `marksheets` (
  `mark_id` int(10) UNSIGNED NOT NULL,
  `mark_subject` int(10) UNSIGNED NOT NULL,
  `mark_student` int(10) UNSIGNED NOT NULL,
  `mark_test_1` int(3) DEFAULT '0',
  `outof_test_1` int(3) DEFAULT '0',
  `mark_test_2` int(3) DEFAULT '0',
  `outof_test_2` int(3) DEFAULT '0',
  `mark_test_3` int(3) DEFAULT '0',
  `outof_test_3` int(3) DEFAULT '0',
  `mark_test_4` int(3) DEFAULT '0',
  `outof_test_4` int(3) DEFAULT '0',
  `mark_test_5` int(3) DEFAULT '0',
  `outof_test_5` int(3) DEFAULT '0',
  `mark_test_6` int(3) DEFAULT '0',
  `outof_test_6` int(3) DEFAULT '0',
  `mark_test_7` int(3) NOT NULL DEFAULT '0',
  `outof_test_7` int(3) NOT NULL DEFAULT '0',
  `mark_test_8` int(3) NOT NULL DEFAULT '0',
  `outof_test_8` int(3) NOT NULL DEFAULT '0',
  `mark_test_9` int(3) NOT NULL DEFAULT '0',
  `outof_test_9` int(3) NOT NULL DEFAULT '0',
  `mark_test_10` int(3) NOT NULL DEFAULT '0',
  `outof_test_10` int(3) NOT NULL DEFAULT '0',
  `mark_test_11` int(3) NOT NULL DEFAULT '0',
  `outof_test_11` int(3) NOT NULL DEFAULT '0',
  `mark_test_12` int(3) NOT NULL DEFAULT '0',
  `outof_test_12` int(3) NOT NULL DEFAULT '0',
  `mark_test_13` int(3) NOT NULL DEFAULT '0',
  `outof_test_13` int(3) NOT NULL DEFAULT '0',
  `mark_test_14` int(3) NOT NULL DEFAULT '0',
  `outof_test_14` int(3) NOT NULL DEFAULT '0',
  `mark_test_15` int(3) NOT NULL DEFAULT '0',
  `outof_test_15` int(3) NOT NULL DEFAULT '0',
  `mark_test_16` int(3) NOT NULL DEFAULT '0',
  `outof_test_16` int(3) NOT NULL DEFAULT '0',
  `mark_test_17` int(3) NOT NULL DEFAULT '0',
  `outof_test_17` int(3) NOT NULL DEFAULT '0',
  `mark_test_18` int(3) NOT NULL DEFAULT '0',
  `outof_test_18` int(3) NOT NULL DEFAULT '0',
  `mark_test_19` int(3) NOT NULL DEFAULT '0',
  `outof_test_19` int(3) NOT NULL DEFAULT '0',
  `mark_test_20` int(3) NOT NULL DEFAULT '0',
  `outof_test_20` int(3) NOT NULL DEFAULT '0',
  `mark_total` int(8) NOT NULL DEFAULT '0',
  `mark_added` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marksheets`
--

INSERT INTO `marksheets` (`mark_id`, `mark_subject`, `mark_student`, `mark_test_1`, `outof_test_1`, `mark_test_2`, `outof_test_2`, `mark_test_3`, `outof_test_3`, `mark_test_4`, `outof_test_4`, `mark_test_5`, `outof_test_5`, `mark_test_6`, `outof_test_6`, `mark_test_7`, `outof_test_7`, `mark_test_8`, `outof_test_8`, `mark_test_9`, `outof_test_9`, `mark_test_10`, `outof_test_10`, `mark_test_11`, `outof_test_11`, `mark_test_12`, `outof_test_12`, `mark_test_13`, `outof_test_13`, `mark_test_14`, `outof_test_14`, `mark_test_15`, `outof_test_15`, `mark_test_16`, `outof_test_16`, `mark_test_17`, `outof_test_17`, `mark_test_18`, `outof_test_18`, `mark_test_19`, `outof_test_19`, `mark_test_20`, `outof_test_20`, `mark_total`, `mark_added`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 40, 50, 30, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, '18-07-2018', '2018-07-18 05:52:24', '2018-07-18 06:17:38'),
(2, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18-07-2018', '2018-07-18 05:55:40', '2018-07-18 05:55:40'),
(3, 1, 2, 40, 100, 40, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, '18-07-2018', '2018-07-18 05:58:46', '2018-07-19 02:11:57'),
(4, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18-07-2018', '2018-07-18 05:58:46', '2018-07-18 05:58:46'),
(5, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18-07-2018', '2018-07-18 06:05:12', '2018-07-18 06:05:12'),
(6, 1, 5, 50, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, '18-07-2018', '2018-07-19 01:05:18', '2018-07-19 02:18:17'),
(7, 1, 1, 11, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, '18-07-2018', '2018-07-19 01:08:19', '2018-07-19 02:11:43'),
(8, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18-07-2018', '2018-07-19 01:16:43', '2018-07-19 01:16:43'),
(9, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18-07-2018', '2018-07-19 03:29:12', '2018-07-19 03:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `mediums`
--

CREATE TABLE `mediums` (
  `med_id` int(10) UNSIGNED NOT NULL,
  `med_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mediums`
--

INSERT INTO `mediums` (`med_id`, `med_name`) VALUES
(1, 'CBSC'),
(2, 'IBSC');

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `parent_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_mobile` bigint(20) DEFAULT NULL,
  `parent_alt_mobile` bigint(20) DEFAULT NULL,
  `parent_father_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_mother_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_details`
--

INSERT INTO `parent_details` (`parent_id`, `parent_first_name`, `parent_last_name`, `parent_email`, `parent_mobile`, `parent_alt_mobile`, `parent_father_picture`, `parent_mother_picture`, `parent_education`, `parent_created_at`) VALUES
(1, 'Ganesh', 'Katole', NULL, 7020560674, NULL, '', '', NULL, '2018-07-18 15:38:19'),
(2, 'Ramesh', 'Kate', NULL, 7020560674, NULL, '', '', NULL, '2018-07-17 20:28:46'),
(3, 'Manish', 'fale', '', 0, 0, '', '', '', '2018-07-17 20:22:24'),
(4, 'Mahesh', 'Shinde', '', 0, 0, '', '', '', '2018-07-17 20:35:11'),
(5, 'aaa', 'awale', NULL, 7020560674, 1111111111, '', '', NULL, '2018-07-18 15:35:17'),
(6, 'murlidhar', 'taru', '', 0, 0, '', '', '', '2018-07-18 15:46:43'),
(7, 'mmmm', 'taru', '', 0, 0, '', '', '', '2018-07-18 17:59:11'),
(8, 'vijay', NULL, NULL, 7020560674, 7020560674, NULL, NULL, NULL, '2018-07-19 01:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pay_id` int(10) UNSIGNED NOT NULL,
  `pay_voucher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_add_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_amount` int(11) DEFAULT NULL,
  `pay_given_for` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_cheque_date` text COLLATE utf8mb4_unicode_ci,
  `pay_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`pay_id`, `pay_voucher`, `pay_add_date`, `pay_first_name`, `pay_last_name`, `pay_amount`, `pay_given_for`, `pay_cheque_number`, `pay_cheque_date`, `pay_created_at`) VALUES
(1, '0001', '20-07-2018', 'vijay', 'awale', 22222, 'Traveling Allowance', '1', '20-07-2018', '2018-07-20 02:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `previous_details`
--

CREATE TABLE `previous_details` (
  `pd_id` int(10) UNSIGNED NOT NULL,
  `pd_standard` int(11) NOT NULL,
  `pd_medium` int(11) NOT NULL,
  `pd_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `previous_details`
--

INSERT INTO `previous_details` (`pd_id`, `pd_standard`, `pd_medium`, `pd_test`) VALUES
(1, 1, 2, '{"1":"33","3":"33"}');

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `std_id` int(10) UNSIGNED NOT NULL,
  `std_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`std_id`, `std_name`) VALUES
(1, '5th'),
(2, '6th');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `stu_uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_mobile` bigint(20) NOT NULL,
  `stu_alt_mobile` bigint(20) DEFAULT NULL,
  `stu_parent` int(10) UNSIGNED NOT NULL,
  `stu_dob` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_gender` tinyint(1) DEFAULT NULL,
  `stu_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_id`, `stu_uid`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_email`, `stu_mobile`, `stu_alt_mobile`, `stu_parent`, `stu_dob`, `stu_gender`, `stu_address`, `stu_picture`, `created_at`, `updated_at`) VALUES
(1, 'CBS05001M', 'Rohit', 'Ganesh', 'Katole', 'rohit@gmail.com', 7798765467, NULL, 1, '08-04-12', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4f5ee59c3b2.jpeg', '2018-07-18 05:39:49', '2018-07-19 01:08:19'),
(2, 'CBS05002M', 'Vinay', 'Ramesh', 'Kate', 'vinay@gmailcom', 8765465654, NULL, 2, '2017-10-6', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4e52266ecae.jpeg', '2018-07-18 05:44:13', '2018-07-18 06:01:34'),
(3, 'CBS05003M', 'Alok', 'Manish', 'fale', 'alok@gmail', 7685645646, NULL, 3, '2017-10-6', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4e50c4c51d0.jpeg', '2018-07-18 05:52:24', '2018-07-18 05:55:40'),
(4, 'CBS06001M', 'Raj', 'Mahesh', 'Shinde', 'raj@gmail.com', 6867856657, NULL, 4, '08-05-1912', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4e53d734062.jpeg', '2018-07-18 06:05:11', '2018-07-18 06:08:47'),
(5, 'CBS05004M', 'vijay', 'aaa', 'awale', 'a@gmail.com', 7020560674, 7020560674, 5, '18-07-2018', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4f5e2fab352.jpeg', '2018-07-19 01:03:22', '2018-07-19 01:05:18'),
(6, 'CBS06002E', 'bunty', 'murlidhar', 'taru', 'taru@gmail.com', 9527060616, 1223456789, 6, '18-07-2018', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b4f60ddced79.jpeg', '2018-07-19 01:16:43', '2018-07-19 01:16:43'),
(7, 'CBS05005M', 'mahes', 'mmmm', 'taru', 'aw@gmail.com', 7020560674, 7020560674, 7, '19-07-2018', 1, 'at post bholawade,bhor,tal-bhor,dist-pune.', 'images/s-5b50cc803f558.jpeg', '2018-07-19 03:29:11', '2018-07-20 03:08:09'),
(8, 'CBS05006M', 'vijayajay', 'aaa', 'awale', 'rahesh@gmailcom', 7020560674, NULL, 8, NULL, NULL, 'at post bholawade,bhor,tal-bhor,dist-pune.', NULL, '2018-07-19 11:22:13', '2018-07-19 11:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `student_relatives`
--

CREATE TABLE `student_relatives` (
  `sr_id` int(10) UNSIGNED NOT NULL,
  `sr_student` int(10) NOT NULL,
  `sr_relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr_full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr_education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sr_age` int(11) NOT NULL DEFAULT '0',
  `sr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_std` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_name`, `sub_std`) VALUES
(1, 'Hindi', 1),
(2, 'English', 2),
(3, 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `telecallings`
--

CREATE TABLE `telecallings` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `follow1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `follow2` text COLLATE utf8mb4_unicode_ci,
  `follow3` text COLLATE utf8mb4_unicode_ci,
  `follow4` text COLLATE utf8mb4_unicode_ci,
  `follow5` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telecallings`
--

INSERT INTO `telecallings` (`id`, `student_name`, `mobile`, `follow1`, `follow2`, `follow3`, `follow4`, `follow5`, `created_at`, `updated_at`) VALUES
(1, 'vijay awale', '7020560674', 'hii', NULL, NULL, NULL, NULL, '2018-07-19 03:33:32', '2018-07-19 03:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test_no`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-07-17 04:00:00', '2018-07-17 04:00:00'),
(2, 2, '2018-07-17 04:00:00', '2018-07-17 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$ZTal32N/YH5NuAb0VDOVFOfztUSpP4NDTeKMNaTxZjnVZ5LFfxXFG', '0N9Q83GAitz4nVV9Snzz0YfdyJ9J3dD2wAsfdSHJBIAhQarRLDEoF9yUpmPw', '2018-02-10 13:42:51', '2018-06-08 13:14:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_details`
--
ALTER TABLE `admission_details`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `ad_student` (`ad_student`),
  ADD KEY `ad_standard` (`ad_standard`),
  ADD KEY `ad_batch` (`ad_batch`),
  ADD KEY `ad_medium` (`ad_medium`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `balance_sheets`
--
ALTER TABLE `balance_sheets`
  ADD PRIMARY KEY (`bs_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`enq_id`),
  ADD KEY `enq_student` (`enq_student`),
  ADD KEY `enq_parent` (`enq_parent`),
  ADD KEY `enq_admission` (`enq_admission`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`install_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`in_id`);

--
-- Indexes for table `marksheets`
--
ALTER TABLE `marksheets`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `mark_student` (`mark_student`),
  ADD KEY `mark_subject` (`mark_subject`);

--
-- Indexes for table `mediums`
--
ALTER TABLE `mediums`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `previous_details`
--
ALTER TABLE `previous_details`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `students_stu_parent_foreign` (`stu_parent`);

--
-- Indexes for table `student_relatives`
--
ALTER TABLE `student_relatives`
  ADD PRIMARY KEY (`sr_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `sub_std` (`sub_std`);

--
-- Indexes for table `telecallings`
--
ALTER TABLE `telecallings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_details`
--
ALTER TABLE `admission_details`
  MODIFY `ad_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `balance_sheets`
--
ALTER TABLE `balance_sheets`
  MODIFY `bs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `enq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `install_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `in_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `marksheets`
--
ALTER TABLE `marksheets`
  MODIFY `mark_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mediums`
--
ALTER TABLE `mediums`
  MODIFY `med_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `parent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `previous_details`
--
ALTER TABLE `previous_details`
  MODIFY `pd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `std_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student_relatives`
--
ALTER TABLE `student_relatives`
  MODIFY `sr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `telecallings`
--
ALTER TABLE `telecallings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission_details`
--
ALTER TABLE `admission_details`
  ADD CONSTRAINT `admission_details_ibfk_1` FOREIGN KEY (`ad_student`) REFERENCES `students` (`stu_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `admission_details_ibfk_2` FOREIGN KEY (`ad_standard`) REFERENCES `standards` (`std_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `admission_details_ibfk_3` FOREIGN KEY (`ad_batch`) REFERENCES `batches` (`batch_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `admission_details_ibfk_4` FOREIGN KEY (`ad_medium`) REFERENCES `mediums` (`med_id`) ON DELETE NO ACTION;

--
-- Constraints for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD CONSTRAINT `enquiries_ibfk_1` FOREIGN KEY (`enq_student`) REFERENCES `students` (`stu_id`),
  ADD CONSTRAINT `enquiries_ibfk_2` FOREIGN KEY (`enq_parent`) REFERENCES `parent_details` (`parent_id`),
  ADD CONSTRAINT `enquiries_ibfk_3` FOREIGN KEY (`enq_admission`) REFERENCES `admission_details` (`ad_id`);

--
-- Constraints for table `marksheets`
--
ALTER TABLE `marksheets`
  ADD CONSTRAINT `marksheets_ibfk_2` FOREIGN KEY (`mark_subject`) REFERENCES `subjects` (`sub_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_stu_parent_foreign` FOREIGN KEY (`stu_parent`) REFERENCES `parent_details` (`parent_id`) ON DELETE NO ACTION;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`sub_std`) REFERENCES `standards` (`std_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
