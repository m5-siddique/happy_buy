-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 05:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy_buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_price` double(8,2) NOT NULL,
  `invoice_nuber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `shop_id`, `quantity`, `sell_price`, `invoice_nuber`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1', '1', 50000.00, '123', '2022-04-22 03:45:20', '2022-04-22 03:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `cat_banner`, `status`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '1650386828.jpg', '0', 'electronics', '2022-04-18 22:47:08', '2022-04-21 14:40:03'),
(2, 'Fashion', '1650617505.jpg', '0', 'fashion', '2022-04-18 22:47:08', '2022-04-21 20:51:45'),
(3, 'Kitchen', '1650617656.png', '0', 'kitchen', '2022-04-18 22:47:08', '2022-04-21 20:54:16'),
(4, 'Computer Accessories', '1650617731.jpg', '0', 'computer-accessories', '2022-04-21 20:55:31', '2022-04-21 20:55:31'),
(5, 'Mobile Accessories', '1650617855.jpg', '0', 'mobile-accessories', '2022-04-21 20:57:35', '2022-04-21 20:57:35'),
(6, 'Child Fashion', '1650617935.jpg', '0', 'child-fashion', '2022-04-21 20:58:55', '2022-04-21 20:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_03_13_060746_create_roles_table', 1),
(6, '2022_03_13_091141_create_categories_table', 1),
(7, '2022_03_14_052256_create_shops_table', 1),
(8, '2022_03_16_070419_create_products_table', 1),
(9, '2022_03_20_071633_create_product_in_shops_table', 1),
(10, '2022_03_22_122705_create_carts_table', 1),
(11, '2022_03_24_064924_create_productorders_table', 1),
(12, '2022_03_24_094254_create_orders_table', 1),
(13, '2022_03_28_104523_create_ratings_table', 1),
(14, '2022_04_01_170021_create_chats_table', 1),
(15, '2022_04_01_170342_create_contactuses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_boy_id` bigint(20) DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `amount`, `status`, `transaction_id`, `currency`, `invoice_number`, `process_status`, `delivery_boy_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 2, 'user', 'user@gmail.com', '01941697253', 'Dhaka', 25060.00, 'Processing', '6262d15ddff16', 'BDT', '270872', '2', 3, NULL, '2022-04-21 18:00:00', '2022-04-22 10:12:15');

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
-- Table structure for table `productorders`
--

CREATE TABLE `productorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_price` double(8,2) NOT NULL,
  `invoice_nuber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charge` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productorders`
--

INSERT INTO `productorders` (`id`, `product_id`, `user_id`, `shop_id`, `quantity`, `sell_price`, `invoice_nuber`, `shipping_charge`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '', '1', 25000.00, '270872', 60.00, '2022-04-22 10:01:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `special_price` double(8,2) DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `status` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_price`, `special_price`, `banner`, `name`, `image_path`, `description`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Samsung TV', 25000.00, NULL, '1650619155.webp', '[\"LED8000_Frt.webp\",\"levant-fhd-t5300-ua43t5300auxtw-frontblack-229857917.webp\",\"PDP680_Frt.webp\"]', '[\"LED8000_Frt.webp\",\"levant-fhd-t5300-ua43t5300auxtw-frontblack-229857917.webp\",\"PDP680_Frt.webp\"]', '<p>The UND8000 is Samsung&#39;s best LED TV for 2011, with improved local dimming from an edge-lit configuration and a touch-screen remote, not to mention a 0.2-inch-wide frame.</p>', 'Regular', 0, '2022-04-21 21:19:15', '2022-04-21 21:19:15'),
(2, 1, 'Samsung Fridge', 50000.00, NULL, '1650619277.jpg', '[\"images.jpg\",\"refrigerator-1540426.jpg\",\"top-mount-two-door-refrigerator-260nw-1379019992.webp\"]', '[\"images.jpg\",\"refrigerator-1540426.jpg\",\"top-mount-two-door-refrigerator-260nw-1379019992.webp\"]', '<p>Samsung has made fridges with touchscreens before. LG has made fridges with doors that turn transparent to show you the inside. This year at CES 2018, those two ideas are finally merging into one with&nbsp;<a href=\"http://www.lgnewsroom.com/2018/01/lgs-connected-appliance-network-makes-the-future-kitchen-more-delightful/\">LG&rsquo;s new InstaView ThinQ smart refrigerator</a>, which features a 29-inch touchscreen that becomes transparent if users knock on it twice.</p>', 'Regular', 0, '2022-04-21 21:21:17', '2022-04-21 21:21:17'),
(3, 6, 'Child Dress', 1000.00, NULL, '1650619412.jpg', '[\"19e-Baby_Dress_Suitable_for_all_Occasions_6-12_months.jpg\",\"9191d270e425e200bbd14c1a2c743daf.jpg\",\"images (1).jpg\"]', '[\"19e-Baby_Dress_Suitable_for_all_Occasions_6-12_months.jpg\",\"9191d270e425e200bbd14c1a2c743daf.jpg\",\"images (1).jpg\"]', '<p>child dress</p>', 'Regular', 0, '2022-04-21 21:23:32', '2022-04-21 21:23:32'),
(4, 4, 'Mouse', 350.00, NULL, '1650619676.jpg', '[\"3-Tasten-Maus_Microsoft.jpg\",\"854833.jpg\",\"imgbin-computer-mouse-technical-support-output-device-input-devices-computer-mouse-CjBiUnSTknehZ1yEzvUGCbwhT.jpg\"]', '[\"3-Tasten-Maus_Microsoft.jpg\",\"854833.jpg\",\"imgbin-computer-mouse-technical-support-output-device-input-devices-computer-mouse-CjBiUnSTknehZ1yEzvUGCbwhT.jpg\"]', '<p>Computer Mouse</p>', 'Regular', 0, '2022-04-21 21:27:56', '2022-04-21 21:27:56'),
(5, 4, 'Dell Laptop', 50000.00, NULL, '1650619762.jpg', '[\"a315-53-n17c4-1-500x500.jpg\",\"a315-53-n17c4-2-500x500.jpg\",\"dell-inspiron-15-5000-15.jpg\"]', '[\"a315-53-n17c4-1-500x500.jpg\",\"a315-53-n17c4-2-500x500.jpg\",\"dell-inspiron-15-5000-15.jpg\"]', '<p>Dell Laptop</p>', 'Regular', 0, '2022-04-21 21:29:22', '2022-04-21 21:29:22'),
(6, 4, 'Headphone', 1000.00, 950.00, '1650619811.png', '[\"best_3.png\",\"deals.png\",\"featured_3.png\"]', '[\"best_3.png\",\"deals.png\",\"featured_3.png\"]', '<p>Computer Headphone</p>', 'Offer', 0, '2022-04-21 21:30:11', '2022-04-21 21:30:11'),
(7, 5, 'Mobile Headphone', 500.00, NULL, '1650619846.png', '[\"adv_1.png\",\"best_2.png\"]', '[\"adv_1.png\",\"best_2.png\"]', '<p>Mobile Headphone</p>', 'Regular', 0, '2022-04-21 21:30:46', '2022-04-21 21:30:46'),
(8, 2, 'Men Watch', 1200.00, 1000.00, '1650619945.jpg', '[\"FS5903-alt.jpg\",\"image-1022-163343566-1-big-hr.jpg\"]', '[\"FS5903-alt.jpg\",\"image-1022-163343566-1-big-hr.jpg\"]', '<p>Men Watch</p>', 'Offer', 0, '2022-04-21 21:32:25', '2022-04-21 21:32:48'),
(9, 5, 'Xomi s2', 18000.00, NULL, '1650620028.jpg', '[\"download.jpg\",\"gsmarena_007.jpg\",\"xiaomi-redmi-s2-14-1.jpg\"]', '[\"download.jpg\",\"gsmarena_007.jpg\",\"xiaomi-redmi-s2-14-1.jpg\"]', '<p>Xomi s2</p>', 'Regular', 0, '2022-04-21 21:33:48', '2022-04-21 21:33:48'),
(10, 5, 'Remi Note 8', 20000.00, NULL, '1650620115.jpg', '[\"section-04_slider_2.png\",\"section-04_slider_3.png\"]', '[\"section-04_slider_2.png\",\"section-04_slider_3.png\"]', '<p>Note 8</p>', 'Regular', 0, '2022-04-21 21:35:15', '2022-04-21 21:35:15'),
(11, 2, 'Women Dress', 1200.00, NULL, '1650620170.jpg', '[\"7d63d371-1e23-4a9c-8875-6a9e98f1f7991568193468392-Deewa-Printed-Jumpsuit-1581568193467754-4.jpg\",\"10e0a246-a793-4f45-8462-567d0f5561131568193468366-Deewa-Printed-Jumpsuit-1581568193467754-5.jpg\",\"458f601d-a183-49e7-a333-ef91493bd2d91568193468425-Deewa-P', '[\"7d63d371-1e23-4a9c-8875-6a9e98f1f7991568193468392-Deewa-Printed-Jumpsuit-1581568193467754-4.jpg\",\"10e0a246-a793-4f45-8462-567d0f5561131568193468366-Deewa-Printed-Jumpsuit-1581568193467754-5.jpg\",\"458f601d-a183-49e7-a333-ef91493bd2d91568193468425-Deewa-P', '<p>Women Fashion Dress</p>', 'Regular', 0, '2022-04-21 21:36:10', '2022-04-21 21:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_shops`
--

CREATE TABLE `product_in_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_in_shops`
--

INSERT INTO `product_in_shops` (`id`, `category_id`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 4, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 2, 3, NULL, NULL),
(7, 6, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Customer', NULL, NULL),
(3, 'Delivery Boy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `shop_name`, `location`, `url`, `phone_number`, `shop_info`, `status`, `name`, `image_path`, `google_map`, `created_at`, `updated_at`) VALUES
(1, 'BD Electronic', 'City Centre (Level 16), 90/1 Motijheel C/A, Dhaka 1000.', 'bd-electronic', '09606111777', 'Best Electronics, a concern of Zaman Group, is the fastest growing electronics retail company in Bangladesh. Our company was officially launched in 2013 with a clear vision of delivering world-class home appliances from all major global brands to the high', '0', '[\"Best-Electronics.png\"]', '[\"Best-Electronics.png\"]', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"300\" height=\"300\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=best%20electronics&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://fmovies-online.net\">fmovies</a><br><style>.mapouter{position:relative;text-align:right;height:300px;width:300px;}</style><a href=\"https://www.embedgooglemap.net\"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}</style></div></div>', '2022-04-21 21:01:08', '2022-04-21 21:01:56'),
(2, 'Star Tech', '6th floor, 28 Kazi Nazrul Islam Ave,Navana', 'star-tech', '09678002003', 'Star Tech always prioritizes its customers and to ensure better customer service started the e-commerce shop in addition to the physical stores. The goal was to meet more customer needs in the shortest time. Since then, We have had the top spot as the bes', '0', '[\"logo1.png\"]', '[\"logo1.png\"]', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"300\" height=\"300\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=star%20tech&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://fmovies-online.net\">fmovies</a><br><style>.mapouter{position:relative;text-align:right;height:300px;width:300px;}</style><a href=\"https://www.embedgooglemap.net\"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}</style></div></div>', '2022-04-21 21:07:04', '2022-04-21 21:07:50'),
(3, 'Fashion House', 'Dhanmondi 32', 'fashion-shop', '01941685273', 'fashion house Dhaka', '0', '[\"fashion-house-concept-banner-header-vector-23673981.jpg\"]', '[\"fashion-house-concept-banner-header-vector-23673981.jpg\"]', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"300\" height=\"300\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=fashion%20house&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://123movies-to.org\">123 movies</a><br><style>.mapouter{position:relative;text-align:right;height:300px;width:300px;}</style><a href=\"https://www.embedgooglemap.net\">google map html embed</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}</style></div></div>', '2022-04-21 21:09:28', '2022-04-21 21:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role_id`, `image`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01941697253', '1', 'admin.png', 'Badda', NULL, '$2y$10$6s1BTNfct12AfgPCIQo5r.yTZt6bhvcBrwwvi8M1pNFAD8jGKkZRu', NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', '01941697253', '2', 'admin.png', 'Badda', NULL, '$2y$10$H8jHeiQKx1GVWP93CVrx1O4Q3VYBfhSVHGaHt1y3POmi4x/6S8Y0C', NULL, NULL, NULL),
(3, 'Delivery Boy', 'boy@gmail.com', '01941697253', '3', 'admin.png', 'Badda', NULL, '$2y$10$K/CNeuY/pCdW.ll.z1pLK.xcg8FHX3hEtg50D0m7Gu8o4xDpi1.ny', NULL, NULL, NULL),
(4, 'Asib Siddique', 'asib@gmail.com', '01709797888', '2', NULL, '', NULL, '$2y$10$XAHZjYoBPmhDryg0i9v/EOuaUgX1XyEgQ/sBGHq/5rHYZ/Ht6hLnC', NULL, '2022-04-22 10:18:17', '2022-04-22 10:18:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_url_unique` (`url`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productorders`
--
ALTER TABLE `productorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_in_shops`
--
ALTER TABLE `product_in_shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_in_shops_category_id_foreign` (`category_id`),
  ADD KEY `product_in_shops_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productorders`
--
ALTER TABLE `productorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_in_shops`
--
ALTER TABLE `product_in_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_in_shops`
--
ALTER TABLE `product_in_shops`
  ADD CONSTRAINT `product_in_shops_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_in_shops_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
