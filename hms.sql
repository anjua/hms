-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 05:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.12

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
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

CREATE TABLE `allergies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bed_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_types`
--

CREATE TABLE `bed_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `doctor_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_invoices`
--

CREATE TABLE `billing_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `pending_amount` int(11) NOT NULL DEFAULT 0,
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `mood` tinyint(4) NOT NULL DEFAULT 0,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `discount_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `additional_fee` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_invoice_details`
--

CREATE TABLE `billing_invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_amount` int(11) NOT NULL DEFAULT 0,
  `item_total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_transactions`
--

CREATE TABLE `billing_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pending_amount` int(11) NOT NULL DEFAULT 0,
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks`
--

CREATE TABLE `blood_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE `blood_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_stocks`
--

CREATE TABLE `blood_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock_details`
--

CREATE TABLE `blood_stock_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `blood_stock_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_details`
--

CREATE TABLE `cheque_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `billing_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icd_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` int(11) NOT NULL DEFAULT 0,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `specialist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_orders`
--

CREATE TABLE `doctor_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_settings`
--

CREATE TABLE `hospital_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establish` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number_mode` int(11) DEFAULT NULL,
  `invoice_last_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_settings`
--

INSERT INTO `hospital_settings` (`id`, `name`, `website`, `phone`, `fax`, `country`, `address`, `establish`, `email`, `logo`, `favicon`, `size`, `type`, `facebook`, `twitter`, `whatsapp`, `instagram`, `driver`, `encryption`, `host`, `port`, `username`, `password`, `email_from`, `email_from_name`, `invoice_prefix`, `invoice_logo`, `user_prefix`, `patient_prefix`, `invoice_number_mode`, `invoice_last_number`, `taxes`, `discount`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smtp', 'lts', 'localhost', 404, 'admin', 'admin', 'admin@admin.com', 'admin', 'INV', NULL, 'URN', 'PRN', 1, NULL, '0', '0', '2023-01-01 07:50:55', '2023-01-01 07:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `immunizations`
--

CREATE TABLE `immunizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investigations`
--

CREATE TABLE `investigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Stat means Statistics',
  `ot_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `test_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_tests`
--

CREATE TABLE `lab_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT 0,
  `percentage` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_certificates`
--

CREATE TABLE `medical_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalized` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Yes = 1 , No = 0',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicine_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_price` int(11) NOT NULL DEFAULT 0,
  `medicine_profit` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_qty` int(11) NOT NULL DEFAULT 0,
  `alert_qty` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_types`
--

CREATE TABLE `medicine_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_22_034036_create_hospital_settings_table', 1),
(6, '2022_12_22_034116_create_branches_table', 1),
(7, '2022_12_22_034129_create_departments_table', 1),
(8, '2022_12_22_034145_create_specialists_table', 1),
(9, '2022_12_22_034201_create_doctors_table', 1),
(10, '2022_12_22_034223_create_nurses_table', 1),
(11, '2022_12_22_034240_create_patients_table', 1),
(12, '2022_12_22_034252_create_patient_visits_table', 1),
(13, '2022_12_22_034305_create_patient_records_table', 1),
(14, '2022_12_22_034325_create_schedules_table', 1),
(15, '2022_12_22_034343_create_laboratories_table', 1),
(16, '2022_12_22_034401_create_blood_banks_table', 1),
(17, '2022_12_22_034416_create_operation_types_table', 1),
(18, '2022_12_22_034416_create_operations_table', 1),
(19, '2022_12_22_034433_create_medicine_types_table', 1),
(20, '2022_12_22_034445_create_medicine_categories_table', 1),
(21, '2022_12_22_034502_create_suppliers_table', 1),
(22, '2022_12_22_034518_create_purchases_table', 1),
(23, '2022_12_22_034532_create_medicines_table', 1),
(24, '2022_12_22_034548_create_prescriptions_table', 1),
(25, '2022_12_22_034606_create_vitals_table', 1),
(26, '2022_12_22_034620_create_allergies_table', 1),
(27, '2022_12_22_034637_create_immunizations_table', 1),
(28, '2022_12_22_034653_create_presenting_complains_table', 1),
(29, '2022_12_22_034706_create_diagnoses_table', 1),
(30, '2022_12_22_034721_create_blood_donors_table', 1),
(31, '2022_12_22_034741_create_test_types_table', 1),
(32, '2022_12_22_034742_create_investigations_table', 1),
(33, '2022_12_22_034757_create_advice_table', 1),
(34, '2022_12_22_034813_create_medical_certificates_table', 1),
(35, '2022_12_22_034829_create_pharmacies_table', 1),
(36, '2022_12_22_034843_create_doctor_orders_table', 1),
(37, '2022_12_22_034902_create_billings_table', 1),
(38, '2022_12_22_034916_create_billing_invoices_table', 1),
(39, '2022_12_22_034917_create_billing_transactions_table', 1),
(40, '2022_12_22_034946_create_billing_invoice_details_table', 1),
(41, '2022_12_22_035005_create_cheque_details_table', 1),
(42, '2022_12_22_035231_create_sample_collections_table', 1),
(43, '2022_12_22_035249_create_wards_table', 1),
(44, '2022_12_22_035311_create_room_types_table', 1),
(45, '2022_12_22_035324_create_bed_types_table', 1),
(46, '2022_12_22_035345_create_rooms_table', 1),
(47, '2022_12_22_035356_create_beds_table', 1),
(48, '2022_12_22_035416_create_pharmacy_invoices_table', 1),
(49, '2022_12_22_035439_create_blood_requests_table', 1),
(50, '2022_12_22_035452_create_blood_stocks_table', 1),
(51, '2022_12_22_035504_create_blood_stock_details_table', 1),
(52, '2022_12_22_035528_create_lab_tests_table', 1),
(53, '2022_12_22_035529_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 20),
(1, 'App\\Models\\User', 21),
(1, 'App\\Models\\User', 22),
(1, 'App\\Models\\User', 23),
(1, 'App\\Models\\User', 24),
(1, 'App\\Models\\User', 25),
(1, 'App\\Models\\User', 26),
(1, 'App\\Models\\User', 27),
(1, 'App\\Models\\User', 28),
(1, 'App\\Models\\User', 29),
(1, 'App\\Models\\User', 30),
(1, 'App\\Models\\User', 31),
(1, 'App\\Models\\User', 32),
(1, 'App\\Models\\User', 33),
(1, 'App\\Models\\User', 34),
(1, 'App\\Models\\User', 35),
(1, 'App\\Models\\User', 36),
(1, 'App\\Models\\User', 37),
(1, 'App\\Models\\User', 38),
(1, 'App\\Models\\User', 39),
(1, 'App\\Models\\User', 40),
(1, 'App\\Models\\User', 41),
(1, 'App\\Models\\User', 42),
(1, 'App\\Models\\User', 43),
(1, 'App\\Models\\User', 44),
(1, 'App\\Models\\User', 45),
(1, 'App\\Models\\User', 46),
(1, 'App\\Models\\User', 47),
(1, 'App\\Models\\User', 48),
(1, 'App\\Models\\User', 49),
(1, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 61),
(2, 'App\\Models\\User', 62),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 67),
(2, 'App\\Models\\User', 68),
(2, 'App\\Models\\User', 69),
(2, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 72),
(2, 'App\\Models\\User', 73),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 101),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 115),
(3, 'App\\Models\\User', 116),
(3, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(3, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 121),
(3, 'App\\Models\\User', 122),
(3, 'App\\Models\\User', 123),
(3, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(3, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(3, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(3, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 140),
(3, 'App\\Models\\User', 141),
(3, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 144),
(3, 'App\\Models\\User', 145),
(3, 'App\\Models\\User', 146),
(3, 'App\\Models\\User', 147),
(3, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 149),
(3, 'App\\Models\\User', 150),
(4, 'App\\Models\\User', 151),
(4, 'App\\Models\\User', 152),
(4, 'App\\Models\\User', 153),
(4, 'App\\Models\\User', 154),
(4, 'App\\Models\\User', 155),
(4, 'App\\Models\\User', 156),
(4, 'App\\Models\\User', 157),
(4, 'App\\Models\\User', 158),
(4, 'App\\Models\\User', 159),
(4, 'App\\Models\\User', 160),
(4, 'App\\Models\\User', 161),
(4, 'App\\Models\\User', 162),
(4, 'App\\Models\\User', 163),
(4, 'App\\Models\\User', 164),
(4, 'App\\Models\\User', 165),
(4, 'App\\Models\\User', 166),
(4, 'App\\Models\\User', 167),
(4, 'App\\Models\\User', 168),
(4, 'App\\Models\\User', 169),
(4, 'App\\Models\\User', 170),
(4, 'App\\Models\\User', 171),
(4, 'App\\Models\\User', 172),
(4, 'App\\Models\\User', 173),
(4, 'App\\Models\\User', 174),
(4, 'App\\Models\\User', 175),
(4, 'App\\Models\\User', 176),
(4, 'App\\Models\\User', 177),
(4, 'App\\Models\\User', 178),
(4, 'App\\Models\\User', 179),
(4, 'App\\Models\\User', 180),
(4, 'App\\Models\\User', 181),
(4, 'App\\Models\\User', 182),
(4, 'App\\Models\\User', 183),
(4, 'App\\Models\\User', 184),
(4, 'App\\Models\\User', 185),
(4, 'App\\Models\\User', 186),
(4, 'App\\Models\\User', 187),
(4, 'App\\Models\\User', 188),
(4, 'App\\Models\\User', 189),
(4, 'App\\Models\\User', 190),
(4, 'App\\Models\\User', 191),
(4, 'App\\Models\\User', 192),
(4, 'App\\Models\\User', 193),
(4, 'App\\Models\\User', 194),
(4, 'App\\Models\\User', 195),
(4, 'App\\Models\\User', 196),
(4, 'App\\Models\\User', 197),
(4, 'App\\Models\\User', 198),
(4, 'App\\Models\\User', 199),
(4, 'App\\Models\\User', 200),
(5, 'App\\Models\\User', 201),
(5, 'App\\Models\\User', 202),
(5, 'App\\Models\\User', 203),
(5, 'App\\Models\\User', 204),
(5, 'App\\Models\\User', 205),
(5, 'App\\Models\\User', 206),
(5, 'App\\Models\\User', 207),
(5, 'App\\Models\\User', 208),
(5, 'App\\Models\\User', 209),
(5, 'App\\Models\\User', 210),
(5, 'App\\Models\\User', 211),
(5, 'App\\Models\\User', 212),
(5, 'App\\Models\\User', 213),
(5, 'App\\Models\\User', 214),
(5, 'App\\Models\\User', 215),
(5, 'App\\Models\\User', 216),
(5, 'App\\Models\\User', 217),
(5, 'App\\Models\\User', 218),
(5, 'App\\Models\\User', 219),
(5, 'App\\Models\\User', 220),
(5, 'App\\Models\\User', 221),
(5, 'App\\Models\\User', 222),
(5, 'App\\Models\\User', 223),
(5, 'App\\Models\\User', 224),
(5, 'App\\Models\\User', 225),
(5, 'App\\Models\\User', 226),
(5, 'App\\Models\\User', 227),
(5, 'App\\Models\\User', 228),
(5, 'App\\Models\\User', 229),
(5, 'App\\Models\\User', 230),
(5, 'App\\Models\\User', 231),
(5, 'App\\Models\\User', 232),
(5, 'App\\Models\\User', 233),
(5, 'App\\Models\\User', 234),
(5, 'App\\Models\\User', 235),
(5, 'App\\Models\\User', 236),
(5, 'App\\Models\\User', 237),
(5, 'App\\Models\\User', 238),
(5, 'App\\Models\\User', 239),
(5, 'App\\Models\\User', 240),
(5, 'App\\Models\\User', 241),
(5, 'App\\Models\\User', 242),
(5, 'App\\Models\\User', 243),
(5, 'App\\Models\\User', 244),
(5, 'App\\Models\\User', 245),
(5, 'App\\Models\\User', 246),
(5, 'App\\Models\\User', 247),
(5, 'App\\Models\\User', 248),
(5, 'App\\Models\\User', 249),
(5, 'App\\Models\\User', 250),
(6, 'App\\Models\\User', 251),
(6, 'App\\Models\\User', 252),
(6, 'App\\Models\\User', 253),
(6, 'App\\Models\\User', 254),
(6, 'App\\Models\\User', 255),
(6, 'App\\Models\\User', 256),
(6, 'App\\Models\\User', 257),
(6, 'App\\Models\\User', 258),
(6, 'App\\Models\\User', 259),
(6, 'App\\Models\\User', 260),
(6, 'App\\Models\\User', 261),
(6, 'App\\Models\\User', 262),
(6, 'App\\Models\\User', 263),
(6, 'App\\Models\\User', 264),
(6, 'App\\Models\\User', 265),
(6, 'App\\Models\\User', 266),
(6, 'App\\Models\\User', 267),
(6, 'App\\Models\\User', 268),
(6, 'App\\Models\\User', 269),
(6, 'App\\Models\\User', 270),
(6, 'App\\Models\\User', 271),
(6, 'App\\Models\\User', 272),
(6, 'App\\Models\\User', 273),
(6, 'App\\Models\\User', 274),
(6, 'App\\Models\\User', 275),
(6, 'App\\Models\\User', 276),
(6, 'App\\Models\\User', 277),
(6, 'App\\Models\\User', 278),
(6, 'App\\Models\\User', 279),
(6, 'App\\Models\\User', 280),
(6, 'App\\Models\\User', 281),
(6, 'App\\Models\\User', 282),
(6, 'App\\Models\\User', 283),
(6, 'App\\Models\\User', 284),
(6, 'App\\Models\\User', 285),
(6, 'App\\Models\\User', 286),
(6, 'App\\Models\\User', 287),
(6, 'App\\Models\\User', 288),
(6, 'App\\Models\\User', 289),
(6, 'App\\Models\\User', 290),
(6, 'App\\Models\\User', 291),
(6, 'App\\Models\\User', 292),
(6, 'App\\Models\\User', 293),
(6, 'App\\Models\\User', 294),
(6, 'App\\Models\\User', 295),
(6, 'App\\Models\\User', 296),
(6, 'App\\Models\\User', 297),
(6, 'App\\Models\\User', 298),
(6, 'App\\Models\\User', 299),
(6, 'App\\Models\\User', 300),
(7, 'App\\Models\\User', 301),
(7, 'App\\Models\\User', 302),
(7, 'App\\Models\\User', 303),
(7, 'App\\Models\\User', 304),
(7, 'App\\Models\\User', 305),
(7, 'App\\Models\\User', 306),
(7, 'App\\Models\\User', 307),
(7, 'App\\Models\\User', 308),
(7, 'App\\Models\\User', 309),
(7, 'App\\Models\\User', 310),
(7, 'App\\Models\\User', 311),
(7, 'App\\Models\\User', 312),
(7, 'App\\Models\\User', 313),
(7, 'App\\Models\\User', 314),
(7, 'App\\Models\\User', 315),
(7, 'App\\Models\\User', 316),
(7, 'App\\Models\\User', 317),
(7, 'App\\Models\\User', 318),
(7, 'App\\Models\\User', 319),
(7, 'App\\Models\\User', 320),
(7, 'App\\Models\\User', 321),
(7, 'App\\Models\\User', 322),
(7, 'App\\Models\\User', 323),
(7, 'App\\Models\\User', 324),
(7, 'App\\Models\\User', 325),
(7, 'App\\Models\\User', 326),
(7, 'App\\Models\\User', 327),
(7, 'App\\Models\\User', 328),
(7, 'App\\Models\\User', 329),
(7, 'App\\Models\\User', 330),
(7, 'App\\Models\\User', 331),
(7, 'App\\Models\\User', 332),
(7, 'App\\Models\\User', 333),
(7, 'App\\Models\\User', 334),
(7, 'App\\Models\\User', 335),
(7, 'App\\Models\\User', 336),
(7, 'App\\Models\\User', 337),
(7, 'App\\Models\\User', 338),
(7, 'App\\Models\\User', 339),
(7, 'App\\Models\\User', 340),
(7, 'App\\Models\\User', 341),
(7, 'App\\Models\\User', 342),
(7, 'App\\Models\\User', 343),
(7, 'App\\Models\\User', 344),
(7, 'App\\Models\\User', 345),
(7, 'App\\Models\\User', 346),
(7, 'App\\Models\\User', 347),
(7, 'App\\Models\\User', 348),
(7, 'App\\Models\\User', 349),
(7, 'App\\Models\\User', 350),
(8, 'App\\Models\\User', 351),
(8, 'App\\Models\\User', 352),
(8, 'App\\Models\\User', 353),
(8, 'App\\Models\\User', 354),
(8, 'App\\Models\\User', 355),
(8, 'App\\Models\\User', 356),
(8, 'App\\Models\\User', 357),
(8, 'App\\Models\\User', 358),
(8, 'App\\Models\\User', 359),
(8, 'App\\Models\\User', 360),
(8, 'App\\Models\\User', 361),
(8, 'App\\Models\\User', 362),
(8, 'App\\Models\\User', 363),
(8, 'App\\Models\\User', 364),
(8, 'App\\Models\\User', 365),
(8, 'App\\Models\\User', 366),
(8, 'App\\Models\\User', 367),
(8, 'App\\Models\\User', 368),
(8, 'App\\Models\\User', 369),
(8, 'App\\Models\\User', 370),
(8, 'App\\Models\\User', 371),
(8, 'App\\Models\\User', 372),
(8, 'App\\Models\\User', 373),
(8, 'App\\Models\\User', 374),
(8, 'App\\Models\\User', 375),
(8, 'App\\Models\\User', 376),
(8, 'App\\Models\\User', 377),
(8, 'App\\Models\\User', 378),
(8, 'App\\Models\\User', 379),
(8, 'App\\Models\\User', 380),
(8, 'App\\Models\\User', 381),
(8, 'App\\Models\\User', 382),
(8, 'App\\Models\\User', 383),
(8, 'App\\Models\\User', 384),
(8, 'App\\Models\\User', 385),
(8, 'App\\Models\\User', 386),
(8, 'App\\Models\\User', 387),
(8, 'App\\Models\\User', 388),
(8, 'App\\Models\\User', 389),
(8, 'App\\Models\\User', 390),
(8, 'App\\Models\\User', 391),
(8, 'App\\Models\\User', 392),
(8, 'App\\Models\\User', 393),
(8, 'App\\Models\\User', 394),
(8, 'App\\Models\\User', 395),
(8, 'App\\Models\\User', 396),
(8, 'App\\Models\\User', 397),
(8, 'App\\Models\\User', 398),
(8, 'App\\Models\\User', 399),
(8, 'App\\Models\\User', 400),
(9, 'App\\Models\\User', 401),
(9, 'App\\Models\\User', 402),
(9, 'App\\Models\\User', 403),
(9, 'App\\Models\\User', 404),
(9, 'App\\Models\\User', 405),
(9, 'App\\Models\\User', 406),
(9, 'App\\Models\\User', 407),
(9, 'App\\Models\\User', 408),
(9, 'App\\Models\\User', 409),
(9, 'App\\Models\\User', 410),
(9, 'App\\Models\\User', 411),
(9, 'App\\Models\\User', 412),
(9, 'App\\Models\\User', 413),
(9, 'App\\Models\\User', 414),
(9, 'App\\Models\\User', 415),
(9, 'App\\Models\\User', 416),
(9, 'App\\Models\\User', 417),
(9, 'App\\Models\\User', 418),
(9, 'App\\Models\\User', 419),
(9, 'App\\Models\\User', 420),
(9, 'App\\Models\\User', 421),
(9, 'App\\Models\\User', 422),
(9, 'App\\Models\\User', 423),
(9, 'App\\Models\\User', 424),
(9, 'App\\Models\\User', 425),
(9, 'App\\Models\\User', 426),
(9, 'App\\Models\\User', 427),
(9, 'App\\Models\\User', 428),
(9, 'App\\Models\\User', 429),
(9, 'App\\Models\\User', 430),
(9, 'App\\Models\\User', 431),
(9, 'App\\Models\\User', 432),
(9, 'App\\Models\\User', 433),
(9, 'App\\Models\\User', 434),
(9, 'App\\Models\\User', 435),
(9, 'App\\Models\\User', 436),
(9, 'App\\Models\\User', 437),
(9, 'App\\Models\\User', 438),
(9, 'App\\Models\\User', 439),
(9, 'App\\Models\\User', 440),
(9, 'App\\Models\\User', 441),
(9, 'App\\Models\\User', 442),
(9, 'App\\Models\\User', 443),
(9, 'App\\Models\\User', 444),
(9, 'App\\Models\\User', 445),
(9, 'App\\Models\\User', 446),
(9, 'App\\Models\\User', 447),
(9, 'App\\Models\\User', 448),
(9, 'App\\Models\\User', 449),
(9, 'App\\Models\\User', 450),
(9, 'App\\Models\\User', 451);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_nurse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `specialist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operation_date` date NOT NULL,
  `operation_time` time NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `operation_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operation_types`
--

CREATE TABLE `operation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 = Yes, 2 = No',
  `referred_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_type` int(11) DEFAULT NULL COMMENT '1 = Inpatient, 2 = Outpatient',
  `title` int(11) DEFAULT NULL COMMENT 'Mr. Mrs. Sir. Etc.',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'full name of the patient',
  `dob` date DEFAULT NULL COMMENT 'numbers only',
  `age` int(11) DEFAULT NULL COMMENT 'numbers only',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'M = Male, F = Female',
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S = Single, D = Divorce, M = Married',
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'because one email can be use for multiple patient from the same house',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'because one phone number can be use for multiple patient from the same house',
  `religion` int(11) DEFAULT NULL,
  `occupation` int(11) DEFAULT NULL COMMENT 'student, farmer, etc.',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_a_patient` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'if same as patient all the address will copy from the patient to the next of kin box',
  `next_of_kin_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 = Cash',
  `symptoms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_visits`
