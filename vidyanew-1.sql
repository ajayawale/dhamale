-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2018 at 01:29 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vidyanew`
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
  `att_added` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(10) UNSIGNED NOT NULL,
  `batch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `install_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `in_id` int(10) UNSIGNED NOT NULL,
  `in_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_add_date` date NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `mediums`
--

CREATE TABLE `mediums` (
  `med_id` int(10) UNSIGNED NOT NULL,
  `med_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pay_id` int(10) UNSIGNED NOT NULL,
  `pay_voucher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_add_date` date NOT NULL,
  `pay_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_amount` int(11) DEFAULT NULL,
  `pay_given_for` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_cheque_date` date DEFAULT NULL,
  `pay_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `std_id` int(10) UNSIGNED NOT NULL,
  `std_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `ad_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `balance_sheets`
--
ALTER TABLE `balance_sheets`
  MODIFY `bs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `enq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `install_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `in_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `marksheets`
--
ALTER TABLE `marksheets`
  MODIFY `mark_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `mediums`
--
ALTER TABLE `mediums`
  MODIFY `med_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `parent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `previous_details`
--
ALTER TABLE `previous_details`
  MODIFY `pd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `std_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `student_relatives`
--
ALTER TABLE `student_relatives`
  MODIFY `sr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `telecallings`
--
ALTER TABLE `telecallings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
