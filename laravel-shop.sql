-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2023 lúc 08:48 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel-shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, 4000000, NULL, NULL),
(2, 2, 6, 1, 20000000, NULL, NULL),
(3, 3, 3, 1, 4000000, NULL, NULL),
(4, 3, 6, 1, 20000000, NULL, NULL),
(5, 4, 3, 1, 4000000, NULL, NULL),
(6, 4, 6, 1, 20000000, NULL, NULL),
(7, 5, 3, 1, 4000000, NULL, NULL),
(8, 5, 6, 1, 20000000, NULL, NULL),
(9, 6, 3, 1, 4000000, NULL, NULL),
(10, 6, 6, 1, 20000000, NULL, NULL),
(11, 7, 72, 1, 15000000, NULL, NULL),
(12, 8, 74, 1, 11500000, NULL, NULL),
(13, 9, 8, 1, 17999000, NULL, NULL),
(14, 10, 8, 1, 17999000, NULL, NULL),
(15, 11, 66, 2, 5000000, NULL, NULL),
(16, 12, 69, 1, 20000000, NULL, NULL),
(17, 13, 69, 1, 20000000, NULL, NULL),
(18, 14, 8, 1, 17999000, NULL, NULL),
(19, 15, 8, 3, 17999000, NULL, NULL),
(20, 16, 8, 1, 17999000, NULL, NULL),
(21, 17, 8, 1, 17999000, NULL, NULL),
(22, 18, 8, 2, 17999000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Hoan Tran', '0966320416', 'Cổng khu tập thể A5 chẵn', 'hoan.tm207674@sis.hust.edu.vn', 'sádds', '2023-07-19 05:32:09', '2023-07-19 05:32:09'),
(3, 'Hoan Tran', '0966320416', 'Cổng khu tập thể A5 chẵn', 'hoan.tm207674@sis.hust.edu.vn', 'sádds', '2023-07-19 05:32:39', '2023-07-19 05:32:39'),
(4, 'Hoan Tran', '0966320416', 'Cổng khu tập thể A5 chẵn', 'hoan.tm207674@sis.hust.edu.vn', 'sádds', '2023-07-19 05:32:53', '2023-07-19 05:32:53'),
(5, 'Nguyễn Doãn Chiến', '0968776125', 'Cổng khu tập thể A5 chẵn', 'hoan.tm207674@sis.hust.edu.vn', 'áaaaadfggsd', '2023-07-19 05:33:22', '2023-07-19 05:33:22'),
(6, 'Hoan Tran', '0966320416', 'Cổng khu tập thể A5 chẵn', 'hoan.tm207674@sis.hust.edu.vn', 'aaaa', '2023-07-19 06:32:33', '2023-07-19 06:32:33'),
(7, 'Trần Minh Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'aaa', '2023-07-24 03:40:59', '2023-07-24 03:40:59'),
(8, 'Trần Minh Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'âhhha', '2023-08-09 08:40:33', '2023-08-09 08:40:33'),
(9, 'Trần Minh Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'ddda', '2023-08-09 18:01:44', '2023-08-09 18:01:44'),
(10, 'Huy', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'gghhg', '2023-08-09 18:27:18', '2023-08-09 18:27:18'),
(11, 'Khuy', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'gggg', '2023-08-09 14:30:59', '2023-08-09 14:30:59'),
(12, 'Minh Hoàna', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'gggg', '2023-08-10 03:32:16', '2023-08-10 03:32:16'),
(13, 'vih Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'hgghgh', '2023-08-10 01:38:14', '2023-08-10 01:38:14'),
(14, 'Trần Minh Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'hghs', '2023-08-10 07:31:16', '2023-08-10 07:31:16'),
(15, 'Trần Minh Hoàn', '0966320416', 'Cổng khu tập thể A5 chẵn', 'tmhoanf@gmail.com', 'jhgfss', '2023-08-10 07:44:54', '2023-08-10 07:44:54'),
(16, 'Hoan Tran', '0966320416', '253 ngõ văn chương, Phường Văn Chương, Quận Đống Đa', 'tranhoan13092002@gmail.com', 'aada', '2023-10-08 06:35:42', '2023-10-08 06:35:42'),
(17, 'Hoan Tran', '0966320416', '253 ngõ văn chương, Phường Văn Chương, Quận Đống Đa', 'tranhoan13092002@gmail.com', 'fgfg', '2023-10-08 06:36:24', '2023-10-08 06:36:24'),
(18, 'Hoan Tran', '0966320416', '253 ngõ văn chương, Phường Văn Chương, Quận Đống Đa', 'tranhoan13092002@gmail.com', 'hgf', '2023-10-08 06:39:54', '2023-10-08 06:39:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(11, 'default', '{\"uuid\":\"cd6c9f99-319a-4357-8538-6e984eca87cb\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:26:\\\"tranhoan13092002@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-10-08 13:36:26.251837\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Jakarta\\\";}}\"}}', 0, NULL, 1696746986, 1696746984),
(12, 'default', '{\"uuid\":\"43571277-f433-4504-b608-e33c1c1e9018\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:26:\\\"tranhoan13092002@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-10-08 13:39:56.081330\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Jakarta\\\";}}\"}}', 0, NULL, 1696747196, 1696747194);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`) VALUES
(2, 'Điện Thoại', 0, 'Điện Thoại LG', 'Điện Thoại LG', 1),
(3, 'Laptop', 0, 'Laptop', 'Laptop', 1),
(4, 'Laptop MSI', 3, '', '', 1),
(5, 'Laptop ASUS', 3, 'Laptop ASUSLaptop ASUS1', '<p>Laptop ASUS1</p>', 1),
(6, 'Điện Thoại SAMSUNG', 2, 'Điện Thoại SAMSUNG', 'Điện Thoại SAMSUNG', 1),
(7, 'Điện ThoạI IPHONE', 2, 'Điện ThoạI IPHONE', 'Điện ThoạI IPHONE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_26_121348_create_menus_table', 1),
(6, '2021_05_29_085033_create_products_table', 1),
(7, '2021_05_29_085458_update_table_product', 1),
(8, '2021_05_30_091352_create_sliders_table', 1),
(9, '2021_06_07_115343_create_customers_table', 1),
(10, '2021_06_07_115353_create_carts_table', 1),
(11, '2021_06_11_035047_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(3, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-19 03:05:49', '2023-07-24 00:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(6, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-19 03:09:45', '2023-07-24 03:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(7, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-19 03:10:27', '2023-07-24 00:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(8, 'Điện Thoại SAMSUNG S22 Ultra', 'Samsung Galaxy S23 Ultra 5G 256GB là chiếc smartphone cao cấp nhất của nhà Samsung, sở hữu cấu hình không tưởng với con chip khủng được Qualcomm tối ưu riêng cho dòng Galaxy và camera lên đến 200 MP, xứng danh là chiếc flagship Android được mong đợi nhất trong năm 2023.', '<h3>Tạo h&igrave;nh sang trọng đầy tinh tế</h3>\r\n\r\n<p>Về thiết kế th&igrave; Samsung Galaxy S23 Ultra sẽ tiếp tục thừa hưởng kiểu d&aacute;ng sang trọng đến từ thế hệ trước, vẫn l&agrave; bộ khung kim loại, mặt lưng k&iacute;nh c&ugrave;ng kiểu tạo h&igrave;nh bo cong nhẹ ở cạnh b&ecirc;n v&agrave; m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020326.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế sang trọng - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020326.jpg\" title=\"Thiết kế sang trọng - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n kiểu bo cong n&agrave;y sẽ hơi thi&ecirc;n hướng phẳng một ch&uacute;t so với S22 Ultra, điều n&agrave;y mang đến cho m&igrave;nh trải nghiệm cầm nắm chắc tay hơn, song cũng mang lại cảm gi&aacute;c dễ chịu cho những l&uacute;c sử dụng li&ecirc;n tục trong thời gian d&agrave;i.</p>\r\n\r\n<p>Về m&agrave;u sắc, năm nay Samsung cũng đ&atilde; cho ra c&aacute;c phi&ecirc;n bản m&agrave;u như: T&iacute;m, kem, xanh v&agrave; đen. Nh&igrave;n chung th&igrave; đ&acirc;y l&agrave; những m&agrave;u sắc cực kỳ sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn trẻ năng động, mạnh mẽ v&agrave; đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng đang l&agrave; doanh nh&acirc;n bởi ngoại h&igrave;nh đẳng cấp v&agrave; thanh lịch.</p>\r\n\r\n<p>Hiện tr&ecirc;n tay m&igrave;nh l&agrave; bản m&agrave;u xanh đặc trưng của Samsung, m&agrave;u n&agrave;y vừa đem đến sự trẻ trung tươi mới v&agrave; cũng vừa mang tr&ecirc;n m&igrave;nh một gam m&agrave;u tối để c&oacute; thể giữ được vẻ huyền b&iacute; đầy m&ecirc; hoặc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020336.jpg\" onclick=\"return false;\"><img alt=\"Màu sắc mê hoặc - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020336.jpg\" title=\"Màu sắc mê hoặc - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Ở mặt lưng ta c&oacute; thể thấy Samsung trang bị cho m&aacute;y một lớp k&iacute;nh cường lực c&oacute; khả năng chống va đập tốt, được l&agrave;m theo kiểu nh&aacute;m nhẹ gi&uacute;p cho việc b&aacute;m dấu v&acirc;n tay gần như kh&ocirc;ng thấy xuất hiện trong qu&aacute; tr&igrave;nh m&igrave;nh trải nghiệm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020340.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng kính nhám - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020340.jpg\" title=\"Mặt lưng kính nhám - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Về phần thiết kế camera th&igrave; năm nay h&atilde;ng gần như kh&ocirc;ng c&oacute; sự thay đổi g&igrave; so với Galaxy S22 Ultra, vẫn l&agrave; cụm camera được bố tr&iacute; ri&ecirc;ng lẻ v&agrave; được l&agrave;m nh&ocirc; l&ecirc;n kh&aacute; cao.</p>\r\n\r\n<p>Tuy nhi&ecirc;n xung quanh c&aacute;c ống k&iacute;nh sẽ được th&ecirc;m một lớp viền cao hơn so với bề mặt camera, điều n&agrave;y gi&uacute;p hạn chế việc trầy xước bề mặt ống k&iacute;nh rất tốt n&ecirc;n m&igrave;nh cũng y&ecirc;n t&acirc;m hơn trong l&uacute;c d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020347.jpg\" onclick=\"return false;\"><img alt=\"Vị trí camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020347.jpg\" title=\"Vị trí camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>C&ograve;n về viền xung quanh m&aacute;y, Galaxy S23 Ultra được bao bọc bởi bộ khung l&agrave;m từ nh&ocirc;m với đặc t&iacute;nh bền bỉ, chắc chắn c&ugrave;ng trọng lượng được tối ưu cực kỳ hiệu quả.</p>\r\n\r\n<p>Bộ khung n&agrave;y được l&agrave;m theo kiểu b&oacute;ng lo&aacute;ng gi&uacute;p m&aacute;y c&oacute; th&ecirc;m một điểm nhấn đầy nổi bật về thiết kế. Cảm gi&aacute;c khi sờ v&agrave;o bộ khung như được phủ một lớp mạ b&oacute;ng xung quanh, v&igrave; thế đ&acirc;y sẽ kh&ocirc;ng phải l&agrave; vị tr&iacute; dễ xước như một bộ phận người người d&ugrave;ng ho&agrave;i nghi.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020353.jpg\" onclick=\"return false;\"><img alt=\"Khung viền bo cong - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020353.jpg\" title=\"Khung viền bo cong - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<h3>Hiệu năng bức ph&aacute; mọi giới hạn</h3>\r\n\r\n<p>Tại thời điểm ra mắt sản phẩm, Galaxy S23 Ultra c&oacute; thể xem l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd?g=android\" target=\"_blank\" title=\"Tham khảo điện thoại Android đang kinh doanh tại Thế Giới Di Động\">điện thoại Android</a>&nbsp;sở hữu hiệu năng mạnh mẽ bậc nhất thị trường. Điều n&agrave;y l&agrave; do Samsung đ&atilde; trang bị con chip Snapdragon 8 Gen 2 t&acirc;n tiến được nh&agrave; Qualcomm tối ưu&nbsp;ri&ecirc;ng biệt cho d&ograve;ng sản phẩm Galaxy S series, mang lại hiệu năng vượt trội&nbsp;so với Snapdragon 8 Gen 2 th&ocirc;ng thường.</p>\r\n\r\n<p>Trước ti&ecirc;n l&agrave; về phần trải nghiệm cơ bản với những t&aacute;c vụ như: Xem phim, lướt web, chụp ảnh hay nghe gọi nhắn tin th&igrave; dường như m&aacute;y kh&ocirc;ng gặp phải bất kỳ kh&oacute; khăn n&agrave;o cả, mọi thứ đều được diễn ra su&ocirc;n sẻ v&agrave; hết sức mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020358.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mượt mà - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020358.jpg\" title=\"Hiệu năng mượt mà - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Để c&oacute; thể đ&aacute;nh gi&aacute; cấu h&igrave;nh của điện thoại một c&aacute;ch trực quan hơn bằng những con số, vậy n&ecirc;n m&igrave;nh cũng đ&atilde; test qua một v&agrave;i phần mềm kiểm tra hiệu năng với kết quả đạt được như sau: 1767 (đơn nh&acirc;n), 4314 (đa nh&acirc;n) tr&ecirc;n Geekbench 6 v&agrave; 15635 điểm tr&ecirc;n PCMark.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020403.jpg\" onclick=\"return false;\"><img alt=\"Điểm đánh giá hiệu năng - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020403.jpg\" title=\"Điểm đánh giá hiệu năng - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Ở thời điểm hiện tại (04/2023), đ&acirc;y quả thực l&agrave; những con số rất cao v&agrave; c&oacute; &iacute;t d&ograve;ng m&aacute;y n&agrave;o sở hữu được mức điểm lớn như vậy. Nhờ v&agrave;o đ&oacute; m&agrave; Galaxy S23 Ultra tự tin c&oacute; thể xử l&yacute; tốt bất kỳ t&aacute;c vụ n&agrave;o v&agrave;o thời điểm n&agrave;y, hay thậm ch&iacute; l&agrave; mang đến trải nghiệm sử dụng mượt m&agrave; cho tới 2 - 3 năm hoặc l&acirc;u hơn t&ugrave;y v&agrave;o mục đ&iacute;ch sử dụng.</p>\r\n\r\n<p>Đến với phần trải nghiệm chơi game th&igrave; Snapdragon 8 Gen 2 dường như đ&atilde; c&oacute; cơ hội bộc lộ gần hết sức mạnh của chip, điều n&agrave;y được minh chứng trong l&uacute;c m&igrave;nh chơi qua c&aacute;c tựa game như Li&ecirc;n Qu&acirc;n Mobile v&agrave; Genshin Impact ở mức đồ họa cao nhất.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020407.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020407.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Ở Li&ecirc;n Qu&acirc;n Mobile, m&aacute;y cho ph&eacute;p c&agrave;i đặt mức đồ họa tối đa th&ocirc;ng qua c&aacute;c mức độ như sau: Độ ph&acirc;n giải si&ecirc;u cao, chất lượng h&igrave;nh ảnh HD v&agrave; chất lượng chi tiết cao. Điều n&agrave;y g&oacute;p phần l&agrave;m tăng trải nghiệm chơi game của m&igrave;nh khi mọi nội dung đều được hiển thị tốt nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020412.jpg\" onclick=\"return false;\"><img alt=\"Bảng cài dặt cấu hình - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020412.jpg\" title=\"Bảng cài dặt cấu hình - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Sau khoảng 2 v&aacute;n game li&ecirc;n tục tr&ecirc;n Galaxy S23 Ultra th&igrave; m&igrave;nh thấy dường như m&aacute;y kh&ocirc;ng gặp phải bất kỳ hiện tượng giật lag hay chậm đơ, kể cả những l&uacute;c giao tranh tổng, khi m&agrave; mọi hiệu ứng h&igrave;nh ảnh từ mọi tướng đều được hiển thị gần như c&ugrave;ng l&uacute;c.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020646.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020646.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Biểu đồ ghi nhận tốc độ khung h&igrave;nh khi chơi Li&ecirc;n Qu&acirc;n ở l&uacute;c n&agrave;y thể hiện mọi thứ diễn ra rất ổn, kh&ocirc;ng c&oacute; sự biến động nhiều hay bị drop qu&aacute; s&acirc;u để g&acirc;y ra giật lag, FPS lu&ocirc;n được dao động trong khoảng 59 - 64.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020642.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020642.jpg\" title=\"Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Tiếp đến l&agrave; tựa game Genshin Impact c&oacute; hơi kh&oacute; khăn hơn đ&ocirc;i ch&uacute;t, mức cấu h&igrave;nh l&uacute;c n&agrave;y m&igrave;nh c&agrave;i đặt cho m&aacute;y l&agrave; gần như cao nhất. Đ&acirc;y c&oacute; thể xem l&agrave; mức đồ họa kh&ocirc;ng tưởng, chỉ c&oacute; thể c&agrave;i đặt v&agrave; hoạt động tốt tr&ecirc;n những d&ograve;ng m&aacute;y cao cấp như Galaxy S23 Ultra.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020653.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020653.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Th&ocirc;ng qua trải nghiệm thực tế th&igrave; m&igrave;nh thấy Galaxy S23 Ultra xử l&yacute; tựa game n&agrave;y rất tốt, tuy chỉ c&oacute; xuất hiện một ch&uacute;t khựng nhẹ trong l&uacute;c load bản đồ ở l&uacute;c đầu, nhưng n&oacute; kh&ocirc;ng phải l&agrave; điều g&igrave; qu&aacute; to t&aacute;c ảnh hưởng trải nghiệm của m&igrave;nh.</p>\r\n\r\n<p>Mọi thứ l&uacute;c n&agrave;y được Galaxy S23 Ultra xử l&yacute; ổn, tốc độ khung h&igrave;nh lu&ocirc;n được dao động ổn định trong tầm 27 - 31 FPS, m&igrave;nh cảm thấy h&igrave;nh ảnh hiển thị rất mượt mắt, mọi thao t&aacute;c điều hướng nh&acirc;n vật cũng được phản hồi nhanh ch&oacute;ng v&agrave; gần như kh&ocirc;ng thấy xuất hiện độ trễ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020659.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020659.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Về vấn đề sinh nhiệt khi sử dụng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại di động đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;ở c&aacute;c t&aacute;c vụ n&acirc;ng cao th&igrave; Galaxy S23 Ultra dường như đ&atilde; tối ưu phần n&agrave;y rất tốt, trong l&uacute;c m&igrave;nh chơi game ở cấu h&igrave;nh cao li&ecirc;n tục trong 2 tiếng, c&oacute; kết nối wifi, độ s&aacute;ng m&agrave;n h&igrave;nh trung b&igrave;nh v&agrave; thực hiện trong m&ocirc;i trường c&oacute; nhiệt độ 26 - 27 độ th&igrave; m&aacute;y vẫn cho ra mức nhiệt thấp, dường như chỉ dừng lại ở mức ấm tay nhẹ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020704.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020704.jpg\" title=\"Trải nghiệm chơi game - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>L&agrave; một chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" title=\"Tham khảo điện thoại RAM 8GB đang kinh doanh tại Thế Giới Di Động\">điện thoại RAM 8 GB</a>, Galaxy S23 Ultra ho&agrave;n to&agrave;n c&oacute; thể đủ sức xử l&yacute; t&aacute;c vụ đa nhiệm một c&aacute;ch hiệu quả v&agrave; nhanh ch&oacute;ng, với khoảng 15 - 18 ứng dụng (ngoại trừ game) được mở c&ugrave;ng l&uacute;c th&igrave; sau tầm 20 ph&uacute;t mở lại, m&aacute;y vẫn kh&ocirc;ng hề xuất hiện t&igrave;nh trạng tải lại ứng dụng từ đầu v&agrave; đ&acirc;y cũng l&agrave; điều m&igrave;nh hết sức ngạc nhi&ecirc;n khi sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020709.jpg\" onclick=\"return false;\"><img alt=\"Đa nhiệm mượt mà - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020709.jpg\" title=\"Đa nhiệm mượt mà - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<h3>Trang bị camera 200 MP v&agrave; khả năng quay video 8K</h3>\r\n\r\n<p>Về hệ thống ống k&iacute;nh, Galaxy S23 Ultra được trang bị 3 camera ở mặt sau với th&ocirc;ng số lần lượt l&agrave;: 200 MP cho camera ch&iacute;nh, một camera 12 MP g&oacute;c si&ecirc;u rộng c&ugrave;ng hai camera tele c&oacute; chung độ ph&acirc;n giải 10 MP để hỗ trợ chụp ảnh zoom quang học v&agrave; x&oacute;a ph&ocirc;ng.</p>\r\n\r\n<p>Đầu ti&ecirc;n th&igrave; sẽ l&agrave; chế độ chụp mặc định ở điều kiện ngoại cảnh, với m&ocirc;i trường c&oacute; đầy đủ &aacute;nh s&aacute;ng th&igrave; kết quả thu lại l&agrave;m cho m&igrave;nh rất ưng, mọi thứ đều thể hiện chi tiết, m&agrave;u sắc được n&acirc;ng tone nhẹ gi&uacute;p bức h&igrave;nh tr&ocirc;ng tươi mới v&agrave; đầy sức sống hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020721.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020721.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Với kết quả cho ra th&igrave; m&igrave;nh ho&agrave;n to&agrave;n c&oacute; thể sử dụng ngay để đăng tải l&ecirc;n mạng x&atilde; hội m&agrave; kh&ocirc;ng cần th&ocirc;ng qua nhiều bước hậu kỳ, ngo&agrave;i ra bạn cũng c&oacute; thể sử dụng th&ecirc;m nhiều t&ugrave;y chọn bộ lọc m&agrave;u kh&aacute;c để t&igrave;m ra gam m&agrave;u ưng &yacute; nhất cho khung cảnh hay chủ đề bạn hướng tới.</p>\r\n\r\n<p>Tiếp đến sẽ l&agrave; chế độ chụp g&oacute;c si&ecirc;u rộng, ở phần t&iacute;nh năng n&agrave;y th&igrave; m&aacute;y cho ph&eacute;p m&igrave;nh c&oacute; thể thu lại c&aacute;c bức ảnh c&oacute; độ bao qu&aacute;t lớn, kết quả chụp được gần như thu lại to&agrave;n bộ những g&igrave; xuất hiện trước mắt m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020727.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020727.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Ở những vị tr&iacute; xung quanh viền mở rộng th&igrave; sẽ kh&ocirc;ng bị b&oacute;p m&eacute;o, độ chi tiết cũng được đảm bảo gi&uacute;p cho bức ảnh tr&ocirc;ng ch&acirc;n thực hơn, nghệ thuật hơn n&ecirc;n m&igrave;nh cảm thấy rất ưng &yacute;.</p>\r\n\r\n<p>Từ trước đến nay th&igrave; c&aacute;c mẫu điện thoại flagship của Samsung lu&ocirc;n được đ&aacute;nh gi&aacute; l&agrave; những thiết bị c&oacute; khả năng zoom quang học trong chụp ảnh cực kỳ tốt, v&agrave; điều n&agrave;y cũng sẽ lặp lại một lần nữa tr&ecirc;n Galaxy S23 Ultra khi m&aacute;y hỗ trợ tới 2 cảm biến tele để hỗ trợ zoom quang học 10X v&agrave; 3X.</p>\r\n\r\n<p>Ở những bức ảnh chụp zoom, m&igrave;nh thực sự kh&ocirc;ng cảm thấy c&oacute; sự thay đổi qu&aacute; nhiều về độ chi tiết giữa bức ảnh chụp bằng camera tele so với camera ch&iacute;nh, mọi thứ đều hết sức ch&acirc;n thực v&agrave; r&otilde; n&eacute;t, tổng thể bức ảnh tr&ocirc;ng h&agrave;i h&ograve;a từ m&agrave;u sắc cho tới &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020735.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-020735.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Ảnh chụp từ chế độ g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021023.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021023.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Ảnh chụp từ chế độ mặc định</em></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021030.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021030.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Ảnh chụp từ chế độ zoom 3X</em></p>\r\n\r\n<p>C&oacute; một điểm m&agrave; m&igrave;nh cảm thấy rất ấn tượng trong l&uacute;c chụp zoom tr&ecirc;n Galaxy S23 Ultra l&agrave; về khả năng lấy n&eacute;t tốc độ chụp. C&oacute; thể c&aacute;c bạn cũng đ&atilde; biết khi ch&uacute;ng ta chụp zoom th&igrave; camera của m&aacute;y rất dễ bị lấy n&eacute;t chậm, rung lắc hay chụp nh&ograve;e, thế nhưng tr&ecirc;n chiếc điện thoại S23 Ultra n&agrave;y th&igrave; điều n&agrave;y cũng đ&atilde; được khắc phục gần như ho&agrave;n to&agrave;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021035.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021035.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Ảnh chụp từ chế độ zoom 10X</em></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021042.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021042.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Ảnh chụp từ chế độ zoom 10X</em></p>\r\n\r\n<p>Với một người thường xuy&ecirc;n chụp ảnh ngoại cảnh như m&igrave;nh th&igrave; m&igrave;nh đ&aacute;nh gi&aacute; khả năng xử l&yacute; &aacute;nh s&aacute;ng tr&ecirc;n S23 Ultra hoạt động cực kỳ hiệu quả, kể cả khi chụp đối diện với mặt trời l&uacute;c nắng to th&igrave; m&aacute;y vẫn c&oacute; thể c&acirc;n bằng tốt, sự tương quan giữa chủ thể v&agrave; v&ugrave;ng s&aacute;ng ph&iacute;a sau đều được c&acirc;n bằng h&agrave;i h&ograve;a để cho bức h&igrave;nh trở n&ecirc;n v&ocirc; c&ugrave;ng đẹp mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021048.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021048.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Một điểm th&uacute; vị tiếp theo m&agrave; m&igrave;nh muốn chia sẻ về camera của S23 Ultra l&agrave; nằm ở phần xử l&yacute; m&agrave;u sắc, như th&ocirc;ng lệ tr&ecirc;n c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung đang kinh doanh tại Thế Giới Di Động\">điện thoại Samsung</a>&nbsp;th&igrave; những bức ảnh chụp được sẽ c&oacute; xu hướng n&acirc;ng tone m&agrave;u l&ecirc;n rực rỡ hơn đ&ocirc;i ch&uacute;t để bức ảnh trở n&ecirc;n sinh động hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021053.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021053.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021059.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021059.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n th&igrave; đ&acirc;y cũng c&oacute; thể xem l&agrave; một điểm hạn chế cho một v&agrave;i t&igrave;nh huống cụ thể. Thực thế th&igrave; S23 Ultra xử l&yacute; tốt ở phần lớn c&aacute;c m&agrave;u, tuy nhi&ecirc;n th&igrave; ở những gam m&agrave;u n&oacute;ng th&igrave; m&aacute;y xử l&yacute; hơi qu&aacute; đ&agrave; một t&yacute;, n&ecirc;n thường m&agrave;u sắc l&uacute;c n&agrave;y sẽ kh&ocirc;ng c&ograve;n được ch&acirc;n thực lắm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021107.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021107.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Chuyển đến điều kiện buổi đ&ecirc;m, Galaxy S23 Ultra đ&atilde; dường như thể hiện được sức mạnh của camera v&agrave; chứng minh được l&yacute; do tại sao gọi đ&acirc;y l&agrave; &ldquo;Mắt thần b&oacute;ng đ&ecirc;m&rdquo;.</p>\r\n\r\n<p>Thực sự m&agrave; n&oacute;i th&igrave; khả năng thu s&aacute;ng v&agrave; xử l&yacute; h&igrave;nh ảnh tr&ecirc;n chiếc m&aacute;y n&agrave;y l&agrave; cực kỳ tốt, c&aacute;c nguồn s&aacute;ng trong khi chụp đ&ecirc;m sẽ kh&ocirc;ng bị nh&ograve;e hay ch&oacute;i, hiện tượng nhiễu hạt th&igrave; cũng được cải thiện so với thế hệ trước đ&oacute; gi&uacute;p cho bức ảnh th&ecirc;m phần h&agrave;i h&ograve;a v&agrave; nịnh mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021113.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021113.jpg\" title=\"Ảnh chụp từ camera - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Một điểm ấn tượng kh&ocirc;ng k&eacute;m l&agrave; ở phần t&iacute;nh năng quay video tr&ecirc;n m&aacute;y với chuẩn quay tối đa l&ecirc;n đến 8K ở tốc độ khung h&igrave;nh 30 fps, điều n&agrave;y sẽ mang đến cho ch&uacute;ng ta những thước phim vươn tầm điện ảnh khi độ ph&acirc;n giải thu được l&uacute;c n&agrave;y l&agrave; cực kỳ lớn.</p>\r\n\r\n<h3>T&iacute;ch hợp b&uacute;t S-Pen tiện dụng</h3>\r\n\r\n<p>Tương tự như mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-s\" target=\"_blank\" title=\"Tham khảo điện thoại Galaxy dòng S đang kinh doanh tại Thế Giới Di Động\">điện thoại Galaxy d&ograve;ng S</a>&nbsp;trước đ&oacute;, S23 Ultra cũng sẽ được tiếp tục trang bị b&uacute;t S-Pen huyền thoại ngay trong th&acirc;n m&aacute;y, đ&acirc;y c&oacute; thể coi l&agrave; một điều m&agrave; những kh&aacute;ch h&agrave;ng thuộc đối tượng người d&ugrave;ng l&agrave; doanh nh&acirc;n hay người l&agrave;m s&aacute;ng tạo cực kỳ y&ecirc;u th&iacute;ch bởi độ tiện dụng.</p>\r\n\r\n<p>Về cảm nhận nhấn để lấy b&uacute;t th&igrave; m&igrave;nh thấy kh&aacute; dễ d&agrave;ng, chỉ cần chạm nhẹ v&agrave;o v&ugrave;ng chứa b&uacute;t th&igrave; phụ kiện n&agrave;y sẽ ngay lập tức đẩy ra để m&igrave;nh c&oacute; thể r&uacute;t một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021118.jpg\" onclick=\"return false;\"><img alt=\"Tích hợp bút S-Pen - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021118.jpg\" title=\"Tích hợp bút S-Pen - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Với một người l&agrave;m c&aacute;c c&ocirc;ng việc s&aacute;ng tạo nội dung như m&igrave;nh, b&uacute;t S-Pen sẽ rất ph&ugrave; hợp để m&igrave;nh thực hiện c&aacute;c c&ocirc;ng việc như ph&aacute;c thảo nội dung bản vẽ, tạo chữ k&yacute;, ghi ch&uacute; nhanh hay thậm ch&iacute; l&agrave; c&oacute; thể d&ugrave;ng n&oacute; thực hiện t&aacute;c vụ chỉnh sửa video, với đầu ng&ograve;i nhỏ sẽ gi&uacute;p m&igrave;nh c&oacute; thể thao t&aacute;c chỉnh sửa v&agrave; cắt gh&eacute;p video ch&iacute;nh x&aacute;c hơn.</p>\r\n\r\n<p>Về độ trễ của b&uacute;t ra sao th&igrave; m&igrave;nh dường như kh&ocirc;ng cảm nhận được trong qu&aacute; tr&igrave;nh sử dụng, mọi thứ đều được phản hồi nhanh ch&oacute;ng v&agrave; gần như khớp tuyệt đối với c&aacute;c thao t&aacute;c của m&igrave;nh (khi ở tần số qu&eacute;t m&agrave;n h&igrave;nh 120 Hz), v&igrave; thế m&igrave;nh cũng cảm thấy hết sức thoải m&aacute;i khi sử dụng b&uacute;t S-Pen v&agrave; n&oacute; dường như trở th&agrave;nh một phần kh&ocirc;ng thể thiếu trong l&uacute;c m&igrave;nh l&agrave;m việc.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021445.jpg\" onclick=\"return false;\"><img alt=\"Tích hợp bút S-Pen - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021445.jpg\" title=\"Tích hợp bút S-Pen - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn mang đến kh&ocirc;ng gian bất tận</h3>\r\n\r\n<p>Với chiếc Galaxy S23 Ultra th&igrave; nh&agrave; Samsung t&iacute;ch hợp cho chiếc m&aacute;y n&agrave;y kh&aacute; nhiều th&ocirc;ng số nổi bật, cụ thể l&agrave; c&ocirc;ng nghệ m&agrave;n h&igrave;nh Dynamic AMOLED 2X, độ ph&acirc;n giải 2K+ (1440 x 3088 Pixels) c&ugrave;ng độ s&aacute;ng tối đa 1750 nits.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213\" target=\"_blank\">M&agrave;n h&igrave;nh Dynamic AMOLED 2X l&agrave; g&igrave;? Điểm nổi bật? C&oacute; tr&ecirc;n điện thoại n&agrave;o</a></p>\r\n\r\n<p>Cả ba điều n&agrave;y đ&ecirc;m đến chất lượng hiển thị với m&agrave;u sắc rực rỡ, nội dung cũng được t&aacute;i hiện sắc n&eacute;t hơn khi m&igrave;nh chơi game hay xem phim. Hơn hết, độ s&aacute;ng cao cũng sẽ gi&uacute;p &iacute;ch cho m&igrave;nh trong việc xem bản đồ ở ngo&agrave;i đường hay căn g&oacute;c chụp ảnh khi đang sử dụng ở những m&ocirc;i trường c&oacute; &aacute;nh s&aacute;ng cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021459.jpg\" onclick=\"return false;\"><img alt=\"Độ sáng màn hình cao - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021459.jpg\" title=\"Độ sáng màn hình cao - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>Th&uacute; vị hơn l&agrave; độ ph&acirc;n giải cao tr&ecirc;n S23 Ultra cho ph&eacute;p m&igrave;nh được c&agrave;i đặt được chuẩn độ ph&acirc;n giải lớn hơn khi xem những nội dung tr&ecirc;n Youtube, gi&uacute;p tận hưởng được trọn vẹn vẻ đẹp từ khung h&igrave;nh một c&aacute;ch sinh động nhất.</p>\r\n\r\n<p>Nhờ được sử dụng m&agrave;n h&igrave;nh lớn 6.8 inch thế n&ecirc;n mọi thước phim m&igrave;nh xem đều được tr&igrave;nh chiếu với k&iacute;ch thước lớn hơn, kh&ocirc;ng gian l&uacute;c n&agrave;y cũng đ&atilde; trở n&ecirc;n rộng r&atilde;i để mọi cử chỉ, thao t&aacute;c bằng b&uacute;t S-Pen của m&igrave;nh trở n&ecirc;n thoải m&aacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021504.jpg\" onclick=\"return false;\"><img alt=\"Không gian hiển thị rõ ràng - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021504.jpg\" title=\"Không gian hiển thị rõ ràng - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<h3>K&eacute;o d&agrave;i thời lượng d&ugrave;ng với vi&ecirc;n pin lớn</h3>\r\n\r\n<p>Với một vi&ecirc;n pin c&oacute; dung lượng 5000 mAh mang lại cho m&igrave;nh thời gian d&ugrave;ng khoảng 9 tiếng 28* ph&uacute;t cho c&aacute;c t&aacute;c vụ như: Chơi game, lướt Facebook, xem YouTube,... nhưng nếu sử dụng cho c&aacute;c t&aacute;c vụ cơ bản h&agrave;ng ng&agrave;y như: Nhắn tin, nghe gọi hay lướt web cơ bản th&igrave; m&aacute;y c&oacute; thể đ&aacute;p ứng cho m&igrave;nh cả một ng&agrave;y d&agrave;i sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021509.jpg\" onclick=\"return false;\"><img alt=\"Pin lớn dùng lâu - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021509.jpg\" title=\"Pin lớn dùng lâu - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, h&atilde;ng c&ograve;n hỗ trợ t&iacute;ch hợp th&ecirc;m c&ocirc;ng nghệ sạc nhanh với c&ocirc;ng suất tối đa l&ecirc;n đến 45 W. Nhờ đ&oacute;, m&igrave;nh chỉ mất khoảng 1 tiếng 27* ph&uacute;t để sạc đầy pin m&agrave; kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u.</p>\r\n\r\n<p>Điều n&agrave;y rất tiện lợi, n&oacute; gi&uacute;p m&igrave;nh c&oacute; thể sạc đầy pin trong những l&uacute;c d&agrave;nh thời gian ăn uống hoặc nghỉ ngơi một ch&uacute;t, thay v&igrave; phải chờ đợi cho tới v&agrave;i giờ đồng hồ rất mất thời gian.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021513.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ sạc siêu nhanh - Samsung Galaxy S23 Ultra 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-150423-021513.jpg\" title=\"Hỗ trợ sạc siêu nhanh - Samsung Galaxy S23 Ultra 5G 256GB\" /></a></p>\r\n\r\n<p><em>*Thời gian sử dụng/sạc c&oacute; thể thay đổi t&ugrave;y v&agrave;o t&aacute;c vụ v&agrave; c&ocirc;ng suất của thiết bị sạc</em></p>\r\n\r\n<p>Samsung Galaxy S23 Ultra l&agrave; một mẫu smartphone được thiết kế tập trung chủ yếu d&agrave;nh cho đối tượng kh&aacute;ch h&agrave;ng l&agrave; doanh nh&acirc;n, những ai y&ecirc;u th&iacute;ch thiết kế sang trọng hay t&igrave;m mua một thiết bị c&oacute; hiệu năng mạnh. Với những g&igrave; m&agrave; m&aacute;y mang lại th&igrave; đ&acirc;y ho&agrave;n to&agrave;n thiết bị xứng đ&aacute;ng với gi&aacute; tiền để bạn đầu tư trong năm 2023.</p>', 6, 30000000, 17999000, 1, '2023-07-24 00:06:39', '2023-07-24 00:28:57', '/storage/uploads/2023/07/24/Galaxy-S22-Ultra-Burgundy-600x600.jpg'),
(51, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-18 20:05:49', '2023-07-23 17:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(53, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-18 20:09:45', '2023-07-23 20:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(54, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-18 20:10:27', '2023-07-23 17:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(55, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-18 20:05:49', '2023-07-23 17:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(57, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-18 20:09:45', '2023-07-23 20:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(58, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-18 20:10:27', '2023-07-23 17:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(59, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-18 20:05:49', '2023-07-23 17:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(61, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-18 20:09:45', '2023-07-23 20:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(62, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-18 20:10:27', '2023-07-23 17:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(63, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-18 20:05:49', '2023-07-23 17:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(65, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-18 20:09:45', '2023-07-23 20:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(66, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-18 20:10:27', '2023-07-23 17:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(67, 'Điện thoại Samsung Galaxy A14 6GB', 'Điện thoại Samsung Galaxy A14 6GB', '<p>Điện thoại Samsung Galaxy A14 6GB</p>', 6, 4790000, 4000000, 1, '2023-07-18 20:05:49', '2023-07-23 17:09:20', '/storage/uploads/2023/07/24/samsung-galaxy-a14-tlte-thumb-den-600x600 (1).jpg'),
(69, 'Điện thoại iPhone 14 Pro Max 128GB', 'Điện thoại iPhone 14 Pro Max 128GB', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>', 7, 26790000, 20000000, 1, '2023-07-18 20:09:45', '2023-07-23 20:19:36', '/storage/uploads/2023/07/24/iphone-14-pro-max-den-thumb-600x600.jpg'),
(70, 'Samsung Galaxy A24', 'Samsung Galaxy A24', '<p><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a24\">Samsung Galaxy A24</a></p>', 6, 6990000, 5000000, 1, '2023-07-18 20:10:27', '2023-07-23 17:10:31', '/storage/uploads/2023/07/24/samsung-galaxy-a24-black-thumb-600x600.jpg'),
(71, 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-x515ea-i3-ej3948w\">Asus Vivobook X515EA i3 1115G4 (EJ3948W)</a></h3>', 5, 12000000, 11000000, 1, '2023-07-24 03:29:38', '2023-07-24 03:29:38', '/storage/uploads/2023/07/24/asus-vivobook-x515ea-i3-ej3948w-thumb-600x600.jpg'),
(72, 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15-oled-a1505va-i5-l1052w\">Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)</a></h3>', 5, 17000000, 15000000, 1, '2023-07-24 03:30:12', '2023-07-24 03:30:12', '/storage/uploads/2023/07/24/asus-vivobook-15-oled-a1505va-i5-l1052w-thumb-600x600.jpg'),
(73, 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-gaming-gf63-thin-11sc-i5-664vn\">MSI Gaming GF63 Thin 11SC i5 11400H (664VN)</a></h3>', 4, 16000000, 14999000, 1, '2023-07-24 03:32:20', '2023-07-24 03:32:20', '/storage/uploads/2023/07/24/msi-gaming-gf63-thin-11sc-i5-664vn-glr-thumb-600x600.jpg'),
(74, 'MSI Modern 14 C11M i3 1115G4 (011VN)', 'MSI Modern 14 C11M i3 1115G4 (011VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-14-c11m-i3-011vn\">MSI Modern 14 C11M i3 1115G4 (011VN)</a></h3>', 4, 12000000, 11500000, 1, '2023-07-24 03:32:52', '2023-07-24 03:32:52', '/storage/uploads/2023/07/24/msi-modern-14-c11m-i3-011vn-040523-124356-600x600.jpg'),
(75, 'Điện thoại iPhone 11 64GB', 'Điện thoại iPhone 11 64GB', '<p>Điện thoại iPhone 11 64GB</p>', 7, 11000000, 8999000, 1, '2023-07-24 03:37:39', '2023-07-24 03:37:39', '/storage/uploads/2023/07/24/iphone-11-trang-600x600.jpg'),
(76, 'iPhone 12', 'iPhone 12', '<h3><a href=\"https://www.thegioididong.com/dtdd/iphone-12\">iPhone 12</a></h3>', 7, 15000000, 12999000, 1, '2023-07-24 03:38:13', '2023-07-24 03:38:13', '/storage/uploads/2023/07/24/iphone-12-tim-1-600x600.jpg'),
(77, 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-x515ea-i3-ej3948w\">Asus Vivobook X515EA i3 1115G4 (EJ3948W)</a></h3>', 5, 12000000, 11000000, 1, '2023-07-23 20:29:38', '2023-07-23 20:29:38', '/storage/uploads/2023/07/24/asus-vivobook-x515ea-i3-ej3948w-thumb-600x600.jpg'),
(78, 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15-oled-a1505va-i5-l1052w\">Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)</a></h3>', 5, 17000000, 15000000, 1, '2023-07-23 20:30:12', '2023-07-23 20:30:12', '/storage/uploads/2023/07/24/asus-vivobook-15-oled-a1505va-i5-l1052w-thumb-600x600.jpg'),
(79, 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-gaming-gf63-thin-11sc-i5-664vn\">MSI Gaming GF63 Thin 11SC i5 11400H (664VN)</a></h3>', 4, 16000000, 14999000, 1, '2023-07-23 20:32:20', '2023-07-23 20:32:20', '/storage/uploads/2023/07/24/msi-gaming-gf63-thin-11sc-i5-664vn-glr-thumb-600x600.jpg'),
(80, 'MSI Modern 14 C11M i3 1115G4 (011VN)', 'MSI Modern 14 C11M i3 1115G4 (011VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-14-c11m-i3-011vn\">MSI Modern 14 C11M i3 1115G4 (011VN)</a></h3>', 4, 12000000, 11500000, 1, '2023-07-23 20:32:52', '2023-07-23 20:32:52', '/storage/uploads/2023/07/24/msi-modern-14-c11m-i3-011vn-040523-124356-600x600.jpg'),
(81, 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-x515ea-i3-ej3948w\">Asus Vivobook X515EA i3 1115G4 (EJ3948W)</a></h3>', 5, 12000000, 11000000, 1, '2023-07-23 20:29:38', '2023-07-23 20:29:38', '/storage/uploads/2023/07/24/asus-vivobook-x515ea-i3-ej3948w-thumb-600x600.jpg'),
(82, 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15-oled-a1505va-i5-l1052w\">Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)</a></h3>', 5, 17000000, 15000000, 1, '2023-07-23 20:30:12', '2023-07-23 20:30:12', '/storage/uploads/2023/07/24/asus-vivobook-15-oled-a1505va-i5-l1052w-thumb-600x600.jpg'),
(83, 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-gaming-gf63-thin-11sc-i5-664vn\">MSI Gaming GF63 Thin 11SC i5 11400H (664VN)</a></h3>', 4, 16000000, 14999000, 1, '2023-07-23 20:32:20', '2023-07-23 20:32:20', '/storage/uploads/2023/07/24/msi-gaming-gf63-thin-11sc-i5-664vn-glr-thumb-600x600.jpg'),
(84, 'MSI Modern 14 C11M i3 1115G4 (011VN)', 'MSI Modern 14 C11M i3 1115G4 (011VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-14-c11m-i3-011vn\">MSI Modern 14 C11M i3 1115G4 (011VN)</a></h3>', 4, 12000000, 11500000, 1, '2023-07-23 20:32:52', '2023-07-23 20:32:52', '/storage/uploads/2023/07/24/msi-modern-14-c11m-i3-011vn-040523-124356-600x600.jpg'),
(85, 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-x515ea-i3-ej3948w\">Asus Vivobook X515EA i3 1115G4 (EJ3948W)</a></h3>', 5, 12000000, 11000000, 1, '2023-07-23 20:29:38', '2023-07-23 20:29:38', '/storage/uploads/2023/07/24/asus-vivobook-x515ea-i3-ej3948w-thumb-600x600.jpg'),
(86, 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15-oled-a1505va-i5-l1052w\">Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)</a></h3>', 5, 17000000, 15000000, 1, '2023-07-23 20:30:12', '2023-07-23 20:30:12', '/storage/uploads/2023/07/24/asus-vivobook-15-oled-a1505va-i5-l1052w-thumb-600x600.jpg'),
(87, 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-gaming-gf63-thin-11sc-i5-664vn\">MSI Gaming GF63 Thin 11SC i5 11400H (664VN)</a></h3>', 4, 16000000, 14999000, 1, '2023-07-23 20:32:20', '2023-07-23 20:32:20', '/storage/uploads/2023/07/24/msi-gaming-gf63-thin-11sc-i5-664vn-glr-thumb-600x600.jpg'),
(88, 'MSI Modern 14 C11M i3 1115G4 (011VN)', 'MSI Modern 14 C11M i3 1115G4 (011VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-14-c11m-i3-011vn\">MSI Modern 14 C11M i3 1115G4 (011VN)</a></h3>', 4, 12000000, 11500000, 1, '2023-07-23 20:32:52', '2023-07-23 20:32:52', '/storage/uploads/2023/07/24/msi-modern-14-c11m-i3-011vn-040523-124356-600x600.jpg'),
(89, 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', 'Asus Vivobook X515EA i3 1115G4 (EJ3948W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-x515ea-i3-ej3948w\">Asus Vivobook X515EA i3 1115G4 (EJ3948W)</a></h3>', 5, 12000000, 11000000, 1, '2023-07-23 20:29:38', '2023-07-23 20:29:38', '/storage/uploads/2023/07/24/asus-vivobook-x515ea-i3-ej3948w-thumb-600x600.jpg'),
(90, 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', 'Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-15-oled-a1505va-i5-l1052w\">Asus Vivobook 15 OLED A1505VA i5 13500H (L1052W)</a></h3>', 5, 17000000, 15000000, 1, '2023-07-23 20:30:12', '2023-07-23 20:30:12', '/storage/uploads/2023/07/24/asus-vivobook-15-oled-a1505va-i5-l1052w-thumb-600x600.jpg'),
(91, 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', 'MSI Gaming GF63 Thin 11SC i5 11400H (664VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-gaming-gf63-thin-11sc-i5-664vn\">MSI Gaming GF63 Thin 11SC i5 11400H (664VN)</a></h3>', 4, 16000000, 14999000, 1, '2023-07-23 20:32:20', '2023-07-23 20:32:20', '/storage/uploads/2023/07/24/msi-gaming-gf63-thin-11sc-i5-664vn-glr-thumb-600x600.jpg'),
(92, 'MSI Modern 14 C11M i3 1115G4 (011VN)', 'MSI Modern 14 C11M i3 1115G4 (011VN)', '<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-14-c11m-i3-011vn\">MSI Modern 14 C11M i3 1115G4 (011VN)</a></h3>', 4, 12000000, 11500000, 1, '2023-07-23 20:32:52', '2023-07-23 20:32:52', '/storage/uploads/2023/07/24/msi-modern-14-c11m-i3-011vn-040523-124356-600x600.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(6, 'Điện Thoại SAMSUNG', 'http://localhost:8000/danh-muc/6-dien-thoai-samsung.html', '/storage/uploads/2023/07/24/slss.jpg', 1, 1, '2023-07-24 00:51:36', '2023-08-10 01:42:51'),
(7, 'Điện thoại iPhone', 'http://localhost:8000/danh-muc/7-dien-thoai-iphone.html', '/storage/uploads/2023/07/24/slip1.jpg', 2, 1, '2023-07-24 01:19:45', '2023-08-10 01:42:32'),
(8, 'Laptop', 'http://localhost:8000/danh-muc/5-laptop-asus.html', '/storage/uploads/2023/07/24/sllaptop.jpg', 3, 1, '2023-07-24 01:40:15', '2023-08-10 01:42:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@localhost.com', NULL, '$2y$10$JLU5s3Cb6oyDkktPpY9e1.r4NuxXcijeLTQZCn5qOGNp8zctHJsD2', 'hEFuxOFlICwVEWjApwHX9F6DYDKOeCSkKAifYbpEuytQWICBHk54VQuOcpiY', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