--

CREATE TABLE `patient_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'when complete the status will change',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'sales-module-control', 'web', NULL, NULL),
(2, 'create-sales', 'web', NULL, NULL),
(3, 'view-sales', 'web', NULL, NULL),
(4, 'update-sales', 'web', NULL, NULL),
(5, 'delete-sales', 'web', NULL, NULL),
(6, 'bulk-delete-sales', 'web', NULL, NULL),
(7, 'import-sales', 'web', NULL, NULL),
(8, 'export-sales', 'web', NULL, NULL),
(9, 'report-module-control', 'web', NULL, NULL),
(10, 'create-report', 'web', NULL, NULL),
(11, 'view-report', 'web', NULL, NULL),
(12, 'update-report', 'web', NULL, NULL),
(13, 'delete-report', 'web', NULL, NULL),
(14, 'bulk-delete-report', 'web', NULL, NULL),
(15, 'import-report', 'web', NULL, NULL),
(16, 'export-report', 'web', NULL, NULL),
(17, 'medicine-category-module-control', 'web', NULL, NULL),
(18, 'view-medicine-category', 'web', NULL, NULL),
(19, 'create-medicine-category', 'web', NULL, NULL),
(20, 'delete-medicine-category', 'web', NULL, NULL),
(21, 'update-medicine-category', 'web', NULL, NULL),
(22, 'purchase-module-control', 'web', NULL, NULL),
(23, 'create-purchase', 'web', NULL, NULL),
(24, 'view-purchase', 'web', NULL, NULL),
(25, 'update-purchase', 'web', NULL, NULL),
(26, 'delete-purchase', 'web', NULL, NULL),
(27, 'bulk-delete-purchase', 'web', NULL, NULL),
(28, 'import-purchase', 'web', NULL, NULL),
(29, 'export-purchase', 'web', NULL, NULL),
(30, 'supplier-module-control', 'web', NULL, NULL),
(31, 'create-supplier', 'web', NULL, NULL),
(32, 'view-supplier', 'web', NULL, NULL),
(33, 'update-supplier', 'web', NULL, NULL),
(34, 'delete-supplier', 'web', NULL, NULL),
(35, 'bulk-delete-supplier', 'web', NULL, NULL),
(36, 'import-supplier', 'web', NULL, NULL),
(37, 'export-supplier', 'web', NULL, NULL),
(38, 'access-module-control', 'web', NULL, NULL),
(39, 'create-role', 'web', NULL, NULL),
(40, 'view-role', 'web', NULL, NULL),
(41, 'update-role', 'web', NULL, NULL),
(42, 'delete-role', 'web', NULL, NULL),
(43, 'bulk-delete-role', 'web', NULL, NULL),
(44, 'import-role', 'web', NULL, NULL),
(45, 'export-role', 'web', NULL, NULL),
(46, 'create-permission', 'web', NULL, NULL),
(47, 'view-permission', 'web', NULL, NULL),
(48, 'update-permission', 'web', NULL, NULL),
(49, 'delete-permission', 'web', NULL, NULL),
(50, 'bulk-delete-permission', 'web', NULL, NULL),
(51, 'import-permission', 'web', NULL, NULL),
(52, 'export-permission', 'web', NULL, NULL),
(53, 'view-expired-products', 'web', NULL, NULL),
(54, 'view-outstock-products', 'web', NULL, NULL),
(55, 'backup-app', 'web', NULL, NULL),
(56, 'backup-db', 'web', NULL, NULL),
(57, 'settings-module-control', 'web', NULL, NULL),
(58, 'create-settings', 'web', NULL, NULL),
(59, 'view-settings', 'web', NULL, NULL),
(60, 'update-settings', 'web', NULL, NULL),
(61, 'delete-settings', 'web', NULL, NULL),
(62, 'bulk-delete-settings', 'web', NULL, NULL),
(63, 'import-settings', 'web', NULL, NULL),
(64, 'export-settings', 'web', NULL, NULL),
(65, 'doctor-module-control', 'web', NULL, NULL),
(66, 'create-doctor', 'web', NULL, NULL),
(67, 'view-doctor', 'web', NULL, NULL),
(68, 'update-doctor', 'web', NULL, NULL),
(69, 'delete-doctor', 'web', NULL, NULL),
(70, 'bulk-delete-doctor', 'web', NULL, NULL),
(71, 'import-doctor', 'web', NULL, NULL),
(72, 'export-doctor', 'web', NULL, NULL),
(73, 'nurse-module-control', 'web', NULL, NULL),
(74, 'create-nurse', 'web', NULL, NULL),
(75, 'view-nurse', 'web', NULL, NULL),
(76, 'update-nurse', 'web', NULL, NULL),
(77, 'delete-nurse', 'web', NULL, NULL),
(78, 'bulk-delete-nurse', 'web', NULL, NULL),
(79, 'import-nurse', 'web', NULL, NULL),
(80, 'export-nurse', 'web', NULL, NULL),
(81, 'user-module-control', 'web', NULL, NULL),
(82, 'create-user', 'web', NULL, NULL),
(83, 'view-user', 'web', NULL, NULL),
(84, 'update-user', 'web', NULL, NULL),
(85, 'delete-user', 'web', NULL, NULL),
(86, 'bulk-delete-user', 'web', NULL, NULL),
(87, 'import-user', 'web', NULL, NULL),
(88, 'export-user', 'web', NULL, NULL),
(89, 'patient-module-control', 'web', NULL, NULL),
(90, 'create-patient', 'web', NULL, NULL),
(91, 'view-patient', 'web', NULL, NULL),
(92, 'update-patient', 'web', NULL, NULL),
(93, 'delete-patient', 'web', NULL, NULL),
(94, 'bulk-delete-patient', 'web', NULL, NULL),
(95, 'import-patient', 'web', NULL, NULL),
(96, 'export-patient', 'web', NULL, NULL),
(97, 'medicine-module-control', 'web', NULL, NULL),
(98, 'create-medicine', 'web', NULL, NULL),
(99, 'view-medicine', 'web', NULL, NULL),
(100, 'update-medicine', 'web', NULL, NULL),
(101, 'delete-medicine', 'web', NULL, NULL),
(102, 'bulk-delete-medicine', 'web', NULL, NULL),
(103, 'import-medicine', 'web', NULL, NULL),
(104, 'export-medicine', 'web', NULL, NULL),
(105, 'holiday-module-control', 'web', NULL, NULL),
(106, 'create-holiday', 'web', NULL, NULL),
(107, 'view-holiday', 'web', NULL, NULL),
(108, 'update-holiday', 'web', NULL, NULL),
(109, 'delete-holiday', 'web', NULL, NULL),
(110, 'bulk-delete-holiday', 'web', NULL, NULL),
(111, 'import-holiday', 'web', NULL, NULL),
(112, 'export-holiday', 'web', NULL, NULL),
(113, 'leave-module-control', 'web', NULL, NULL),
(114, 'create-leave', 'web', NULL, NULL),
(115, 'view-leave', 'web', NULL, NULL),
(116, 'update-leave', 'web', NULL, NULL),
(117, 'delete-leave', 'web', NULL, NULL),
(118, 'bulk-delete-leave', 'web', NULL, NULL),
(119, 'import-leave', 'web', NULL, NULL),
(120, 'export-leave', 'web', NULL, NULL),
(121, 'event-module-control', 'web', NULL, NULL),
(122, 'create-event', 'web', NULL, NULL),
(123, 'view-event', 'web', NULL, NULL),
(124, 'update-event', 'web', NULL, NULL),
(125, 'delete-event', 'web', NULL, NULL),
(126, 'bulk-delete-event', 'web', NULL, NULL),
(127, 'import-event', 'web', NULL, NULL),
(128, 'export-event', 'web', NULL, NULL),
(129, 'pharmacy-module-control', 'web', NULL, NULL),
(130, 'create-pharmacy', 'web', NULL, NULL),
(131, 'view-pharmacy', 'web', NULL, NULL),
(132, 'update-pharmacy', 'web', NULL, NULL),
(133, 'delete-pharmacy', 'web', NULL, NULL),
(134, 'bulk-delete-pharmacy', 'web', NULL, NULL),
(135, 'import-pharmacy', 'web', NULL, NULL),
(136, 'export-pharmacy', 'web', NULL, NULL),
(137, 'inventory-module-control', 'web', NULL, NULL),
(138, 'create-inventory', 'web', NULL, NULL),
(139, 'view-inventory', 'web', NULL, NULL),
(140, 'update-inventory', 'web', NULL, NULL),
(141, 'delete-inventory', 'web', NULL, NULL),
(142, 'bulk-delete-inventory', 'web', NULL, NULL),
(143, 'import-inventory', 'web', NULL, NULL),
(144, 'export-inventory', 'web', NULL, NULL),
(145, 'stock-module-control', 'web', NULL, NULL),
(146, 'create-stock', 'web', NULL, NULL),
(147, 'view-stock', 'web', NULL, NULL),
(148, 'update-stock', 'web', NULL, NULL),
(149, 'delete-stock', 'web', NULL, NULL),
(150, 'bulk-delete-stock', 'web', NULL, NULL),
(151, 'import-stock', 'web', NULL, NULL),
(152, 'export-stock', 'web', NULL, NULL),
(153, 'monitor-stock', 'web', NULL, NULL),
(154, 'adjust-stock', 'web', NULL, NULL),
(155, 'invoice-module-control', 'web', NULL, NULL),
(156, 'create-invoice', 'web', NULL, NULL),
(157, 'view-invoice', 'web', NULL, NULL),
(158, 'update-invoice', 'web', NULL, NULL),
(159, 'delete-invoice', 'web', NULL, NULL),
(160, 'bulk-delete-invoice', 'web', NULL, NULL),
(161, 'import-invoice', 'web', NULL, NULL),
(162, 'export-invoice', 'web', NULL, NULL),
(163, 'appointment-module-control', 'web', NULL, NULL),
(164, 'create-appointment', 'web', NULL, NULL),
(165, 'view-appointment', 'web', NULL, NULL),
(166, 'update-appointment', 'web', NULL, NULL),
(167, 'delete-appointment', 'web', NULL, NULL),
(168, 'bulk-delete-appointment', 'web', NULL, NULL),
(169, 'import-appointment', 'web', NULL, NULL),
(170, 'export-appointment', 'web', NULL, NULL),
(171, 'approve-appointment', 'web', NULL, NULL),
(172, 'disapprove-appointment', 'web', NULL, NULL),
(173, 'reschedule-appointment', 'web', NULL, NULL),
(174, 'prescription-module-control', 'web', NULL, NULL),
(175, 'create-prescription', 'web', NULL, NULL),
(176, 'view-prescription', 'web', NULL, NULL),
(177, 'update-prescription', 'web', NULL, NULL),
(178, 'delete-prescription', 'web', NULL, NULL),
(179, 'bulk-delete-prescription', 'web', NULL, NULL),
(180, 'import-prescription', 'web', NULL, NULL),
(181, 'export-prescription', 'web', NULL, NULL),
(182, 'bed-module-control', 'web', NULL, NULL),
(183, 'create-bed', 'web', NULL, NULL),
(184, 'view-bed', 'web', NULL, NULL),
(185, 'update-bed', 'web', NULL, NULL),
(186, 'delete-bed', 'web', NULL, NULL),
(187, 'bulk-delete-bed', 'web', NULL, NULL),
(188, 'import-bed', 'web', NULL, NULL),
(189, 'export-bed', 'web', NULL, NULL),
(190, 'allocate-bed', 'web', NULL, NULL),
(191, 'treatment-module-control', 'web', NULL, NULL),
(192, 'create-treatment', 'web', NULL, NULL),
(193, 'view-treatment', 'web', NULL, NULL),
(194, 'update-treatment', 'web', NULL, NULL),
(195, 'delete-treatment', 'web', NULL, NULL),
(196, 'bulk-delete-treatment', 'web', NULL, NULL),
(197, 'import-treatment', 'web', NULL, NULL),
(198, 'export-treatment', 'web', NULL, NULL),
(199, 'mortuary-module-control', 'web', NULL, NULL),
(200, 'create-mortuary', 'web', NULL, NULL),
(201, 'view-mortuary', 'web', NULL, NULL),
(202, 'update-mortuary', 'web', NULL, NULL),
(203, 'delete-mortuary', 'web', NULL, NULL),
(204, 'bulk-delete-mortuary', 'web', NULL, NULL),
(205, 'import-mortuary', 'web', NULL, NULL),
(206, 'export-mortuary', 'web', NULL, NULL),
(207, 'bloodBank-module-control', 'web', NULL, NULL),
(208, 'create-bloodBank', 'web', NULL, NULL),
(209, 'view-bloodBank', 'web', NULL, NULL),
(210, 'update-bloodBank', 'web', NULL, NULL),
(211, 'delete-bloodBank', 'web', NULL, NULL),
(212, 'bulk-delete-bloodBank', 'web', NULL, NULL),
(213, 'import-bloodBank', 'web', NULL, NULL),
(214, 'export-bloodBank', 'web', NULL, NULL),
(215, 'childBirth-module-control', 'web', NULL, NULL),
(216, 'create-childBirth', 'web', NULL, NULL),
(217, 'view-childBirth', 'web', NULL, NULL),
(218, 'update-childBirth', 'web', NULL, NULL),
(219, 'delete-childBirth', 'web', NULL, NULL),
(220, 'bulk-delete-childBirth', 'web', NULL, NULL),
(221, 'import-childBirth', 'web', NULL, NULL),
(222, 'export-childBirth', 'web', NULL, NULL),
(223, 'ambulance-module-control', 'web', NULL, NULL),
(224, 'create-ambulance', 'web', NULL, NULL),
(225, 'view-ambulance', 'web', NULL, NULL),
(226, 'update-ambulance', 'web', NULL, NULL),
(227, 'delete-ambulance', 'web', NULL, NULL),
(228, 'bulk-delete-ambulance', 'web', NULL, NULL),
(229, 'import-ambulance', 'web', NULL, NULL),
(230, 'export-ambulance', 'web', NULL, NULL),
(231, 'laboratory-module-control', 'web', NULL, NULL),
(232, 'create-laboratory', 'web', NULL, NULL),
(233, 'view-laboratory', 'web', NULL, NULL),
(234, 'update-laboratory', 'web', NULL, NULL),
(235, 'delete-laboratory', 'web', NULL, NULL),
(236, 'bulk-delete-laboratory', 'web', NULL, NULL),
(237, 'import-laboratory', 'web', NULL, NULL),
(238, 'export-laboratory', 'web', NULL, NULL),
(239, 'radiology-module-control', 'web', NULL, NULL),
(240, 'create-radiology', 'web', NULL, NULL),
(241, 'view-radiology', 'web', NULL, NULL),
(242, 'update-radiology', 'web', NULL, NULL),
(243, 'delete-radiology', 'web', NULL, NULL),
(244, 'bulk-delete-radiology', 'web', NULL, NULL),
(245, 'import-radiology', 'web', NULL, NULL),
(246, 'export-radiology', 'web', NULL, NULL),
(247, 'specialist-module-control', 'web', NULL, NULL),
(248, 'create-specialist', 'web', NULL, NULL),
(249, 'view-specialist', 'web', NULL, NULL),
(250, 'update-specialist', 'web', NULL, NULL),
(251, 'delete-specialist', 'web', NULL, NULL),
(252, 'bulk-delete-specialist', 'web', NULL, NULL),
(253, 'import-specialist', 'web', NULL, NULL),
(254, 'export-specialist', 'web', NULL, NULL),
(255, 'department-module-control', 'web', NULL, NULL),
(256, 'create-department', 'web', NULL, NULL),
(257, 'view-department', 'web', NULL, NULL),
(258, 'update-department', 'web', NULL, NULL),
(259, 'delete-department', 'web', NULL, NULL),
(260, 'bulk-delete-department', 'web', NULL, NULL),
(261, 'import-department', 'web', NULL, NULL),
(262, 'export-department', 'web', NULL, NULL),
(263, 'operation-module-control', 'web', NULL, NULL),
(264, 'create-operation', 'web', NULL, NULL),
(265, 'view-operation', 'web', NULL, NULL),
(266, 'update-operation', 'web', NULL, NULL),
(267, 'delete-operation', 'web', NULL, NULL),
(268, 'bulk-delete-operation', 'web', NULL, NULL),
(269, 'import-operation', 'web', NULL, NULL),
(270, 'export-operation', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_invoices`
--

