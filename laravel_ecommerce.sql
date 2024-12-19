-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2023 pada 15.26
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `cover`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Clothes', 'clothes', NULL, NULL, 1, NULL, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(2, 'Women\' Clothes', 'women-clothes', NULL, NULL, 1, 1, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(3, 'Men\' Clothes', 'men-clothes', NULL, NULL, 1, 1, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(4, 'Boy\' Clothes', 'boy-clothes', NULL, NULL, 1, 1, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(5, 'Girls\' Clothes', 'girls-clothes', NULL, NULL, 1, 1, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(6, 'Shoes', 'shoes', NULL, NULL, 1, NULL, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(7, 'Women\' Shoes', 'women-shoes', NULL, NULL, 1, 6, '2023-02-25 07:25:12', '2023-02-25 07:25:12'),
(8, 'Men\' Shoes', 'men-shoes', NULL, NULL, 1, 6, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(9, 'Boy\' Shoes', 'boy-shoes', NULL, NULL, 1, 6, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(10, 'Girls\' Shoes', 'girls-shoes', NULL, NULL, 1, 6, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(11, 'Watches', 'watches', NULL, NULL, 1, NULL, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(12, 'Women\' Watches', 'women-watches', NULL, NULL, 1, 11, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(13, 'Men\' Watches', 'men-watches', NULL, NULL, 1, 11, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(14, 'Boy\' Watches', 'boy-watches', NULL, NULL, 1, 11, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(15, 'Girls\' Watches', 'girls-watches', NULL, NULL, 1, 11, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(16, 'Electronics', 'electronics', NULL, NULL, 1, NULL, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(17, 'USB Flash drives', 'usb-flash-drives', NULL, NULL, 1, 16, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(18, 'Headphone', 'headphone', NULL, NULL, 1, 16, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(19, 'Portable speakers', 'portable-speakers', NULL, NULL, 1, 16, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(20, 'Keyboards', 'keyboards', NULL, NULL, 1, 16, '2023-02-25 07:25:13', '2023-02-25 07:25:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_times` int(11) DEFAULT NULL,
  `used_times` int(11) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `greater_than` decimal(8,2) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `as` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_status` tinyint(1) NOT NULL DEFAULT 0,
  `file_sort` int(11) NOT NULL DEFAULT 0,
  `mediable_id` int(10) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_08_18_115116_create_permission_tables', 1),
(6, '2020_08_27_211331_create_categories_table', 1),
(7, '2020_08_27_211351_create_products_table', 1),
(8, '2020_08_27_211518_create_reviews_table', 1),
(9, '2020_08_27_211536_create_coupons_table', 1),
(10, '2020_08_27_211629_create_media_table', 1),
(11, '2020_08_27_215801_create_contacts_table', 1),
(12, '2020_09_23_144005_create_tags_table', 1),
(13, '2020_09_23_144204_create_product_tags_table', 1),
(14, '2020_12_17_062818_create_pages_table', 1),
(15, '2020_12_29_134944_create_settings_table', 1),
(16, '2021_08_12_172833_create_countries_table', 1),
(17, '2021_08_12_172842_create_states_table', 1),
(18, '2021_08_12_172848_create_cities_table', 1),
(19, '2021_08_24_164218_create_notifications_table', 1),
(20, '2021_08_29_183751_create_payment_methods_table', 1),
(21, '2021_08_29_183803_create_shipping_companies_table', 1),
(22, '2021_08_29_183808_create_user_addresses_table', 1),
(23, '2021_08_29_211359_create_orders_table', 1),
(24, '2021_08_30_070851_create_order_transactions_table', 1),
(25, '2021_08_30_075157_create_links_table', 1),
(26, '2021_08_30_091635_create_order_product_table', 1),
(27, '2021_08_30_203336_create_shipping_company_country_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(26, 'App\\Models\\User', 2),
(27, 'App\\Models\\User', 2),
(28, 'App\\Models\\User', 2),
(29, 'App\\Models\\User', 2),
(31, 'App\\Models\\User', 2),
(32, 'App\\Models\\User', 2),
(33, 'App\\Models\\User', 2),
(34, 'App\\Models\\User', 2),
(36, 'App\\Models\\User', 2),
(37, 'App\\Models\\User', 2),
(38, 'App\\Models\\User', 2),
(39, 'App\\Models\\User', 2),
(46, 'App\\Models\\User', 2),
(47, 'App\\Models\\User', 2),
(48, 'App\\Models\\User', 2),
(49, 'App\\Models\\User', 2),
(66, 'App\\Models\\User', 2),
(67, 'App\\Models\\User', 2),
(68, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0,
  `shipping` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_product`
--

CREATE TABLE `order_product` (
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'about', '<p><span style=\'font-size: 14.4px;\'></span></p><p><span style=\'font-size: 14.4px;\'><p>Parturient dictumst posuere proin aliquam bibendum congue at, est quis mi aliquet non litora. Parturient tempus lectus molestie tristique dapibus ultrices sociosqu, ornare cubilia rhoncus aptent ullamcorper.</p><br></span><br></p>', 1, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(2, 'Privacy policy', 'privacy-policy', '<p><span style=\'font-size: 14.4px;\'></span></p><p><span style=\'font-size: 14.4px;\'><p>Lorem ipsum dolor sit amet consectetur adipiscing elit curae, convallis sodales arcu dictumst cum senectus tempus. Odio phasellus venenatis neque nec ultrices nam consequat morbi, urna integer ligula est libero condimentum etiam mattis, torquent aptent facilisis cursus lobortis fusce augue. Feugiat urna mollis luctus class, porta duis curae facilisis, neque in netus. A vivamus lacus nibh tortor dictum hendrerit magna eleifend, dapibus fringilla sociis volutpat egestas dui tempor, netus nulla habitasse torquent rutrum nec lectus. Suscipit fermentum curae odio nisi habitant mattis posuere aliquet blandit, vulputate libero phasellus scelerisque tristique viverra lacus. Suspendisse dictumst dignissim mattis eget faucibus facilisis aenean quis taciti, posuere urna primis vehicula eu lacinia platea cum sapien habitant, aliquet pharetra donec cursus fringilla ultricies fermentum magnis. Dictum proin lacinia turpis ligula cras torquent blandit maecenas, bibendum convallis venenatis suspendisse rutrum quam nibh consequat augue, taciti rhoncus eros vestibulum faucibus congue enim.</p> <p>Suspendisse ornare interdum platea turpis sagittis iaculis curae et, vitae risus lacus venenatis ad tristique. Integer inceptos nostra molestie aliquet semper nunc augue, habitant pulvinar nulla tortor sagittis in, libero dignissim cum enim metus cubilia. Bibendum maecenas proin pellentesque ad augue lectus gravida dapibus erat litora ullamcorper parturient eleifend, aliquam ultricies sem mattis nunc class molestie elementum in vestibulum est hendrerit. Felis duis dui vitae morbi neque id rutrum rhoncus, habitant libero mi magna mauris ridiculus vulputate arcu fermentum, nibh turpis cubilia gravida litora ante in.</p> <p>Vulputate placerat augue mollis vehicula id sodales faucibus ullamcorper, vestibulum urna auctor pretium aliquam aptent semper volutpat taciti, porta commodo duis senectus nullam et vitae. Nascetur odio est rutrum fames fusce tellus integer, neque congue aliquam ligula turpis iaculis, vivamus magna taciti pretium lacus leo. Aenean cum bibendum velit senectus purus lacinia conubia ac nascetur ante, malesuada scelerisque condimentum ultrices nam quis eros proin id, pharetra augue pretium aptent turpis enim gravida congue odio. Potenti felis urna rhoncus inceptos tellus maecenas quis curabitur fringilla, morbi arcu sociosqu rutrum nulla natoque volutpat viverra aliquam, fames habitant lectus hac tortor metus vulputate risus. Suspendisse lobortis vivamus dignissim blandit et nec tempor curabitur sociis, nisl risus neque suscipit sodales congue integer lectus, est sociosqu elementum cubilia per gravida praesent ultricies. Nisl maecenas volutpat vestibulum enim litora penatibus velit habitant suspendisse primis, laoreet lacus placerat ligula nec imperdiet ac curabitur dictum, sapien duis aenean lobortis pretium mollis sagittis condimentum commodo.</p> <p>Lacus porttitor scelerisque senectus conubia commodo pretium eleifend fringilla, eu dictumst tellus urna integer suspendisse tempor id nunc, bibendum turpis malesuada netus erat nec quisque. Interdum ullamcorper ornare pharetra aliquam non odio tincidunt inceptos vel a dapibus pellentesque, scelerisque accumsan quis hac bibendum vestibulum platea tempor quam donec. Ullamcorper justo dictum quisque nec risus pellentesque commodo ligula est, dignissim tellus integer nulla sodales imperdiet aptent felis, aenean urna nullam vulputate erat varius phasellus donec. Vulputate aliquam vel lectus tempor urna tortor tristique est, molestie aliquet imperdiet pretium eros justo fringilla, sapien magnis nisl facilisis malesuada placerat scelerisque. Cras dis urna vehicula pretium sociis potenti curae ut dui, posuere mollis neque justo a habitasse curabitur scelerisque nascetur magnis, ridiculus taciti morbi lobortis senectus hendrerit montes habitant. Tempor pulvinar ullamcorper risus nostra aenean, consequat vitae dis metus per aptent, convallis taciti purus pharetra. Vestibulum nascetur mi ornare id potenti tristique, felis habitant diam volutpat velit elementum ridiculus, ullamcorper auctor convallis pulvinar erat. Enim neque sodales libero praesent diam torquent penatibus, egestas viverra lacus varius suscipit suspendisse cursus habitasse, metus sed rhoncus habitant pellentesque curae. Fringilla luctus nulla aenean tortor parturient arcu, porttitor himenaeos odio erat cras lobortis pellentesque, class nisi cubilia mus sociis.</p> <p>Est vitae velit etiam sociis commodo ac curae porttitor hendrerit, turpis libero dignissim lectus sapien netus nunc egestas, feugiat aenean fusce ultrices donec ornare per et. Sociosqu imperdiet maecenas class facilisi habitasse magna pharetra mollis, netus integer pellentesque sem curae massa taciti nunc tristique, mattis sociis elementum per quis ultrices quam. Aliquet convallis tincidunt aptent porta hendrerit auctor et id, pretium metus cras maecenas eget pharetra consequat felis, orci magnis fames ultrices ullamcorper mollis scelerisque. Vel pulvinar sollicitudin dignissim eu proin integer pretium, iaculis ac lobortis rutrum cum taciti tincidunt, ut ultricies lacinia sociosqu egestas per. Ullamcorper torquent neque nec dictumst tempus facilisis aptent fusce scelerisque, erat pellentesque dapibus condimentum nulla pulvinar auctor montes, ultrices magna molestie sagittis elementum facilisi quisque porttitor.</p> <p>Feugiat inceptos purus aenean est dictumst donec in, class pretium eget accumsan congue cursus tincidunt imperdiet, suspendisse fusce quam per ad hac. Aliquam magnis nulla turpis dignissim duis id mus montes ut, dis bibendum nisi per massa et habitant sem nec dictum, aliquet mollis sociosqu magna convallis habitasse augue cubilia. Sollicitudin eget parturient tincidunt ultricies metus in non iaculis, suscipit lacus sociosqu proin fermentum convallis egestas quisque et, mus curabitur vitae donec felis tristique conubia. Odio auctor vivamus hendrerit et eros, ridiculus taciti purus leo primis, ac montes facilisis sociosqu. Rhoncus habitant iaculis fermentum arcu dictum scelerisque mollis tempor erat varius, dis ullamcorper cubilia congue sodales auctor et neque condimentum. Et inceptos est mus tristique urna diam rhoncus, libero magnis nam venenatis tellus hac commodo, augue primis arcu faucibus senectus fames. Nulla arcu justo sed tellus placerat, metus augue donec nullam, potenti natoque ut tortor. Parturient dictumst posuere proin aliquam bibendum congue at, est quis mi aliquet non litora. Parturient tempus lectus molestie tristique dapibus ultrices sociosqu, ornare cubilia rhoncus aptent ullamcorper.</p><br></span><br></p>', 1, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(3, 'FAQ page', 'faq-page', '<p><span style=\'font-size: 14.4px;\'></span></p><p><span style=\'font-size: 14.4px;\'><p>Lorem ipsum dolor sit amet consectetur adipiscing elit curae, Et inceptos est mus tristique urna diam rhoncus, libero magnis nam venenatis tellus hac commodo, augue primis arcu faucibus senectus fames. Nulla arcu justo sed tellus placerat, metus augue donec nullam, potenti natoque ut tortor. Parturient dictumst posuere proin aliquam bibendum congue at, est quis mi aliquet non litora. Parturient tempus lectus molestie tristique dapibus ultrices sociosqu, ornare cubilia rhoncus aptent ullamcorper.</p></span><br></p>', 1, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(4, 'Terms and conditions', 'terms-and-conditions', '<p><span style=\'font-size: 14.4px;\'></span></p><p><span style=\'font-size: 14.4px;\'><p>Metus augue donec nullam, potenti natoque ut tortor. Parturient dictumst posuere proin aliquam bibendum congue at, est quis mi aliquet non litora. Parturient tempus lectus molestie tristique dapibus ultrices sociosqu, ornare cubilia rhoncus aptent ullamcorper.</p><br></span><br></p>', 1, '2023-02-25 07:25:17', '2023-02-25 07:25:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_merchant_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'access_user_management', 'web', '2023-02-25 07:22:53', '2023-02-25 07:22:53'),
(2, 'access_permission', 'web', '2023-02-25 07:22:53', '2023-02-25 07:22:53'),
(3, 'create_permission', 'web', '2023-02-25 07:22:53', '2023-02-25 07:22:53'),
(4, 'show_permission', 'web', '2023-02-25 07:22:53', '2023-02-25 07:22:53'),
(5, 'edit_permission', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(6, 'access_setting', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(7, 'create_setting', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(8, 'show_setting', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(9, 'edit_setting', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(10, 'delete_setting', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(11, 'access_page', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(12, 'create_page', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(13, 'show_page', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(14, 'edit_page', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(15, 'delete_page', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(16, 'access_supervisor', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(17, 'create_supervisor', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(18, 'show_supervisor', 'web', '2023-02-25 07:22:54', '2023-02-25 07:22:54'),
(19, 'edit_supervisor', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(20, 'delete_supervisor', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(21, 'access_role', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(22, 'create_role', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(23, 'show_role', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(24, 'edit_role', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(25, 'delete_role', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(26, 'access_user', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(27, 'create_user', 'web', '2023-02-25 07:22:55', '2023-02-25 07:22:55'),
(28, 'show_user', 'web', '2023-02-25 07:22:56', '2023-02-25 07:22:56'),
(29, 'edit_user', 'web', '2023-02-25 07:22:56', '2023-02-25 07:22:56'),
(30, 'delete_user', 'web', '2023-02-25 07:22:56', '2023-02-25 07:22:56'),
(31, 'access_category', 'web', '2023-02-25 07:22:57', '2023-02-25 07:22:57'),
(32, 'create_category', 'web', '2023-02-25 07:22:57', '2023-02-25 07:22:57'),
(33, 'show_category', 'web', '2023-02-25 07:22:57', '2023-02-25 07:22:57'),
(34, 'edit_category', 'web', '2023-02-25 07:22:57', '2023-02-25 07:22:57'),
(35, 'delete_category', 'web', '2023-02-25 07:22:58', '2023-02-25 07:22:58'),
(36, 'access_product', 'web', '2023-02-25 07:22:58', '2023-02-25 07:22:58'),
(37, 'create_product', 'web', '2023-02-25 07:22:58', '2023-02-25 07:22:58'),
(38, 'show_product', 'web', '2023-02-25 07:22:58', '2023-02-25 07:22:58'),
(39, 'edit_product', 'web', '2023-02-25 07:22:58', '2023-02-25 07:22:58'),
(40, 'delete_product', 'web', '2023-02-25 07:22:59', '2023-02-25 07:22:59'),
(41, 'access_coupon', 'web', '2023-02-25 07:22:59', '2023-02-25 07:22:59'),
(42, 'create_coupon', 'web', '2023-02-25 07:22:59', '2023-02-25 07:22:59'),
(43, 'show_coupon', 'web', '2023-02-25 07:22:59', '2023-02-25 07:22:59'),
(44, 'edit_coupon', 'web', '2023-02-25 07:22:59', '2023-02-25 07:22:59'),
(45, 'delete_coupon', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(46, 'access_review', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(47, 'create_review', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(48, 'show_review', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(49, 'edit_review', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(50, 'delete_review', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(51, 'access_shipping_company', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(52, 'create_shipping_company', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(53, 'show_shipping_company', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(54, 'edit_shipping_company', 'web', '2023-02-25 07:23:00', '2023-02-25 07:23:00'),
(55, 'delete_shipping_company', 'web', '2023-02-25 07:23:01', '2023-02-25 07:23:01'),
(56, 'access_user_address', 'web', '2023-02-25 07:23:01', '2023-02-25 07:23:01'),
(57, 'create_user_address', 'web', '2023-02-25 07:23:01', '2023-02-25 07:23:01'),
(58, 'show_user_address', 'web', '2023-02-25 07:23:01', '2023-02-25 07:23:01'),
(59, 'edit_user_address', 'web', '2023-02-25 07:23:01', '2023-02-25 07:23:01'),
(60, 'delete_user_address', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(61, 'access_payment_method', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(62, 'create_payment_method', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(63, 'show_payment_method', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(64, 'edit_payment_method', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(65, 'delete_payment_method', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(66, 'access_order', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(67, 'show_order', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(68, 'edit_order', 'web', '2023-02-25 07:23:02', '2023-02-25 07:23:02'),
(69, 'delete_order', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(70, 'access_contact', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(71, 'show_contact', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(72, 'edit_contact', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(73, 'delete_contact', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `review_able` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `price`, `quantity`, `featured`, `status`, `review_able`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Sint aut.', 'similique-quam-architecto', 'Sit non aut atque maiores est. Autem placeat ipsum voluptatem adipisci omnis et sit quisquam.', 'Magnam quam esse quo temporibus ducimus. Omnis assumenda enim architecto sapiente. Odio quo perferendis illo deserunt. Reprehenderit aliquam in quibusdam delectus.', 81, 64, 0, 1, 1, 7, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(2, 'Et officiis perspiciatis.', 'praesentium-sit', 'Sunt culpa non qui porro quo. Optio numquam ut officiis reiciendis in sit consequatur. Quos autem non doloribus velit dicta nisi.', 'Sed esse consectetur provident nesciunt et. Vel placeat et veritatis odit et qui. Repudiandae rerum et aut veniam id et.', 157, 86, 1, 1, 1, 14, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(3, 'Culpa voluptatum.', 'veniam-sint', 'Illum aperiam porro iusto occaecati et vel perspiciatis dolorem. Atque adipisci quisquam ullam ea autem. Pariatur omnis quae laudantium a aut nemo.', 'Nam aut modi dolor aut tenetur laboriosam. Excepturi illo ratione voluptas omnis. Rem quo quam at non laboriosam voluptatem odio.', 72, 96, 0, 1, 1, 15, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(4, 'Impedit beatae.', 'magnam-quod-quae', 'Vel est praesentium omnis distinctio doloribus natus. Voluptatibus deleniti quia velit officia quidem magnam sit. Error fugiat voluptatem dolores aut. Harum exercitationem ut suscipit voluptatem ducimus.', 'Totam tempora deserunt aliquid est. Reprehenderit dolorem minima omnis ex et. Odio aliquam nemo eaque quam. Modi dolor ut tenetur velit velit quae.', 21, 93, 1, 1, 1, 15, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(5, 'Quo quae laborum.', 'suscipit-accusantium-rerum', 'Sed voluptates quod excepturi consequatur asperiores quo voluptas. Et impedit aut beatae sit eius ipsam aut soluta. Qui consequatur impedit iste et qui. Non nostrum atque commodi et eum sunt.', 'Culpa tenetur consequatur quia rerum recusandae vitae eum. Sed odio iusto explicabo natus perspiciatis aut itaque. Qui labore neque architecto iure.', 65, 56, 1, 1, 1, 14, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(6, 'Necessitatibus eos dicta.', 'consequatur-dolor', 'Totam delectus dolor harum ipsa beatae maxime hic. Et molestias voluptas molestias necessitatibus. Molestiae cupiditate dolorem veniam praesentium.', 'Eos veritatis itaque temporibus magnam. Similique sequi sit illo voluptas. Qui impedit omnis id voluptatem. Eveniet rerum saepe et.', 126, 36, 0, 1, 1, 5, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(7, 'Quia voluptates.', 'omnis-quia', 'Aperiam rerum porro aspernatur expedita fuga ex. Architecto corrupti hic doloremque voluptatum ea officiis quo natus. Quam maiores nobis in asperiores illum recusandae ratione.', 'Eaque fuga ratione eligendi aut dolorem aut id dolor. Cupiditate ducimus quo et sit aliquid. Hic modi autem iusto dolores odit.', 184, 86, 0, 1, 1, 10, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(8, 'Eos a.', 'odit-numquam-dolores', 'Quod quas numquam quo natus quia. Alias nobis et quis a porro laudantium. Veritatis saepe est quia eligendi eaque quae. Inventore mollitia qui corporis illum laboriosam voluptatem.', 'Unde voluptatem atque facere voluptatem. Amet necessitatibus quidem nam repellendus ea dolor ut qui. Provident non ea autem enim ratione non.', 126, 88, 0, 1, 1, 4, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(9, 'Sapiente quasi sit.', 'cum-est-est', 'Quia quia provident earum quo. Voluptatem ducimus ipsa quis itaque temporibus voluptate vero excepturi. Quaerat quos sed laudantium ut.', 'Iusto dolor asperiores voluptatibus minus occaecati quo et ut. Nobis sint suscipit unde illum possimus. Et perferendis dolores unde magni sed quaerat.', 130, 82, 0, 1, 1, 14, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(10, 'Dolor recusandae.', 'quae-ut-praesentium', 'Sint reprehenderit quae sed repudiandae. Voluptas odit nemo consequatur consequatur aliquid tempore magni. Consequuntur illo assumenda sapiente hic qui repellat aut.', 'Et consequatur ut quod delectus quia. Laboriosam laudantium dolor enim numquam est dolor nostrum. Est et quisquam occaecati.', 149, 83, 1, 1, 1, 18, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(11, 'Unde id officia.', 'ut-sit-quis', 'Sit et unde eos perferendis. Et et voluptas aut quasi. Quia quod autem eos quidem. Odit sed quo reprehenderit mollitia minima labore.', 'Et fugiat voluptas sint ducimus. Minus corporis tempore sit. Nihil provident enim accusamus saepe.', 123, 91, 0, 1, 1, 20, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(12, 'Cupiditate vero.', 'ad-laborum', 'Nihil dolor et illo consequatur pariatur et. Ut velit voluptatum perferendis dolorum ut. Dicta id aut tempora dolor quis totam. Vitae vel voluptatibus dolores dolor voluptate aut.', 'Consequatur a fugiat cupiditate id soluta. Eaque sunt sint numquam. Porro repellendus qui qui.', 15, 86, 1, 1, 1, 8, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(13, 'Odio voluptate.', 'est-sit', 'Quisquam iste distinctio distinctio qui voluptatibus sapiente facere. Dolor reprehenderit laudantium deleniti magnam et voluptatem earum quas. Odio in et nesciunt in.', 'Unde hic hic rerum voluptatem dolorum. Est autem est quod saepe. Pariatur molestias deleniti voluptas aut omnis facilis quia.', 24, 15, 0, 1, 1, 9, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(14, 'Vitae non.', 'fugit-alias-aut', 'Soluta dolorem et libero iure suscipit qui. Similique commodi fugiat consectetur corporis non accusantium. Facere voluptatem est veritatis accusantium ducimus sit dignissimos qui. Et explicabo voluptate voluptatum.', 'Aut saepe omnis consequatur consequuntur debitis minus aperiam. Totam optio rerum modi consequatur voluptatem eos est. Dolores autem aut facilis assumenda.', 171, 74, 0, 1, 1, 20, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(15, 'Quidem animi.', 'impedit-voluptate-nihil', 'Id quae animi cum. Tempora ea ipsa iusto. Tenetur ut qui suscipit mollitia.', 'Distinctio sed rerum commodi. Magni occaecati aspernatur eum ut molestiae et.', 91, 40, 1, 1, 1, 12, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(16, 'Earum ex dolore.', 'aliquid-ipsam', 'Natus necessitatibus doloremque consequatur saepe. Minima omnis rerum et debitis reprehenderit animi debitis. Nam saepe molestiae voluptatem vel dicta magni.', 'Sunt quia delectus ipsum labore sint dolorem qui earum. Dolorum sunt perferendis velit perferendis velit repellat vitae.', 15, 47, 1, 1, 1, 4, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(17, 'Expedita nobis asperiores.', 'molestias-veniam-officiis', 'Repudiandae omnis eaque asperiores omnis consequatur unde ut. Ducimus est et pariatur aliquid ab incidunt. Dolorem natus quasi deserunt quisquam dolorum ullam numquam.', 'Molestias ex molestiae perspiciatis voluptatem eaque. Nemo voluptas eos qui numquam sapiente. Illo non quaerat nisi occaecati possimus aut et. Sed qui dolores deserunt fugit. Eos molestiae et modi odit aut et.', 15, 78, 1, 1, 1, 18, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(18, 'Quo sed voluptatem.', 'temporibus-nam', 'Facere facere dolor rerum alias quisquam eos autem pariatur. Earum voluptatum aut occaecati sit veritatis. Expedita praesentium eum incidunt.', 'Rerum dolorem quo non ut veritatis iste est. Quis velit sequi saepe nihil in. Aut ducimus explicabo in ratione soluta beatae debitis.', 95, 27, 0, 1, 1, 14, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(19, 'Tempora quo.', 'ullam-et-omnis', 'Voluptatem neque qui impedit esse. Ut voluptas deserunt et et.', 'Rem quia eum sit corporis labore. Eius aut odio voluptates. Sit in non quos quia aut et quod. Quasi eos odio assumenda animi qui optio voluptatem aliquam.', 20, 84, 0, 1, 1, 12, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(20, 'Ea molestiae dolore.', 'fugiat-iste', 'Omnis sit dignissimos enim excepturi sunt blanditiis. Qui qui dolorem asperiores minima magni dicta ullam. Quos id nemo expedita.', 'Et id nobis autem laborum et quo. Non in qui sed labore optio est. Similique molestias qui id fuga quia et cum minima.', 111, 67, 0, 1, 1, 17, '2023-02-25 07:25:14', '2023-02-25 07:25:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 5),
(2, 5),
(2, 8),
(3, 8),
(3, 12),
(4, 5),
(4, 10),
(5, 9),
(5, 12),
(6, 3),
(6, 5),
(7, 1),
(7, 10),
(8, 3),
(8, 8),
(9, 4),
(9, 10),
(10, 5),
(10, 9),
(11, 4),
(11, 10),
(12, 11),
(12, 12),
(13, 5),
(13, 9),
(14, 2),
(14, 7),
(15, 6),
(15, 11),
(16, 1),
(16, 2),
(17, 3),
(17, 10),
(18, 8),
(18, 11),
(19, 4),
(19, 6),
(20, 2),
(20, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `content`, `status`, `rating`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Aut exercitationem quam et maiores saepe rerum. Voluptatibus laboriosam quia laudantium voluptatem. Perspiciatis voluptas deleniti quibusdam. Eius iusto vel necessitatibus cupiditate.', 0, 1, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(2, 3, 2, 'Non necessitatibus consequatur ratione dicta. Necessitatibus et vero deleniti delectus cupiditate. Delectus tenetur sed pariatur eius. Eos in neque magnam enim. Et ut atque commodi quia cumque accusantium.', 1, 3, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(3, 2, 4, 'Possimus illum tempora corporis consectetur quibusdam. Earum consequuntur nostrum aut ut. Blanditiis optio hic in sint ut minus ipsa.', 0, 4, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(4, 3, 5, 'Qui quisquam et provident corporis laborum est. Sed totam repellendus sunt aut vero ratione non. Quos numquam ut omnis aut labore optio non.', 1, 4, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(5, 1, 7, 'Eum et numquam fuga in officiis ut. Est consequuntur aut iusto aut mollitia voluptas quos.', 0, 2, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(6, 2, 10, 'Ex est deleniti quo sunt nisi. Similique aut reprehenderit est ut. Culpa eum enim et eos. Id odit optio et magnam sed.', 0, 4, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(7, 4, 10, 'Iste aspernatur qui veritatis quasi. Eum aut facilis temporibus. Dolorem deserunt sit a mollitia illum.', 1, 5, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(8, 3, 11, 'Modi molestias officia tenetur ut quibusdam a ut. Et atque facere placeat esse provident magnam. Doloribus excepturi voluptates aut et rerum magni.', 1, 2, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(9, 1, 11, 'Earum consequuntur architecto ea quia labore et officia. Rerum sit est voluptas est. Vel aut incidunt ut dolores. Corrupti est repellat nostrum ullam.', 1, 3, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(10, 2, 12, 'Sunt placeat placeat vel accusantium. Non rerum consectetur omnis ea voluptates nam autem. Id corporis recusandae itaque. Nesciunt omnis est ut consequatur quod et.', 1, 3, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(11, 4, 12, 'Dolore nihil voluptatem et est odio et eum. Est officiis sint culpa repudiandae assumenda laboriosam.', 1, 1, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(12, 4, 16, 'Voluptatem dolor voluptate itaque et aut atque molestiae. Blanditiis quos est facilis sunt et perspiciatis eos. Doloribus exercitationem animi iusto laborum nam id et. At expedita perspiciatis et deserunt consectetur ut.', 1, 1, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(13, 3, 16, 'Praesentium est qui veniam ut quibusdam. Enim provident voluptas consequatur quam et ex debitis iste. Et doloribus repudiandae ipsum velit.', 1, 5, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(14, 3, 17, 'Facere aliquid voluptatem ipsa quia sed dolor. Sed aut quis esse corporis. Omnis nostrum minus non quo inventore illum cupiditate. Et odio esse delectus dolorem laboriosam deserunt laboriosam.', 1, 4, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(15, 1, 18, 'Quos est necessitatibus optio non itaque impedit vero. Aut et voluptate et ab vitae natus ut. Doloribus assumenda porro illo reprehenderit.', 1, 3, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(16, 2, 18, 'Aut ad accusantium ut. Explicabo veniam iste quibusdam minus ducimus.', 0, 4, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(17, 2, 19, 'Dignissimos voluptatem ut assumenda ea. Quaerat provident dolor et et amet placeat. Et velit nulla nostrum sequi odio sed. Harum eos blanditiis voluptas doloremque consequatur.', 1, 5, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16'),
(18, 1, 20, 'Et facilis odio et dolores et consequatur et. Voluptas doloribus doloremque rem dolores. Minus qui optio repellat ut iusto voluptatem.', 1, 1, NULL, '2023-02-25 07:25:16', '2023-02-25 07:25:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(2, 'supervisor', 'web', '2023-02-25 07:23:04', '2023-02-25 07:23:04'),
(3, 'user', 'web', '2023-02-25 07:23:07', '2023-02-25 07:23:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `display_name`, `key`, `value`, `details`, `type`, `section`) VALUES
(1, 'Site Title', 'site_title', 'Cart White', NULL, 'text', 'General'),
(2, 'Site Slogan', 'site_slogan', 'Amazing shop!', NULL, 'text', 'General'),
(3, 'Site Description', 'site_description', 'ORIGINAL PRODUCTS', NULL, 'text', 'General'),
(4, 'Site Keywords', 'site_keywords', 'Store, Shop, Product', NULL, 'text', 'General'),
(5, 'Site Email', 'site_email', 'info@alijumaan.com', NULL, 'text', 'General'),
(6, 'Site Status', 'site_status', 'Active', NULL, 'text', 'General'),
(7, 'Admin Title', 'admin_title', 'Cart White', NULL, 'text', 'General'),
(8, 'Phone Number', 'phone_number', '(966) 000 000 000', NULL, 'text', 'General'),
(9, 'Address', 'address', 'M57F+QM King Abdulaziz International Airport, Jeddah', NULL, 'text', 'General'),
(10, 'Map Latitude', 'address_altitude', '21.671914', NULL, 'text', 'General'),
(11, 'Map Longitude', 'address_longitude', '39.173875', NULL, 'text', 'General'),
(12, 'Google Maps API Key', 'google_map_api_key', NULL, NULL, 'text', 'Social account'),
(13, 'Google Recaptcha API key', 'google_recaptcha_api_key', NULL, NULL, 'text', 'Social account'),
(14, 'Google Analytics Client ID', 'google_analytics_client_id', NULL, NULL, 'text', 'Social account'),
(15, 'Twitter ID', 'twitter_id', 'https://www.twitter.com/Aalhbbash', NULL, 'text', 'Social account');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipping_companies`
--

CREATE TABLE `shipping_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fast` tinyint(1) NOT NULL DEFAULT 0,
  `cost` decimal(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shipping_companies`
--

INSERT INTO `shipping_companies` (`id`, `name`, `code`, `description`, `fast`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aramex Inside', 'ARA', '8 - 10 days', 0, '15.00', 1, '2023-02-25 07:25:19', '2023-02-25 07:25:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipping_company_country`
--

CREATE TABLE `shipping_company_country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dell', 'dell', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(2, 'Hp', 'hp', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(3, 'Acer', 'acer', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(4, 'Mac', 'mac', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(5, 'Sony', 'sony', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(6, 'Toshiba', 'toshiba', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(7, 'Asus', 'asus', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(8, 'Samsung', 'samsung', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(9, 'Apple', 'apple', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(10, 'Playstation', 'playstation', 1, '2023-02-25 07:25:13', '2023-02-25 07:25:13'),
(11, 'Xbox', 'xbox', 1, '2023-02-25 07:25:14', '2023-02-25 07:25:14'),
(12, 'Corsair', 'corsair', 1, '2023-02-25 07:25:14', '2023-02-25 07:25:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `receive_email` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `phone`, `password`, `user_image`, `status`, `receive_email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Dashboard', 'admin', 'admin@admin.com', '0505050505', '$2y$10$SUkpuu9oO/E3JvcNnyacJuN.dYh7RacnZ7A2lzz3tfcpvBcMe/.my', NULL, 1, 1, '2023-02-25 07:23:03', NULL, '2023-02-25 07:23:03', '2023-02-25 07:23:03'),
(2, 'Supervisor', 'Dashboard', 'supervisor', 'supervisor@supervisor.com', '0512345678', '$2y$10$TXTgWcnvNVKqsBl7xYMkIubNDDDVUK.I/7P5k6bvokwlCCVIPBE8O', NULL, 1, 1, '2023-02-25 07:23:04', NULL, '2023-02-25 07:23:04', '2023-02-25 07:23:04'),
(3, 'Ali', 'Al Qahtani', 'ali', 'ali@ali.com', '0505050500', '$2y$10$CGG.Hpxd.Qh0fPBIHW.sn.XcFRoDOGrrusVPnxPXdIAisW0ocm9wq', NULL, 1, 1, '2023-02-25 07:23:07', NULL, '2023-02-25 07:23:07', '2023-02-25 07:23:07'),
(4, 'Elisabeth', 'Jerde', 'orn.wendy', 'crist.beverly@example.org', '+1 (314) 560-3126', '$2y$10$nr2S.VmNGg0vJhaqyAux6egEpWXN286PvKqmNi3Lkwlb9rfATattG', NULL, 1, 1, '2023-02-25 07:23:07', 'sNqUO57I06', '2023-02-25 07:23:17', '2023-02-25 07:23:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Main',
  `default_address` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `links_title_unique` (`title`),
  ADD UNIQUE KEY `links_as_unique` (`as`),
  ADD UNIQUE KEY `links_to_unique` (`to`),
  ADD UNIQUE KEY `links_permission_title_unique` (`permission_title`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_user_address_id_foreign` (`user_address_id`),
  ADD KEY `orders_shipping_company_id_foreign` (`shipping_company_id`),
  ADD KEY `orders_payment_method_id_foreign` (`payment_method_id`);

--
-- Indeks untuk tabel `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_slug_index` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_code_unique` (`code`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_name_index` (`name`);

--
-- Indeks untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_companies_code_unique` (`code`),
  ADD UNIQUE KEY `shipping_companies_description_unique` (`description`);

--
-- Indeks untuk tabel `shipping_company_country`
--
ALTER TABLE `shipping_company_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_company_country_country_id_foreign` (`country_id`),
  ADD KEY `shipping_company_country_shipping_company_id_foreign` (`shipping_company_id`);

--
-- Indeks untuk tabel `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indeks untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`),
  ADD KEY `user_addresses_country_id_foreign` (`country_id`),
  ADD KEY `user_addresses_state_id_foreign` (`state_id`),
  ADD KEY `user_addresses_city_id_foreign` (`city_id`);

--
-- Indeks untuk tabel `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `shipping_companies`
--
ALTER TABLE `shipping_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shipping_company_country`
--
ALTER TABLE `shipping_company_country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_shipping_company_id_foreign` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_address_id_foreign` FOREIGN KEY (`user_address_id`) REFERENCES `user_addresses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shipping_company_country`
--
ALTER TABLE `shipping_company_country`
  ADD CONSTRAINT `shipping_company_country_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shipping_company_country_shipping_company_id_foreign` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_companies` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
