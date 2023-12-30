-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 05:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_ecommerce_wad`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `judul_website`, `logo`, `deskripsi`, `alamat`, `email`, `telepon`, `created_at`, `updated_at`, `atas_nama`, `no_rekening`) VALUES
(1, 'Ecommerce Laraavel', '17033481823.png', 'Zenna Shop is a very slick and clean e-commerce template with endless possibilities. Creating an awesome clothes store with this Theme is easy than you can imagine. And finally the subconscious is the mechanism through which thought impulses which are repeated regularly with feeling. And emotion are quickened. Duis turpis eros, tincidunt at, tempor a nisi. Fusce turpis mi, sollicitudin non volutpat id, ornare at nunc. Vestibulum tristique molestie mauris, non ultricies turpis consequat eget titik', 'JL. Cempaka No. 69', 'KickStop@gmail.com', '083822623170', NULL, '2023-12-23 09:16:22', 'Rei Han', '1234-1234-1234-1234');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `is_checkout` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_member`, `id_barang`, `jumlah`, `size`, `color`, `total`, `is_checkout`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 'S', 'Hitam', 5186, 1, '2023-01-14 03:19:40', '2023-01-17 04:41:29'),
(2, 2, 5, 1, 'S', 'Hitam', 25597, 1, '2023-01-14 03:27:39', '2023-01-17 04:41:29'),
(4, 3, 1, 1, 'S', 'Hitam', 14850, 1, '2023-12-21 22:57:54', '2023-12-27 01:16:35'),
(7, 3, 1, 1, 'S', 'Hitam', 14850, 1, '2023-12-21 23:42:59', '2023-12-27 01:16:35'),
(11, 3, 21, 1, '40', 'Granite', 6500000, 1, '2023-12-23 09:05:36', '2023-12-27 01:16:35'),
(12, 3, 14, 1, '41', 'White', 4500000, 1, '2023-12-27 01:14:30', '2023-12-27 01:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'FOR HER', 'Best Selling Deals', '17033277675.jpg', '2023-01-10 02:57:01', '2023-12-23 03:36:07'),
(2, 'FOR KIDS', 'Hot Trends', '17033290423.jpg', '2023-01-10 02:57:24', '2023-12-23 03:57:22'),
(3, 'FOR HIM', 'New Collection', '17033297715.jpg', '2023-01-10 02:57:41', '2023-12-23 04:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_member` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `nama_member`, `no_hp`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Asep', '08312312332', 'asep@gmail.com', '$2y$10$6Onep3VFDbVhXRsjlPiEKeXN935BeVxf0vIfWJjANhRI3rnLkAiMG', '2023-01-14 02:35:26', '2023-01-14 02:35:26'),
(3, 'Gesya', '081081081081', 'gesya@gmail.com', '$2y$10$BPBWOyHWWucNWoCRshMMpO1jfqEBI6zc0lcriXb/De3SJoz0i5p.G', '2023-12-21 22:57:13', '2023-12-21 22:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_09_30_084750_create_categories_table', 1),
(6, '2022_10_01_103505_create_subcategories_table', 1),
(7, '2022_10_05_084331_create_sliders_table', 1),
(8, '2022_10_05_090431_create_products_table', 1),
(9, '2022_10_05_092646_create_members_table', 1),
(10, '2022_10_05_093334_create_testimonis_table', 1),
(11, '2022_10_05_093744_create_reviews_table', 1),
(12, '2022_10_05_100248_create_orders_table', 1),
(13, '2022_10_05_100705_add_status_to_orders_table', 1),
(14, '2022_10_15_105217_modify_order_details_table', 1),
(15, '2022_10_25_100740_create_payments_table', 1),
(16, '2023_01_05_074910_create_about_table', 1),
(17, '2023_01_14_091405_add_rekening_to_about', 2),
(18, '2023_01_14_092329_drop_column_in_members', 3),
(20, '2023_01_14_094938_create_carts_table', 4),
(21, '2023_01_17_113902_add_id_member_to_payments', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_member`, `invoice`, `grand_total`, `created_at`, `updated_at`, `status`) VALUES
(8, 3, 23122735, 4541000, '2023-12-27 01:16:35', '2023-12-27 01:18:09', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_produk`, `jumlah`, `size`, `color`, `total`, `created_at`, `updated_at`) VALUES
(11, 8, 14, 1, '41', 'White', 4500000, '2023-12-27 01:16:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `detail_alamat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `id_order`, `jumlah`, `provinsi`, `kabupaten`, `kecamatan`, `detail_alamat`, `status`, `no_rekening`, `atas_nama`, `created_at`, `updated_at`, `id_member`) VALUES
(2, 2, 40783, '6', '152', '', 'Ut modi sed eligendi', 'DITERIMA', '1234-1234-1234-1234', 'Kang Kasep', '2023-01-17 04:41:49', '2023-12-23 09:10:51', 2),
(3, 3, 50700, '9', '23', '', 'Jalan Kebangsaan Barat', 'DITERIMA', '3241-3241-3241-3241', 'Gesya', '2023-12-22 02:40:54', '2023-12-22 02:41:25', 3),
(4, 3, 50700, '5', '135', '', 'Jalan Kebangsaan Barat', 'DITERIMA', '1209-1239-1320-1390', 'Rei', '2023-12-23 09:09:47', '2023-12-23 09:10:56', 3),
(5, 8, 4541000, '2', '30', '', 'Jalan Kebangsaan Barat', 'DITERIMA', '3241-3241-3241-3241', 'Gesya', '2023-12-27 01:17:13', '2023-12-27 01:17:46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_subkategori` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `bahan` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_kategori`, `id_subkategori`, `nama_barang`, `gambar`, `deskripsi`, `harga`, `diskon`, `bahan`, `tags`, `sku`, `ukuran`, `warna`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Nike Air Jordan 1 Jeans', '17033474503.jpg', 'The Nike Air Jordan 1 is an iconic and groundbreaking sneaker that has left an indelible mark on the world of sports, fashion, and sneaker culture since its debut in 1985. Designed by Peter Moore and crafted for basketball legend Michael Jordan, the Air Jordan 1 was the inaugural signature shoe in the extensive Air Jordan line produced by Nike.', 3500000, 0, 'Jeans', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '39,40,41,42,43,44', 'Dark Blue', '2023-01-10 03:05:55', '2023-12-23 09:04:10'),
(2, 2, 3, 'Adidas Kids SM Freak Carbon High EE', '17036505036.jpg', 'The Adidas Kids SM Freak Carbon High EE is a football cleat that combines advanced technology with a high-top design, offering both performance and ankle support on the field. This cleat is engineered to meet the demands of football players who require speed, agility, and stability during gameplay.', 1950000, 0, 'Carbon', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'Black', '2023-01-10 03:05:55', '2023-12-26 21:15:03'),
(3, 1, 2, 'Nike Legend Essential 2', '17035579815.jpg', 'The Nike Legend Essential 2 is a versatile and functional athletic shoe designed to meet the demands of various training activities. Engineered with a focus on performance and comfort, these sneakers are ideal for individuals engaged in gym workouts, cross-training, or other dynamic exercises.', 2500000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '39,40,41,42,43', 'Black', '2023-01-10 03:05:55', '2023-12-25 19:33:01'),
(4, 1, 2, 'NEW BALANCE 327', '17035588322.jpg', 'The New Balance 327 is a distinctive and stylish sneaker that seamlessly merges retro aesthetics with contemporary design, creating a shoe that appeals to both sneaker enthusiasts and fashion-forward individuals.', 2250000, 0, 'Suede', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '38,39,40,41,42', 'Orange', '2023-01-10 03:05:55', '2023-12-25 19:47:12'),
(5, 3, 4, 'Adidas Ultraboost 20', '17035571661.jpg', 'Lorem Ipsum Dolor Sit Amet', 3000000, 0, 'Boost', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '39,40,41,42,43', 'Black Red', '2023-01-10 03:05:55', '2023-12-25 19:19:26'),
(6, 3, 4, 'New Balance 997H Grey Day', '17035574294.jpg', 'The New Balance 997H Grey Day is a stylish and contemporary sneaker that embodies a perfect blend of fashion and comfort. This particular model is part of New Balance\'s Grey Day collection, showcasing a sleek and versatile design in shades of grey.', 2750000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '41,42,43,44,45', 'Grey', '2023-01-10 03:05:55', '2023-12-25 19:23:49'),
(7, 1, 1, 'Timberland Women Kinsley', '17035623923.jpg', 'The Timberland Women\'s Kinsley Boots represent a perfect blend of rugged durability and stylish femininity. These boots, designed for the modern woman, seamlessly combine the iconic Timberland craftsmanship with contemporary design elements.', 2500000, 0, 'Leather', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '38,39,40,41,42', 'Cream', '2023-01-10 03:05:55', '2023-12-25 20:46:32'),
(8, 2, 3, 'Adidas Predator 19.1 \'Hard Wired', '17036506194.jpg', 'The Sky Blue Adidas Predator 19.1 \'Hard Wired\' is a soccer cleat that epitomizes a harmonious blend of cutting-edge technology and eye-catching aesthetics. Designed for precision and control on the soccer field, this particular iteration boasts a striking Bright Cyan colorway that instantly commands attention.', 2250000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'Sky Blue', '2023-01-10 03:05:55', '2023-12-26 21:16:59'),
(10, 2, 3, 'Nike Zoom Kyrie Irving 5', '17036631435.jpg', 'The Nike Zoom Kyrie Irving 5 is a signature basketball shoe designed in collaboration with NBA star Kyrie Irving. Combining style and performance, these basketball shoes are crafted to meet the demands of Kyrie\'s dynamic playing style and provide wearers with a unique blend of comfort and responsiveness on the court.', 2500000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'Black', '2023-01-10 03:05:55', '2023-12-27 00:45:43'),
(11, 1, 2, 'Nike Aiforce 1 Shadow', '17035593462.jpg', 'The Nike Air Force 1 Shadow is a contemporary and playful iteration of the iconic Air Force 1, offering a unique and bold twist on the classic silhouette. This sneaker is renowned for its vibrant design, exaggerated features, and layered aesthetic.', 2500000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '39,40,41,42,43', 'Pink (Mix)', '2023-01-10 03:05:55', '2023-12-25 19:55:46'),
(12, 1, 2, 'Adidas Yeezy 350 V2', '17035597425.jpg', 'Adidas Yeezy, a collaborative sneaker line between the German sportswear giant Adidas and the globally renowned musician and fashion designer Kanye West, represents the epitome of modern sneaker culture. Launched in 2015, the Yeezy brand has rapidly become synonymous with innovation, style, and exclusivity in the sneaker industry.', 5000000, 0, 'Suede', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '38,39,40,41,42,43', 'Pink', '2023-01-10 03:05:55', '2023-12-25 20:02:22'),
(14, 3, 4, 'Adidas NMD R1', '17035567155.jpg', 'The Adidas NMD R1  is a running shoe variant that reflects a blend of modern style and high comfort. Its design showcases a futuristic and innovative aesthetic while maintaining the brand\'s legacy of quality and performance.', 4500000, 0, 'Primeknit', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '41,42,43,44,45', 'White', '2023-01-10 03:05:55', '2023-12-25 19:11:55'),
(15, 1, 2, 'Pharrell X Adidas NMD Human Race Holi Festival', '17035581886.jpg', 'Adidas NMD Human Race, especially those designed in collaboration with Pharrell Williams, are known for their unique and vibrant designs. Pharrell\'s influence often brings bold colors, inspiring messages, and cultural significance to the sneakers. The Human Race series typically features a distinctive \"HU\" logo and text across the upper, conveying messages of unity and diversity.', 5250000, 0, 'Primeknit', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44', 'Pink', '2023-01-10 03:05:55', '2023-12-25 19:36:28'),
(16, 1, 2, 'Nike Air Max 90', '17035585405.jpg', 'The Nike Air Max 90, often referred to simply as the \"Air Max 90\" or \"AM90,\" is an iconic and enduring sneaker that has left an indelible mark on the world of athletic footwear. Introduced in the early 1990s as part of Nike\'s Air Max series, the Air Max 90 has become a timeless classic celebrated for its distinct design and innovative technology.', 2750000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '38,39,40,41,42', 'Pink', '2023-01-10 03:05:55', '2023-12-25 19:42:20'),
(17, 2, 3, 'Adidas Kids SM Freak Carbon High EE', '17036505033.jpg', 'The Adidas Kids SM Freak Carbon High EE is a football cleat that combines advanced technology with a high-top design, offering both performance and ankle support on the field. This cleat is engineered to meet the demands of football players who require speed, agility, and stability during gameplay.', 1950000, 0, 'Carbon', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'Black', '2023-01-10 03:05:55', '2023-12-26 21:15:03'),
(18, 1, 1, 'Hush Puppies Boots', '17035625278.jpg', 'The Hush Puppies Boots are a stylish and comfortable footwear option that seamlessly merges fashion with functionality. Known for their commitment to casual elegance and quality craftsmanship, Hush Puppies boots cater to those seeking both style and comfort in their everyday footwear.', 2250000, 0, 'Leather', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '39,40,41,42,43,44', 'Brown', '2023-01-10 03:05:55', '2023-12-25 20:48:47'),
(19, 2, 3, 'Adidas Kids X Ghosted.1 Fluroskin SG Soft Ground Football Boots', '17036510915.jpg', 'The Adidas Kids X Ghosted.1 Fluroskin SG Soft Ground Football Boots are specially designed soccer cleats for young players who want to unleash their speed and agility on the soccer field. These boots offer a combination of advanced technology, a dynamic design, and specialized features suitable for soft ground conditions.', 3150000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'White Gold', '2023-01-10 03:05:55', '2023-12-26 21:24:51'),
(20, 2, 3, 'On Cloud X3 Running Shoes for Kids', '17036630423.jpg', 'Ultralight, highly reactive, with better fit and breathability. It’s born from running, but made for everything.', 2250000, 0, 'Primeknit', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '36,37,38,39,40,41', 'White', '2023-01-10 03:05:55', '2023-12-27 00:44:02'),
(21, 3, 4, 'Adidas Yeezy 350 V2', '17033473893.jpg', 'Adidas Yeezy, a collaborative sneaker line between the German sportswear giant Adidas and the globally renowned musician and fashion designer Kanye West, represents the epitome of modern sneaker culture. Launched in 2015, the Yeezy brand has rapidly become synonymous with innovation, style, and exclusivity in the sneaker industry.', 6500000, 0, 'Suede', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44,45', 'Granite', '2023-12-23 09:03:09', '2023-12-23 09:03:09'),
(22, 3, 4, 'Nike Air Jordan 1 Mid', '17035628231.jpg', 'The Nike Air Jordan 1 is an iconic and groundbreaking sneaker that has left an indelible mark on the world of sports, fashion, and sneaker culture since its debut in 1985. Designed by Peter Moore and crafted for basketball legend Michael Jordan, the Air Jordan 1 was the inaugural signature shoe in the extensive Air Jordan line produced by Nike.', 4500000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '42,43,44,45,36', 'Black on red', '2023-12-25 20:53:43', '2023-12-25 20:53:43'),
(23, 3, 5, 'Vans Two Color Block 90\'s', '17035636588.jpg', 'Vans shoes are an iconic and enduring symbol in the world of footwear, known for their classic design, comfort, and cultural significance. With a history dating back to the 1960s, Vans has evolved from a skateboarding and surfer culture staple to a globally recognized brand celebrated for its versatility and style.', 2500000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44', 'Cream on Black', '2023-12-25 21:04:35', '2023-12-25 21:07:38'),
(24, 3, 5, 'Converse x Offwhite High', '17035635781.jpg', 'The Converse x Off-White collaboration represents a fusion of two iconic brands, resulting in a footwear collection that seamlessly blends streetwear aesthetics with high-fashion sensibilities. This collaboration typically features Converse silhouettes reimagined with the avant-garde and deconstructed design elements characteristic of Off-White, the fashion label created by Virgil Abloh.', 6000000, 0, 'Synthetic', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44,45', 'White', '2023-12-25 21:06:18', '2023-12-25 21:06:18'),
(25, 3, 5, 'Nike Aiforce 1', '17036637087.jpg', 'The Nike Air Force 1 is an iconic and classic sneaker that has left an indelible mark on the world of athletic footwear. Introduced by Nike in 1982, the Air Force 1 has become a timeless symbol of style, comfort, and cultural significance.', 2000000, 0, 'Leather', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44,45', 'Yellow', '2023-12-27 00:54:16', '2023-12-27 00:55:08'),
(26, 3, 5, 'Vans VANS Old Skool Racing Red & True White Shoes', '17036638359.jpg', 'The Vans Old Skool Racing Red & True White Shoes combine classic style with a bold and vibrant colorway, making them a standout choice for sneaker enthusiasts. This iconic silhouette from Vans, known for its timeless design, is given a fresh and energetic twist with the Racing Red and True White color combination.', 1500000, 0, 'Primeknit', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '41,42,43,44,45', 'Red', '2023-12-27 00:57:15', '2023-12-27 00:57:15'),
(27, 3, 4, 'Nike Air Jordan 1 x Off-White Chicago High', '17036642799.jpg', 'The Nike Air Jordan 1 x Off-White Chicago High is a highly coveted and iconic collaboration between Nike\'s Air Jordan line and Virgil Abloh\'s Off-White brand. This sneaker represents a fusion of basketball heritage, avant-garde design, and streetwear culture, creating a shoe that stands at the intersection of sport and fashion.', 11000000, 0, 'Leather', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '41,42,43,44,45', 'Red', '2023-12-27 01:04:39', '2023-12-27 01:04:39'),
(28, 3, 4, 'Nike Air Jordan 1 Maison Château Rouge', '17036644447.jpg', 'The Nike Air Jordan 1 Maison Château Rouge is a unique and eye-catching iteration of the iconic Air Jordan 1 silhouette. This special release is part of Jordan Brand\'s collaboration with Maison Château Rouge, a Paris-based label known for its vibrant designs and cultural influences.', 9000000, 0, 'Leather', 'Lorem,Ipsum,Dolor,Sit,Amet', 'abcdefg', '40,41,42,43,44,45', 'Blue Cream', '2023-12-27 01:07:24', '2023-12-27 01:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_slider` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `nama_slider`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Great Sneakers 2024', 'New Arrivals Collection', '17033269135.jpg', '2023-01-10 02:55:31', '2023-12-23 04:35:21'),
(2, 'Exclusive Products', 'Get awesome items only in KickStop shop', '17033272076.jpg', '2023-01-10 02:55:48', '2023-12-23 04:10:25'),
(3, 'Enjoy Online Shopping', 'KickStop is perfectly shoes e-commerce', '17033273497.jpg', '2023-01-10 02:56:05', '2023-12-23 04:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_subkategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `id_kategori`, `nama_subkategori`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'BOOTS', 'Lorem ipsum dolor sit amet', '17033384066.jpg', '2023-01-10 02:58:14', '2023-12-23 06:33:26'),
(2, 1, 'SNEAKERS (WOMEN)', 'Lorem ipsum dolor sit amet', '17033385467.jpg', '2023-01-10 02:58:33', '2023-12-23 08:41:40'),
(3, 2, 'SPORT', 'Lorem ipsum dolor sit amet', '17036500634.jpg', '2023-01-10 02:58:46', '2023-12-26 21:07:43'),
(4, 3, 'SNEAKERS (MEN)', 'Lorem ipsum dolor sit amet', '17033387683.jpg', '2023-01-10 02:59:02', '2023-12-23 08:42:01'),
(5, 3, 'CASUAL', 'lorem ipsum', '17033391925.jpg', '2023-12-23 06:46:32', '2023-12-23 06:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_testimoni` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonis`
--

INSERT INTO `testimonis` (`id`, `nama_testimoni`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'CEO of Organization', 'I’am amazed, I should say thank you so much for your awesome template. Design is so good and neat, every detail has been taken care these team are realy amazing and talented! I will work only with this agency.', '16733447928.jpg', '2023-01-10 02:59:52', '2023-01-10 02:59:52'),
(2, 'Art Director', 'This is the excellent theme. It has many useful features that can be use for any kind of business. The support is just amazing and design', '16733448065.jpg', '2023-01-10 03:00:06', '2023-01-10 03:00:06'),
(3, 'PR Agent', 'Needless to say, beautifully designed theme that serves many purpose. Even more sutomers support is the best! Highly recommend this theme to anyone who enjoys a fine product', '16733448198.jpg', '2023-01-10 03:00:19', '2023-01-10 03:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', '2023-01-10 02:53:50', '$2a$12$SacqCQcbdU9WUuYIEE0Fc.U/3T14SuixzjmQc/XKNcvj4hoxeOT0O', NULL, '2023-01-10 02:53:50', '2023-01-10 02:53:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonis`
--
ALTER TABLE `testimonis`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