CREATE TABLE `pharmacy_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `medicine_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presenting_complains`
--

CREATE TABLE `presenting_complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `presenting_complain_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presenting_complain_type`)),
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `medicine_generic_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_strength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_shelf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quantity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `medicine_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `medicine_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(2, 'doctor', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(3, 'nurse', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(4, 'staff', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(5, 'pharmacies', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(6, 'accountant', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(7, 'sales-person', 'web', '2023-01-01 07:50:55', '2023-01-01 07:50:55'),
(8, 'patient', 'web', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(9, 'super-admin', 'web', '2023-01-01 07:50:56', '2023-01-01 07:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(65, 2),
(91, 2),
(129, 5),
(156, 1),
(156, 2),
(156, 3),
(156, 4),
(156, 5),
(156, 6),
(156, 7),
(156, 8),
(157, 1),
(157, 2),
(157, 3),
(157, 4),
(157, 5),
(157, 6),
(157, 7),
(157, 8),
(175, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sample_collections`
--

CREATE TABLE `sample_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sample_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collect_date` datetime DEFAULT NULL,
  `dispatch_date` datetime DEFAULT NULL,
  `cancel_dispatch_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `investigation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `laboratory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `available_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = Active',
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'such as Dr. Mr. Mrs Etc.',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M' COMMENT 'M = Male, F = Female',
  `dob` date DEFAULT NULL,
  `age` int(11) NOT NULL DEFAULT 0,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `name`, `username`, `email`, `email_verified_at`, `password`, `gender`, `dob`, `age`, `religion`, `address_1`, `address_2`, `image`, `status`, `created_by_id`, `updated_by_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'peyton williamson', NULL, 'dina74@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aQKYhHitDM', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(2, NULL, 'demetrius eichmann iv', NULL, 'reynold.hintz@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'A7GGUe9hlE', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(3, NULL, 'miss fay bartoletti', NULL, 'shaina.kuhlman@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kXumObYPDo', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(4, NULL, 'ms. annabel emard sr.', NULL, 'braden70@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9oTDHcwdRn', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(5, NULL, 'wiley vonrueden', NULL, 'eleanore.grimes@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vX13RiOFcz', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(6, NULL, 'sonia carter', NULL, 'claudia.rice@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OvuroVkkCV', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(7, NULL, 'ms. dana dickens', NULL, 'joshua.conn@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2MTNXTDxJn', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(8, NULL, 'jade wiza jr.', NULL, 'emmanuelle83@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'P7XJxdqrpY', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(9, NULL, 'forest padberg', NULL, 'mcdermott.wendell@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bd4VJdGZ8C', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(10, NULL, 'dillan cormier', NULL, 'michale20@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7jmWrjlwD5', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(11, NULL, 'damaris hand dvm', NULL, 'aufderhar.else@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'M1GbS9zeCB', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(12, NULL, 'willow schimmel', NULL, 'nlemke@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kyXaCZSBQg', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(13, NULL, 'kayley casper', NULL, 'ukoelpin@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XjtZf9Kw2z', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(14, NULL, 'mackenzie o\'conner', NULL, 'gutmann.samir@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vjCP2qSD79', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(15, NULL, 'laverna lind', NULL, 'retta.ward@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'VyfxW2A0NK', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(16, NULL, 'miss claudie waters', NULL, 'econnelly@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ufXhlL8NRl', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(17, NULL, 'ricardo reichert', NULL, 'kris.kristoffer@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ap7zW44uS3', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(18, NULL, 'norberto schmitt', NULL, 'evangeline39@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HN9CdjyBCX', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(19, NULL, 'ms. itzel koelpin phd', NULL, 'yazmin03@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3PAti8BeHT', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(20, NULL, 'prof. alene mayer', NULL, 'funk.emiliano@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zB2jZKMZw6', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(21, NULL, 'dr. helen jacobson', NULL, 'bwilliamson@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'P2nA778nuu', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(22, NULL, 'ms. serenity collier phd', NULL, 'kailee55@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'R2M8KK5YeZ', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(23, NULL, 'miss corrine lind jr.', NULL, 'lila.oconner@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8VjPbi8zOr', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(24, NULL, 'karen wolf iii', NULL, 'bogan.marilie@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kntViSH7ug', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(25, NULL, 'reagan bahringer', NULL, 'amueller@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'NncalggnBC', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(26, NULL, 'mr. deshawn fay', NULL, 'oconner.lilly@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'o2N1ZpY6KA', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(27, NULL, 'lonie dare', NULL, 'jarrod27@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'z4CiREiV4H', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(28, NULL, 'timmy hane dvm', NULL, 'karina.mayert@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'znVu4E56F8', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(29, NULL, 'mr. sherman kassulke', NULL, 'pfeffer.andrew@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'veBZWnFmLi', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(30, NULL, 'ottis witting v', NULL, 'aditya.koepp@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'lyUmgFrZDM', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(31, NULL, 'kelly sipes', NULL, 'runte.caleigh@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'MENxWBwAib', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(32, NULL, 'lorena schimmel', NULL, 'vern.spinka@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HZg3fn794X', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(33, NULL, 'frances welch', NULL, 'barton.veronica@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9oGV2My7z0', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(34, NULL, 'corbin hudson', NULL, 'hjacobson@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'tpgZSFRAxt', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(35, NULL, 'benedict carroll', NULL, 'maci.sipes@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'qCotPAul7i', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(36, NULL, 'prof. adele gulgowski md', NULL, 'maudie24@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OvH6LAbh72', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(37, NULL, 'prof. harmon olson sr.', NULL, 'erika.lindgren@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ixNAqEQwIc', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(38, NULL, 'elian ward', NULL, 'isaias.sawayn@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mwbkE1mWy6', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(39, NULL, 'verlie weimann', NULL, 'jolie.berge@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '6vE15UARxT', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(40, NULL, 'darren gottlieb', NULL, 'joanny41@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XIHQ4xWEgR', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(41, NULL, 'mr. keven gutmann', NULL, 'alejandrin.johnston@example.net', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'eKxeITATgq', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(42, NULL, 'dorothea casper sr.', NULL, 'qhahn@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'deYiPHNF8J', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(43, NULL, 'harley swift', NULL, 'collins.humberto@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DkakXgl9Vy', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(44, NULL, 'william weissnat', NULL, 'stiedemann.violet@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'WA5Ad4F7bA', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(45, NULL, 'dr. rosalee cruickshank v', NULL, 'wbahringer@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'EdHHaRkVr2', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(46, NULL, 'trent considine', NULL, 'greenholt.ella@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aCqkidSJgt', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(47, NULL, 'evan grady', NULL, 'fay.jamir@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mLAqWC5uXe', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(48, NULL, 'prof. ralph lakin', NULL, 'edicki@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'RGck9bHpp5', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(49, NULL, 'shyanne jenkins', NULL, 'ayana04@example.org', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'VplEWlfFfV', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(50, NULL, 'miss caleigh rippin', NULL, 'candice.cummings@example.com', '2023-01-01 07:50:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'V61PKWArzD', '2023-01-01 07:50:56', '2023-01-01 07:50:56'),
(51, NULL, 'miss daphney kohler', NULL, 'tristian80@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '5xswFPoFRK', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(52, NULL, 'etha breitenberg', NULL, 'rodriguez.simone@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ILr99dHi2B', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(53, NULL, 'allie rolfson', NULL, 'ibergnaum@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DaiwSfkVlh', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(54, NULL, 'eino rutherford', NULL, 'christiansen.zachariah@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'wESWsvaMg5', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(55, NULL, 'dr. braxton beatty', NULL, 'olson.garry@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'qP5knfPFDq', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(56, NULL, 'jayde kozey', NULL, 'donnelly.kaylee@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YHvHnIiLvr', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(57, NULL, 'garnet homenick', NULL, 'stracke.beryl@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jNKaZweAul', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(58, NULL, 'dr. madyson monahan', NULL, 'wjacobi@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'k4OqEOwOzc', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(59, NULL, 'estella jones', NULL, 'jacobson.bettie@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'LWGNVLy37k', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(60, NULL, 'chloe becker', NULL, 'klein.velva@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'JfrPNlGpXT', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(61, NULL, 'aurore dietrich i', NULL, 'graham.lance@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'U13wzrbFUv', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(62, NULL, 'judah mitchell', NULL, 'kohler.arlene@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'J5KBUIffwd', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(63, NULL, 'billie kuhic v', NULL, 'kgulgowski@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'edU6Bf14us', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(64, NULL, 'kenneth gottlieb i', NULL, 'beatty.mose@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Q0RjlEc2A6', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(65, NULL, 'carolyn balistreri', NULL, 'jordy95@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mjIwJ3vFi2', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(66, NULL, 'mr. milo orn', NULL, 'aliyah58@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yDJq7G2MBl', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(67, NULL, 'sigurd ortiz', NULL, 'jeanne.trantow@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8xASWnTvG4', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(68, NULL, 'jerrell hahn', NULL, 'mathew.moore@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0een6aT7DA', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(69, NULL, 'prof. tierra hartmann iv', NULL, 'bobby.huel@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OA10sTKYGb', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(70, NULL, 'retha boyer', NULL, 'dalton60@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'w69gFqOV0l', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(71, NULL, 'lamont marks jr.', NULL, 'carmelo61@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'hBtn1cPLir', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(72, NULL, 'mrs. judy altenwerth', NULL, 'reichert.savanna@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'F8q8GYfQGd', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(73, NULL, 'leann vandervort', NULL, 'hwilkinson@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'RYwvokp7LQ', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(74, NULL, 'colleen white', NULL, 'susan87@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3XB1vD9DqC', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(75, NULL, 'mason wintheiser ii', NULL, 'zmurphy@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8YsLvAICPM', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(76, NULL, 'kellie white', NULL, 'gilberto86@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'iL1kBJoN1K', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(77, NULL, 'eugene macejkovic', NULL, 'fgraham@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ix1153q5Mr', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(78, NULL, 'cary reilly', NULL, 'ametz@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'iCJZCgz7Me', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(79, NULL, 'miss vivien schuppe', NULL, 'agnes96@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'n4SxRTJFpe', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(80, NULL, 'estrella schmitt', NULL, 'koss.otto@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'cn0ajDZ1kj', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(81, NULL, 'eulah schinner', NULL, 'jacobson.jayda@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1ZtiML0f2R', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(82, NULL, 'alexane ruecker', NULL, 'nhettinger@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ioeEbx2RJi', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(83, NULL, 'ms. amy yost v', NULL, 'amanda.jacobi@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Rg3xTbnsM8', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(84, NULL, 'aida rowe', NULL, 'alfred58@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1J9OjxhuUy', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(85, NULL, 'miss brittany wiza', NULL, 'al04@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kKeU3vzl76', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(86, NULL, 'prof. jolie schiller i', NULL, 'igoodwin@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Jzlrbr26R0', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(87, NULL, 'santino zemlak', NULL, 'johns.friedrich@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7s39zW9of8', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(88, NULL, 'zetta conroy', NULL, 'becker.reynold@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'rGctLaXaCT', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(89, NULL, 'walter schamberger', NULL, 'ejaskolski@example.org', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'lkRGv7VWr9', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(90, NULL, 'teresa brakus', NULL, 'gaetano29@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XihNMQDli8', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(91, NULL, 'marianne zemlak', NULL, 'laila71@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'roI19mfkdE', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(92, NULL, 'mrs. blanche rippin', NULL, 'wilkinson.gustave@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xZYpPDYwJl', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(93, NULL, 'dr. yolanda sporer v', NULL, 'jovany28@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XaiO8pKlT4', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(94, NULL, 'madonna blanda', NULL, 'earnestine.feeney@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'rgbqYCnC7v', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(95, NULL, 'schuyler king', NULL, 'kiehn.emil@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'sbE6wIlDT7', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(96, NULL, 'dr. deshaun shields', NULL, 'zoey.hermann@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 's8QmBp2yBu', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(97, NULL, 'arden prohaska', NULL, 'gottlieb.jed@example.com', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jl7OKVrngT', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(98, NULL, 'gerry rau', NULL, 'alysha.gleichner@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Sp8ELLYWf7', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(99, NULL, 'gay monahan', NULL, 'providenci.ryan@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'SfRLFcSXXc', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(100, NULL, 'nickolas armstrong', NULL, 'lauren72@example.net', '2023-01-01 07:50:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fuOW0L7bRf', '2023-01-01 07:50:57', '2023-01-01 07:50:57'),
(101, NULL, 'vena dare', NULL, 'adelle97@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'sg5SrQXqiW', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(102, NULL, 'elda feest', NULL, 'azulauf@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PpB3x5KkvA', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(103, NULL, 'stewart carroll', NULL, 'raynor.ali@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'WUQEKUU1Lq', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(104, NULL, 'jayne wisozk', NULL, 'davis.bernice@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fDS1SU8AuL', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(105, NULL, 'bill spencer', NULL, 'stark.murl@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'CwyXfWtsJI', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(106, NULL, 'efren larson', NULL, 'vandervort.waylon@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9o9gPnUwVD', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(107, NULL, 'dr. camron mohr', NULL, 'cleffler@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'TpXaPDqqpL', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(108, NULL, 'donavon christiansen', NULL, 'casper.estell@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4FkirpcXIv', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(109, NULL, 'mr. mauricio watsica i', NULL, 'graham.ole@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4U8xzl27SO', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(110, NULL, 'mr. erwin lynch', NULL, 'savion.monahan@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ZIgY9nuSqk', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(111, NULL, 'mr. merlin mcglynn', NULL, 'wbeatty@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'y4FYxq8rde', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(112, NULL, 'dr. norberto morissette iv', NULL, 'hill.emmie@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mvfcn9EO5C', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(113, NULL, 'dominique lockman', NULL, 'connelly.lauryn@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7Xu4PQrokZ', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(114, NULL, 'melvin rath', NULL, 'beverly.marks@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'heOWVHJKEy', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(115, NULL, 'beatrice kassulke', NULL, 'eharber@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8rjvcMCpja', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(116, NULL, 'gunner abernathy dvm', NULL, 'bart.corwin@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kMNjJYaems', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(117, NULL, 'nestor conn', NULL, 'celia.rolfson@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'JUpPqkV47N', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(118, NULL, 'mr. esteban mayert', NULL, 'qkihn@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jBFAncwsgW', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(119, NULL, 'evalyn hahn', NULL, 'bogan.alena@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DQ9BhR5cll', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(120, NULL, 'mr. donavon kessler', NULL, 'alverta.fisher@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'f1uoYvJQw9', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(121, NULL, 'matilde barrows', NULL, 'bradly50@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'e152nFUfpV', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(122, NULL, 'abdullah bogan', NULL, 'sanford.schamberger@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ol1nlbOq9I', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(123, NULL, 'jalon nienow', NULL, 'javon38@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kv9LI6AesL', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(124, NULL, 'orland macejkovic', NULL, 'jordy.rath@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zI2orjDuf9', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(125, NULL, 'kamron monahan', NULL, 'terence71@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'tsWkF1ouY4', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(126, NULL, 'blanche gerlach', NULL, 'reggie32@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ky858B3TKt', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(127, NULL, 'harley towne', NULL, 'jenifer.christiansen@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'emrsDXHsz6', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(128, NULL, 'allison moore', NULL, 'ghayes@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'geq1X4NSxL', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(129, NULL, 'berenice schuster iv', NULL, 'eemmerich@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'j6OQ7Dh3CG', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(130, NULL, 'prof. margaretta fadel', NULL, 'praynor@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HiTp2REzdm', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(131, NULL, 'braeden waelchi', NULL, 'jimmy.auer@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'BV7zL7Z52P', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(132, NULL, 'ms. alysson altenwerth iii', NULL, 'guy.mayert@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'w2mn587Rpf', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(133, NULL, 'roscoe maggio', NULL, 'newton19@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OEkjBWJhwY', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(134, NULL, 'eden dicki', NULL, 'xlarson@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'W0PQdpYUu6', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(135, NULL, 'prof. cloyd veum', NULL, 'pmuller@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'EMR1qznaoh', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(136, NULL, 'toni pfannerstill', NULL, 'lfahey@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'js6nNPRs1O', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(137, NULL, 'ethan kuhn', NULL, 'glittle@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'khLSLtv4l0', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(138, NULL, 'annabell sporer phd', NULL, 'vicenta.maggio@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PkHUj2Eym6', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(139, NULL, 'lulu goyette md', NULL, 'hintz.eloise@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aPNcAQ6fop', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(140, NULL, 'graciela harvey', NULL, 'kurt02@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'CkCguJSpKI', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(141, NULL, 'myriam fahey', NULL, 'koss.deonte@example.com', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YGpdzI41UQ', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(142, NULL, 'lexie jakubowski phd', NULL, 'luther.oconnell@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kbmWBnB1Xl', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(143, NULL, 'myron stracke md', NULL, 'mathew68@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'm8WkrYXKt2', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(144, NULL, 'ms. breana swaniawski', NULL, 'garnet61@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2KBe3AzH1o', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(145, NULL, 'dr. andre kohler', NULL, 'greta84@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'e0oLiYokFG', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(146, NULL, 'shany davis', NULL, 'wunsch.maryse@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2gDjRrQypN', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(147, NULL, 'liana bartoletti', NULL, 'oberbrunner.beulah@example.net', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'rkqsBnO6wl', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(148, NULL, 'bettie kulas dvm', NULL, 'tromp.albertha@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'C4n7YUFZX5', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(149, NULL, 'jaylen moore', NULL, 'dzboncak@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fY1y0uIOCL', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(150, NULL, 'hassie bauch', NULL, 'torp.evans@example.org', '2023-01-01 07:50:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'JjXwQ9IPER', '2023-01-01 07:50:58', '2023-01-01 07:50:58'),
(151, NULL, 'dr. nils kuphal dvm', NULL, 'bruen.jacquelyn@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ErxMFMLYnI', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(152, NULL, 'bernita fay', NULL, 'marlen88@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nXZ5L3P8FV', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(153, NULL, 'margot thiel', NULL, 'muller.donald@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'x65KiJgkiT', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(154, NULL, 'ressie thiel', NULL, 'klein.fern@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ZYVl50F59N', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(155, NULL, 'prof. monty herman', NULL, 'tlemke@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3vktq4avt1', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(156, NULL, 'danyka bernhard', NULL, 'retta74@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'VAymb2kgdr', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(157, NULL, 'dr. maximillia beer', NULL, 'acassin@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'UHzf07POVM', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(158, NULL, 'gudrun wisoky', NULL, 'narciso56@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8jwxGBXcUR', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(159, NULL, 'brenden gusikowski', NULL, 'sigmund.mclaughlin@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jKiO9KsTEF', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(160, NULL, 'miss jeanne powlowski dvm', NULL, 'dulce85@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'RtapYs3mDK', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(161, NULL, 'eveline yundt iv', NULL, 'dulce45@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ToMYZgaoGp', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(162, NULL, 'jamal powlowski', NULL, 'qsipes@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'tytQd7Y0mv', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(163, NULL, 'ms. verna schamberger', NULL, 'raegan.rowe@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ZOMezJ85Ax', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(164, NULL, 'mrs. tessie douglas', NULL, 'ksmith@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'AiDsIQQUFb', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(165, NULL, 'rashawn bogisich', NULL, 'lind.madelyn@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8DOZYj4uOV', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(166, NULL, 'hollis yundt sr.', NULL, 'madelynn87@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'EXZNQt5QUv', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(167, NULL, 'prof. anika turner dds', NULL, 'unique76@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '15TaJNsaWa', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(168, NULL, 'prof. jeremie heller iii', NULL, 'wzemlak@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HtzjQ06Tsi', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(169, NULL, 'frida goodwin', NULL, 'msenger@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8AVbZMfAVU', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(170, NULL, 'alanis jacobi', NULL, 'lynch.arnold@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'wccRWuwrpr', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(171, NULL, 'athena mayert', NULL, 'boyle.tabitha@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'NpYc0ylpci', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(172, NULL, 'nettie gorczany', NULL, 'maryse52@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'WY2l4bKHgG', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(173, NULL, 'dr. bertrand o\'conner', NULL, 'nikko.conroy@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ffr6t8ROaV', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(174, NULL, 'prof. jeanie fadel phd', NULL, 'walter96@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fak3zEzAEG', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(175, NULL, 'moses nienow i', NULL, 'steuber.katarina@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9fubyFij1N', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(176, NULL, 'collin spencer', NULL, 'sleannon@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2pvtEDpa6c', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(177, NULL, 'abel bernhard', NULL, 'edooley@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'W6lZa54FVX', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(178, NULL, 'andre hansen', NULL, 'julius.gutmann@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'd3prQ6VYOk', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(179, NULL, 'gardner walker', NULL, 'gbashirian@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'm8iclDToGY', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(180, NULL, 'shawna stoltenberg', NULL, 'schiller.sasha@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '6krPvnAVP1', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(181, NULL, 'dillan mcglynn', NULL, 'connor.torphy@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '5egOZ5bXuo', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(182, NULL, 'glen hermann', NULL, 'charlotte55@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'JlgefpEdhT', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(183, NULL, 'janet bergstrom', NULL, 'qjones@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xLGP4OluDM', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(184, NULL, 'nathanial franecki', NULL, 'runte.shea@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zV2oLcrGyR', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(185, NULL, 'prof. raquel bernier i', NULL, 'norris91@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'iD3kjRgYZK', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(186, NULL, 'ms. jalyn jerde sr.', NULL, 'parker64@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'li7aqB02p4', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(187, NULL, 'easter schroeder', NULL, 'eward@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1bQu75vQ1w', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(188, NULL, 'dr. terrill altenwerth ii', NULL, 'ularkin@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'qbcCGx9tNp', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(189, NULL, 'prof. aracely harber v', NULL, 'hyatt.suzanne@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'VUvLNeTnUk', '2023-01-01 07:50:59', '2023-01-01 07:50:59');
INSERT INTO `users` (`id`, `title`, `name`, `username`, `email`, `email_verified_at`, `password`, `gender`, `dob`, `age`, `religion`, `address_1`, `address_2`, `image`, `status`, `created_by_id`, `updated_by_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(190, NULL, 'prof. manuel ruecker', NULL, 'blittle@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fx932VtCfj', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(191, NULL, 'darrell braun', NULL, 'kory31@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gdkPBWALiu', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(192, NULL, 'mr. percival windler dds', NULL, 'wolff.leora@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GcVA9UQiwd', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(193, NULL, 'elisabeth nikolaus', NULL, 'wcole@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'SfGefcn8L6', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(194, NULL, 'adaline jerde', NULL, 'dickinson.jennyfer@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'cVposaVkgj', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(195, NULL, 'darlene hyatt', NULL, 'joan.reynolds@example.com', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3M2wZjYGlD', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(196, NULL, 'lennie huels', NULL, 'lea74@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'TA1rREcHWv', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(197, NULL, 'prof. erna oberbrunner jr.', NULL, 'lucio04@example.net', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OIBjjtJZlC', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(198, NULL, 'pierce grant', NULL, 'antonette35@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ED5xMXmV7Q', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(199, NULL, 'mrs. joanie durgan i', NULL, 'florencio.robel@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PPN5JrkdP3', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(200, NULL, 'anne welch i', NULL, 'leffler.trystan@example.org', '2023-01-01 07:50:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'hv4FmS94nw', '2023-01-01 07:50:59', '2023-01-01 07:50:59'),
(201, NULL, 'kennith lynch', NULL, 'fgoodwin@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nxyXvYw9bS', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(202, NULL, 'concepcion homenick', NULL, 'vmiller@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'UvT428hreR', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(203, NULL, 'andrew bauch', NULL, 'sandrine34@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'UhMemAxQLP', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(204, NULL, 'mr. clement lockman', NULL, 'kunde.unique@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'okNnblf7vS', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(205, NULL, 'gretchen dach', NULL, 'donny.halvorson@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ECQUqaHgqf', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(206, NULL, 'dudley hagenes', NULL, 'ezekiel.lowe@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7gXBA4v9rC', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(207, NULL, 'harrison hansen', NULL, 'orpha10@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OceqqgBNjR', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(208, NULL, 'melvina bosco', NULL, 'shermann@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1lSLrvsOHP', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(209, NULL, 'mae crona', NULL, 'edmund.oreilly@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0Px0mjlYxl', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(210, NULL, 'josiah ebert', NULL, 'chad.veum@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'QWFy39CiUE', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(211, NULL, 'reanna kihn', NULL, 'kory.simonis@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'G21N9ER5zC', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(212, NULL, 'mr. chester rau i', NULL, 'willa77@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'QEaEadWb9e', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(213, NULL, 'ms. isobel kunze sr.', NULL, 'skye13@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'uEUUBDlxtT', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(214, NULL, 'hannah stark', NULL, 'abbott.elnora@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'm7oc52jO9f', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(215, NULL, 'mr. sherman o\'kon dvm', NULL, 'durgan.mose@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jdwJwmysLY', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(216, NULL, 'idell huel', NULL, 'hilbert.schinner@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pn7WFHSXaw', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(217, NULL, 'dr. marlon waelchi ii', NULL, 'bkilback@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'KjIVITw6so', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(218, NULL, 'prof. hortense kemmer', NULL, 'wmonahan@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'omRS273cLD', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(219, NULL, 'hermann hilpert', NULL, 'ericka64@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'NM3trARrNM', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(220, NULL, 'dr. naomi johns jr.', NULL, 'goldner.emilia@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'TXzBhc2Tjo', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(221, NULL, 'doug anderson', NULL, 'forest.bergnaum@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4gR96iI1BD', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(222, NULL, 'dr. tevin dooley', NULL, 'katlyn22@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Rv0LDeQx11', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(223, NULL, 'bryon reichert', NULL, 'mante.nora@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4Yx9Rvdcrh', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(224, NULL, 'jeffry marquardt md', NULL, 'jack.hilpert@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bCZD5cD3e5', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(225, NULL, 'paxton gislason', NULL, 'franz98@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OKLHbAt3ha', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(226, NULL, 'jeffrey fahey v', NULL, 'jovany.reinger@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DzZdohaibe', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(227, NULL, 'mr. jules deckow', NULL, 'legros.destini@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8LtgUP5Say', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(228, NULL, 'roberta gutkowski', NULL, 'wherman@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'S4WYe9YoY7', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(229, NULL, 'ellie tillman', NULL, 'herman.amina@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0obAb7oqBB', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(230, NULL, 'coleman zieme', NULL, 'dare.lola@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yyvjH1TnPL', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(231, NULL, 'amani aufderhar', NULL, 'camryn90@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gWMQqIqhJG', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(232, NULL, 'jeremy kris', NULL, 'dubuque.quinton@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bbJEXoI6fy', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(233, NULL, 'marjory wisoky', NULL, 'rempel.roberto@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oy0c9eWXAF', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(234, NULL, 'mossie schumm', NULL, 'layla.stiedemann@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'B5LgsEnlDQ', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(235, NULL, 'lamar gorczany', NULL, 'brandt.quitzon@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XLnhl0m78g', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(236, NULL, 'mertie jerde dds', NULL, 'felix44@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PqX7v8aGKN', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(237, NULL, 'jermaine anderson', NULL, 'liliana.ward@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aZNr3rweht', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(238, NULL, 'thomas hintz', NULL, 'ward.americo@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Zf98xn74Yo', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(239, NULL, 'tomas schaefer', NULL, 'xprosacco@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'NlgUwj6ajs', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(240, NULL, 'sally littel', NULL, 'gloria03@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vWQIDQDJHI', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(241, NULL, 'clemmie denesik', NULL, 'schneider.abraham@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '50810bbKOC', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(242, NULL, 'sierra dickens', NULL, 'sincere.west@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jLxyR3cwz4', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(243, NULL, 'miss selina howe dds', NULL, 'dwyman@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'wF4CozIXyz', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(244, NULL, 'orion kilback', NULL, 'zthompson@example.net', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '6WRkdXSS30', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(245, NULL, 'ms. ariane ondricka', NULL, 'ofritsch@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'SU5ZzRei2D', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(246, NULL, 'queenie schiller', NULL, 'carolyne22@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gXGNsQQRmA', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(247, NULL, 'dr. adrien morissette', NULL, 'yvette.weimann@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ou94t9IXeU', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(248, NULL, 'alena durgan dds', NULL, 'laury68@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HIFo1q0MGI', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(249, NULL, 'jaeden howell', NULL, 'jlueilwitz@example.com', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1sLMsVIGYw', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(250, NULL, 'leonel cummings', NULL, 'sabina.schaden@example.org', '2023-01-01 07:51:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3b8TuaEk64', '2023-01-01 07:51:00', '2023-01-01 07:51:00'),
(251, NULL, 'imogene connelly', NULL, 'zkrajcik@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4ixHoTA9ph', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(252, NULL, 'mr. gerard konopelski md', NULL, 'prohaska.roma@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ghursVE7W2', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(253, NULL, 'dr. luther zieme sr.', NULL, 'celia35@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HJjO5JLI0j', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(254, NULL, 'prof. lilian bergnaum', NULL, 'sasha.runolfsson@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'BvHCcITED1', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(255, NULL, 'dayana gutmann', NULL, 'elroy68@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'h2tI7a9Ak0', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(256, NULL, 'jonathan effertz iv', NULL, 'zaria50@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'i1JDpOwyIu', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(257, NULL, 'tod emard md', NULL, 'brad29@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'JfWH2YZrfD', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(258, NULL, 'christa koch', NULL, 'dave.dietrich@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'N8N8grjun4', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(259, NULL, 'jeremy rau v', NULL, 'yluettgen@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'heAdSx7VLt', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(260, NULL, 'destany deckow ii', NULL, 'cesar.bode@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0ivcSZtLo6', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(261, NULL, 'bernice pfannerstill', NULL, 'bernhard.toby@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'QiJPs9fBNT', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(262, NULL, 'dr. lisandro pagac i', NULL, 'vernice74@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'iQQ5TGyP9R', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(263, NULL, 'crystel fay phd', NULL, 'gus.stiedemann@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oEiFOI5pbl', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(264, NULL, 'karson koch', NULL, 'delta.schmidt@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YnkmlsFIjt', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(265, NULL, 'dr. jerel mann dvm', NULL, 'moconner@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OXPKo68rjg', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(266, NULL, 'reinhold lehner', NULL, 'alvis22@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1iOZbGTrsI', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(267, NULL, 'mrs. fay hill v', NULL, 'lmosciski@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fcxEI7Nm6b', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(268, NULL, 'brisa braun', NULL, 'wolff.madie@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xbg7lH6q4v', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(269, NULL, 'dr. johnny deckow dds', NULL, 'brannon78@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oafE4MELtA', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(270, NULL, 'alejandra howe', NULL, 'christop.pouros@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'FDAqTs2P9i', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(271, NULL, 'joey torp', NULL, 'dave18@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ClC150XYRB', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(272, NULL, 'marcos beatty', NULL, 'mckenzie.dorothea@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'f39jIJaPMP', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(273, NULL, 'bertrand barton v', NULL, 'molly70@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8jLxsTczB3', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(274, NULL, 'lilian langosh', NULL, 'varmstrong@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'uteOpyB7az', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(275, NULL, 'miss millie mann md', NULL, 'peyton.wilkinson@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'KoGZrerYae', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(276, NULL, 'dr. brady schaefer iv', NULL, 'hermiston.eudora@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'biDsgCVPp2', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(277, NULL, 'dr. thea cruickshank i', NULL, 'skye86@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'iKKQ3lGPiL', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(278, NULL, 'miss cali schoen phd', NULL, 'keira.larson@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'FCfoWtA3Ht', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(279, NULL, 'dane sawayn', NULL, 'sheila12@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Z067nSqhDg', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(280, NULL, 'liliane price', NULL, 'rohan.gregorio@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'B0aASmIYQ4', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(281, NULL, 'erling runolfsson', NULL, 'kstracke@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9tYHlcihe6', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(282, NULL, 'hildegard feil', NULL, 'tremblay.jarrett@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gQig0H1WNZ', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(283, NULL, 'grayce bartoletti', NULL, 'cory.schmeler@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'AyqEmvR3FR', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(284, NULL, 'lance schimmel', NULL, 'eugene.hudson@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'MoG7unvX2j', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(285, NULL, 'mckenzie cormier dvm', NULL, 'parker.fredrick@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'hdFridNrip', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(286, NULL, 'terrell lesch', NULL, 'lucy.jones@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'w63SafJwn6', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(287, NULL, 'mrs. carolanne schoen', NULL, 'tauer@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'j8VWUzgr5d', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(288, NULL, 'miss calista lindgren', NULL, 'dickens.bo@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'D7zvzEPPyC', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(289, NULL, 'jessie zboncak', NULL, 'oleta02@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nNZ9BYXmhY', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(290, NULL, 'abdul daugherty', NULL, 'xgusikowski@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OSlJoi4ZTe', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(291, NULL, 'prof. keaton white', NULL, 'lsporer@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'i82pYVuEsA', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(292, NULL, 'jedediah christiansen dvm', NULL, 'sophia07@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aYdILFM8jB', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(293, NULL, 'marcos mohr', NULL, 'vivianne75@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'C2G2hm3hSL', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(294, NULL, 'jennifer schneider', NULL, 'dgutmann@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'SrkYs86iBC', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(295, NULL, 'dwight langworth', NULL, 'tlind@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fh7I4nu5N9', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(296, NULL, 'caden lakin', NULL, 'schulist.eloise@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'sI6HI4Mles', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(297, NULL, 'myah kuhn', NULL, 'zhauck@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p5Vc0fEhG5', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(298, NULL, 'antonetta kovacek', NULL, 'umedhurst@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xaPF7BEqq2', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(299, NULL, 'mr. jake champlin md', NULL, 'zieme.kieran@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YDL5XaU19h', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(300, NULL, 'mrs. amara o\'hara', NULL, 'rohan.saul@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3Vo4YASZhD', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(301, NULL, 'crystel witting v', NULL, 'minnie.halvorson@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'F5cXfrZ8qb', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(302, NULL, 'claudine klocko', NULL, 'koch.jailyn@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fa6eRUXaj4', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(303, NULL, 'prof. colleen greenholt i', NULL, 'evelyn62@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pX5JqGyiQh', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(304, NULL, 'denis hoeger v', NULL, 'lbecker@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'siPiwWiMeV', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(305, NULL, 'mrs. aurore schowalter i', NULL, 'uriel34@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'WUVftQXXts', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(306, NULL, 'ferne bechtelar i', NULL, 'hruecker@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mVlKbtpouj', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(307, NULL, 'rhoda turcotte phd', NULL, 'haag.corine@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kRBSZv5ipl', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(308, NULL, 'prof. benny buckridge i', NULL, 'haley.maximillian@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'UYb3agxdd9', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(309, NULL, 'muhammad howe', NULL, 'desiree.okon@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zIpgmuaax5', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(310, NULL, 'edgardo johnston', NULL, 'trenton.jakubowski@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Kf55MaXpVA', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(311, NULL, 'angelo roob', NULL, 'tatyana71@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YD6hccQo3g', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(312, NULL, 'mr. keeley rodriguez', NULL, 'wbergstrom@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4ohWdA3vjy', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(313, NULL, 'mr. abdul vandervort', NULL, 'ischaden@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ml8zGVhybj', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(314, NULL, 'ms. myrtie mcdermott phd', NULL, 'hbalistreri@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'QqnwLe0QB9', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(315, NULL, 'alda hickle i', NULL, 'kathryne.cummerata@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GU2RfVVOqW', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(316, NULL, 'chadrick flatley', NULL, 'ikling@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'A4OVLkFGkF', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(317, NULL, 'dr. crawford dooley iv', NULL, 'jan.kuhic@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ez93jE9sw3', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(318, NULL, 'jabari stanton', NULL, 'dorthy.walker@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '09zGqyx3d5', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(319, NULL, 'faye boyle', NULL, 'smith.victor@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nD7CjqkO9f', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(320, NULL, 'prof. eli pagac', NULL, 'crobel@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'BkK9ltDrSS', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(321, NULL, 'dr. mekhi howell', NULL, 'haven78@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'sMTfrsp9JY', '2023-01-01 07:51:01', '2023-01-01 07:51:01'),
(322, NULL, 'valentine rolfson', NULL, 'smitham.kenyatta@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'VjbjikaopN', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(323, NULL, 'lacy mcclure', NULL, 'rashad45@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'LARujZ5Ayj', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(324, NULL, 'dr. katherine kuphal', NULL, 'kmaggio@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'IBsz3Ydawe', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(325, NULL, 'trey ernser', NULL, 'dave35@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vfhyUb9HLh', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(326, NULL, 'glennie weber i', NULL, 'lhill@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'hV5Uqfywhg', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(327, NULL, 'marjory wolf ii', NULL, 'qbode@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GbFuYMxxF9', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(328, NULL, 'prof. sammy cartwright phd', NULL, 'tatum.von@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GODzfWTdrd', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(329, NULL, 'jacques reinger', NULL, 'hrunolfsson@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'L1fQjfY9Uq', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(330, NULL, 'vivienne wunsch', NULL, 'upredovic@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ejm6fNshqy', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(331, NULL, 'ned sporer', NULL, 'llewellyn.thompson@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'LewkMmLVvV', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(332, NULL, 'alana rolfson', NULL, 'hane.antonetta@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'LAjiNIDBvJ', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(333, NULL, 'earlene dibbert', NULL, 'esawayn@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'uU61p9jkp3', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(334, NULL, 'dr. michele runte ii', NULL, 'yschulist@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'c2343Jqd73', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(335, NULL, 'joaquin effertz', NULL, 'edgar.berge@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9nX2S8uvXC', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(336, NULL, 'alessandra durgan', NULL, 'zmorar@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OQf3mVLOVf', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(337, NULL, 'mr. hillard ortiz md', NULL, 'leanna70@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'j1Dh0TUTbK', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(338, NULL, 'micaela kertzmann', NULL, 'elliott.labadie@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xVb3xBgYJE', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(339, NULL, 'sallie gulgowski', NULL, 'marquardt.alene@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ybn2LQqDPw', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(340, NULL, 'mrs. frederique bednar iv', NULL, 'alena.medhurst@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'FnOITILtwV', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(341, NULL, 'germaine kuhn dds', NULL, 'nlarkin@example.net', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Dx9nHqnOS6', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(342, NULL, 'lolita emmerich', NULL, 'timothy34@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Y4elb9CtbQ', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(343, NULL, 'anya kunze jr.', NULL, 'loy.quigley@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vv2g0qCDFc', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(344, NULL, 'donnell lemke', NULL, 'okshlerin@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'QFUXt3UpmL', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(345, NULL, 'rickie wuckert', NULL, 'mariane82@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'CulNZ6xag3', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(346, NULL, 'christa kiehn', NULL, 'kconnelly@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'MEqLttlOun', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(347, NULL, 'prof. finn casper', NULL, 'arnaldo.wyman@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '60R3dTm85V', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(348, NULL, 'lauren feil phd', NULL, 'monahan.archibald@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '01ZTqS074F', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(349, NULL, 'garrett schaefer', NULL, 'cconnelly@example.org', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '53r1A8eMVE', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(350, NULL, 'dallin barton', NULL, 'jalen.bauch@example.com', '2023-01-01 07:51:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ZAq0U8czjB', '2023-01-01 07:51:02', '2023-01-01 07:51:02'),
(351, NULL, 'dr. maxime pagac', NULL, 'kmarks@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'wfiSAsoxp4', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(352, NULL, 'prof. jacquelyn trantow', NULL, 'zieme.ola@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7ksFzAUXwE', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(353, NULL, 'gwen cremin', NULL, 'krogahn@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bwFmh7xlpm', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(354, NULL, 'miss stacey schimmel', NULL, 'hodkiewicz.ibrahim@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PCLZrWa36G', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(355, NULL, 'elinore friesen', NULL, 'vgutmann@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'KHbfyAvIIO', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(356, NULL, 'amie cummings', NULL, 'weimann.salvatore@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1Ugu6PGdIL', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(357, NULL, 'eva gorczany', NULL, 'charlie.littel@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xwgaJLzHJL', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(358, NULL, 'prof. clifton mayer md', NULL, 'deontae89@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'eeuNFcnvaR', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(359, NULL, 'marjolaine koss', NULL, 'rmorissette@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'J67RjjqZZx', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(360, NULL, 'damian roberts', NULL, 'cleve.lubowitz@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gbs6Y5VCtf', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(361, NULL, 'eduardo daugherty', NULL, 'jordyn.mann@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ZSk84IZVYx', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(362, NULL, 'julie rohan', NULL, 'shawn75@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'NrMMWISTAy', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(363, NULL, 'dr. clifton toy', NULL, 'vonrueden.jalen@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'BCiKunk2ty', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(364, NULL, 'eldred schuppe', NULL, 'marks.kaylin@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'qZUeEn3MQZ', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(365, NULL, 'june wolff', NULL, 'aric.heidenreich@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Yb12ye3nv1', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(366, NULL, 'mr. amparo auer', NULL, 'konopelski.mavis@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ghe3UuphxH', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(367, NULL, 'diana wolff', NULL, 'oluettgen@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1NZKUAIfPK', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(368, NULL, 'prof. randal toy', NULL, 'bill.shields@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Bc7TImMZWd', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(369, NULL, 'dr. olaf stehr', NULL, 'ferry.adolf@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pu5g31G9ys', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(370, NULL, 'mrs. olga maggio iii', NULL, 'cierra87@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DuJlFC9Z8X', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(371, NULL, 'ricardo o\'keefe', NULL, 'jerrell78@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'IQZJMZcJ1Q', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(372, NULL, 'fleta carroll', NULL, 'iwillms@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GSTuecVkdj', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(373, NULL, 'dr. ericka ruecker', NULL, 'katheryn93@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'xNPevnHl35', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(374, NULL, 'catalina tillman', NULL, 'glenna.morar@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gn7VXiQr34', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(375, NULL, 'trycia cruickshank dvm', NULL, 'micah90@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oqSk8xvZT8', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(376, NULL, 'al hamill', NULL, 'ykiehn@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'LGCyf4SRHA', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(377, NULL, 'keeley zboncak v', NULL, 'jake.luettgen@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'eZ1HnJjRP6', '2023-01-01 07:51:03', '2023-01-01 07:51:03');
INSERT INTO `users` (`id`, `title`, `name`, `username`, `email`, `email_verified_at`, `password`, `gender`, `dob`, `age`, `religion`, `address_1`, `address_2`, `image`, `status`, `created_by_id`, `updated_by_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(378, NULL, 'ms. cheyenne walker i', NULL, 'keegan.goodwin@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aYZxhxaLDT', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(379, NULL, 'prof. brett schuppe jr.', NULL, 'immanuel33@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Esbv53vsPQ', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(380, NULL, 'albert wilkinson', NULL, 'imcglynn@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '35npwyNDZn', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(381, NULL, 'macy huels', NULL, 'qhudson@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oErO6doB7g', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(382, NULL, 'carlos ryan', NULL, 'schaden.jayde@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DtX7huxoQN', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(383, NULL, 'kari glover', NULL, 'ledner.brody@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'frbgkEfZQd', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(384, NULL, 'rory klocko', NULL, 'karl.moen@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PpBnSwgqiP', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(385, NULL, 'ms. cleta king', NULL, 'fking@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'YO2PZ3N2yI', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(386, NULL, 'mrs. eva green', NULL, 'tblick@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yXbxdL1i5r', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(387, NULL, 'jamarcus erdman', NULL, 'juliana33@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8d9trC5X8M', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(388, NULL, 'tomas schoen', NULL, 'alexie.connelly@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'CqWcDMCClf', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(389, NULL, 'quentin gottlieb sr.', NULL, 'vicenta53@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'efNX3hTyOk', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(390, NULL, 'miss marcelina weber', NULL, 'rozella.veum@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Dtdg2FJiup', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(391, NULL, 'marilou corwin', NULL, 'whoppe@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'vXYXyxnTqH', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(392, NULL, 'dr. irving yundt', NULL, 'johnston.retta@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'EH1F0UMkEu', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(393, NULL, 'vilma lueilwitz', NULL, 'cleta.corkery@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pIWtoKNfL8', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(394, NULL, 'ford boyle', NULL, 'renee.johnston@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ki8tk8ts4x', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(395, NULL, 'mervin murphy', NULL, 'leanna52@example.org', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'MkQdEJfFj1', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(396, NULL, 'emerald beatty', NULL, 'rylan.moore@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nMLnje3l6R', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(397, NULL, 'dr. trever daniel', NULL, 'jevon37@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '4BBdpoFc2E', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(398, NULL, 'tomas thiel phd', NULL, 'huels.davin@example.com', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zS04MMs1ar', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(399, NULL, 'hoyt upton', NULL, 'beer.craig@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'GxunQRUCc6', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(400, NULL, 'alessia mann', NULL, 'brendan.parker@example.net', '2023-01-01 07:51:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'aIx50c4u81', '2023-01-01 07:51:03', '2023-01-01 07:51:03'),
(401, NULL, 'adonis hilpert', NULL, 'marquise78@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oQndqTOHJV', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(402, NULL, 'ms. christa gutkowski sr.', NULL, 'candida38@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'HKJQYdd1FW', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(403, NULL, 'dr. nelson walsh', NULL, 'wiegand.geoffrey@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bm67ZnU7nr', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(404, NULL, 'abigale hand', NULL, 'clint25@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jKDDxo2zhy', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(405, NULL, 'miss lora funk', NULL, 'abelardo27@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7ZRJTHGjH2', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(406, NULL, 'rhiannon nader', NULL, 'aniyah.ullrich@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ma4hQsc0B3', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(407, NULL, 'lourdes cormier', NULL, 'idella.harris@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zoQSpHgrF2', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(408, NULL, 'mr. noble swaniawski md', NULL, 'champlin.estevan@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bmcdpSltXS', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(409, NULL, 'bernadine koss', NULL, 'harry.tromp@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XEhsTuGxA1', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(410, NULL, 'dr. jany d\'amore', NULL, 'marjorie.mertz@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yBM86iwyqi', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(411, NULL, 'nelson russel', NULL, 'zoe.hermann@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jQsjvkEcl8', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(412, NULL, 'miss vicky reynolds', NULL, 'wilber.lubowitz@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '9sSub4liMg', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(413, NULL, 'ms. leora schmeler dvm', NULL, 'elaina.osinski@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'BEGKc1g91m', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(414, NULL, 'mr. kameron pfannerstill i', NULL, 'giovani.kautzer@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0p0Xn5773R', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(415, NULL, 'ms. zetta buckridge', NULL, 'gusikowski.zelma@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jXJO1ZdvjE', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(416, NULL, 'dr. matteo weissnat', NULL, 'kaleigh.mitchell@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kYaun7yaOT', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(417, NULL, 'gretchen funk', NULL, 'jmcdermott@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ev8h8NYhNK', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(418, NULL, 'maxwell leffler', NULL, 'reinger.blake@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'XsnTJD38RM', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(419, NULL, 'salma crona', NULL, 'clittel@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oET0slDXuY', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(420, NULL, 'valerie batz dds', NULL, 'norberto61@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3hw6PEGBQf', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(421, NULL, 'chadd beier', NULL, 'christop95@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'r188y8Zle4', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(422, NULL, 'jamar mcglynn', NULL, 'lauren.bosco@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '6asbDr6VM4', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(423, NULL, 'fay senger', NULL, 'oswald39@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'zcCYiOmRfl', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(424, NULL, 'luisa o\'hara', NULL, 'frunolfsson@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'bGaezHTUJ8', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(425, NULL, 'daryl howell', NULL, 'fay.mae@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nlwdzVDPh1', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(426, NULL, 'dr. bryce block jr.', NULL, 'justen.waters@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'nkZ8er8yAn', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(427, NULL, 'ms. cali stark phd', NULL, 'kadin27@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'E15AB5uJCE', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(428, NULL, 'mr. lourdes erdman', NULL, 'stiedemann.else@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '8Srz1MjimX', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(429, NULL, 'prof. urban kub phd', NULL, 'sauer.bradford@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2I9iAMMbAC', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(430, NULL, 'mr. jean daugherty iii', NULL, 'ole47@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'wBoKAMwNRT', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(431, NULL, 'domenic morar ii', NULL, 'roberts.kamren@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'UpsE5DleDX', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(432, NULL, 'chanelle ebert', NULL, 'hattie.carter@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'qJXxZe02wn', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(433, NULL, 'marilyne kreiger', NULL, 'hannah98@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Fj8FvJKhkN', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(434, NULL, 'lurline kilback', NULL, 'ted91@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Nf0jmhwplu', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(435, NULL, 'gerda huels', NULL, 'trolfson@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'h4dtBhOAXh', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(436, NULL, 'mrs. alana stark', NULL, 'lmuller@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'AkcXNZooBv', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(437, NULL, 'mr. dameon luettgen', NULL, 'carter.nienow@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'o2ANGmGHnb', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(438, NULL, 'prof. rosetta leannon dds', NULL, 'ceasar.mclaughlin@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '0W6pDCEycJ', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(439, NULL, 'dr. gerardo bradtke', NULL, 'verla.yundt@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mXYPTVpXQi', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(440, NULL, 'jacklyn ondricka', NULL, 'aracely.bahringer@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'M7sYU6UVW0', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(441, NULL, 'mr. kameron keebler', NULL, 'stroman.jerald@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3h0uQBLkrb', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(442, NULL, 'fannie balistreri dds', NULL, 'moen.jaron@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'RgtezvZsId', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(443, NULL, 'prof. daryl halvorson phd', NULL, 'keegan.smitham@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'MqRT3Ucsi8', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(444, NULL, 'kamren parker phd', NULL, 'otis38@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gJv3Wt4LIf', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(445, NULL, 'henri kessler', NULL, 'malcolm.labadie@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2mIHHAihj6', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(446, NULL, 'miss dovie wuckert', NULL, 'ozella00@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'OHDQGedPxc', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(447, NULL, 'jacky schimmel', NULL, 'joana.tillman@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'kYh7B68ohw', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(448, NULL, 'coleman mclaughlin', NULL, 'abotsford@example.org', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'modnKC8VaT', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(449, NULL, 'ms. michele mclaughlin', NULL, 'monique28@example.com', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'oH2wYZ3mOg', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(450, NULL, 'adolfo beier', NULL, 'abdiel41@example.net', '2023-01-01 07:51:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'mDTz9GxBZA', '2023-01-01 07:51:04', '2023-01-01 07:51:04'),
(451, 'admin', 'admin singhateh', NULL, 'admin@admin.com', '2023-01-01 07:51:05', '$2y$10$h5BJy9PwGNAjHsMuL2.B0.i2bpqzdPFD6nltZfCJ2ld5JL06AZdOq', 'M', '2023-01-01', 30, 'Muslim', NULL, NULL, '', 0, NULL, NULL, 'fY8MWJ9MOy', '2023-01-01 07:51:05', '2023-01-01 07:51:05'),
(452, NULL, 'anjua partama rusvandia', NULL, 'anjua.phone@gmail.com', NULL, '$2y$10$rD9XwybjrMhV4ceBkgDNvu3.ftrejJxY/YQ72QcYmNKRBEhV1rp3K', 'M', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-01-01 09:22:27', '2023-01-01 09:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `vitals`
--

CREATE TABLE `vitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `systolic_B_P` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diastolic_B_P` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bmi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heart_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urine_output` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_sugar_f` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_sugar_r` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spo_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trauma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oxygen_supplementation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advice_created_by_id_foreign` (`created_by_id`),
  ADD KEY `advice_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allergies_patient_id_foreign` (`patient_id`),
  ADD KEY `allergies_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `allergies_user_id_foreign` (`user_id`),
  ADD KEY `allergies_created_by_id_foreign` (`created_by_id`),
  ADD KEY `allergies_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beds_bed_type_id_foreign` (`bed_type_id`),
  ADD KEY `beds_room_id_foreign` (`room_id`),
  ADD KEY `beds_created_by_id_foreign` (`created_by_id`),
  ADD KEY `beds_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `bed_types`
--
ALTER TABLE `bed_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bed_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `bed_types_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billings_doctor_order_id_foreign` (`doctor_order_id`),
  ADD KEY `billings_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `billings_created_by_id_foreign` (`created_by_id`),
  ADD KEY `billings_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `billing_invoices`
--
ALTER TABLE `billing_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_invoices_patient_id_foreign` (`patient_id`),
  ADD KEY `billing_invoices_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `billing_invoices_doctor_order_id_foreign` (`doctor_order_id`),
  ADD KEY `billing_invoices_created_by_id_foreign` (`created_by_id`),
  ADD KEY `billing_invoices_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `billing_invoice_details`
--
ALTER TABLE `billing_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_invoice_details_billing_invoice_id_foreign` (`billing_invoice_id`),
  ADD KEY `billing_invoice_details_created_by_id_foreign` (`created_by_id`),
  ADD KEY `billing_invoice_details_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_transactions_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `billing_transactions_billing_invoice_id_foreign` (`billing_invoice_id`),
  ADD KEY `billing_transactions_created_by_id_foreign` (`created_by_id`),
  ADD KEY `billing_transactions_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `blood_banks`
--
ALTER TABLE `blood_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_banks_patient_id_foreign` (`patient_id`),
  ADD KEY `blood_banks_user_id_foreign` (`user_id`),
  ADD KEY `blood_banks_created_by_id_foreign` (`created_by_id`),
  ADD KEY `blood_banks_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `blood_donors`
--
ALTER TABLE `blood_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_requests_patient_id_foreign` (`patient_id`),
  ADD KEY `blood_requests_created_by_id_foreign` (`created_by_id`),
  ADD KEY `blood_requests_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `blood_stocks`
--
ALTER TABLE `blood_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_stocks_blood_bank_id_foreign` (`blood_bank_id`),
  ADD KEY `blood_stocks_created_by_id_foreign` (`created_by_id`),
  ADD KEY `blood_stocks_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `blood_stock_details`
--
ALTER TABLE `blood_stock_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_stock_details_blood_stock_id_foreign` (`blood_stock_id`),
  ADD KEY `blood_stock_details_created_by_id_foreign` (`created_by_id`),
  ADD KEY `blood_stock_details_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_email_unique` (`email`),
  ADD UNIQUE KEY `branches_website_unique` (`website`),
  ADD KEY `branches_created_by_id_foreign` (`created_by_id`),
  ADD KEY `branches_updated_by_id_foreign` (`updated_by_id`);
ALTER TABLE `branches` ADD FULLTEXT KEY `branches_name_fulltext` (`name`);
ALTER TABLE `branches` ADD FULLTEXT KEY `branches_address_fulltext` (`address`);
ALTER TABLE `branches` ADD FULLTEXT KEY `branches_phone_fulltext` (`phone`);

--
-- Indexes for table `cheque_details`
--
ALTER TABLE `cheque_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cheque_details_billing_transaction_id_foreign` (`billing_transaction_id`),
  ADD KEY `cheque_details_created_by_id_foreign` (`created_by_id`),
  ADD KEY `cheque_details_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_created_by_id_foreign` (`created_by_id`),
  ADD KEY `departments_updated_by_id_foreign` (`updated_by_id`);
ALTER TABLE `departments` ADD FULLTEXT KEY `departments_name_fulltext` (`name`);
ALTER TABLE `departments` ADD FULLTEXT KEY `departments_code_fulltext` (`code`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnoses_created_by_id_foreign` (`created_by_id`),
  ADD KEY `diagnoses_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_user_id_foreign` (`user_id`),
  ADD KEY `doctors_specialist_id_foreign` (`specialist_id`),
  ADD KEY `doctors_created_by_id_foreign` (`created_by_id`),
  ADD KEY `doctors_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `doctor_orders`
--
ALTER TABLE `doctor_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_orders_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `doctor_orders_user_id_foreign` (`user_id`),
  ADD KEY `doctor_orders_approved_by_id_foreign` (`approved_by_id`),
  ADD KEY `doctor_orders_created_by_id_foreign` (`created_by_id`),
  ADD KEY `doctor_orders_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hospital_settings`
--
ALTER TABLE `hospital_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hospital_settings_email_unique` (`email`);

--
-- Indexes for table `immunizations`
--
ALTER TABLE `immunizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `immunizations_patient_id_foreign` (`patient_id`),
  ADD KEY `immunizations_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `immunizations_user_id_foreign` (`user_id`),
  ADD KEY `immunizations_created_by_id_foreign` (`created_by_id`),
  ADD KEY `immunizations_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `investigations`
--
ALTER TABLE `investigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investigations_test_type_id_foreign` (`test_type_id`),
  ADD KEY `investigations_patient_id_foreign` (`patient_id`),
  ADD KEY `investigations_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `investigations_user_id_foreign` (`user_id`),
  ADD KEY `investigations_created_by_id_foreign` (`created_by_id`),
  ADD KEY `investigations_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laboratories_created_by_id_foreign` (`created_by_id`),
  ADD KEY `laboratories_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_tests_created_by_id_foreign` (`created_by_id`),
  ADD KEY `lab_tests_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `medical_certificates`
--
ALTER TABLE `medical_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_certificates_patient_id_foreign` (`patient_id`),
  ADD KEY `medical_certificates_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `medical_certificates_user_id_foreign` (`user_id`),
  ADD KEY `medical_certificates_created_by_id_foreign` (`created_by_id`),
  ADD KEY `medical_certificates_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicines_purchase_id_foreign` (`purchase_id`),
  ADD KEY `medicines_created_by_id_foreign` (`created_by_id`),
  ADD KEY `medicines_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_categories_created_by_id_foreign` (`created_by_id`),
  ADD KEY `medicine_categories_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `medicine_types_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nurses_user_id_foreign` (`user_id`),
  ADD KEY `nurses_specialist_id_foreign` (`specialist_id`),
  ADD KEY `nurses_created_by_id_foreign` (`created_by_id`),
  ADD KEY `nurses_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_operation_type_id_foreign` (`operation_type_id`),
  ADD KEY `operations_patient_id_foreign` (`patient_id`),
  ADD KEY `operations_user_id_foreign` (`user_id`),
  ADD KEY `operations_created_by_id_foreign` (`created_by_id`),
  ADD KEY `operations_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `operation_types_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_user_id_foreign` (`user_id`),
  ADD KEY `patients_created_by_id_foreign` (`created_by_id`),
  ADD KEY `patients_updated_by_id_foreign` (`updated_by_id`);
ALTER TABLE `patients` ADD FULLTEXT KEY `patients_name_fulltext` (`name`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_visits`
--
ALTER TABLE `patient_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_visits_patient_id_foreign` (`patient_id`),
  ADD KEY `patient_visits_user_id_foreign` (`user_id`),
  ADD KEY `patient_visits_created_by_id_foreign` (`created_by_id`),
  ADD KEY `patient_visits_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacies_branch_id_foreign` (`branch_id`),
  ADD KEY `pharmacies_created_by_id_foreign` (`created_by_id`),
  ADD KEY `pharmacies_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `pharmacy_invoices`
--
ALTER TABLE `pharmacy_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_patient_id_foreign` (`patient_id`),
  ADD KEY `prescriptions_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `prescriptions_user_id_foreign` (`user_id`),
  ADD KEY `prescriptions_medicine_id_foreign` (`medicine_id`),
  ADD KEY `prescriptions_created_by_id_foreign` (`created_by_id`),
  ADD KEY `prescriptions_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `presenting_complains`
--
ALTER TABLE `presenting_complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presenting_complains_patient_id_foreign` (`patient_id`),
  ADD KEY `presenting_complains_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `presenting_complains_user_id_foreign` (`user_id`),
  ADD KEY `presenting_complains_created_by_id_foreign` (`created_by_id`),
  ADD KEY `presenting_complains_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_medicine_type_id_foreign` (`medicine_type_id`),
  ADD KEY `purchases_medicine_category_id_foreign` (`medicine_category_id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_created_by_id_foreign` (`created_by_id`),
  ADD KEY `purchases_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_ward_id_foreign` (`ward_id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`),
  ADD KEY `rooms_created_by_id_foreign` (`created_by_id`),
  ADD KEY `rooms_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `room_types_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `sample_collections`
--
ALTER TABLE `sample_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_collections_investigation_id_foreign` (`investigation_id`),
  ADD KEY `sample_collections_laboratory_id_foreign` (`laboratory_id`),
  ADD KEY `sample_collections_approve_by_id_foreign` (`approve_by_id`),
  ADD KEY `sample_collections_created_by_id_foreign` (`created_by_id`),
  ADD KEY `sample_collections_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_user_id_foreign` (`user_id`),
  ADD KEY `schedules_created_by_id_foreign` (`created_by_id`),
  ADD KEY `schedules_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialists_created_by_id_foreign` (`created_by_id`),
  ADD KEY `specialists_updated_by_id_foreign` (`updated_by_id`);
ALTER TABLE `specialists` ADD FULLTEXT KEY `specialists_name_fulltext` (`name`);
ALTER TABLE `specialists` ADD FULLTEXT KEY `specialists_code_fulltext` (`code`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`),
  ADD KEY `suppliers_created_by_id_foreign` (`created_by_id`),
  ADD KEY `suppliers_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `test_types_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_id_foreign` (`created_by_id`),
  ADD KEY `users_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `vitals`
--
ALTER TABLE `vitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vitals_patient_id_foreign` (`patient_id`),
  ADD KEY `vitals_patient_visit_id_foreign` (`patient_visit_id`),
  ADD KEY `vitals_user_id_foreign` (`user_id`),
  ADD KEY `vitals_created_by_id_foreign` (`created_by_id`),
  ADD KEY `vitals_updated_by_id_foreign` (`updated_by_id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wards_created_by_id_foreign` (`created_by_id`),
  ADD KEY `wards_updated_by_id_foreign` (`updated_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_types`
--
ALTER TABLE `bed_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_invoices`
--
ALTER TABLE `billing_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_invoice_details`
--
ALTER TABLE `billing_invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_banks`
--
ALTER TABLE `blood_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donors`
--
ALTER TABLE `blood_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_stocks`
--
ALTER TABLE `blood_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_stock_details`
--
ALTER TABLE `blood_stock_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheque_details`
--
ALTER TABLE `cheque_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_orders`
--
ALTER TABLE `doctor_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_settings`
--
ALTER TABLE `hospital_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `immunizations`
--
ALTER TABLE `immunizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investigations`
--
ALTER TABLE `investigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_tests`
--
ALTER TABLE `lab_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_certificates`
--
ALTER TABLE `medical_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_types`
--
ALTER TABLE `medicine_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operation_types`
--
ALTER TABLE `operation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_visits`
--
ALTER TABLE `patient_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_invoices`
--
ALTER TABLE `pharmacy_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presenting_complains`
--
ALTER TABLE `presenting_complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample_collections`
--
ALTER TABLE `sample_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `vitals`
--
ALTER TABLE `vitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advice`
--
ALTER TABLE `advice`
  ADD CONSTRAINT `advice_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `advice_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `allergies`
--
ALTER TABLE `allergies`
  ADD CONSTRAINT `allergies_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allergies_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allergies_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allergies_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allergies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_type_id_foreign` FOREIGN KEY (`bed_type_id`) REFERENCES `bed_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `beds_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `beds_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `beds_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bed_types`
--
ALTER TABLE `bed_types`
  ADD CONSTRAINT `bed_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bed_types_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `billings_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billings_doctor_order_id_foreign` FOREIGN KEY (`doctor_order_id`) REFERENCES `doctor_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billings_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billings_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `billing_invoices`
--
ALTER TABLE `billing_invoices`
  ADD CONSTRAINT `billing_invoices_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoices_doctor_order_id_foreign` FOREIGN KEY (`doctor_order_id`) REFERENCES `doctor_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoices_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoices_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoices_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `billing_invoice_details`
--
ALTER TABLE `billing_invoice_details`
  ADD CONSTRAINT `billing_invoice_details_billing_invoice_id_foreign` FOREIGN KEY (`billing_invoice_id`) REFERENCES `billing_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoice_details_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_invoice_details_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  ADD CONSTRAINT `billing_transactions_billing_invoice_id_foreign` FOREIGN KEY (`billing_invoice_id`) REFERENCES `billing_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_transactions_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_transactions_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_transactions_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_banks`
--
ALTER TABLE `blood_banks`
  ADD CONSTRAINT `blood_banks_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_banks_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_banks_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD CONSTRAINT `blood_requests_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_requests_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_requests_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_stocks`
--
ALTER TABLE `blood_stocks`
  ADD CONSTRAINT `blood_stocks_blood_bank_id_foreign` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_stocks_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_stocks_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_stock_details`
--
ALTER TABLE `blood_stock_details`
  ADD CONSTRAINT `blood_stock_details_blood_stock_id_foreign` FOREIGN KEY (`blood_stock_id`) REFERENCES `blood_stocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_stock_details_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_stock_details_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branches_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cheque_details`
--
ALTER TABLE `cheque_details`
  ADD CONSTRAINT `cheque_details_billing_transaction_id_foreign` FOREIGN KEY (`billing_transaction_id`) REFERENCES `billing_transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cheque_details_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cheque_details_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departments_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnoses_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctors_specialist_id_foreign` FOREIGN KEY (`specialist_id`) REFERENCES `specialists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctors_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_orders`
--
ALTER TABLE `doctor_orders`
  ADD CONSTRAINT `doctor_orders_approved_by_id_foreign` FOREIGN KEY (`approved_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_orders_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_orders_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_orders_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `immunizations`
--
ALTER TABLE `immunizations`
  ADD CONSTRAINT `immunizations_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `immunizations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `immunizations_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `immunizations_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `immunizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `investigations`
--
ALTER TABLE `investigations`
  ADD CONSTRAINT `investigations_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD CONSTRAINT `laboratories_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laboratories_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD CONSTRAINT `lab_tests_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lab_tests_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_certificates`
--
ALTER TABLE `medical_certificates`
  ADD CONSTRAINT `medical_certificates_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_certificates_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_certificates_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_certificates_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicines_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicines_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD CONSTRAINT `medicine_categories_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicine_categories_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD CONSTRAINT `medicine_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicine_types_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nurses`
--
ALTER TABLE `nurses`
  ADD CONSTRAINT `nurses_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurses_specialist_id_foreign` FOREIGN KEY (`specialist_id`) REFERENCES `specialists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurses_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_operation_type_id_foreign` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD CONSTRAINT `operation_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operation_types_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patients_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `patient_visits`
--
ALTER TABLE `patient_visits`
  ADD CONSTRAINT `patient_visits_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_visits_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_visits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD CONSTRAINT `pharmacies_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacies_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pharmacies_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptions_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptions_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptions_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptions_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presenting_complains`
--
ALTER TABLE `presenting_complains`
  ADD CONSTRAINT `presenting_complains_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presenting_complains_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presenting_complains_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presenting_complains_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presenting_complains_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_medicine_category_id_foreign` FOREIGN KEY (`medicine_category_id`) REFERENCES `medicine_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_medicine_type_id_foreign` FOREIGN KEY (`medicine_type_id`) REFERENCES `medicine_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rooms_ward_id_foreign` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_types`
--
ALTER TABLE `room_types`
  ADD CONSTRAINT `room_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_types_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sample_collections`
--
ALTER TABLE `sample_collections`
  ADD CONSTRAINT `sample_collections_approve_by_id_foreign` FOREIGN KEY (`approve_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_collections_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_collections_investigation_id_foreign` FOREIGN KEY (`investigation_id`) REFERENCES `investigations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_collections_laboratory_id_foreign` FOREIGN KEY (`laboratory_id`) REFERENCES `laboratories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_collections_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedules_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specialists`
--
ALTER TABLE `specialists`
  ADD CONSTRAINT `specialists_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `specialists_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suppliers_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_types`
--
ALTER TABLE `test_types`
  ADD CONSTRAINT `test_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_types_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vitals`
--
ALTER TABLE `vitals`
  ADD CONSTRAINT `vitals_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitals_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitals_patient_visit_id_foreign` FOREIGN KEY (`patient_visit_id`) REFERENCES `patient_visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitals_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wards_updated_by_id_foreign` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
