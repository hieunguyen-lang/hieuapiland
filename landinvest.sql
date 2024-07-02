-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2024 at 09:11 AM
-- Server version: 8.0.37-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landinvest`
--

-- --------------------------------------------------------

--
-- Table structure for table `AuctionImgs`
--

CREATE TABLE `AuctionImgs` (
  `AuctionImgID` int NOT NULL,
  `LandAuctionID` int NOT NULL,
  `Descritption` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AuctionImgs`
--

INSERT INTO `AuctionImgs` (`AuctionImgID`, `LandAuctionID`, `Descritption`, `Image`) VALUES
(11, 7, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(12, 7, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(13, 8, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(14, 8, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(15, 9, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(16, 9, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(17, 10, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(18, 10, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(19, 11, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(20, 11, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(21, 12, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(22, 12, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(23, 13, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(24, 13, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(25, 14, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(26, 14, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(27, 15, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(28, 15, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(29, 16, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(30, 16, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(31, 17, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(32, 17, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(33, 18, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(34, 18, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(35, 19, 'Front view of the land', 'http://example.com/uploads/front_view.jpg'),
(36, 19, 'Front view of the land', 'http://example.com/uploads/front_view.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `AuctionVideos`
--

CREATE TABLE `AuctionVideos` (
  `AuctionVideoID` int NOT NULL,
  `LandAuctionID` int NOT NULL,
  `Descritption` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Video` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AuctionVideos`
--

INSERT INTO `AuctionVideos` (`AuctionVideoID`, `LandAuctionID`, `Descritption`, `Video`) VALUES
(3, 7, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(4, 8, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(5, 9, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(6, 10, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(7, 11, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(8, 12, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(9, 13, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(10, 14, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(11, 15, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(12, 16, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(13, 17, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(14, 18, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(15, 19, 'Back view of the land', 'http://example.com/uploads/front_view.jpg'),
(16, 19, 'Back view of the land', 'http://example.com/uploads/front_view.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Boxs`
--

CREATE TABLE `Boxs` (
  `BoxID` int NOT NULL,
  `UserID` int NOT NULL,
  `BoxName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateAt` datetime DEFAULT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatarLink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Boxs`
--

INSERT INTO `Boxs` (`BoxID`, `UserID`, `BoxName`, `CreateAt`, `Description`, `avatarLink`) VALUES
(2, 126, 'di eeotr to', '2024-06-09 05:33:45', 'phong nhanh vuortf au', 'http://127.0.0.1:2345/api/group/image/boximgid=2.jpeg'),
(3, 223, 'ban quan ao', '2024-06-09 05:50:39', ' Noi cho moi nguoi ban quan ao', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg'),
(4, 223, 'ban nha ', '2024-06-09 06:30:41', ' Noi cho moi nguoi ban quan ao', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `CommentFavorite`
--

CREATE TABLE `CommentFavorite` (
  `CommentFavoriteID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `CommentID` int DEFAULT NULL,
  `FavoriteType` tinyint(1) DEFAULT NULL,
  `FavoriteTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CommentPhotos`
--

CREATE TABLE `CommentPhotos` (
  `PhotoID` int NOT NULL,
  `CommentID` int DEFAULT NULL,
  `PhotoURL` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CommentPhotos`
--

INSERT INTO `CommentPhotos` (`PhotoID`, `CommentID`, `PhotoURL`, `UploadTime`) VALUES
(1, 1, 'https://picsum.photos/200/300', '2024-03-01 16:28:11'),
(2, 2, 'https://i.ibb.co/WVLJRb0/timestudio-vn-headshot-eye-glasses-02.jpg', '2024-03-01 17:00:57'),
(7, 37, 'http://127.0.0.1:2345/api/post/image/commentimgid=37.jpeg', '2024-07-01 09:36:23'),
(8, 38, 'http://127.0.0.1:2345/api/post/image/commentimgid=e39d9221-0eba-41a6-8396-735a639062df.jpeg', '2024-07-01 09:42:32'),
(9, 41, 'http://127.0.0.1:2345/api/post/image/commentimgid=81eea897-3e6c-4b50-9c5a-13b73475fe80.jpeg', '2024-07-01 10:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `Districts`
--

CREATE TABLE `Districts` (
  `DistrictID` int NOT NULL,
  `ProvinceID` int NOT NULL,
  `DistrictName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Districts`
--

INSERT INTO `Districts` (`DistrictID`, `ProvinceID`, `DistrictName`) VALUES
(1, 24, 'Ba Đình'),
(2, 24, 'Hoàn Kiếm'),
(3, 24, 'Tây Hồ'),
(4, 24, 'Long Biên'),
(5, 24, 'Cầu Giấy'),
(6, 24, 'Đống Đa'),
(7, 24, 'Hai Bà Trưng'),
(8, 24, 'Hoàng Mai'),
(9, 24, 'Thanh Xuân'),
(10, 24, 'Hà Đông'),
(11, 24, 'Bắc Từ Liêm'),
(12, 24, 'Nam Từ Liêm'),
(13, 24, 'Thị xã Sơn Tây'),
(14, 24, 'Huyện Ba Vì'),
(15, 24, 'Huyện Chương Mỹ'),
(16, 24, 'Huyện Đan Phượng'),
(17, 24, 'Huyện Đông Anh'),
(18, 24, 'Huyện Gia Lâm'),
(19, 24, 'Huyện Hoài Đức'),
(20, 24, 'Huyện Mê Linh'),
(21, 24, 'Huyện Mỹ Đức'),
(22, 24, 'Huyện Phú Xuyên'),
(23, 24, 'Huyện Phúc Thọ'),
(24, 24, 'Huyện Quốc Oai'),
(25, 24, 'Huyện Sóc Sơn'),
(26, 24, 'Huyện Thạch Thất'),
(27, 24, 'Huyện Thanh Oai'),
(28, 24, 'Huyện Thanh Trì'),
(29, 24, 'Huyện Thường Tín'),
(30, 24, 'Huyện Ứng Hòa'),
(31, 28, 'Lương Sơn'),
(32, 28, 'Cao Phong'),
(33, 28, 'Đà Bắc'),
(34, 28, 'Kim Bôi'),
(35, 28, 'Kỳ Sơn'),
(36, 28, 'Lạc Sơn'),
(37, 28, 'Lạc Thủy'),
(38, 28, 'Mai Châu'),
(39, 28, 'Tân Lạc'),
(40, 28, 'Yên Thủy');

-- --------------------------------------------------------

--
-- Table structure for table `Favorite`
--

CREATE TABLE `Favorite` (
  `FavoriteID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PostID` int DEFAULT NULL,
  `FavoriteType` tinyint(1) DEFAULT NULL,
  `FavoriteTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ForumPhotos`
--

CREATE TABLE `ForumPhotos` (
  `PhotoID` int NOT NULL,
  `PostID` int DEFAULT NULL,
  `PhotoURL` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ForumPhotos`
--

INSERT INTO `ForumPhotos` (`PhotoID`, `PostID`, `PhotoURL`, `UploadTime`) VALUES
(62, 70, 'http://127.0.0.1:2345/api/post/image/commentimgid=31cf5f9b-85b7-426c-a374-6d92fe0c7904.jpeg', '2024-07-01 14:30:23'),
(63, 71, 'http://127.0.0.1:2345/api/post/image/Postid=8dbea76b-8ddb-42f8-8de9-aff5e8c9a986.jpeg', '2024-07-02 06:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `ForumPosts`
--

CREATE TABLE `ForumPosts` (
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `GroupID` int NOT NULL,
  `Title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `PostTime` datetime DEFAULT NULL,
  `IPPosted` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PostLatitude` decimal(10,8) DEFAULT NULL,
  `PostLongitude` decimal(11,8) DEFAULT NULL,
  `UpdatePostAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ForumPosts`
--

INSERT INTO `ForumPosts` (`PostID`, `UserID`, `GroupID`, `Title`, `Content`, `PostTime`, `IPPosted`, `PostLatitude`, `PostLongitude`, `UpdatePostAt`) VALUES
(5, 223, 2, 'SALE', 'oto di rat hay', '2024-06-09 06:36:42', '127.0.0.1', 10.00000000, 100.00000000, '2024-06-09 06:36:41'),
(46, 1, 2, 'Title for Post 1', 'This is the real content for post 1. It contains details about the topic.', '2023-06-21 08:00:00', '192.168.1.1', 37.77492900, -122.41941600, '2023-06-21 08:00:00'),
(47, 1, 2, 'Title for Post 2', 'This is the real content for post 2. It discusses various aspects of the subject.', '2023-06-21 09:00:00', '192.168.1.2', 34.05223500, -118.24368300, '2023-06-21 09:00:00'),
(48, 1, 4, 'Title for Post 3', 'This is the real content for post 3. It provides insights and analysis.', '2023-06-21 10:00:00', '192.168.1.3', 40.71277600, -74.00597400, '2023-06-21 10:00:00'),
(49, 1, 4, 'Title for Post 4', 'This is the real content for post 4. It presents findings and conclusions.', '2023-06-21 11:00:00', '192.168.1.4', 51.50735100, -0.12775800, '2023-06-21 11:00:00'),
(50, 1, 5, 'Title for Post 5', 'This is the real content for post 5. It explores different perspectives on the topic.', '2023-06-21 12:00:00', '192.168.1.5', 48.85661300, 2.35222200, '2023-06-21 12:00:00'),
(51, 1, 6, 'Title for Post 6', 'This is the real content for post 6. It presents case studies and examples.', '2023-06-21 13:00:00', '192.168.1.6', 35.68948700, 139.69171100, '2023-06-21 13:00:00'),
(52, 7, 7, 'Title for Post 7', 'This is the real content for post 7. It discusses implications and recommendations.', '2023-06-21 14:00:00', '192.168.1.7', 55.75582500, 37.61729800, '2023-06-21 14:00:00'),
(56, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:03:09', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:03:08'),
(57, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:10:27', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:10:27'),
(58, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:10:34', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:10:33'),
(59, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:12:01', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:12:00'),
(60, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:13:59', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:13:59'),
(61, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:15:13', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:15:13'),
(62, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:17:09', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:17:09'),
(63, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:21:23', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:21:22'),
(64, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:21:24', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:21:23'),
(65, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:24:20', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:24:19'),
(66, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:26:05', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:26:05'),
(67, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:29:45', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:29:44'),
(68, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:29:58', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:29:58'),
(69, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:30:05', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:30:04'),
(70, 249, 2, 'OtoFun', 'oto di rat hay', '2024-07-01 14:30:23', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-01 14:30:23'),
(71, 249, 2, 'fsdfsdfdg', 'oto di rat hay', '2024-07-02 06:48:43', '127.0.0.1', 10.00000000, 100.00000000, '2024-07-02 06:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `gmail_from`
--

CREATE TABLE `gmail_from` (
  `id` int NOT NULL,
  `gmail` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `password_app` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gmail_from`
--

INSERT INTO `gmail_from` (`id`, `gmail`, `password`, `password_app`) VALUES
(1, 'mailtowork001@gmail.com', 'mailwork', 'exvd odnt rkbe pttw'),
(2, 'devmobilepro1888@gmail.com', 'devmobilepro1888@gmail.com', 'qaxl xbjp gkmx rwha'),
(3, 'vubaolong2000pro@gmail.com', 'vubaolong2000pro@gmail.com', 'tjdu dggw bhma shqx'),
(4, 'guiemailfree1@gmail.com', 'guiemailfree1@gmail.com', 'zkfl fids cbjc dkuu'),
(5, 'hayho.netfilm@gmail.com', 'hayho.netfilm@gmail.com', 'addj czun lozf hcqj');

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `GroupID` int NOT NULL,
  `BoxID` int NOT NULL,
  `UserID` int NOT NULL,
  `GroupName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateAt` datetime DEFAULT NULL,
  `avatarLink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'http://127.0.0.1:2345/api/group/image/groupimgid.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`GroupID`, `BoxID`, `UserID`, `GroupName`, `CreateAt`, `avatarLink`) VALUES
(2, 3, 1, 'di ee7otr to', '2024-02-28 16:00:11', 'http://127.0.0.1:2345/api/profile/image/groupimgid=2.jpeg'),
(4, 2, 8, 'anhr4 yeu', '2024-02-29 14:33:01', 'https://i.ibb.co/SVt2FxF/family.png'),
(5, 2, 8, 'hi', '2024-02-29 14:38:19', 'https://i.ibb.co/k5w31fF/image4.jpg'),
(6, 2, 8, 'anh yeu', '2024-02-29 14:39:39', 'https://i.ibb.co/wYFLmXc/anh.jpg'),
(7, 2, 8, 'kien', '2024-02-29 14:40:37', 'https://i.ibb.co/LQbyTCg/image3.gif'),
(22, 2, 249, 'Cttohtdjer5r7', '2024-06-27 19:09:03', 'http://127.0.0.1:2345/api/group/image/groupimgid=249.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `LandAuctionCategories`
--

CREATE TABLE `LandAuctionCategories` (
  `LandAuctionCategoryID` int NOT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LandAuctionCategories`
--

INSERT INTO `LandAuctionCategories` (`LandAuctionCategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Trung tâm phát triển quỹ đất', 'Đấu giá do trung tâm phát triển quỹ đất tổ chức'),
(2, 'Thanh lý tài sản của ngân hàng', 'Hàng này có thể dính quy hoạch'),
(3, 'Tư nhân', 'Đấu giá do các đơn vị tư nhân muốn bán hàng');

-- --------------------------------------------------------

--
-- Table structure for table `LandAuctions`
--

CREATE TABLE `LandAuctions` (
  `LandAuctionID` int NOT NULL,
  `DistrictID` int NOT NULL DEFAULT '1',
  `LandAuctionCategoryID` int NOT NULL DEFAULT '1',
  `Title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OpenPrice` float DEFAULT NULL,
  `AuctionAddress` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `UserID` int NOT NULL DEFAULT '249',
  `CreateAt` datetime DEFAULT NULL,
  `EventSchedule` datetime DEFAULT NULL,
  `DepositPrice` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RegistrationStartTime` datetime DEFAULT NULL,
  `RegistrationEndTime` datetime DEFAULT NULL,
  `DepositPaymentStartTime` datetime DEFAULT NULL,
  `DepositPaymentEndTime` datetime DEFAULT NULL,
  `NamePropertyOwner` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NameProperty` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AddressProperty` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AddressPropertyOwner` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AuctionUrl` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NameAuctionHouse` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AddressAuctionHouse` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PhoneNumberAuctionHouse` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LandAuctions`
--

INSERT INTO `LandAuctions` (`LandAuctionID`, `DistrictID`, `LandAuctionCategoryID`, `Title`, `Description`, `OpenPrice`, `AuctionAddress`, `Latitude`, `Longitude`, `UserID`, `CreateAt`, `EventSchedule`, `DepositPrice`, `RegistrationStartTime`, `RegistrationEndTime`, `DepositPaymentStartTime`, `DepositPaymentEndTime`, `NamePropertyOwner`, `NameProperty`, `AddressProperty`, `AddressPropertyOwner`, `AuctionUrl`, `NameAuctionHouse`, `AddressAuctionHouse`, `PhoneNumberAuctionHouse`) VALUES
(21, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng 2094m2 đất (Đất ở: 979,4m2; Đất nuôi trồng thủy sản: 1114,6 m2) thuộc thửa số 10, TBĐ số 14 và tài sản gắn liền với đất là Nhà kho có DTXD là 781m2 tại Khu vực Long Thạnh A, P.Thốt Nốt, Q.Thốt Nốt, Tp.Cần Thơ', '- Điều kiện đăng ký tham gia đấu giá: Các cá nhân, tổ chức có nhu cầu, có khả năng tài chính được đăng ký tham gia đấu giá ngoại trừ các trường hợp được quy định tại khoản 4, Điều 38 Luật Đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n- Địa điểm, cách thức đăng ký tham gia đấu giá: Khách hàng nộp hồ sơ trực tiếp tại Trụ sở Công ty Đấu giá Hợp danh Trường Thịnh Group.', 13500000000, '72 Bùi Tá Hán, phường An Phú, thành phố Thủ Đức, thành phố Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-19 10:00:00', '10 %', '2024-06-25 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3', 'Quyền sử dụng 2094m2 đất (Đất ở: 979,4m2; Đất nuôi trồng thủy sản: 1114,6 m2) thuộc thửa số 10, TBĐ số 14 và tài sản gắn liền với đất là Nhà kho có DTXD là 781m2 tại Khu vực Long Thạnh A, P.Thốt Nốt, Q.Thốt Nốt, Tp.Cần Thơ', 'Khu vực Long Thạnh A, P.Thốt Nốt, Q.Thốt Nốt, Tp.Cần Thơ', '112 Trần Quốc Thảo, Phường Võ Thị Sáu, Quận 3, TP Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-2094m2-dat-dat-o-9794m2-dat-nuoi-trong-thuy-san-11146-m2-thuoc-thua-so-10-tbd-so-14-va-tai-san-gan-lien-voi-dat-la-nha-kho-co-dtxd-la-781m2-tai-khu-vuc-long-thanh-a-pthot-not-qthot-not-tpcan-tho-343194.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TRƯỜNG THỊNH GROUP', 'số 46 Đường số 2 Cư xá Chu Văn An, Phường 26, Quận Bình Thạnh, Thành phố Hồ Chí Minh', '(028) 62762586'),
(22, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng 7855,9m2 đất cơ sở sản xuất phi nông nghiệp thuộc thửa đất số 618, TBĐ số 11 và Công trình xây dựng khác là Kho gạo có DTXD là 5223,9m2 tại Ấp 3, xã Trí Phải, huyện Thới Bình, tỉnh Cà Mau', '- Điều kiện đăng ký tham gia đấu giá: Các cá nhân, tổ chức có nhu cầu, có khả năng tài chính được đăng ký tham gia đấu giá ngoại trừ các trường hợp được quy định tại khoản 4, Điều 38 Luật Đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n- Địa điểm, cách thức đăng ký tham gia đấu giá: Khách hàng nộp hồ sơ trực tiếp tại Trụ sở Công ty Đấu giá Hợp danh Trường Thịnh Group.', 20250000000, '72 Bùi Tá Hán, phường An Phú, thành phố Thủ Đức, thành phố Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-19 09:00:00', '10 %', '2024-06-25 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3', 'Quyền sử dụng 7855,9m2 đất cơ sở sản xuất phi nông nghiệp thuộc thửa đất số 618, TBĐ số 11 và Công trình xây dựng khác là Kho gạo có DTXD là 5223,9m2 tại Ấp 3, xã Trí Phải, huyện Thới Bình, tỉnh Cà Mau', 'Ấp 3, xã Trí Phải, huyện Thới Bình, tỉnh Cà Mau', '112 Trần Quốc Thảo, Phường Võ Thị Sáu, Quận 3, TP Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-78559m2-dat-co-so-san-xuat-phi-nong-nghiep-thuoc-thua-dat-so-618-tbd-so-11-va-cong-trinh-xay-dung-khac-la-kho-gao-co-dtxd-la-52239m2-tai-ap-3-xa-tri-phai-huyen-thoi-binh-tinh-ca-mau-343187.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TRƯỜNG THỊNH GROUP', 'số 46 Đường số 2 Cư xá Chu Văn An, Phường 26, Quận Bình Thạnh, Thành phố Hồ Chí Minh', '(028) 62762586'),
(23, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: tài sản đảm bảo Thi hành án của Chi cục Thi hành án huyện Đông Hưng, tỉnh Thái Bình', 'Có chi tiết trong thông báo niêm yết đấu giá', 2003930000, 'Trung tâm Dịch vụ đấu giá tài sản tỉnh Thái Bình', NULL, NULL, 249, NULL, '2024-07-16 08:30:00', '400,000,000 VNĐ', '2024-06-27 07:00:00', '2024-07-11 17:00:00', '2024-07-11 07:00:00', '2024-07-15 11:30:00', 'Chi cục Thi hành án huyện Đông Hưng, tỉnh Thái Bình', 'tài sản đảm bảo Thi hành án của Chi cục Thi hành án huyện Đông Hưng, tỉnh Thái Bình', 'Chi cục Thi hành án huyện Đông Hưng, tỉnh Thái Bình', 'Thị trấn Đông Hưng', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/tai-san-dam-bao-thi-hanh-an-cua-chi-cuc-thi-hanh-an-huyen-dong-hung-tinh-thai-binh-343647.html', 'Trung tâm dịch vụ đấu giá tài sản thuộc Sở Tư pháp Thái Bình', 'số 6 Hai Bà Trưng, Thành phố Thái Bình, Tỉnh Thái Bình', '02273743199'),
(24, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất tại số 929/20/1 Nguyễn Văn Tạo, ấp 1, xã Hiệp Phước, huyện Nhà Bè, Thành phố Hồ Chí Minh.', 'Cá nhân và tổ chức đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho tổ chức đấu giá tài sản theo quy định của Luật đấu giá tài sản và quy định khác của pháp luật có liên quan. Trong trường hợp pháp luật có quy định về điều kiện khi tham gia đấu giá thì người tham gia đấu giá phải đáp ứng điều kiện đó. Người tham gia đấu giá có thể ủy quyền bằng văn bản cho người khác thay mặt mình tham gia đấu giá. Địa điểm: tại Trung tâm Dịch vụ đấu giá tài sản - số 19/5 Hoàng Việt, Phường 4, quận Tân Bình, Thành phố Hồ Chí Minh.', 8169560000, 'tại số 19/5 Hoàng Việt, Phường 4, quận Tân Bình, Thành phố Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-18 14:30:00', '20 %', '2024-06-26 08:00:00', '2024-07-15 17:00:00', '2024-07-15 08:00:00', '2024-07-17 17:00:00', 'Chi cục Thi hành án dân sự huyện Nhà Bè', 'Quyền sử dụng đất và tài sản gắn liền với đất tại số 929/20/1 Nguyễn Văn Tạo, ấp 1, xã Hiệp Phước, huyện Nhà Bè, Thành phố Hồ Chí Minh.', 'tại số 929/20/1 Nguyễn Văn Tạo, ấp 1, xã Hiệp Phước, huyện Nhà Bè, Thành phố Hồ Chí Minh.', '296B Nguyễn Bình, xã Phú Xuân, huyện Nhà Bè, Thành phố Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-so-929201-nguyen-van-tao-ap-1-xa-hiep-phuoc-huyen-nha-be-thanh-pho-ho-chi-minh-343649.html', 'Trung tâm Dịch vụ bán đấu giá tài sản TPHCM', '19/5 Hoàng Việt, Phường 4, Quận Tân Bình, Thành phố Hồ Chí Minh', ''),
(25, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Xe ô tô đầu kéo nhãn hiệu KAMAZ – BKS 51C-978.56,Sơmi rơmooc sàn bửng 3 trục – Biển số 51R-204.46,Sơmi rơmooc sàn bửng 3 trục – Biển số 51R-206.11,Xe ô tô đầu kéo nhãn hiệu KAMAZ – BKS 51C-976.07', 'theo thông báo đấu giá đính kèm', 483398000, 'Công ty đấu giá hợp danh Lam Sơn Sài Gòn, địa chỉ: 111A Tân Sơn Nhì, P.Tân Sơn Nhì, Q.Tân Phú, Tp.HCM', NULL, NULL, 249, NULL, '2024-07-12 14:30:00', '48,339,800 VNĐ', '2024-06-26 08:00:00', '2024-07-09 16:30:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', 'Agribank – Chi nhánh Trung Tâm Sài Gòn', 'Xe ô tô đầu kéo nhãn hiệu KAMAZ – BKS 51C-978.56', 'Bãi xe tại đường N3, phường Bình Thuận, Quận 7, TP. HCM', '28-30-32 Mạc Thị Bưởi, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/xe-o-to-dau-keo-nhan-hieu-kamaz-bks-51c97856somi-romooc-san-bung-3-truc-bien-so-51r20446somi-romooc-san-bung-3-truc-bien-so-51r20611xe-o-to-dau-keo-nhan-hieu-kamaz-bks-51c97607-343712.html', 'Công ty đấu giá hợp danh Lam Sơn Sài Gòn', '111A Tân Sơn Nhì, phường Tân Sơn Nhì, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.22455120'),
(26, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Tài sản thế chấp của ông Nguyễn Khôi Tiệm và Bùi Thị Huệ', 'Tại công ty đấu giá hợp danh Tiến Thành', 1030000000, 'Agribank Chi nhánh huyện Sông Mã', NULL, NULL, 249, NULL, '2024-07-18 15:00:00', '103,000,000 VNĐ', '2024-07-02 08:00:00', '2024-07-15 17:30:00', '2024-07-15 08:00:00', '2024-07-17 17:30:00', 'Agribank Chi nhánh huyện Sông Mã', 'Tài sản thế chấp của ông Nguyễn Khôi Tiệm và Bùi Thị Huệ', 'Tổ dân phố 5, thị trấn Sông Mã, huyện Sông Mã, tỉnh Sơn La', 'Tổ dân phố 2, thị trấn Sông Mã', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/tai-san-the-chap-cua-ong-nguyen-khoi-tiem-va-bui-thi-hue-343711.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TIẾN THÀNH', 'Khu quy hoạch dân cư Lô số 4B, Kè suối Nậm La, phường Chiềng Lề, thành phố Sơn La (theo Quyết định số 180/QĐ-STP của Sở Tư pháp về việc thay đổi nội dung Giấy đăng ký hoạt động của doanh nghiệp đấu giá tài sản), Thành phố Sơn La, Tỉnh Sơn La', '02128 568 569'),
(27, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Bán tháo dỡ di dời vật tư: Hạt nhựa,Máy móc thiết bị đã qua sử dụng (có danh mục tài sản kèm); Địa chỉ: tại lô G Khu công nghiệp An Nghiệp, ấp Phụng Hiệp, huyện Châu Thành, tỉnh Sóc Trăng,Khuôn mẫu dùng cho máy ép nhựa', 'Địa điểm: Công ty Đấu giá Hợp danh Đất Mũi Chi nhánh tỉnh Sóc Trăng, Số 18B, đường Trần Bình Trọng, khóm 1, phường 2, thành phố Sóc Trăng, tỉnh Sóc Trăng\n- Điều kiện cách thức đăng ký tham gia đấu giá: Tổ chức, cá nhân đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho tổ chức đấu giá tài sản theo quy định của Luật đấu giá tài sản (trừ các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4, Điều 38 Luật đấu giá tài sản 2016) và quy định khác của pháp luật có liên quan; Tổ chức, cá nhân đăng ký tham gia đấu giá tài sản đến trực tiếp Công ty để đăng ký tham gia đấu giá tài sản, khi đến đăng ký tham gia đấu giá tài sản phải có bản sao giấy CMND/CCCD (nếu là cá nhân); Bản sao giấy chứng nhận ĐKKD, giấy CMND/CCCD (nếu là tổ chức) mang bản chính để đối chiếu', 272472000, 'Số 18B, đường Trần Bình Trọng, khóm 1, phường 2, thành phố Sóc Trăng, tỉnh Sóc Trăng', NULL, NULL, 249, NULL, '2024-07-19 15:00:00', '27,247,177 VNĐ', '2024-06-27 07:00:00', '2024-07-17 15:00:00', '2024-07-15 15:00:00', '2024-07-18 15:00:00', 'Cục thi hành án dân sự tỉnh Sóc Trăng', 'Bán tháo dỡ di dời vật tư: Hạt nhựa', 'lô G Khu công nghiệp An Nghiệp, ấp Phụng Hiệp, huyện Châu Thành, tỉnh Sóc Trăng', 'Đường Võ Nguyên Giáp, khóm 4, phường 4,', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ban-thao-do-di-doi-vat-tu-hat-nhuamay-moc-thiet-bi-da-qua-su-dung-co-danh-muc-tai-san-kem-dia-chi-tai-lo-g-khu-cong-nghiep-an-nghiep-ap-phung-hiep-huyen-chau-thanh-tinh-soc-trangkhuon-mau-dung-cho-may-ep-nhua--343714.html', 'Công ty đấu giá hợp danh Đất Mũi', 'số 15/2, Lâm Thành Mậu, Thành phố Cà Mau, Tỉnh Cà Mau', '02903540409'),
(28, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Bán tháo dỡ di dời hệ thống khuôn mẫu dùng cho máy ép nhựa  ,Khối kim loại dùng làm khuôn mẫu: (có danh mục kèm) địa chỉ: Tại lô G Khu công nghiệp An Nghiệp, ấp Phụng Hiệp, xã An Hiệp, huyện Châu Thành, tỉnh Sóc Trăng,Khuôn mẫu + khuôn lẻ', 'Địa điểm: Công ty Đấu giá Hợp danh Đất Mũi Chi nhánh tỉnh Sóc Trăng, Số 18B, đường Trần Bình Trọng, khóm 1, phường 2, thành phố Sóc Trăng, tỉnh Sóc Trăng\n- Điều kiện cách thức đăng ký tham gia đấu giá: Tổ chức, cá nhân đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho tổ chức đấu giá tài sản theo quy định của Luật đấu giá tài sản (trừ các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4, Điều 38 Luật đấu giá tài sản 2016) và quy định khác của pháp luật có liên quan; Tổ chức, cá nhân đăng ký tham gia đấu giá tài sản đến trực tiếp Công ty để đăng ký tham gia đấu giá tài sản, khi đến đăng ký tham gia đấu giá tài sản phải có bản sao giấy CMND/CCCD (nếu là cá nhân); Bản sao giấy chứng nhận ĐKKD, giấy CMND/CCCD (nếu là tổ chức) mang bản chính để đối chiếu.', 1418980000, 'Số 18B, đường Trần Bình Trọng, khóm 1, phường 2, thành phố Sóc Trăng, tỉnh Sóc Trăng', NULL, NULL, 249, NULL, '2024-07-19 09:30:00', '141,898,270 VNĐ', '2024-06-27 07:00:00', '2024-07-17 09:30:00', '2024-07-15 09:30:00', '2024-07-18 09:30:00', 'Cục thi hành án dân sự tỉnh Sóc Trăng', 'Bán tháo dỡ di dời hệ thống khuôn mẫu dùng cho máy ép nhựa', 'lô G Khu công nghiệp An Nghiệp, ấp Phụng Hiệp, xã An Hiệp, huyện Châu Thành, tỉnh Sóc Trăng', 'Đường Võ Nguyên Giáp,, khóm 4, phường 4,', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ban-thao-do-di-doi-he-thong-khuon-mau-dung-cho-may-ep-nhua-khoi-kim-loai-dung-lam-khuon-mau-co-danh-muc-kem-dia-chi-tai-lo-g-khu-cong-nghiep-an-nghiep-ap-phung-hiep-xa-an-hiep-huyen-chau-thanh-tinh-soc-trangkhuon-mau-khuon-le-343713.html', 'Công ty đấu giá hợp danh Đất Mũi', 'số 15/2, Lâm Thành Mậu, Thành phố Cà Mau, Tỉnh Cà Mau', '02903540409'),
(29, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Nhà cấp 4 khuôn viên của UBND xã Nghi Liên, Nhà văn hóa xóm Kim Yên, sân vận động của UBND xã Nghi Liên', 'Theo tb chi tiết đính kèm', 51699000, 'Trung tâm Dịch vụ đấu giá tài sản - Sở Tư pháp Nghệ An', NULL, NULL, 249, NULL, '2024-07-10 15:15:00', '10,000,000 VNĐ', '2024-06-20 07:00:00', '2024-07-05 17:00:00', '2024-07-05 07:00:00', '2024-07-09 17:00:00', 'UBND xã Nghi Liên', 'Nhà cấp 4 khuôn viên của UBND xã Nghi Liên, Nhà văn hóa xóm Kim Yên, sân vận động của UBND xã Nghi Liên', 'xã Nghi Liên, thành phố Vinh', 'Xã Nghi Liên', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/nha-cap-4-khuon-vien-cua-ubnd-xa-nghi-lien-nha-van-hoa-xom-kim-yen-san-van-dong-cua-ubnd-xa-nghi-lien-343717.html', 'Trung tâm dịch vụ đấu giá tài sản tỉnh Nghệ An', 'Số 2 đường Trần Huy Liệu, thành phố Vinh, tỉnh Nghệ An, Thành phố Vinh, Tỉnh Nghệ An', ''),
(30, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Gỗ tạp (Dẻ, trường, thành ngạnh… ) Gỗ nguyên liệu 4,555m3 (tương đương 3,266 tấn); Củi: 5,955 ster( Tương đương 2,989 tấn);  Gỗ Thông: Gỗ nguyên liệu 5,089m3 (Tương đương 3,396 tấn);  Củi: 7,270 Ster( Tương đương 3,396 tấn); Gỗ  Keo: Gỗ nguyên liệu 1...', 'Theo thông báo của Trung tâm', 23154200, 'Trung tâm DVĐGTS Nghệ An', NULL, NULL, 249, NULL, '2024-07-10 08:30:00', '4,000,000 VNĐ', '2024-06-21 07:00:00', '2024-07-05 17:00:00', '2024-07-05 07:00:00', '2024-07-09 17:00:00', 'Ban quản lý rừng phòng hộ Bắc Nghệ An', 'Gỗ tạp (Dẻ, trường, thành ngạnh… ) Gỗ nguyên liệu 4,555m3 (tương đương 3,266 tấn); Củi: 5,955 ster( Tương đương 2,989 tấn); Gỗ Thông: Gỗ nguyên liệu 5,089m3 (Tương đương 3,396 tấn); Củi: 7,270 Ster( Tương đương 3,396 tấn); Gỗ Keo: Gỗ nguyên liệu 19,839m3 (Tương đương 11,449 tấn); Củi: 10,568 Ster (Tương đương 4,269 tấn của Ban quản lý rừng phòng hộ Bắc Nghệ An', 'Tại trạm quản lý bảo vệ rừng Quỳnh Xuân thuộc Ban quản lý rừng phòng hộ Bắc Nghệ An', 'Khối 11, thị trấn Cầu Giát, huyện Quỳnh Lưu, tỉnh Nghệ An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/go-tap-de-truong-thanh-nganh-go-nguyen-lieu-4555m3-tuong-duong-3266-tan-cui-5955-ster-tuong-duong-2989-tan-go-thong-go-nguyen-lieu-5089m3-tuong-duong-3396-tan-cui-7270-ster-tuong-duong-3396-tan-go-keo-go-nguyen-lieu-19839m3-tuong-duong-11449-tan-cui-10568-ster-tuong-duong-4269-tan-cua-ban-quan-ly-rung-phong-ho-bac-nghe-an-343716.html', 'Trung tâm dịch vụ đấu giá tài sản tỉnh Nghệ An', 'Số 2 đường Trần Huy Liệu, thành phố Vinh, tỉnh Nghệ An, Thành phố Vinh, Tỉnh Nghệ An', ''),
(31, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích: 942m2; Thuộc thửa đất số: 82; Tờ bản đồ số: 44; Mục đích sử dụng đất: Đất ở tại nông thôn: 200m2, Đất trồng cây lâu năm 742m2; Thời hạn sử dụng: Đất ở tại nông thôn: Lâu dài, Đất trồng cây lâu năm: Đến ngày 15/10/2043; tọ...', 'Tổ chức, cá nhân đủ điều kiện tham gia đấu giá nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho Công ty Đấu Giá Hợp danh Bến Thành theo quy định', 1208700000, 'số 2 Đường 8B, khu phố 5, Phường An Phú, TP. Thủ Đức, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-15 09:00:00', '10 %', '2024-06-21 08:00:00', '2024-07-12 17:00:00', '2024-07-10 08:00:00', '2024-07-12 17:00:00', 'Ngân hàng TMCP Việt Nam Thương Tín', 'Quyền sử dụng đất diện tích: 942m2; Thuộc thửa đất số: 82; Tờ bản đồ số: 44; Mục đích sử dụng đất: Đất ở tại nông thôn: 200m2, Đất trồng cây lâu năm 742m2; Thời hạn sử dụng: Đất ở tại nông thôn: Lâu dài, Đất trồng cây lâu năm: Đến ngày 15/10/2043; tọa lạc tại: Xã Tân Văn, Huyện Lâm Hà, tỉnh Lâm Đồng', 'Xã Tân Văn, Huyện Lâm Hà, tỉnh Lâm Đồng', 'Số 47 Trần Hưng Đạo, Phường 3, Thành phố Sóc Trăng, tỉnh Sóc Trăng', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-942m2-thuoc-thua-dat-so-82-to-ban-do-so-44-muc-dich-su-dung-dat-dat-o-tai-nong-thon-200m2-dat-trong-cay-lau-nam-742m2-thoi-han-su-dung-dat-o-tai-nong-thon-lau-dai-dat-trong-cay-lau-nam-den-ngay-15102043-toa-lac-tai-xa-tan-van-huyen-lam-ha-tinh-lam-dong-343719.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(32, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Theo thông báo của Trung tâm', 1642200000, 'Hội trường Ban quản lý rừng phòng hộ Yên Thành. Địa chỉ: Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An.', NULL, NULL, 249, NULL, '2024-07-08 08:00:00', '20 %', '2024-06-24 07:00:00', '2024-07-03 17:00:00', '2024-07-03 07:00:00', '2024-07-05 17:00:00', 'Ban quản lý rừng phòng hộ Yên Thành', 'Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Ban Quản lý rừng phòng hộ Yên Thành', 'Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-cay-keo-va-cay-bach-dan-nguyen-lieu-voi-tong-dien-tich-1578-ha-343718.html', 'Trung tâm dịch vụ đấu giá tài sản tỉnh Nghệ An', 'Số 2 đường Trần Huy Liệu, thành phố Vinh, tỉnh Nghệ An, Thành phố Vinh, Tỉnh Nghệ An', ''),
(33, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền thuê mặt bằng khai thác dịch vụ bãi đậu xe Taxi tại Bệnh viện Đa khoa Sa Đéc năm 2024', 'Tất cả các đơn vị/doanh nghiệp có nhu cầu, có năng lực tài chính đáp ứng đủ điều kiện quy định tại Quy chế đấu giá chuẩn bị giấy tờ khi thực hiện thủ tục đăng ký mua hồ sơ tham gia đấu giá, gồm có: \n- Giấy phép đăng ký kinh doanh thuộc lĩnh vực dịch vụ Taxi do cơ quan có thẩm quyền cấp; \n- CCCD/CMND của người đại diện theo pháp luật;\n- Giấy ủy quyền và CCCD/CMND của người được ủy quyền (trường hợp ủy quyền);\n- Cam kết đáp ứng đủ các điều kiện quy định tại Phụ lục 01 kèm theo', 13200000, 'Bệnh viện Đa khoa Sa Đéc - Số 153 Nguyễn Sinh Sắc, khóm Hòa Khánh, phường 2, thành phố Sa Đéc tỉnh Đồng Tháp', NULL, NULL, 249, NULL, '2024-07-15 14:00:00', '2,500,000 VNĐ', '2024-06-26 08:00:00', '2024-07-12 16:00:00', '2024-07-10 08:00:00', '2024-07-12 16:00:00', 'Bệnh viện Đa khoa Sa Đéc', 'Quyền thuê mặt bằng khai thác dịch vụ bãi đậu xe Taxi tại Bệnh viện Đa khoa Sa Đéc năm 2024', 'Tại: Bệnh viện Đa khoa Sa Đéc - Số 153 Nguyễn Sinh Sắc, khóm Hòa Khánh, phường 2, thành phố Sa Đéc tỉnh Đồng Tháp', 'Số 153 Nguyễn Sinh Sắc, khóm Hòa Khánh, phường 2, thành phố Sa Đéc tỉnh Đồng Tháp', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-thue-mat-bang-khai-thac-dich-vu-bai-dau-xe-taxi-tai-benh-vien-da-khoa-sa-dec-nam-2024-343699.html', 'Công ty đấu giá hợp danh Đấu giá Việt Nam', 'Ô số 6, tầng 1, tòa nhà Sunrise IIA, N02A, khu đô thị Sài Đồng, phường Phúc Đồng, Quận Long Biên, Thành phố Hà Nội', ''),
(34, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Theo thông báo của Trung tâm', 1642200000, 'Hội trường Ban quản lý rừng phòng hộ Yên Thành. Địa chỉ: Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An.', NULL, NULL, 249, NULL, '2024-07-08 08:00:00', '20 %', '2024-06-24 07:00:00', '2024-07-03 17:00:00', '2024-07-03 07:00:00', '2024-07-05 17:00:00', 'Ban quản lý rừng phòng hộ Yên Thành', 'Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Ban Quản lý rừng phòng hộ Yên Thành', 'Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-cay-keo-va-cay-bach-dan-nguyen-lieu-voi-tong-dien-tich-1578-ha-343718.html', 'Trung tâm dịch vụ đấu giá tài sản tỉnh Nghệ An', 'Số 2 đường Trần Huy Liệu, thành phố Vinh, tỉnh Nghệ An, Thành phố Vinh, Tỉnh Nghệ An', ''),
(35, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Bất động sản tại thửa đất số 343, tờ bản đồ số 19, diện tích: 76.1 m2; tọa lạc địa chỉ tại Thôn 3, xã Tiên Thọ, huyện Tiên Phước, tỉnh Quảng Nam.', 'Cá nhân, tổ chức theo quy định tại Điều 38 Luật ĐGTS liên hệ tại số 79 đường số 44, phường 14, quận Gò Vấp, TP. Hồ Chí Minh để đăng ký tham gia. ĐT: 0888.154.369.', 646380000, 'Công ty Đấu giá Hợp danh Đông Nam - Chi nhánh TP.Hồ Chí Minh: Số 79 đường 44, phường 14, quận Gò Vấp, TP. Hồ Chí Minh hoặc tại địa chỉ số 191 Hoàng Diệu, Quận Hải Châu, TP. Đà Nẵng. Công ty Đấu giá Hợp danh Đông Nam sẽ thông báo địa điểm cụ thể khi hết thời hạn đăng ký.', NULL, NULL, 249, NULL, '2024-07-19 14:30:00', '64,638,000 VNĐ', '2024-06-27 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'Ngân hàng TMCP Hàng Hải Việt Nam', 'Bất động sản tại thửa đất số 343, tờ bản đồ số 19, diện tích: 76.1 m2; tọa lạc địa chỉ tại Thôn 3, xã Tiên Thọ, huyện Tiên Phước, tỉnh Quảng Nam.', 'tại nơi có tài sản', 'Số 54A Nguyễn Chí Thanh, P. Láng Thượng, Q. Đống Đa, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/bat-dong-san-tai-thua-dat-so-343-to-ban-do-so-19-dien-tich-761-m2-toa-lac-dia-chi-tai-thon-3-xa-tien-tho-huyen-tien-phuoc-tinh-quang-nam--343700.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(36, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Theo thông báo của Trung tâm', 1642200000, 'Hội trường Ban quản lý rừng phòng hộ Yên Thành. Địa chỉ: Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An.', NULL, NULL, 249, NULL, '2024-07-08 08:00:00', '20 %', '2024-06-24 07:00:00', '2024-07-03 17:00:00', '2024-07-03 07:00:00', '2024-07-05 17:00:00', 'Ban quản lý rừng phòng hộ Yên Thành', 'Quyền khai thác cây Keo và cây Bạch đàn nguyên liệu với tổng diện tích 15,78 ha.', 'Ban Quản lý rừng phòng hộ Yên Thành', 'Xóm Tân Xuân, xã Xuân Thành, huyện Yên Thành, tỉnh Nghệ An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-cay-keo-va-cay-bach-dan-nguyen-lieu-voi-tong-dien-tich-1578-ha-343718.html', 'Trung tâm dịch vụ đấu giá tài sản tỉnh Nghệ An', 'Số 2 đường Trần Huy Liệu, thành phố Vinh, tỉnh Nghệ An, Thành phố Vinh, Tỉnh Nghệ An', ''),
(37, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Lô tài sản là tang vật, phương tiện vi phạm hành chính trong hoạt động thương mại, sản xuất, buôn bán hàng giả, hàng cấm và bảo vệ quyền lợi người tiêu dùng, bị tịch thu sung quỹ nhà nước', '- Địa điểm đăng ký tham gia đấu giá: Công ty Đấu giá hợp danh Thanh Nam (Số 181, Quốc Lộ 1, Khu phố Thanh Xuân, phường 5, thành phố Tân An, tỉnh Long An).\n- Điều kiện đăng ký tham gia đấu giá: Người có đủ điều kiện theo quy định của pháp luật thì đăng ký tham gia đấu giá.\n- Cách thức đăng ký tham gia đấu giá:\n+ Người đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho Công ty Đấu giá hợp danh Thanh Nam theo quy định và không thuộc đối tượng quy định tại khoản 4 Điều 38 Luật Đấu giá tài sản. \n+ Người nộp hồ sơ trực tiếp tại Công ty đấu giá hợp danh Thanh Nam. Trường hợp nộp thay thì phải có giấy ủy quyền hoặc hợp đồng ủy quyền (có công chứng hoặc chứng thực theo quy định) cho người thay thế mình khi đến nộp hồ sơ đăng ký tham gia đấu giá.', 208835000, 'Công an huyện Thạnh Hóa (Khu phố 3, thị trấn Thạnh Hóa, huyện Thạnh Hóa, tỉnh Long An).', NULL, NULL, 249, NULL, '2024-07-15 09:00:00', '41,000,000 VNĐ', '2024-06-26 07:30:00', '2024-07-10 17:00:00', '2024-07-10 07:30:00', '2024-07-12 16:30:00', 'Công an huyện Thạnh Hóa', 'Lô tài sản là tang vật, phương tiện vi phạm hành chính trong hoạt động thương mại, sản xuất, buôn bán hàng giả, hàng cấm và bảo vệ quyền lợi người tiêu dùng, bị tịch thu sung quỹ nhà nước', 'Công an huyện Thạnh Hóa', 'Khu phố 3, thị trấn Thạnh Hóa, huyện Thạnh Hóa, tỉnh Long An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/lo-tai-san-la-tang-vat-phuong-tien-vi-pham-hanh-chinh-trong-hoat-dong-thuong-mai-san-xuat-buon-ban-hang-gia-hang-cam-va-bao-ve-quyen-loi-nguoi-tieu-dung-bi-tich-thu-sung-quy-nha-nuoc-343701.html', 'Công ty đấu giá hợp danh Thanh Nam', 'Số 181, Quốc lộ 1, khu phố Thanh Xuân, phường 5, Thành phố Tân An, Tỉnh Long An', '0966 607 744'),
(38, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 20 máy phay CNC dùng để gia công kim loại, Model UG4535T2 SP2, số seri từ 20190403-4535T2-SP2 đến 20190422-4535T2-SP2, điện áp 220V, công suất 50-60Hz.,10 máy phay CNC dùng để gia công kim loại, model G40N, điện áp 220V, công suất 50-60Hz.,10 máy pha...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh.\n+ Địa chỉ: Tầng 1, số nhà 23, đường Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 8502620000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-18 14:00:00', '1,700,000,000 VNĐ', '2024-06-27 10:30:00', '2024-07-15 17:00:00', '2024-07-15 00:00:00', '2024-07-17 17:00:00', 'Chi cục thi hành án dân sự thành phố Bắc Ninh, tỉnh Bắc Ninh', '20 máy phay CNC dùng để gia công kim loại, Model UG4535T2 SP2, số seri từ 20190403-4535T2-SP2 đến 20190422-4535T2-SP2, điện áp 220V, công suất 50-60Hz.', 'CCTHADS TP Bắc Ninh', 'Số 80 đường Lê Văn Thịnh, phường Suối Hoa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/20-may-phay-cnc-dung-de-gia-cong-kim-loai-model-ug4535t2-sp2-so-seri-tu-201904034535t2sp2-den-201904224535t2sp2-dien-ap-220v-cong-suat-5060hz10-may-phay-cnc-dung-de-gia-cong-kim-loai-model-g40n-dien-ap-220v-cong-suat-5060hz10-may-phay-cnc-dung-de-gia-cong-kim-loai-model-ug4535t2-sp2-so-seri-tu-201904234535t2sp2-den-201904324535t2sp2-dien-ap-220v-cong-suat-5060hz-343702.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(39, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 198, tờ bản đồ số 20, diện tích 112,5m2 tại phường Đại Phúc, thành phố Bắc Ninh, tỉnh Bắc Ninh. Giấy chứng nhận Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đấ...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh.\n+ Địa chỉ: Tầng 1, số nhà 23, đường Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 10191500000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-25 08:30:00', '2,000,000,000 VNĐ', '2024-06-27 10:30:00', '2024-07-22 17:00:00', '2024-07-22 00:00:00', '2024-07-24 17:00:00', 'Chi cục thi hành án dân sự thành phố Bắc Ninh, tỉnh Bắc Ninh', 'Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 198, tờ bản đồ số 20, diện tích 112,5m2 tại phường Đại Phúc, thành phố Bắc Ninh, tỉnh Bắc Ninh. Giấy chứng nhận Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất số CK 031112, số vào sổ cấp GCN: CS06999 do Sở Tài nguyên và Môi trường tỉnh Bắc Ninh cấp ngày 24/7/2017 cho ông Ngô Đắc Thời và bà Biện Thị Lý. Ngày 29/11/2018 xác nhận chuyển nhượng cho ông Nguyễn Gia Lâm và vợ là bà Nguyễn Thị Hạnh.', 'phường Đại Phúc', 'Số 80 đường Lê Văn Thịnh, phường Suối Hoa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-khac-gan-lien-voi-dat-thuoc-thua-dat-so-198-to-ban-do-so-20-dien-tich-1125m2-tai-phuong-dai-phuc-thanh-pho-bac-ninh-tinh-bac-ninh-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-ck-031112-so-vao-so-cap-gcn-cs06999-do-so-tai-nguyen-va-moi-truong-tinh-bac-ninh-cap-ngay-2472017-cho-ong-ngo-dac-thoi-va-ba-bien-thi-ly-ngay-29112018-xac-nhan-chuyen-nhuong-cho-ong-nguyen-gia-lam-va-vo-la-ba-nguyen-thi-hanh-343703.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(40, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Hàng hóa gồm phụ tùng xe gắn máy như: Séc măng (vòng bạc), bố nồi, bộ nhông sên dĩa, hộp số xe, kính tròn đôi, kính vuông đôi, nòng xi lanh, đề khởi động, vòng răng của hộp số…; các hàng hóa khác như: lò xo tăng đưa thanh ray cẩu trục, tủ điều khiển,...', '- Địa điểm đăng ký tham gia đấu giá:\n+ Công ty Đấu giá hợp danh Thanh Nam (Số 181, Quốc Lộ 1, Khu phố Thanh Xuân, phường 5, thành phố Tân An, tỉnh Long An), hoặc tại.\n+ Chi nhánh 2 Công ty Đấu giá hợp danh Thanh Nam (Số 189, đường Nguyễn Trung Trực, ấp Mỹ An, xã Mỹ Phong, thành phố Mỹ Tho, tỉnh Tiền Giang).\n- Điều kiện đăng ký tham gia đấu giá: Người có đủ điều kiện theo quy định của pháp luật thì đăng ký tham gia đấu giá.\n- Cách thức đăng ký tham gia đấu giá:\n+ Người đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho Công ty Đấu giá hợp danh Thanh Nam theo quy định và không thuộc đối tượng quy định tại khoản 4 Điều 38 Luật Đấu giá tài sản. \n+ Người nộp hồ sơ trực tiếp tại Công ty đấu giá hợp danh Thanh Nam hoặc tại Chi nhánh 2 Công ty đấu giá hợp danh Thanh Nam. Trường hợp nộp thay thì phải có giấy ủy quyền hoặc hợp đồng ủy quyền (có công chứng hoặc chứng thực theo quy định) cho người thay thế mình khi đến nộp hồ sơ đăng ký tham gia đấu giá', 1353430000, 'chi nhánh 2 Công ty đấu giá hợp danh Thanh Nam (Số 189, đường Nguyễn Trung Trực, ấp Mỹ An, xã Mỹ Phong, thành phố Mỹ Tho, tỉnh Tiền Giang)', NULL, NULL, 249, NULL, '2024-07-10 14:00:00', '270,000,000 VNĐ', '2024-06-24 07:30:00', '2024-07-05 17:00:00', '2024-07-05 07:30:00', '2024-07-09 16:30:00', 'Chi cục Hải quan cửa khẩu cảng Mỹ Tho', 'Hàng hóa gồm phụ tùng xe gắn máy như: Séc măng (vòng bạc), bố nồi, bộ nhông sên dĩa, hộp số xe, kính tròn đôi, kính vuông đôi, nòng xi lanh, đề khởi động, vòng răng của hộp số…; các hàng hóa khác như: lò xo tăng đưa thanh ray cẩu trục, tủ điều khiển, dầu thủy lực, màng film cuộn dài chống nhiệt, băng keo, máy triệt lông, đèn xông tinh dầu, túi nhựa ....', 'Chi cục Hải quan cửa khẩu Cảng Mỹ Tho', 'Số 29, Ngô Gia Tự, xã Trung An, thành phố Mỹ Tho, tỉnh Tiền Giang', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/hang-hoa-gom-phu-tung-xe-gan-may-nhu-sec-mang-vong-bac-bo-noi-bo-nhong-sen-dia-hop-so-xe-kinh-tron-doi-kinh-vuong-doi-nong-xi-lanh-de-khoi-dong-vong-rang-cua-hop-so-cac-hang-hoa-khac-nhu-lo-xo-tang-dua-thanh-ray-cau-truc-tu-dieu-khien-dau-thuy-luc-mang-film-cuon-dai-chong-nhiet-bang-keo-may-triet-long-den-xong-tinh-dau-tui-nhua--343705.html', 'Công ty đấu giá hợp danh Thanh Nam', 'Số 181, Quốc lộ 1, khu phố Thanh Xuân, phường 5, Thành phố Tân An, Tỉnh Long An', '0966 607 744'),
(41, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 70, tờ bản đồ số 19, diện tích 82,5m2 địa chỉ thửa đất tại khu 10, phường Đại Phúc, thành phố Bắc Ninh, tỉnh Bắc Ninh. Giấy chứng nhận Quyền sử dụng đất số AI 821557, số vào sổ cấp ...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh.\n+ Địa chỉ: Tầng 1, số nhà 23, đường Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 7078260000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-25 09:30:00', '1,400,000,000 VNĐ', '2024-06-27 10:30:00', '2024-07-22 17:00:00', '2024-07-22 00:00:00', '2024-07-24 17:00:00', 'Chi cục thi hành án dân sự thành phố Bắc Ninh, tỉnh Bắc Ninh', 'Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 70, tờ bản đồ số 19, diện tích 82,5m2 địa chỉ thửa đất tại khu 10, phường Đại Phúc, thành phố Bắc Ninh, tỉnh Bắc Ninh. Giấy chứng nhận Quyền sử dụng đất số AI 821557, số vào sổ cấp giấy chứng nhận quyền sử dụng đất: H00681 do UBND thành phố Bắc Ninh cấp ngày 03/7/2007 cho ông Nguyễn Văn Kiệm và bà Trần Thị Tư. Ngày 28/01/2008 xác nhận chuyển nhượng cho ông Ngô Đắc Thời, bà Biện Thị Lý. Ngày 29/11/2018 xác nhận chuyển nhượng cho ông Nguyễn Gia Lâm và vợ là bà Nguyễn Thị Hạnh.', 'phường Đại Phúc', 'Số 80 đường Lê Văn Thịnh, phường Suối Hoa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-khac-gan-lien-voi-dat-thuoc-thua-dat-so-70-to-ban-do-so-19-dien-tich-825m2-dia-chi-thua-dat-tai-khu-10-phuong-dai-phuc-thanh-pho-bac-ninh-tinh-bac-ninh-giay-chung-nhan-quyen-su-dung-dat-so-ai-821557-so-vao-so-cap-giay-chung-nhan-quyen-su-dung-dat-h00681-do-ubnd-thanh-pho-bac-ninh-cap-ngay-0372007-cho-ong-nguyen-van-kiem-va-ba-tran-thi-tu-ngay-28012008-xac-nhan-chuyen-nhuong-cho-ong-ngo-dac-thoi-ba-bien-thi-ly-ngay-29112018-xac-nhan-chuyen-nhuong-cho-ong-nguyen-gia-lam-va-vo-la-ba-nguyen-thi-hanh-343704.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(42, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và toàn bộ tài sản khác gắn liền với đất thuộc thửa đất số 08, tờ bản đồ số 27, diện tích 1.220,9 m2, mục đích sử dụng: Đất cơ sở y tế; thời hạn sử dụng đến 30/07/2059, tọa lạc tại: phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh\n+ Địa chỉ: Tầng 1, số nhà 23 Lê Đức Thọ,  phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 60902800000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-25 10:30:00', '12,000,000,000 VNĐ', '2024-06-27 10:00:00', '2024-07-22 17:00:00', '2024-07-22 00:00:00', '2024-07-24 17:00:00', 'Chi cục thi hành án dân sự thành phố Bắc Ninh, tỉnh Bắc Ninh', 'Quyền sử dụng đất và toàn bộ tài sản khác gắn liền với đất thuộc thửa đất số 08, tờ bản đồ số 27, diện tích 1.220,9 m2, mục đích sử dụng: Đất cơ sở y tế; thời hạn sử dụng đến 30/07/2059, tọa lạc tại: phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh theo Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BL 158312, số vào sổ cấp GCN CT 04259 do UBND tỉnh Bắc Ninh cấp ngày 21/02/2013 cho Công ty Cổ phần Thương mại - Dịch vụ - Xây dựng Tân Hằng Hải.', 'phường Kinh Bắc', 'Số 80 đường Lê Văn Thịnh, phường Suối Hoa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-toan-bo-tai-san-khac-gan-lien-voi-dat-thuoc-thua-dat-so-08-to-ban-do-so-27-dien-tich-12209-m2-muc-dich-su-dung-dat-co-so-y-te-thoi-han-su-dung-den-30072059-toa-lac-tai-phuong-kinh-bac-thanh-pho-bac-ninh-tinh-bac-ninh-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bl-158312-so-vao-so-cap-gcn-ct-04259-do-ubnd-tinh-bac-ninh-cap-ngay-21022013-cho-cong-ty-co-phan-thuong-mai-dich-vu-xay-dung-tan-hang-hai-343706.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(43, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 210, tờ bản đồ số 19, diện tích 72,7m2, tại thôn Quảng Bố, xã Quảng Phú, huyện Lương Tài, tỉnh Bắc Ninh. Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với ...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh.\n+ Địa chỉ: Tầng 1, số nhà 23, đường Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 1156890000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-25 14:30:00', '200,000,000 VNĐ', '2024-06-27 14:45:00', '2024-07-22 17:00:00', '2024-07-22 00:00:00', '2024-07-24 17:00:00', 'Chi cục thi hành án dân sự huyện Lương Tài', 'Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 210, tờ bản đồ số 19, diện tích 72,7m2, tại thôn Quảng Bố, xã Quảng Phú, huyện Lương Tài, tỉnh Bắc Ninh. Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BN495681, số vào sổ cấp GCN: CH00518/QĐ490 do UBND huyện Lương Tài cấp ngày 29/3/2013 mang tên ông Trương Văn Thanh và bà Nguyễn Thị Tâm.', 'xxa Quảng Phú', 'Thị trấn Thứa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-thua-dat-so-210-to-ban-do-so-19-dien-tich-727m2-tai-thon-quang-bo-xa-quang-phu-huyen-luong-tai-tinh-bac-ninh-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bn495681-so-vao-so-cap-gcn-ch00518qd490-do-ubnd-huyen-luong-tai-cap-ngay-2932013-mang-ten-ong-truong-van-thanh-va-ba-nguyen-thi-tam-343707.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(44, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích: 942m2; Thuộc thửa đất số: 82; Tờ bản đồ số: 44; Mục đích sử dụng đất: Đất ở tại nông thôn: 200m2, Đất trồng cây lâu năm 742m2; Thời hạn sử dụng: Đất ở tại nông thôn: Lâu dài, Đất trồng cây lâu năm: Đến ngày 15/10/2043; tọ...', 'Tổ chức, cá nhân đủ điều kiện tham gia đấu giá nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho Công ty Đấu Giá Hợp danh Bến Thành theo quy định', 1208700000, 'số 2 Đường 8B, khu phố 5, Phường An Phú, TP. Thủ Đức, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-15 09:00:00', '10 %', '2024-06-21 08:00:00', '2024-07-12 17:00:00', '2024-07-10 08:00:00', '2024-07-12 17:00:00', 'Ngân hàng TMCP Việt Nam Thương Tín', 'Quyền sử dụng đất diện tích: 942m2; Thuộc thửa đất số: 82; Tờ bản đồ số: 44; Mục đích sử dụng đất: Đất ở tại nông thôn: 200m2, Đất trồng cây lâu năm 742m2; Thời hạn sử dụng: Đất ở tại nông thôn: Lâu dài, Đất trồng cây lâu năm: Đến ngày 15/10/2043; tọa lạc tại: Xã Tân Văn, Huyện Lâm Hà, tỉnh Lâm Đồng', 'Xã Tân Văn, Huyện Lâm Hà, tỉnh Lâm Đồng', 'Số 47 Trần Hưng Đạo, Phường 3, Thành phố Sóc Trăng, tỉnh Sóc Trăng', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-942m2-thuoc-thua-dat-so-82-to-ban-do-so-44-muc-dich-su-dung-dat-dat-o-tai-nong-thon-200m2-dat-trong-cay-lau-nam-742m2-thoi-han-su-dung-dat-o-tai-nong-thon-lau-dai-dat-trong-cay-lau-nam-den-ngay-15102043-toa-lac-tai-xa-tan-van-huyen-lam-ha-tinh-lam-dong-343719.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(45, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích 624,4m2 thuộc thửa đất số 52, tờ bản đồ số 5 và trạm bán lẻ xăng dầu toạ lạc tại ấp Phú Ninh, xã Song Phú, huyện Tam Bình, tỉnh Vĩnh Long theo Giấy chứng nhận Quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền v...', 'Cá nhân, tổ chức quy định tại Điều 38 Luật ĐGTS liên hệ tại CN.Đồng Tháp: Số 33 Lưu Văn Lang, K.Mỹ Thượng, P.Mỹ Phú, TP.Cao Lãnh, Đồng Tháp. ĐT: 0888.164.369.', 10000000000, 'Công ty Đấu giá Hợp danh Đông Nam – Chi nhánh Đồng Tháp: Số 33, đường Lưu Văn Lang, khóm Mỹ Thượng, phường Phú Mỹ, thành phố Cao Lãnh, tỉnh Đồng Tháp.', NULL, NULL, 249, NULL, '2024-07-19 14:30:00', '1,000,000,000 VNĐ', '2024-06-26 07:45:00', '2024-07-16 17:00:00', '2024-07-16 07:45:00', '2024-07-18 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Sa Đéc', 'Quyền sử dụng đất diện tích 624,4m2 thuộc thửa đất số 52, tờ bản đồ số 5 và trạm bán lẻ xăng dầu toạ lạc tại ấp Phú Ninh, xã Song Phú, huyện Tam Bình, tỉnh Vĩnh Long theo Giấy chứng nhận Quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BL 838671, số vào sổ cấp GCN: CH 08667 do Ủy ban nhân dân huyện Tam Bình cấp ngày 04/7/2018, cập nhật chuyển nhượng cho ông Trịnh Thành Hưng ngày 25/7/2018. Ghi chú: Diện tích trên được ghi nhận theo diện tích trên giấy chứng nhận quyền sử dụng đất, trường hợp diện tích thực tế có thừa hoặc thiếu, bên trúng đấu giá tự chịu trách nhiệm và không có khiếu nại về sau.', 'tại nơi có tài sản', '209A Trần Hưng Đạo, phường 1, thành phố Sa Đéc, tỉnh Đồng Tháp.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-6244m2-thuoc-thua-dat-so-52-to-ban-do-so-5-va-tram-ban-le-xang-dau-toa-lac-tai-ap-phu-ninh-xa-song-phu-huyen-tam-binh-tinh-vinh-long-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bl-838671-so-vao-so-cap-gcn-ch-08667-do-uy-ban-nhan-dan-huyen-tam-binh-cap-ngay-0472018-cap-nhat-chuyen-nhuong-cho-ong-trinh-thanh-hung-ngay-2572018-ghi-chu-dien-tich-tren-duoc-ghi-nhan-theo-dien-tich-tren-giay-chung-nhan-quyen-su-dung-dat-truong-hop-dien-tich-thuc-te-co-thua-hoac-thieu-ben-trung-dau-gia-tu-chiu-trach-nhiem-va-khong-co-khieu-nai-ve-sau-343690.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(46, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất tại địa chỉ: xã Ngọc Xá, huyện Quế Võ (nay là thị xã Quế Võ), tỉnh Bắc Ninh, thửa đất số: 444, tờ bản đồ số: 31, diện tích: 115,5m2; Mục đích sử dụng: Đất ở tại nông thôn; Thời hạn sử dụng: Lâu dài theo G...', 'Khách hàng không thuộc các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và quy định của pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội\n+ Địa chỉ: Tầng 3 số 44 Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, thành phố Hà Nội.\n+ Điện thoại: 024.625.92974.', 919000000, 'Tầng 3 số 44 Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, Tp Hà Nội', NULL, NULL, 249, NULL, '2024-07-05 08:00:00', '91,900,000 VNĐ', '2024-06-26 09:30:00', '2024-07-03 17:00:00', '2024-07-02 00:00:00', '2024-07-04 17:00:00', 'Ngân hàng TMCP Quốc tế Việt Nam', 'Quyền sử dụng đất và tài sản gắn liền với đất tại địa chỉ: xã Ngọc Xá, huyện Quế Võ (nay là thị xã Quế Võ), tỉnh Bắc Ninh, thửa đất số: 444, tờ bản đồ số: 31, diện tích: 115,5m2; Mục đích sử dụng: Đất ở tại nông thôn; Thời hạn sử dụng: Lâu dài theo Giấy chứng nhận quyền sử dụng đất số DG 822146, số vào sổ cấp GCN: CS 02214 do Sở Tài nguyên và Môi trường tỉnh Bắc Ninh cấp ngày 15/8/2022 cho ông Trần Duy Hạnh. Ngày 28/9/2022 Chi nhánh văn phòng đăng ký đất đai huyện Quế Võ xác nhận thế chấp QSD đất tại Ngân hàng TMCP Quốc tế Việt Nam chi nhánh Hai Bà Trưng theo hồ sơ số 5225 ngày 28/9/2022.', 'xã Ngọc Xá', 'Tầng 1 (tầng triệt) và tầng 2 toà nhà Sailing Tower, số 111 A Pasteur, phường Bến Nghé', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-dia-chi-xa-ngoc-xa-huyen-que-vo-nay-la-thi-xa-que-vo-tinh-bac-ninh-thua-dat-so-444-to-ban-do-so-31-dien-tich-1155m2-muc-dich-su-dung-dat-o-tai-nong-thon-thoi-han-su-dung-lau-dai-theo-giay-chung-nhan-quyen-su-dung-dat-so-dg-822146-so-vao-so-cap-gcn-cs-02214-do-so-tai-nguyen-va-moi-truong-tinh-bac-ninh-cap-ngay-1582022-cho-ong-tran-duy-hanh-ngay-2892022-chi-nhanh-van-phong-dang-ky-dat-dai-huyen-que-vo-xac-nhan-the-chap-qsd-dat-tai-ngan-hang-tmcp-quoc-te-viet-nam-chi-nhanh-hai-ba-trung-theo-ho-so-so-5225-ngay-2892022-343689.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(47, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất đối với thửa đất số 84, tờ bản đồ số 01 tại địa chỉ tại thôn Tinh Mỹ, xã Trung Hoà, huyện Chương Mỹ, Tp. Hà Nội theo Giấy chứng nhận quyền sử dụng đất số S 150986, số vào sổ cấp Giấy chứng nhận quyền sử d...', 'Khách hàng không thuộc các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4 Điều 38 luật đấu giá tài sản 2016 và quy định của pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội\n+ Địa chỉ liên hệ: Tầng 3 số 44, đường Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, TP Hà Nội.\n+ Điện thoại: 024.625.92974.', 1444170000, 'Hội trường Chi cục thi hành án dân sự huyện Chương Mỹ', NULL, NULL, 249, NULL, '2024-07-26 09:30:00', '288,000,000 VNĐ', '2024-06-26 09:00:00', '2024-07-23 17:00:00', '2024-07-23 00:00:00', '2024-07-25 17:00:00', 'Chi cục thi hành án dân sự huyện Chương Mỹ', 'Quyền sử dụng đất và tài sản gắn liền với đất đối với thửa đất số 84, tờ bản đồ số 01 tại địa chỉ tại thôn Tinh Mỹ, xã Trung Hoà, huyện Chương Mỹ, Tp. Hà Nội theo Giấy chứng nhận quyền sử dụng đất số S 150986, số vào sổ cấp Giấy chứng nhận quyền sử dụng đất số 00388 QSDĐ/390/QĐ – UB do UBND huyện Chương Mỹ cấp ngày 22/7/2002 cho ông Trịnh Viết Thọ. Ngày 09/9/2019 đã làm thủ tục tặng cho ông Trịnh Viết Thật.', 'xã Trung Hoà', '120 khu Bình Sơn, thị trấn Chúc Sơn', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-doi-voi-thua-dat-so-84-to-ban-do-so-01-tai-dia-chi-tai-thon-tinh-my-xa-trung-hoa-huyen-chuong-my-tp-ha-noi-theo-giay-chung-nhan-quyen-su-dung-dat-so-s-150986-so-vao-so-cap-giay-chung-nhan-quyen-su-dung-dat-so-00388-qsdd390qd-ub-do-ubnd-huyen-chuong-my-cap-ngay-2272002-cho-ong-trinh-viet-tho-ngay-0992019-da-lam-thu-tuc-tang-cho-ong-trinh-viet-that-343691.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', '');
INSERT INTO `LandAuctions` (`LandAuctionID`, `DistrictID`, `LandAuctionCategoryID`, `Title`, `Description`, `OpenPrice`, `AuctionAddress`, `Latitude`, `Longitude`, `UserID`, `CreateAt`, `EventSchedule`, `DepositPrice`, `RegistrationStartTime`, `RegistrationEndTime`, `DepositPaymentStartTime`, `DepositPaymentEndTime`, `NamePropertyOwner`, `NameProperty`, `AddressProperty`, `AddressPropertyOwner`, `AuctionUrl`, `NameAuctionHouse`, `AddressAuctionHouse`, `PhoneNumberAuctionHouse`) VALUES
(48, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Toàn bộ khoản nợ (nợ gốc, lãi và lãi phạt đối với dư nợ gốc quá hạn) của Công ty Cổ phần Xuất nhập khẩu Vạn Tín Phát tại Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3 theo Hợp đồng tín dụng số 1602-LAV-201900381 ngày 10/5/2019.', 'Cá nhân, tổ chức theo quy định tại Điều 38 Luật ĐGTS liên hệ tại số 79 đường 44, phường 14, quận Gò Vấp, TP. HCM để xem hồ sơ khoản nợ và đăng ký tham gia. ĐT: 0888.154.369.', 75012000000, 'Công ty Đấu giá Hợp danh Đông Nam - Chi nhánh TP.Hồ Chí Minh: số 79 đường 44, phường 14, quận Gò Vấp, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-19 08:30:00', '3,750,600,000 VNĐ', '2024-06-26 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3', 'Toàn bộ khoản nợ (nợ gốc, lãi và lãi phạt đối với dư nợ gốc quá hạn) của Công ty Cổ phần Xuất nhập khẩu Vạn Tín Phát tại Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3 theo Hợp đồng tín dụng số 1602-LAV-201900381 ngày 10/5/2019.', 'tại nơi có tài sản', 'Số 112 Trần Quốc Thảo, phường Võ Thị Sáu, Quận 3, thành phố Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/toan-bo-khoan-no-no-goc-lai-va-lai-phat-doi-voi-du-no-goc-qua-han-cua-cong-ty-co-phan-xuat-nhap-khau-van-tin-phat-tai-ngan-hang-nong-nghiep-va-phat-trien-nong-thon-viet-nam-chi-nhanh-3-theo-hop-dong-tin-dung-so-1602lav201900381-ngay-1052019-343692.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(49, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất tại thửa đất 112, tờ bản đồ số 12, diện tích 236m2 tại địa chỉ Thôn 1, Xã Sen Chiểu (Nay là xã Sen Phương), Huyện Phúc Thọ, TP Hà Nội đã được UBND Huyện Phúc Thọ cấp Giấy chứng nhận quyền sử dụng đất quyền sở hữu nhà ở và tài sản kh...', 'Khách hàng không thuộc các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4 Điều 38 luật đấu giá tài sản 2016 và quy định của pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội\n+ Địa chỉ liên hệ: Tầng 3 số 44, đường Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, TP Hà Nội.\n+ Điện thoại: 024.625.92974.', 991200000, 'Tầng 3 số 44 Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, Tp Hà Nội', NULL, NULL, 249, NULL, '2024-08-02 08:30:00', '140,000,000 VNĐ', '2024-06-26 14:00:00', '2024-07-30 17:00:00', '2024-07-30 00:00:00', '2024-08-01 17:00:00', 'Chi cục thi hành án dân sự huyện Phúc Thọ', 'Quyền sử dụng đất tại thửa đất 112, tờ bản đồ số 12, diện tích 236m2 tại địa chỉ Thôn 1, Xã Sen Chiểu (Nay là xã Sen Phương), Huyện Phúc Thọ, TP Hà Nội đã được UBND Huyện Phúc Thọ cấp Giấy chứng nhận quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BA 222648, số vào sổ cấp GCN: CH00014 ngày 28/5/2010 cho ông Kiều Duy Kiên và bà Kiều Thị Thanh.', 'xã Sen Phương', 'Đường Lạc Trị, Thị trấn Phúc Thọ', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-tai-thua-dat-112-to-ban-do-so-12-dien-tich-236m2-tai-dia-chi-thon-1-xa-sen-chieu-nay-la-xa-sen-phuong-huyen-phuc-tho-tp-ha-noi-da-duoc-ubnd-huyen-phuc-tho-cap-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-ba-222648-so-vao-so-cap-gcn-ch00014-ngay-2852010-cho-ong-kieu-duy-kien-va-ba-kieu-thi-thanh-343693.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(50, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác mặt bằng bãi giữ xe chợ Tịnh Biên. Thời hạn khai thác là 01 (một) năm tính từ ngày ký hợp đồng cho thuê.', 'Cá nhân, tổ chức theo quy định tại Điều 38 Luật ĐGTS liên hệ  tại CN. An Giang : Số 245 Trường Chinh, khóm Đông Thịnh 9, phường Mỹ Phước, Thành phố Long Xuyên, tỉnh An Giang. để đăng ký tham gia. ĐT: 0888.164.369.', 708000000, 'Trung tâm Hạ tầng Kỹ thuật thị xã Tịnh Biên. Địa chỉ: Khóm Phú Hòa, phường An Phú, thị xã Tịnh Biên, tỉnh An Giang.', NULL, NULL, 249, NULL, '2024-07-22 14:00:00', '141,600,000 VNĐ', '2024-06-26 07:45:00', '2024-07-19 17:00:00', '2024-07-17 07:45:00', '2024-07-19 17:00:00', 'Trung tâm Hạ tầng Kỹ thuật thị xã Tịnh Biên', 'Quyền khai thác mặt bằng bãi giữ xe chợ Tịnh Biên. Thời hạn khai thác là 01 (một) năm tính từ ngày ký hợp đồng cho thuê.', 'tại nơi có tài sản', 'Khóm Phú Hòa, phường An Phú, thị xã Tịnh Biên, tỉnh An Giang.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-mat-bang-bai-giu-xe-cho-tinh-bien-thoi-han-khai-thac-la-01-mot-nam-tinh-tu-ngay-ky-hop-dong-cho-thue-343694.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(51, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất tại thửa đất số 126, tờ bản đồ số 37, diện tích 88,7m2 và thửa đất số 176, tờ bản đồ số 37, diện tích 34,7m2 cùng toàn bộ tài sản gắn liền trên 02 thửa đất tại địa chỉ Thôn Trung Chinh, xã Trung Chính, huyện Lương Tài, tỉnh Bắc Ninh...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh\n+ Địa chỉ: Tầng 1, số nhà 23, đường Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\nĐiện thoại: 08.6796.4268.', 2217130000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-18 10:00:00', '400,000,000 VNĐ', '2024-06-27 14:00:00', '2024-07-15 17:00:00', '2024-07-15 00:00:00', '2024-07-17 17:00:00', 'Chi cục thi hành án dân sự huyện Lương Tài', 'Quyền sử dụng đất tại thửa đất số 126, tờ bản đồ số 37, diện tích 88,7m2 và thửa đất số 176, tờ bản đồ số 37, diện tích 34,7m2 cùng toàn bộ tài sản gắn liền trên 02 thửa đất tại địa chỉ Thôn Trung Chinh, xã Trung Chính, huyện Lương Tài, tỉnh Bắc Ninh.02 thửa đất trên chưa được cấp giấy chứng nhận quyền sử dụng đất.', 'xã Trung Chính', 'Thị trấn Thứa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-tai-thua-dat-so-126-to-ban-do-so-37-dien-tich-887m2-va-thua-dat-so-176-to-ban-do-so-37-dien-tich-347m2-cung-toan-bo-tai-san-gan-lien-tren-02-thua-dat-tai-dia-chi-thon-trung-chinh-xa-trung-chinh-huyen-luong-tai-tinh-bac-ninh02-thua-dat-tren-chua-duoc-cap-giay-chung-nhan-quyen-su-dung-dat-343695.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(52, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích 507,6m2 thuộc thửa đất số 31, tờ bản đồ số 23 và nhà ở diện tích xây dựng 288,2m2; diện tích sàn 1559,1m2 tọa lạc tại 70 Nguyễn Văn Qùy, Khu phố 1, phường Phú Thuận, Quận 7, TP.HCM.', 'Các cá nhân, tổ chức theo quy định tại Điều 38 luật ĐGTS liên hệ Số 79 đường 44, phường 14, quận Gò Vấp, TP. HCM để đăng ký tham gia. Điện thoại: 0888.154.369.', 35100000000, 'Công ty Đấu giá Hợp danh Đông Nam - Chi nhánh TP.Hồ Chí Minh: số 79 đường 44, phường 14, quận Gò Vấp, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-22 09:00:00', '3,510,000,000 VNĐ', '2024-06-27 08:00:00', '2024-07-19 17:00:00', '2024-07-17 08:00:00', '2024-07-19 17:00:00', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh 3', 'Quyền sử dụng đất diện tích 507,6m2 thuộc thửa đất số 31, tờ bản đồ số 23 và nhà ở diện tích xây dựng 288,2m2; diện tích sàn 1559,1m2 tọa lạc tại 70 Nguyễn Văn Qùy, Khu phố 1, phường Phú Thuận, Quận 7, TP.HCM.', 'tại nơi có tài sản', 'Số 112 Trần Quốc Thảo, phường Võ Thị Sáu, Quận 3, thành phố Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-5076m2-thuoc-thua-dat-so-31-to-ban-do-so-23-va-nha-o-dien-tich-xay-dung-2882m2-dien-tich-san-15591m2-toa-lac-tai-70-nguyen-van-quy-khu-pho-1-phuong-phu-thuan-quan-7-tphcm-343696.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(53, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Đấu giá cho thuê mặt bằng căn tin của Trung tâm Y tế huyện Tân Hưng', '- Địa điểm đăng ký tham gia đấu giá: Công ty Đấu giá hợp danh Thanh Nam (Số 181, Quốc Lộ 1, Khu phố Thanh Xuân, phường 5, thành phố Tân An, tỉnh Long An).\n- Điều kiện đăng ký tham gia đấu giá: Người có đủ điều kiện theo quy định của pháp luật thì đăng ký tham gia đấu giá.\n- Cách thức đăng ký tham gia đấu giá:\n+ Người đăng ký tham gia đấu giá thông qua việc nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước cho Công ty Đấu giá hợp danh Thanh Nam theo quy định và không thuộc đối tượng quy định tại khoản 4 Điều 38 Luật Đấu giá tài sản. \n+ Người nộp hồ sơ trực tiếp tại Công ty đấu giá hợp danh Thanh Nam. Trường hợp nộp thay thì phải có giấy ủy quyền hoặc hợp đồng ủy quyền (có công chứng hoặc chứng thực theo quy định) cho người thay thế mình khi đến nộp hồ sơ đăng ký tham gia đấu giá.', 100800000, 'Trung tâm Y tế huyện Tân Hưng (Số 02, đường 3/2, thị trấn Tân Hưng, huyện Tân Hưng, tỉnh Long An).', NULL, NULL, 249, NULL, '2024-07-10 14:00:00', '20,000,000 VNĐ', '2024-06-21 07:30:00', '2024-07-05 17:00:00', '2024-07-05 07:30:00', '2024-07-09 16:30:00', 'Trung tâm Y tế huyện Tân Hưng', 'Đấu giá cho thuê mặt bằng căn tin của Trung tâm Y tế huyện Tân Hưng', 'Trung tâm Y tế huyện Tân Hưng', 'Số 02, đường 3/2, thị trấn Tân Hưng, huyện Tân Hưng, tỉnh Long An', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/dau-gia-cho-thue-mat-bang-can-tin-cua-trung-tam-y-te-huyen-tan-hung--343698.html', 'Công ty đấu giá hợp danh Thanh Nam', 'Số 181, Quốc lộ 1, khu phố Thanh Xuân, phường 5, Thành phố Tân An, Tỉnh Long An', '0966 607 744'),
(54, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 183, tờ bản đồ 21, diện tích 262m2 tại thôn Đông Mai, xã Trung Nghĩa, huyện Yên Phong, tỉnh Bắc Ninh theo cấp Giấy chứng nhận quyền sử dụng đất số AN 212837 ngày 22/5/2009 được UBND...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh\n+ Địa chỉ: Tầng 1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\nĐiện thoại: 08.6796.4268.', 1249780000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-25 15:30:00', '200,000,000 VNĐ', '2024-06-27 15:30:00', '2024-07-22 17:00:00', '2024-07-22 00:00:00', '2024-07-24 17:00:00', 'Chi cục Thi hành án dân sự huyện Yên Phong, tỉnh Bắc Ninh', 'Quyền sử dụng đất và tài sản khác gắn liền với đất thuộc thửa đất số 183, tờ bản đồ 21, diện tích 262m2 tại thôn Đông Mai, xã Trung Nghĩa, huyện Yên Phong, tỉnh Bắc Ninh theo cấp Giấy chứng nhận quyền sử dụng đất số AN 212837 ngày 22/5/2009 được UBND huyện Yên Phong cấp cho hộ ông Ngô Văn Vui. Ngày 22/6/2009 đã đính chính tên người sử dụng đất là ông Ngô Văn Vui.', 'xã Trung Nghĩa', 'Khu đô thị Mới, TT Chờ', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-khac-gan-lien-voi-dat-thuoc-thua-dat-so-183-to-ban-do-21-dien-tich-262m2-tai-thon-dong-mai-xa-trung-nghia-huyen-yen-phong-tinh-bac-ninh-theo-cap-giay-chung-nhan-quyen-su-dung-dat-so-an-212837-ngay-2252009-duoc-ubnd-huyen-yen-phong-cap-cho-ho-ong-ngo-van-vui-ngay-2262009-da-dinh-chinh-ten-nguoi-su-dung-dat-la-ong-ngo-van-vui-343708.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(55, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS756/24) Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 611, tờ bản đồ số 2, Khu phố Bình Quới A, phường Bình Chuẩn, thị xã Thuận An (nay là thành phố Thuận An), tỉnh Bình Dương theo Giấy chứng nhận Quyền sử dụng đất, Quyền sở hữu nh...', 'Địa điểm đăng ký:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', 2437000000, 'Trụ sở Công ty đấu giá hợp danh Minh Pháp - Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-08 16:30:00', '243,700,000 VNĐ', '2024-06-27 08:00:00', '2024-07-05 17:00:00', '2024-07-03 08:00:00', '2024-07-05 17:00:00', 'NGÂN HÀNG TMCP HÀNG HẢI VIỆT NAM', '(MS756/24) Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 611, tờ bản đồ số 2, Khu phố Bình Quới A, phường Bình Chuẩn, thị xã Thuận An (nay là thành phố Thuận An), tỉnh Bình Dương theo Giấy chứng nhận Quyền sử dụng đất, Quyền sở hữu nhà ở và tài sản gắn liền với đất số CR 375469, số vào sổ cấp GCN: CS15819 do Sở Tài nguyên và Môi trường tỉnh Bình Dương cấp ngày 10/06/2019', 'thửa đất số 611, tờ bản đồ số 2, Khu phố Bình Quới A, phường Bình Chuẩn, thị xã Thuận An (nay là thành phố Thuận An), tỉnh Bình Dương', 'Số 54A Nguyễn Chí Thanh, P.Láng Thượng, Q.Đống Đa, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms75624-quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-thua-dat-so-611-to-ban-do-so-2-khu-pho-binh-quoi-a-phuong-binh-chuan-thi-xa-thuan-an-nay-la-thanh-pho-thuan-an-tinh-binh-duong-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-gan-lien-voi-dat-so-cr-375469-so-vao-so-cap-gcn-cs15819-do-so-tai-nguyen-va-moi-truong-tinh-binh-duong-cap-ngay-10062019-343681.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(56, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: THÔNG BÁO ĐÍNH CHÍNH', 'Khách hàng tham gia đấu giá thông qua việc mua hồ tham gia đấu giá; nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo quy định tại Quy chế đấu giá.', 169500000, 'Trụ sở Công ty đấu giá hợp danh DVL -  Chi nhánh Thanh Hóa: 132 Đỗ Đại, Phường Quảng Thắng, Thành Phố Thanh Hóa.', NULL, NULL, 249, NULL, '2024-07-08 14:00:00', '33,900,000 VNĐ', '2024-06-26 08:00:00', '2024-07-05 17:00:00', '2024-07-03 08:00:00', '2024-07-05 17:00:00', 'Ngân hàng TMCP Công Thương Việt Nam chi nhánh Bắc Thanh Hóa', 'THÔNG BÁO ĐÍNH CHÍNH', '169 đường Trần Phú, Phường Ba Đình, Thị xã Bỉm Sơn, tỉnh Thanh Hóa.', '169 đường Trần Phú, Phường Ba Đình, Thị xã Bỉm Sơn, tỉnh Thanh Hóa', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/thong-bao-dinh-chinh-343680.html', 'Công ty đấu giá hợp danh DVL', 'Khối nhà A3, Dự Án đầu tư xây dựng tháp Thủ Đô Xanh (TD Green Tower) tại một phần ô đất CV6.9, phường Mễ Trì, Quận Nam Từ Liêm, Thành phố Hà Nội', '0944.392.846'),
(57, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS748/24) Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 171, tờ bản đồ số 101, địa chỉ: thị trấn Đất Đỏ, huyện Đất Đỏ, tỉnh Bà Rịa – Vũng Tàu theo Giấy chứng nhận Quyền sử dụng đất, Quyền sở hữu nhà ở và tài sản gắn liền với đất số C...', 'Địa điểm đăng ký:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', 1455000000, 'Trụ sở Công ty đấu giá hợp danh Minh Pháp - Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-08 08:00:00', '145,500,000 VNĐ', '2024-06-27 08:00:00', '2024-07-05 17:00:00', '2024-07-03 08:00:00', '2024-07-05 17:00:00', 'NGÂN HÀNG TMCP HÀNG HẢI VIỆT NAM', '(MS748/24) Quyền sử dụng đất và tài sản gắn liền với đất tại thửa đất số 171, tờ bản đồ số 101, địa chỉ: thị trấn Đất Đỏ, huyện Đất Đỏ, tỉnh Bà Rịa – Vũng Tàu theo Giấy chứng nhận Quyền sử dụng đất, Quyền sở hữu nhà ở và tài sản gắn liền với đất số CC 612544, số vào sổ cấp GCN: CH 09487 do UBND huyện Đất Đỏ cấp ngày 20/10/2015', 'thửa đất số 171, tờ bản đồ số 101, địa chỉ: thị trấn Đất Đỏ, huyện Đất Đỏ, tỉnh Bà Rịa – Vũng Tàu', 'Số 54A Nguyễn Chí Thanh, P.Láng Thượng, Q.Đống Đa, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms74824-quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-thua-dat-so-171-to-ban-do-so-101-dia-chi-thi-tran-dat-do-huyen-dat-do-tinh-ba-ria-vung-tau-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-gan-lien-voi-dat-so-cc-612544-so-vao-so-cap-gcn-ch-09487-do-ubnd-huyen-dat-do-cap-ngay-20102015-343682.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(58, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS749/24) Bán nguyên lô không tách rời gồm : 	Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 938, tờ bản đồ số 53 tại phường An Phú Đông, Quận 12, thành phố Hồ Chí Minh. 	Tài sản 02: Quyền sử dụng đất thuộc thửa đất số 939, tờ bản đồ số 53 tại phườ...', 'Địa điểm đăng ký:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM', 30639900000, 'Trụ sở Công ty đấu giá hợp danh Minh Pháp - Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-19 19:00:00', '3,063,987,500 VNĐ', '2024-06-28 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'NGÂN HÀNG TMCP THỊNH VƯỢNG VÀ PHÁT TRIỂN – CHI NHÁNH HỒ CHÍ MINH', '(MS749/24) Bán nguyên lô không tách rời gồm : Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 938, tờ bản đồ số 53 tại phường An Phú Đông, Quận 12, thành phố Hồ Chí Minh. Tài sản 02: Quyền sử dụng đất thuộc thửa đất số 939, tờ bản đồ số 53 tại phường An Phú Đông, Quận 12, thành phố Hồ Chí Minh. Tài sản 03 : Quyền sử dụng đất thuộc thửa đất số 940, tờ bản đồ số 53 tại phường An Phú Đông, Quận 12, thành phố Hồ Chí Minh.', 'thửa đất số 938, 939, 940 tờ bản đồ số 53 tại phường An Phú Đông, Quận 12, thành phố Hồ Chí Minh', '322B Lý Thường Kiệt, Phường 14, Quận 10, TP. Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms74924-ban-nguyen-lo-khong-tach-roi-gom-tai-san-01-quyen-su-dung-dat-thuoc-thua-dat-so-938-to-ban-do-so-53-tai-phuong-an-phu-dong-quan-12-thanh-pho-ho-chi-minh-tai-san-02-quyen-su-dung-dat-thuoc-thua-dat-so-939-to-ban-do-so-53-tai-phuong-an-phu-dong-quan-12-thanh-pho-ho-chi-minh-tai-san-03-quyen-su-dung-dat-thuoc-thua-dat-so-940-to-ban-do-so-53-tai-phuong-an-phu-dong-quan-12-thanh-pho-ho-chi-minh-343683.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(59, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 448, tờ bản đồ số 13, diện tích 272,3 m2, tại thôn Đồng Bảng, xã Đồng Thái, huyện Ba Vì, thành phố Hà Nội theo Giấy chứng nhận quyền sử dụng đất quyền sở hữu nhà ở...', 'Khách hàng không thuộc các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và quy định của pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội\n+ Địa chỉ: Tầng 3 số 44 Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, thành phố Hà Nội.\n+ Điện thoại: 024.625.92974.', 1112440000, 'Hội trường Chi cục thi hành án dân sự huyện Ba Vì. Địa chỉ: Số 108 đường Quảng Oai, thị trấn Tây Đằnng, huyện Ba Vì, TP. Hà Nội', NULL, NULL, 249, NULL, '2024-07-26 15:00:00', '220,000,000 VNĐ', '2024-06-21 10:00:00', '2024-07-23 17:00:00', '2024-07-23 00:00:00', '2024-07-25 17:00:00', 'Chi cục thi hành án dân sự huyện Ba Vì', 'Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 448, tờ bản đồ số 13, diện tích 272,3 m2, tại thôn Đồng Bảng, xã Đồng Thái, huyện Ba Vì, thành phố Hà Nội theo Giấy chứng nhận quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số CN 425336 số vào sổ cấp GCN: CS-BV 04420 do Sở Tài nguyên và Môi trường thành phố Hà Nội cấp ngày 23/01/2019 mang tên ông Phùng Đắc Hùng.', 'xã Đồng Thái', 'Số 108 đường Quảng Oai, thị trấn Tây Đằng', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-tai-thua-dat-so-448-to-ban-do-so-13-dien-tich-2723-m2-tai-thon-dong-bang-xa-dong-thai-huyen-ba-vi-thanh-pho-ha-noi-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-cn-425336-so-vao-so-cap-gcn-csbv-04420-do-so-tai-nguyen-va-moi-truong-thanh-pho-ha-noi-cap-ngay-23012019-mang-ten-ong-phung-dac-hung-343685.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(60, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Toàn bộ diện tích 366 m2 đất cùng tài sản gắn liền với đất tại thửa đất số 133a, tờ bản đồ số 02, tại Cụm 7, xã Long Xuyên, huyện Phúc Thọ, thành phố Hà Nội theo Giấy chứng nhận quyền sử dụng đất số BA 228014, số vào sổ cấp giấy CH 00201 do UBND huyệ...', 'Khách hàng không thuộc các trường hợp không được đăng ký tham gia đấu giá tại Khoản 4 Điều 38 luật đấu giá tài sản 2016 và quy định của pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội\n+ Địa chỉ liên hệ: Tầng 3 số 44, đường Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, TP Hà Nội.\n+ Điện thoại: 024.625.92974.', 865246000, 'Tầng 3 số 44 Tăng Thiết Giáp, phường Cổ Nhuế 2, quận Bắc Từ Liêm, Tp Hà Nội', NULL, NULL, 249, NULL, '2024-07-18 15:00:00', '100,000,000 VNĐ', '2024-06-21 15:00:00', '2024-07-15 17:00:00', '2024-07-15 00:00:00', '2024-07-17 17:00:00', 'Chi cục thi hành án dân sự huyện Phúc Thọ', 'Toàn bộ diện tích 366 m2 đất cùng tài sản gắn liền với đất tại thửa đất số 133a, tờ bản đồ số 02, tại Cụm 7, xã Long Xuyên, huyện Phúc Thọ, thành phố Hà Nội theo Giấy chứng nhận quyền sử dụng đất số BA 228014, số vào sổ cấp giấy CH 00201 do UBND huyện Phúc Thọ cấp ngày 24/03/2011 mang tên ông Nguyễn Đăng Thực và bà Đỗ Thị Vân.', 'xã Long Xuyên', 'Đường Lạc Trị, Thị trấn Phúc Thọ', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/toan-bo-dien-tich-366-m2-dat-cung-tai-san-gan-lien-voi-dat-tai-thua-dat-so-133a-to-ban-do-so-02-tai-cum-7-xa-long-xuyen-huyen-phuc-tho-thanh-pho-ha-noi-theo-giay-chung-nhan-quyen-su-dung-dat-so-ba-228014-so-vao-so-cap-giay-ch-00201-do-ubnd-huyen-phuc-tho-cap-ngay-24032011-mang-ten-ong-nguyen-dang-thuc-va-ba-do-thi-van-343686.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(61, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: QSDĐ thửa đất số 266, TBĐ số 12, diện tích: 146,2m2, đất ONT 100m2, đất BHK 46,2m2 đứng tên ông Nguyễn Tản, bà Đỗ Thị Nga. TSGLVĐ: Nhà cấp 4, DTXD: 98,2m2.', 'Người tham gia đấu giá đủ điều kiện theo quy định của Luật Đấu giá tài sản và các quy định khác của pháp luật có liên quan, mua hồ sơ tham gia đấu giá (trong giờ hành chính). Người đăng ký tham gia đấu giá phải trực tiếp nộp hồ sơ tại Công ty hoặc có ủy quyền (trong giờ hành chính) và không thuộc đối tượng quy định tại Khoản 4, Điều 38 của Luật Đấu giá tài sản số 01/2016/QH14 ngày 17/11/2016.', 350672000, 'Công ty Đấu giá Hợp danh Tài chính và Giá cả Quảng Nam - Chi nhánh Quảng Ngãi (Số 84 đường Phạm Văn Đồng, phường Nghĩa Chánh, thành phố Quảng Ngãi, tỉnh Quảng Ngãi).', NULL, NULL, 249, NULL, '2024-07-25 09:30:00', '70,000,000 VNĐ', '2024-06-24 08:30:00', '2024-07-22 17:00:00', '2024-07-22 08:00:00', '2024-07-24 17:00:00', 'Chi cục Thi hành án dân sự thị xã Đức Phổ', 'QSDĐ thửa đất số 266, TBĐ số 12, diện tích: 146,2m2, đất ONT 100m2, đất BHK 46,2m2 đứng tên ông Nguyễn Tản, bà Đỗ Thị Nga. TSGLVĐ: Nhà cấp 4, DTXD: 98,2m2.', 'phường Phổ Thạnh, thị xã Đức Phổ, tỉnh Quảng Ngãi.', '07 Đỗ Quang Thắng, phường Nguyễn Nghiêm, thị xã Đức Phổ, tỉnh Quảng Ngãi', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/qsdd-thua-dat-so-266-tbd-so-12-dien-tich-1462m2-dat-ont-100m2-dat-bhk-462m2-dung-ten-ong-nguyen-tan-ba-do-thi-nga-tsglvd-nha-cap-4-dtxd-982m2-343687.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TÀI CHÍNH VÀ GIÁ CẢ QUẢNG NAM', 'số 108 Lê Lợi, phường An Mỹ, thành phố Tam Kỳ, tỉnh Quảng Nam., Thành phố Tam Kỳ, Tỉnh Quảng Nam', '02353 338777'),
(62, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: QSDĐ thuộc thửa đất số 217, tờ bản đồ số 12. Diện tích 240,8m2, đất ONT 200m2, đất BHK 40,8m2, đứng tên ông Nguyễn Văn Biết, bà Lê Thị Hương. Tài sản gắn liền với đất: 01 ngôi nhà cấp 4 có diện tích 30m2, nhà bếp, mái hiên, …', 'Người tham gia đấu giá đủ điều kiện theo quy định của Luật Đấu giá tài sản và các quy định khác của pháp luật có liên quan, mua hồ sơ tham gia đấu giá (trong giờ hành chính). Người đăng ký tham gia đấu giá phải trực tiếp nộp hồ sơ tại Công ty hoặc có ủy quyền (trong giờ hành chính) và không thuộc đối tượng quy định tại Khoản 4, Điều 38 của Luật Đấu giá tài sản số 01/2016/QH14 ngày 17/11/2016.', 454094000, 'Công ty Đấu giá Hợp danh Tài chính và Giá cả Quảng Nam - Chi nhánh Quảng Ngãi (Số 84 đường Phạm Văn Đồng, phường Nghĩa Chánh, thành phố Quảng Ngãi, tỉnh Quảng Ngãi).', NULL, NULL, 249, NULL, '2024-07-25 09:00:00', '90,000,000 VNĐ', '2024-06-24 08:30:00', '2024-07-22 17:00:00', '2024-07-22 08:00:00', '2024-07-24 17:00:00', 'Chi cục Thi hành án dân sự thị xã Đức Phổ', 'QSDĐ thuộc thửa đất số 217, tờ bản đồ số 12. Diện tích 240,8m2, đất ONT 200m2, đất BHK 40,8m2, đứng tên ông Nguyễn Văn Biết, bà Lê Thị Hương. Tài sản gắn liền với đất: 01 ngôi nhà cấp 4 có diện tích 30m2, nhà bếp, mái hiên, …', 'Phường Phổ Thạnh, thị xã Đức Phổ, tỉnh Quảng Ngãi.', '07 Đỗ Quang Thắng, phường Nguyễn Nghiêm, thị xã Đức Phổ, tỉnh Quảng Ngãi', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/qsdd-thuoc-thua-dat-so-217-to-ban-do-so-12-dien-tich-2408m2-dat-ont-200m2-dat-bhk-408m2-dung-ten-ong-nguyen-van-biet-ba-le-thi-huong-tai-san-gan-lien-voi-dat-01-ngoi-nha-cap-4-co-dien-tich-30m2-nha-bep-mai-hien--343688.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TÀI CHÍNH VÀ GIÁ CẢ QUẢNG NAM', 'số 108 Lê Lợi, phường An Mỹ, thành phố Tam Kỳ, tỉnh Quảng Nam., Thành phố Tam Kỳ, Tỉnh Quảng Nam', '02353 338777'),
(63, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích 1.051,0m2 thuộc thửa đất số 94, tờ bản đồ số 13 và cửa hàng xăng dầu (nhà bán hàng) diện tích xây dựng 33,6m2 và diện tích sàn 33,6m2 toạ lạc tại ấp Đông Thạnh A, xã Đông Thạnh, huyện Bình Minh (nay là thị xã Bình Minh), t...', 'Cá nhân, tổ chức quy định tại Điều 38 Luật ĐGTS liên hệ tại CN.Đồng Tháp: Số 33 Lưu Văn Lang, K.Mỹ Thượng, P.Mỹ Phú, TP.Cao Lãnh, Đồng Tháp. ĐT: 0888.164.369.', 6500000000, 'Công ty Đấu giá Hợp danh Đông Nam – Chi nhánh Đồng Tháp: Số 33, đường Lưu Văn Lang, khóm Mỹ Thượng, phường Phú Mỹ, thành phố Cao Lãnh, tỉnh Đồng Tháp', NULL, NULL, 249, NULL, '2024-07-19 15:30:00', '650,000,000 VNĐ', '2024-06-26 07:45:00', '2024-07-16 17:00:00', '2024-07-16 07:45:00', '2024-07-18 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Sa Đéc', 'Quyền sử dụng đất diện tích 1.051,0m2 thuộc thửa đất số 94, tờ bản đồ số 13 và cửa hàng xăng dầu (nhà bán hàng) diện tích xây dựng 33,6m2 và diện tích sàn 33,6m2 toạ lạc tại ấp Đông Thạnh A, xã Đông Thạnh, huyện Bình Minh (nay là thị xã Bình Minh), tỉnh Vĩnh Long theo Giấy chứng nhận Quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BK 803960, số vào sổ cấp GCN: CH 03418 do Ủy ban nhân dân huyện Bình Minh (nay là thị xã Bình Minh) cấp ngày 24/10/2012, cập nhật chuyển nhượng cho ông Trịnh Thành Hưng ngày 10/9/2018. Ghi chú: Diện tích trên được ghi nhận theo diện tích trên giấy chứng nhận quyền sử dụng đất, trường hợp diện tích thực tế có thừa hoặc thiếu, bên trúng đấu giá tự chịu trách nhiệm và không có khiếu nại về sau', 'tại nơi có tài sản', '209A Trần Hưng Đạo, phường 1, thành phố Sa Đéc, tỉnh Đồng Tháp.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-10510m2-thuoc-thua-dat-so-94-to-ban-do-so-13-va-cua-hang-xang-dau-nha-ban-hang-dien-tich-xay-dung-336m2-va-dien-tich-san-336m2-toa-lac-tai-ap-dong-thanh-a-xa-dong-thanh-huyen-binh-minh-nay-la-thi-xa-binh-minh-tinh-vinh-long-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bk-803960-so-vao-so-cap-gcn-ch-03418-do-uy-ban-nhan-dan-huyen-binh-minh-nay-la-thi-xa-binh-minh-cap-ngay-24102012-cap-nhat-chuyen-nhuong-cho-ong-trinh-thanh-hung-ngay-1092018-ghi-chu-dien-tich-tren-duoc-ghi-nhan-theo-dien-tich-tren-giay-chung-nhan-quyen-su-dung-dat-truong-hop-dien-tich-thuc-te-co-thua-hoac-thieu-ben-trung-dau-gia-tu-chiu-trach-nhiem-va-khong-co-khieu-nai-ve-sau-343677.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(64, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất thửa đất số 18, tờ bản đồ số 65, diện tích 175,7m2 ở khu phố Vĩnh Kiều 2, phường Đồng Nguyên, thị xã Từ Sơn (nay là thành phố Từ Sơn), tỉnh Bắc Ninh. Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở ...', 'Khách hàng không thuộc các trường hợp không được tham gia đấu giá theo Khoản 4 Điều 38 Luật đấu giá tài sản 2016 và các quy định của Pháp luật liên quan. Khách hàng đăng ký tham gia đấu giá thông qua việc mua hồ sơ, nộp hồ sơ và tiền đặt trước theo quy định, hồ sơ tham gia đấu giá hợp lệ.\nLưu ý: Công ty làm việc các ngày trong tuần trừ thứ 7, chủ nhật và các ngày lễ tết.\nMọi tổ chức, cá nhân muốn biết thêm thông tin và giải đáp thắc mắc xin vui lòng liên hệ:\n+ Công ty Đấu giá Hợp danh Hưng Phát Hà Nội - Chi nhánh Bắc Ninh\n+ Địa chỉ: Tầng 1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh.\n+ Điện thoại: 08.6796.4268.', 1882960000, 'Tầng1, số nhà 23 Lê Đức Thọ, phường Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, 249, NULL, '2024-07-18 11:00:00', '300,000,000 VNĐ', '2024-06-27 10:30:00', '2024-07-15 17:00:00', '2024-07-15 00:00:00', '2024-07-17 17:00:00', 'Chi cục thi hành án dân sự thành phố Từ Sơn', 'Quyền sử dụng đất và tài sản gắn liền với đất thửa đất số 18, tờ bản đồ số 65, diện tích 175,7m2 ở khu phố Vĩnh Kiều 2, phường Đồng Nguyên, thị xã Từ Sơn (nay là thành phố Từ Sơn), tỉnh Bắc Ninh. Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất số CH 215880, số vào sổ cấp GCN: CS04359 do Sở Tài nguyên và Môi trường tỉnh Bắc Ninh cấp ngày 28/5/2018 mang tên bà Nguyễn Thị Thu.', 'phường Đồng Nguyên', 'Đường Lê Quang Đạo, phường Đông Ngàn', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-thua-dat-so-18-to-ban-do-so-65-dien-tich-1757m2-o-khu-pho-vinh-kieu-2-phuong-dong-nguyen-thi-xa-tu-son-nay-la-thanh-pho-tu-son-tinh-bac-ninh-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-ch-215880-so-vao-so-cap-gcn-cs04359-do-so-tai-nguyen-va-moi-truong-tinh-bac-ninh-cap-ngay-2852018-mang-ten-ba-nguyen-thi-thu-343697.html', 'Công ty đấu giá hợp danh Hưng Phát Hà Nội', 'số 46 ngõ 172 Âu Cơ, phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', ''),
(65, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS739/24) Toàn bộ tài sản bảo đảm là hàng tồn kho thiết bị gia dụng gồm: bếp điện từ, lò vi sóng, lò nướng, tủ lạnh, … thương hiệu Fagor, Brant, Dietrich đang lưu kho tại Đường Thạnh Xuân 52, phường Thạnh Xuân, Quận 12, thành phố Hồ Chí Minh. Danh m...', 'Địa điểm đăng ký:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM', 8433330000, 'Trụ sở Công ty đấu giá hợp danh Minh Pháp - Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-12 13:30:00', '843,333,500 VNĐ', '2024-06-27 08:00:00', '2024-07-09 17:00:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', ':  NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN ĐẠI CHÚNG VIỆT NAM (PVCOMBANK)', '(MS739/24) Toàn bộ tài sản bảo đảm là hàng tồn kho thiết bị gia dụng gồm: bếp điện từ, lò vi sóng, lò nướng, tủ lạnh, … thương hiệu Fagor, Brant, Dietrich đang lưu kho tại Đường Thạnh Xuân 52, phường Thạnh Xuân, Quận 12, thành phố Hồ Chí Minh. Danh mục hàng hóa đã được kiểm đếm theo chứng thư giám định số VIC/20.IN/2.01.1013 ngày 06/11/2020 của Công ty cổ phần Giám Định Khử Trùng VIETNAMCONTROL', 'Kho tại Đường Thạnh Xuân 52, phường Thạnh Xuân, Quận 12, thành phố Hồ Chí Minh', '22 Ngô Quyền, phường Tràng Tiền, quận Hoàn Kiếm, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms73924-toan-bo-tai-san-bao-dam-la-hang-ton-kho-thiet-bi-gia-dung-gom-bep-dien-tu-lo-vi-song-lo-nuong-tu-lanh-thuong-hieu-fagor-brant-dietrich-dang-luu-kho-tai-duong-thanh-xuan-52-phuong-thanh-xuan-quan-12-thanh-pho-ho-chi-minh-danh-muc-hang-hoa-da-duoc-kiem-dem-theo-chung-thu-giam-dinh-so-vic20in2011013-ngay-06112020-cua-cong-ty-co-phan-giam-dinh-khu-trung-vietnamcontrol-343670.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(66, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Căn hộ chung cư số H14-1 (Tầng 14 + sân thượng), Lô H Chung cư Hoàng Tháp, đường số 9A, KDC Trung Sơn, Ấp 4, xã Bình Hưng, huyện Bình Chánh, TP.HCM thuộc TĐ số 132, TBĐ số 79, diện tích sàn (lọt lòng): 264,8m2', 'Các cá nhân, tổ chức theo quy định tại Điều 38 Luật Đấu giá tài sản liên hệ tại Số 79 đường 44, phường 14, quận Gò Vấp, TP. HCM để đăng ký. ĐT: 08.8815.4369', 6806000000, 'Công ty Đấu giá Hợp danh Đông Nam - Chi nhánh TP.Hồ Chí Minh: số 79 đường 44, phường 14, quận Gò Vấp, TP. Hồ Chí Minh', NULL, NULL, 249, NULL, '2024-07-19 09:30:00', '680,600,000 VNĐ', '2024-06-26 08:00:00', '2024-07-16 17:00:00', '2024-07-16 08:00:00', '2024-07-18 17:00:00', 'Chi nhánh Công ty TNHH Quản lý nợ và Khai thác tài sản Ngân hàng TMCP Quân Đội tại TP.HCM (MBAMC – HCM)', 'Căn hộ chung cư số H14-1 (Tầng 14 + sân thượng), Lô H Chung cư Hoàng Tháp, đường số 9A, KDC Trung Sơn, Ấp 4, xã Bình Hưng, huyện Bình Chánh, TP.HCM thuộc TĐ số 132, TBĐ số 79, diện tích sàn (lọt lòng): 264,8m2', 'tại nơi có tài sản', 'Lầu 5, toà nhà MBAMC, 538 Cách Mạng Tháng Tám, Phường 11, Quận 3, TP. Hồ Chí Minh.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/can-ho-chung-cu-so-h141-tang-14-san-thuong-lo-h-chung-cu-hoang-thap-duong-so-9a-kdc-trung-son-ap-4-xa-binh-hung-huyen-binh-chanh-tphcm-thuoc-td-so-132-tbd-so-79-dien-tich-san-lot-long-2648m2-343559.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(67, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và công trình xây dựng gắn liền trên đất', 'Địa điểm đăng ký: Tại Công ty đấu giá hợp danh Thanh Bình, địa chỉ: Số 90, đường Cao Thắng, khóm 7, phường 8, thành phố Cà Mau, tỉnh Cà Mau. Điều kiện: Phải có đơn đăng ký tham gia đấu giá hợp lệ theo mẫu do Công ty phát hành, kèm theo giấy chứng minh nhân dân hoặc căn cước công dân và phải nộp đúng theo thời gian đã niêm yết, thông báo.Cách thức: Tổ chức, cá nhân có nhu cầu đăng ký tham gia đấu giá mua tài sản thì tự mình liên hệ đến Công ty nộp trực tiếp hoặc có thể ủy quyền cho người khác nộp thay.', 1465940000, 'Tại Công ty đấu giá hợp danh Thanh Bình', NULL, NULL, 249, NULL, '2024-07-25 09:00:00', '20 %', '2024-06-27 07:00:00', '2024-07-22 09:00:00', '2024-07-22 07:00:00', '2024-07-24 17:00:00', 'Chi cục Thi hành án dân sự thành phố Cà Mau', 'Quyền sử dụng đất và công trình xây dựng gắn liền trên đất', 'Phường Tân Xuyên, thành phố Cà Mau, tỉnh Cà Mau', 'Số 03, đường Huyền Trân Công Chúa, khóm 8, phường 5, thành phố Cà Mau, tỉnh Cà Mau', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-cong-trinh-xay-dung-gan-lien-tren-dat-343672.html', 'Công ty đấu giá hợp danh Thanh Bình', 'Số 90, đường Cao Thắng, Khóm 7, Phường 8, Thành phố Cà Mau, Tỉnh Cà Mau', '02906270678'),
(68, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS717/24) Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 453, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng,(MS717/24) Tài sản 03: Quyền sử dụng đất thuộc thửa đất số 455, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng,(M...', 'Địa điểm đăng ký: 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM', 4595440000, 'Tại trụ sở Công ty Đấu giá Hợp danh Minh Pháp - số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', NULL, NULL, 249, NULL, '2024-07-15 09:30:00', '919,088,852 VNĐ', '2024-06-27 08:00:00', '2024-07-12 17:00:00', '2024-07-10 08:00:00', '2024-07-12 17:00:00', 'NGÂN HÀNG TMCP NGOẠI THƯƠNG VIỆT NAM – CHI NHÁNH THỦ THIÊM', '(MS717/24) Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 453, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng', 'Tại nơi có bất động sản toạ lạc', '55-56 Song Hành, phường An Phú, TP. Thủ Đức, thành phố Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms71724-tai-san-01-quyen-su-dung-dat-thuoc-thua-dat-so-453-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dongms71724-tai-san-03-quyen-su-dung-dat-thuoc-thua-dat-so-455-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dongms71724-tai-san-02-quyen-su-dung-dat-thuoc-thua-dat-so-454-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dong-343673.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(69, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS716/24) Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 443, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng,(MS716/24) Tài sản 03: Quyền sử dụng đất thuộc thửa đất số 445, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng,(M...', 'Địa điểm đăng ký: 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM', 5025500000, 'Tại trụ sở Công ty Đấu giá Hợp danh Minh Pháp - số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', NULL, NULL, 249, NULL, '2024-07-15 09:00:00', '1,005,100,713 VNĐ', '2024-06-27 08:00:00', '2024-07-12 17:00:00', '2024-07-10 08:00:00', '2024-07-12 17:00:00', 'NGÂN HÀNG TMCP NGOẠI THƯƠNG VIỆT NAM – CHI NHÁNH THỦ THIÊM', '(MS716/24) Tài sản 01: Quyền sử dụng đất thuộc thửa đất số 443, tờ bản đồ số 47 tại xã Lộc An, huyện Bảo Lâm, tỉnh Lâm Đồng', 'Tại nơi có bất động sản toạ lạc', '55-56 Song Hành, phường An Phú, TP. Thủ Đức, thành phố Hồ Chí Minh', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms71624-tai-san-01-quyen-su-dung-dat-thuoc-thua-dat-so-443-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dongms71624-tai-san-03-quyen-su-dung-dat-thuoc-thua-dat-so-445-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dongms71624-tai-san-02-quyen-su-dung-dat-thuoc-thua-dat-so-444-to-ban-do-so-47-tai-xa-loc-an-huyen-bao-lam-tinh-lam-dong-343674.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(70, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe ô tô tải có mui, nhãn hiệu: THACO, số loại: TOWNER800, màu sơn: Xanh, số khung: RNHA18TDALT023566, số máy: DA465QE06011453F5, BKS: 64C-094.17.', 'Các cá nhân, tổ chức theo quy định tại Điều 38 Luật Đấu giá tài sản liên hệ tại số 79 đường số 44, phường 14, quận Gò Vấp, TP. HCM hoặc truy cập vào website http://daugiaviet.vn (http://daugiaso5.vn)) tải và nộp hồ sơ qua đường bưu chính. Đồng thời, đăng ký tham gia đấu giá tài sản tại website nêu trên. ĐT : 08.8815.4369.', 112000000, 'tại Trang thông tin điện tử đấu giá trực tuyến (http://daugiaviet.vn (http://daugiaso5.vn)).', NULL, NULL, 249, NULL, '2024-07-12 14:30:00', '16,800,000 VNĐ', '2024-06-26 08:00:00', '2024-07-09 17:00:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', 'Ngân hàng TMCP Tiên Phong', '01 xe ô tô tải có mui, nhãn hiệu: THACO, số loại: TOWNER800, màu sơn: Xanh, số khung: RNHA18TDALT023566, số máy: DA465QE06011453F5, BKS: 64C-094.17.', 'tại nơi có tài sản', 'Tòa nhà TPBank, số 57, phố Lý Thường Kiệt, Phường Trần Hưng Đạo, Quận Hoàn Kiếm, Thành phố Hà Nội.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-o-to-tai-co-mui-nhan-hieu-thaco-so-loai-towner800-mau-son-xanh-so-khung-rnha18tdalt023566-so-may-da465qe06011453f5-bks-64c09417-343671.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(71, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS717/24) Quyền sử dụng đất thuộc thửa đất số 469, tờ bản đồ số 16 tại ấp Suối Mây, xã Dương Tơ, thành phố Phú Quốc (trước đây là huyện Phú Quốc), tỉnh Kiên Giang', 'Địa điểm đăng ký:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM', 61483700000, 'Tại trụ sở Công ty Đấu giá Hợp danh Minh Pháp - số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', NULL, NULL, 249, NULL, '2024-07-15 10:00:00', '12,296,743,000 VNĐ', '2024-06-27 08:00:00', '2024-07-12 17:00:00', '2024-07-10 08:00:00', '2024-07-12 17:00:00', 'NGÂN HÀNG TMCP ĐẠI CHÚNG VIỆT NAM (PVCOMBANK)', '(MS717/24) Quyền sử dụng đất thuộc thửa đất số 469, tờ bản đồ số 16 tại ấp Suối Mây, xã Dương Tơ, thành phố Phú Quốc (trước đây là huyện Phú Quốc), tỉnh Kiên Giang', 'Thửa đất số 469, tờ bản đồ số 16 tại ấp Suối Mây, xã Dương Tơ, huyện Phú Quốc (nay là thành phố Phú Quốc), tỉnh Kiên Giang', 'Số 22 Ngô Quyền, phường Tràng Tiền, quận Hoàn Kiếm, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms71724-quyen-su-dung-dat-thuoc-thua-dat-so-469-to-ban-do-so-16-tai-ap-suoi-may-xa-duong-to-thanh-pho-phu-quoc-truoc-day-la-huyen-phu-quoc-tinh-kien-giang-343675.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(72, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS711/24) Xe ô tô con nhãn hiệu MITSUBISHI JOILE biển số 52X-8833, số khung 00VB2W-41001869, số máy 4G63RZ-02349, màu xám, 08 chỗ ngồi', 'Địa điểm đăng ký, bỏ phiếu trả giá:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', 84000000, 'Tại trụ sở Công ty Đấu giá Hợp danh Minh Pháp - số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', NULL, NULL, 249, NULL, '2024-07-11 09:30:00', '16,800,000 VNĐ', '2024-06-24 08:00:00', '2024-07-08 17:00:00', '2024-07-08 08:00:00', '2024-07-10 17:00:00', 'NGÂN HÀNG TMCP ĐẠI CHÚNG VIỆT NAM (PVCOMBANK)', '(MS711/24) Xe ô tô con nhãn hiệu MITSUBISHI JOILE biển số 52X-8833, số khung 00VB2W-41001869, số máy 4G63RZ-02349, màu xám, 08 chỗ ngồi', 'Bãi xe Số 1 Đường 22, phường Linh Đông, thành phố Thủ Đức, TP. Hồ Chí Minh', 'Số 22 Ngô Quyền, phường Tràng Tiền, quận Hoàn Kiếm, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms71124-xe-o-to-con-nhan-hieu-mitsubishi-joile-bien-so-52x8833-so-khung-00vb2w41001869-so-may-4g63rz02349-mau-xam-08-cho-ngoi--343676.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(73, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích 1.051,0m2 thuộc thửa đất số 94, tờ bản đồ số 13 và cửa hàng xăng dầu (nhà bán hàng) diện tích xây dựng 33,6m2 và diện tích sàn 33,6m2 toạ lạc tại ấp Đông Thạnh A, xã Đông Thạnh, huyện Bình Minh (nay là thị xã Bình Minh), t...', 'Cá nhân, tổ chức quy định tại Điều 38 Luật ĐGTS liên hệ tại CN.Đồng Tháp: Số 33 Lưu Văn Lang, K.Mỹ Thượng, P.Mỹ Phú, TP.Cao Lãnh, Đồng Tháp. ĐT: 0888.164.369.', 6500000000, 'Công ty Đấu giá Hợp danh Đông Nam – Chi nhánh Đồng Tháp: Số 33, đường Lưu Văn Lang, khóm Mỹ Thượng, phường Phú Mỹ, thành phố Cao Lãnh, tỉnh Đồng Tháp', NULL, NULL, 249, NULL, '2024-07-19 15:30:00', '650,000,000 VNĐ', '2024-06-26 07:45:00', '2024-07-16 17:00:00', '2024-07-16 07:45:00', '2024-07-18 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Sa Đéc', 'Quyền sử dụng đất diện tích 1.051,0m2 thuộc thửa đất số 94, tờ bản đồ số 13 và cửa hàng xăng dầu (nhà bán hàng) diện tích xây dựng 33,6m2 và diện tích sàn 33,6m2 toạ lạc tại ấp Đông Thạnh A, xã Đông Thạnh, huyện Bình Minh (nay là thị xã Bình Minh), tỉnh Vĩnh Long theo Giấy chứng nhận Quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BK 803960, số vào sổ cấp GCN: CH 03418 do Ủy ban nhân dân huyện Bình Minh (nay là thị xã Bình Minh) cấp ngày 24/10/2012, cập nhật chuyển nhượng cho ông Trịnh Thành Hưng ngày 10/9/2018. Ghi chú: Diện tích trên được ghi nhận theo diện tích trên giấy chứng nhận quyền sử dụng đất, trường hợp diện tích thực tế có thừa hoặc thiếu, bên trúng đấu giá tự chịu trách nhiệm và không có khiếu nại về sau', 'tại nơi có tài sản', '209A Trần Hưng Đạo, phường 1, thành phố Sa Đéc, tỉnh Đồng Tháp.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-10510m2-thuoc-thua-dat-so-94-to-ban-do-so-13-va-cua-hang-xang-dau-nha-ban-hang-dien-tich-xay-dung-336m2-va-dien-tich-san-336m2-toa-lac-tai-ap-dong-thanh-a-xa-dong-thanh-huyen-binh-minh-nay-la-thi-xa-binh-minh-tinh-vinh-long-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bk-803960-so-vao-so-cap-gcn-ch-03418-do-uy-ban-nhan-dan-huyen-binh-minh-nay-la-thi-xa-binh-minh-cap-ngay-24102012-cap-nhat-chuyen-nhuong-cho-ong-trinh-thanh-hung-ngay-1092018-ghi-chu-dien-tich-tren-duoc-ghi-nhan-theo-dien-tich-tren-giay-chung-nhan-quyen-su-dung-dat-truong-hop-dien-tich-thuc-te-co-thua-hoac-thieu-ben-trung-dau-gia-tu-chiu-trach-nhiem-va-khong-co-khieu-nai-ve-sau-343677.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369');
INSERT INTO `LandAuctions` (`LandAuctionID`, `DistrictID`, `LandAuctionCategoryID`, `Title`, `Description`, `OpenPrice`, `AuctionAddress`, `Latitude`, `Longitude`, `UserID`, `CreateAt`, `EventSchedule`, `DepositPrice`, `RegistrationStartTime`, `RegistrationEndTime`, `DepositPaymentStartTime`, `DepositPaymentEndTime`, `NamePropertyOwner`, `NameProperty`, `AddressProperty`, `AddressPropertyOwner`, `AuctionUrl`, `NameAuctionHouse`, `AddressAuctionHouse`, `PhoneNumberAuctionHouse`) VALUES
(74, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất diện tích 1.901,5m2 thuộc thửa đất số 32, tờ bản đồ số 42 và cửa hàng xăng dầu diện tích xây dựng 105,4m2 và diện tích sàn 105,4m2 toạ lạc tại ấp Đông Hòa 2, xã Đông Thành, huyện Bình Minh (nay là thị xã Bình Minh), tỉnh Vĩnh Long t...', 'Cá nhân, tổ chức quy định tại Điều 38 Luật ĐGTS liên hệ tại CN.Đồng Tháp: Số 33 Lưu Văn Lang, K.Mỹ Thượng, P.Mỹ Phú, TP.Cao Lãnh, Đồng Tháp. ĐT: 0888.164.369.', 8600000000, 'Công ty Đấu giá Hợp danh Đông Nam – Chi nhánh Đồng Tháp: Số 33, đường Lưu Văn Lang, khóm Mỹ Thượng, phường Phú Mỹ, thành phố Cao Lãnh, tỉnh Đồng Tháp', NULL, NULL, 249, NULL, '2024-07-19 15:00:00', '860,000,000 VNĐ', '2024-06-26 07:45:00', '2024-07-16 17:00:00', '2024-07-16 07:45:00', '2024-07-18 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Sa Đéc', 'Quyền sử dụng đất diện tích 1.901,5m2 thuộc thửa đất số 32, tờ bản đồ số 42 và cửa hàng xăng dầu diện tích xây dựng 105,4m2 và diện tích sàn 105,4m2 toạ lạc tại ấp Đông Hòa 2, xã Đông Thành, huyện Bình Minh (nay là thị xã Bình Minh), tỉnh Vĩnh Long theo Giấy chứng nhận Quyền sử dụng đất quyền sở hữu nhà ở và tài sản khác gắn liền với đất số BD 908200, số vào sổ cấp GCN: CH 03654 do Ủy ban nhân dân huyện Bình Minh (nay là thị xã Bình Minh) cấp ngày 02/02/2012, cập nhật chuyển nhượng cho ông Trịnh Thành Hưng ngày 10/9/2018. Ghi chú: Diện tích trên được ghi nhận theo diện tích trên giấy chứng nhận quyền sử dụng đất, trường hợp diện tích thực tế có thừa hoặc thiếu, bên trúng đấu giá tự chịu trách nhiệm và không có khiếu nại về sau.', 'tại nơi có tài sản', '209A Trần Hưng Đạo, phường 1, thành phố Sa Đéc, tỉnh Đồng Tháp.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-dien-tich-19015m2-thuoc-thua-dat-so-32-to-ban-do-so-42-va-cua-hang-xang-dau-dien-tich-xay-dung-1054m2-va-dien-tich-san-1054m2-toa-lac-tai-ap-dong-hoa-2-xa-dong-thanh-huyen-binh-minh-nay-la-thi-xa-binh-minh-tinh-vinh-long-theo-giay-chung-nhan-quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-so-bd-908200-so-vao-so-cap-gcn-ch-03654-do-uy-ban-nhan-dan-huyen-binh-minh-nay-la-thi-xa-binh-minh-cap-ngay-02022012-cap-nhat-chuyen-nhuong-cho-ong-trinh-thanh-hung-ngay-1092018-ghi-chu-dien-tich-tren-duoc-ghi-nhan-theo-dien-tich-tren-giay-chung-nhan-quyen-su-dung-dat-truong-hop-dien-tich-thuc-te-co-thua-hoac-thieu-ben-trung-dau-gia-tu-chiu-trach-nhiem-va-khong-co-khieu-nai-ve-sau-343679.html', 'Công ty đấu giá hợp danh Đông Nam', '56 Hiền Vương, Quận Tân Phú, Thành phố Hồ Chí Minh', '028.8815.4369'),
(75, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe ô tô nhãn hiệu Chevrolet, biển kiểm soát: 34C-196.72, số loại Colorado LTZ, số máy: HBG172751056, số khung: 8MK0JH628575', '6.	Thời gian, địa điểm tham khảo hồ sơ và tiếp nhận hồ sơ tham gia đấu giá: Trong giờ hành chính từ 08 giờ 00 phút ngày 21/6/2024 đến 17 giờ 00 phút ngày 08/7/2024 bằng hình thức nộp trực tiếp tại địa chỉ: Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\n- Người tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 353000000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội.', NULL, NULL, 249, NULL, '2024-07-11 15:00:00', '35,300,000 VNĐ', '2024-06-21 08:00:00', '2024-07-08 17:00:00', '2024-07-08 08:00:00', '2024-07-10 17:00:00', 'Ngân hàng TMCP Thịnh vượng và phát triển (PGBank)', '01 xe ô tô nhãn hiệu Chevrolet, biển kiểm soát: 34C-196.72, số loại Colorado LTZ, số máy: HBG172751056, số khung: 8MK0JH628575', 'Bãi xe tĩnh xóm Ngõ, thôn Khê Nữ, xã Nguyên Khê, huyện Đông Anh, thành phố Hà Nội', 'Tầng 16, 23, 24 Tòa nhà Mipec, số 229 Tây Sơn, phường Ngã Tư Sở, quận Đống Đa, thành phố Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-o-to-nhan-hieu-chevrolet-bien-kiem-soat-34c19672-so-loai-colorado-ltz-so-may-hbg172751056-so-khung-8mk0jh628575-343662.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(76, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe ô tô nhãn hiệu MERCEDES – BENZ, số loại E250, biển kiểm soát số: 30E-118.61, số máy 492030513022, số khung: 3GX8FV004087', 'Trong giờ hành chính từ ngày 08 giờ 00 phút ngày 21/6/2024 đến 17 giờ 00 phút ngày 08/7/2024 tại Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\n- Người tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 560000000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội.', NULL, NULL, 249, NULL, '2024-07-11 14:00:00', '56,000,000 VNĐ', '2024-06-21 08:00:00', '2024-07-08 17:00:00', '2024-07-08 08:00:00', '2024-07-10 17:00:00', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam – Chi nhánh Nam Hà Nội', '01 xe ô tô nhãn hiệu MERCEDES – BENZ, số loại E250, biển kiểm soát số: 30E-118.61, số máy 492030513022, số khung: 3GX8FV004087', 'Số 409 Tam Trinh, phường Hoàng Văn Thụ, quận Hoàng Mai, thành phố Hà Nội.', 'Tòa nhà C3, phường Phương Liệt, quận Thanh Xuân, Tp. Hà Nội.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-o-to-nhan-hieu-mercedes-benz-so-loai-e250-bien-kiem-soat-so-30e11861-so-may-492030513022-so-khung-3gx8fv004087-343663.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(77, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Tài sản thi hành án: Quyền sử dụng đất và tài sản gắn liền với đất tại xã Bình Kiến, thành phố Tuy Hòa, tỉnh Phú Yên của vợ chồng ông Nguyễn Đức Phú và bà Trương Nữ Trần Chung.', 'b) Điều kiện, cách thức đăng ký tham gia đấu giá:\n- Người tham gia đấu giá phải mua hồ sơ đấu giá điền đầy đủ thông tin vào hồ sơ; nộp hồ sơ đăng ký tham gia đấu giá và tiền đặt trước theo thời gian và địa điểm quy định trong Quy chế này. \nHồ sơ đăng ký tham gia đấu giá gồm:\n+ Đơn đăng ký tham gia đấu giá (theo mẫu do TTDVĐGTS phát hành);\n+ Chứng từ nộp tiền đặt trước;\n+ Căn cước công dân hoặc Chứng minh nhân dân (bản photo);\n+ Phiếu trả giá bỏ vào phong bì niêm phong (theo mẫu do TTDVĐGTS phát hành).\n- Người tham gia đấu giá tự niêm phong và ký tại các mép của phong bì đựng phiếu trả giá.\n- Người tham gia đấu giá có thể ủy quyền bằng văn bản cho người khác thay mặt mình tham gia buổi công bố giá (văn bản ủy quyền phải được xác nhận hoặc công chứng, chứng thực của cơ quan có thẩm quyền theo quy định pháp luật).', 7064910000, 'Hội trường Trung tâm Dịch vụ đấu giá tài sản Phú Yên (Số 68 Lê Duẩn, phường 7, thành phố Tuy Hòa, Phú Yên).', NULL, NULL, 249, NULL, '2024-08-15 08:00:00', '1,400,000,000 VNĐ', '2024-06-26 07:30:00', '2024-08-12 17:00:00', '2024-08-12 07:30:00', '2024-08-14 17:00:00', 'CHI CỤC THI HÀNH ÁN DÂN SỰ THÀNH PHỐ TUY HÒA.', 'Tài sản thi hành án: Quyền sử dụng đất và tài sản gắn liền với đất tại xã Bình Kiến, thành phố Tuy Hòa, tỉnh Phú Yên của vợ chồng ông Nguyễn Đức Phú và bà Trương Nữ Trần Chung.', 'CHI CỤC THI HÀNH ÁN DÂN SỰ THÀNH PHỐ TUY HÒA.', 'Số 12 đường Tố Hữu, phường 9, thành phố Tuy Hòa, tỉnh Phú Yên', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/tai-san-thi-hanh-an-quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-tai-xa-binh-kien-thanh-pho-tuy-hoa-tinh-phu-yen-cua-vo-chong-ong-nguyen-duc-phu-va-ba-truong-nu-tran-chung-343661.html', 'Trung tâm Dịch vụ đấu giá tài sản tỉnh Phú Yên', '68 Lê Duẩn, Phường 7, Thành phố Tuy Hoà, Tỉnh Phú Yên', '0915419299'),
(78, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 11 lô tài sản là tang vật vi phạm hành chính bị tịch thu sung quỹ nhà nước đã được phê duyệt phương án xử lý tài sản tại các Quyết định số 411/QĐ-QLTTQNA ngày 01/6/2023, Quyết định số 424/QĐ-QLTTQNA ngày 07/6/2023, Quyết định số 727/QĐ-QLTTQNA  ngày ...', '+ Người tham gia đấu giá đủ điều kiện theo quy định của Luật đấu giá tài sản và các quy định khác của pháp luật có liên quan và không thuộc đối tượng qui định tại Khoản 4, Điều 38 của Luật đấu giá tài sản số 01/2016/QH14 ngày 17/11/2016 được mua hồ sơ tham gia đấu giá. \n+ Người tham gia đấu giá phải nghiên cứu kỹ hồ sơ đấu giá, Quy chế cuộc đấu giá, các điều kiện đã nêu trong Quy chế đấu giá; nếu hoàn toàn đồng ý thì làm đơn đăng ký tham gia đấu giá tài sản theo mẫu do Công ty phát hành (có đóng dấu treo của Công ty, không được sử dụng hồ sơ phô tô), ghi đầy đủ, cụ thể, chi tiết các nội dung nêu trong đơn. Người đăng ký tham gia đấu giá trực tiếp (hoặc có thể ủy quyền) nộp hồ sơ tại Công ty trong giờ hành chính.', 268324000, 'Công ty Đấu giá Hợp danh Tài chính và Giá cả Quảng Nam (Số 108 Lê Lợi, phường An Mỹ, thành phố Tam Kỳ, tỉnh Quảng Nam)', NULL, NULL, 249, NULL, '2024-07-12 10:00:00', '50,900,000 VNĐ', '2024-06-26 07:30:00', '2024-07-09 17:00:00', '2024-07-09 07:30:00', '2024-07-11 17:00:00', 'Cục Quản lý thị trường tỉnh Quảng Nam', '11 lô tài sản là tang vật vi phạm hành chính bị tịch thu sung quỹ nhà nước đã được phê duyệt phương án xử lý tài sản tại các Quyết định số 411/QĐ-QLTTQNA ngày 01/6/2023, Quyết định số 424/QĐ-QLTTQNA ngày 07/6/2023, Quyết định số 727/QĐ-QLTTQNA ngày 05/10/2023 và Quyết định số 188/QĐ-QLTTQNA ngày 15/3/2024 của Cục Quản lý thị trường tỉnh Quảng Nam.', 'Tại kho Cục Quản lý thị trường tỉnh Quảng Nam, địa chỉ: Quốc lộ 1A, phường Hòa Thuận, thành phố Tam Kỳ, Quảng Nam.', 'Quốc lộ 1A, phường Hòa Thuận, thành phố Tam Kỳ, Quảng Nam', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/11-lo-tai-san-la-tang-vat-vi-pham-hanh-chinh-bi-tich-thu-sung-quy-nha-nuoc-da-duoc-phe-duyet-phuong-an-xu-ly-tai-san-tai-cac-quyet-dinh-so-411qdqlttqna-ngay-0162023-quyet-dinh-so-424qdqlttqna-ngay-0762023-quyet-dinh-so-727qdqlttqna-ngay-05102023-va-quyet-dinh-so-188qdqlttqna-ngay-1532024-cua-cuc-quan-ly-thi-truong-tinh-quang-nam--343660.html', 'CÔNG TY ĐẤU GIÁ HỢP DANH TÀI CHÍNH VÀ GIÁ CẢ QUẢNG NAM', 'số 108 Lê Lợi, phường An Mỹ, thành phố Tam Kỳ, tỉnh Quảng Nam., Thành phố Tam Kỳ, Tỉnh Quảng Nam', '02353 338777'),
(79, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Tài sản thanh lý là 06 xe ô tô đã qua sử dụng của  Cục Quản lý thị trường tỉnh Thanh Hóa.,Tài sản thanh lý là 06 xe ô tô đã qua sử dụng của  Cục Quản lý thị trường tỉnh Thanh Hóa.,Tài sản thanh lý là 06 xe ô tô đã qua sử dụng của  Cục Quản lý thị trư...', 'Đối tượng, điều kiện tham gia đấu giá:\n Các tổ chức, cá nhân, doanh nghiệp hoạt động đúng theo quy định của pháp luật có nhu cầu tham gia đấu giá tài sản trừ những đối tượng không được tham gia đấu giá theo quy định tại khoản 4 Điều 38 Luật đấu giá Tài sản số 01/2016/QH14 ngày 17 tháng 11 năm 2016.', 15100000, 'Công ty đấu giá hợp danh Nhất An Phú – CN Thanh Hóa, Địa chỉ: Tòa nhà VCCI, số 91 Nguyễn Chí Thanh, phường Đông Thọ, thành phố Thanh Hóa, tỉnh Thanh Hóa.', NULL, NULL, 249, NULL, '2024-07-11 14:00:00', '3,000,000 VNĐ', '2024-06-29 08:00:00', '2024-07-08 16:30:00', '2024-07-08 00:00:00', '2024-07-10 16:30:00', 'Cục Quản lý thị trường tỉnh Thanh Hóa', 'Tài sản thanh lý là 06 xe ô tô đã qua sử dụng của Cục Quản lý thị trường tỉnh Thanh Hóa.', 'Cục Quản lý thị trường tỉnh Thanh Hóa; Địa chỉ: 01A61 Đại lộ Lê Lợi, phường Đông Hương, TP Thanh Hóa, tỉnh Thanh Hóa.', '01A61 Đại lộ Lê Lợi, phường Đông Hương, TP Thanh Hóa, tỉnh Thanh Hóa.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/tai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoatai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoatai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoatai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoatai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoatai-san-thanh-ly-la-06-xe-o-to-da-qua-su-dung-cua-cuc-quan-ly-thi-truong-tinh-thanh-hoa-343648.html', 'Công ty đấu giá hợp danh Nhất An Phú', 'Tầng 5 tòa nhà Silver Wings, số 137 Nguyễn Văn Cừ, phường Ngọc Lâm, Quận Long Biên, Thành phố Hà Nội', '0909.868.974'),
(80, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất đối với 11 lô đất  thuộc khu dân cư thôn Nam Hạc, xã Hoằng Phong thuộc MBQH số 77/MBQH-UBND ngày 02/10/2020   huyện Hoằng Hoá, tỉnh Thanh Hóa.', 'Điều kiện được đăng ký tham gia đấu giá: \n- Người tham gia đấu giá phải thuộc đối tượng được tham gia đấu giá theo quy định đã được nêu tại mục 3.1.\n- Có đơn đề nghị tham gia đấu giá theo mẫu Công ty phát hành;\n- Có hồ sơ tham gia đấu giá hợp lệ theo quy định;\n- Nộp đủ tiền đặt trước và tiền mua hồ sơ tương ứng với số lượng lô đất đăng ký tham gia đấu giá.\n- Trong một gói đấu giá: Mỗi hộ gia đình chỉ được một cá nhân có đầy đủ năng lực hành vi dân sự tham gia đấu giá;\n- Đối với hộ gia đình tham gia đấu giá: phải là chủ hộ (nếu chủ hộ ủy quyền thì việc ủy quyền phải theo đúng quy định của pháp luật), chỉ được cử 01 người là chủ hộ tham gia đấu giá tại phiên đấu giá;', 9322500000, 'Tại Hội trường UBND xã Hoằng Phong, huyện Hoằng Hóa, tỉnh Thanh Hoá.', NULL, NULL, 249, NULL, '2024-07-18 08:30:00', '1,859,000,000 VNĐ', '2024-07-01 08:00:00', '2024-07-15 16:30:00', '2024-07-15 00:00:00', '2024-07-17 16:30:00', 'UBND huyện Hoằng Hóa', 'Quyền sử dụng đất đối với 11 lô đất thuộc khu dân cư thôn Nam Hạc, xã Hoằng Phong thuộc MBQH số 77/MBQH-UBND ngày 02/10/2020 huyện Hoằng Hoá, tỉnh Thanh Hóa.', 'khu dân cư thôn Nam Hạc, xã Hoằng Phong thuộc MBQH số 77/MBQH-UBND ngày 02/10/2020 huyện Hoằng Hoá, tỉnh Thanh Hóa.', 'Phố Đạo Sơn, thị trấn Bút Sơn, huyện Hoằng Hoá, tỉnh Thanh Hoá.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-doi-voi-11-lo-dat-thuoc-khu-dan-cu-thon-nam-hac-xa-hoang-phong-thuoc-mbqh-so-77mbqhubnd-ngay-02102020-huyen-hoang-hoa-tinh-thanh-hoa-343615.html', 'Công ty đấu giá hợp danh Nhất An Phú', 'Tầng 5 tòa nhà Silver Wings, số 137 Nguyễn Văn Cừ, phường Ngọc Lâm, Quận Long Biên, Thành phố Hà Nội', '0909.868.974'),
(81, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 167, tờ bản đồ số 48, diện tích: 357,1 m2 có địa chỉ tại: Xóm Tân Vĩnh, xã Tân Thành, huyện Yên Thành, tỉnh Nghệ An', 'Trong giờ hành chính từ 08 giờ 00 phút ngày 21/6/2024 đến 17 giờ 00 phút ngày 09/7/2024 bằng hình thức nộp trực tiếp tại địa chỉ: Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\n- Người tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 900250000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội.', NULL, NULL, 249, NULL, '2024-07-12 09:00:00', '90,025,000 VNĐ', '2024-06-21 08:00:00', '2024-07-09 17:00:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', 'Ngân hàng TMCP Quốc tế Việt Nam (VIB)', 'Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 167, tờ bản đồ số 48, diện tích: 357,1 m2 có địa chỉ tại: Xóm Tân Vĩnh, xã Tân Thành, huyện Yên Thành, tỉnh Nghệ An', 'Xóm Tân Vĩnh, xã Tân Thành, huyện Yên Thành, tỉnh Nghệ An', 'Tầng 1 (Tầng trệt) và tầng 2 Tòa nhà Sailing Tower, số 111A Pasteur, phường Bến Nghé, Quận 1, thành phố Hồ Chí Minh, Việt Nam.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-tai-thua-dat-so-167-to-ban-do-so-48-dien-tich-3571-m2-co-dia-chi-tai-xom-tan-vinh-xa-tan-thanh-huyen-yen-thanh-tinh-nghe-an-343665.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(82, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe ô tô chở tiền nhãn hiệu Hyundai, số loại Santafe4wd, biển kiểm soát: 29A-786.10', 'Thời gian, địa điểm tham khảo hồ sơ và tiếp nhận hồ sơ tham gia đấu giá: Trong giờ hành chính từ 08 giờ 00 phút ngày 26/6/2024 đến 17 giờ 00 phút ngày 09/7/2024 tại địa chỉ: Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\nNgười tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 200000000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội.', NULL, NULL, 249, NULL, '2024-07-12 11:00:00', '40,000,000 VNĐ', '2024-06-26 08:00:00', '2024-07-09 17:00:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Đông Anh', '01 xe ô tô chở tiền nhãn hiệu Hyundai, số loại Santafe4wd, biển kiểm soát: 29A-786.10', 'Tổ 4, thị trấn Đông Anh, huyện Đông Anh, thành phố Hà Nội', 'Tổ 4, thị trấn Đông Anh, huyện Đông Anh, thành phố Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-o-to-cho-tien-nhan-hieu-hyundai-so-loai-santafe4wd-bien-kiem-soat-29a78610-343669.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(83, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: (MS712/24) Xe ô tô con nhãn hiệu KIA MORNING biển số 64A-062.47, số khung 51A4JC136064, số máy G4LAJP018754, màu trắng, 05 chỗ ngồi , dung tích 1248 cm3', 'Địa điểm đăng ký, bỏ phiếu trả giá:  Số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.\n-	 Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016.\n-	 Cách thức đăng ký: Nộp trực tiếp tại 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', 246000000, 'Tại trụ sở Công ty Đấu giá Hợp danh Minh Pháp - số 151 Trần Huy Liệu, P.8, Q.Phú Nhuận, TP.HCM.', NULL, NULL, 249, NULL, '2024-07-11 10:00:00', '49,200,000 VNĐ', '2024-06-24 08:00:00', '2024-07-08 17:00:00', '2024-07-08 08:00:00', '2024-07-10 17:00:00', 'NGÂN HÀNG TMCP ĐẠI CHÚNG VIỆT NAM (PVCOMBANK)', '(MS712/24) Xe ô tô con nhãn hiệu KIA MORNING biển số 64A-062.47, số khung 51A4JC136064, số máy G4LAJP018754, màu trắng, 05 chỗ ngồi , dung tích 1248 cm3', 'Bãi xe Số 1 Đường 22, phường Linh Đông, thành phố Thủ Đức, TP. Hồ Chí Minh', 'Số 22 Ngô Quyền, phường Tràng Tiền, quận Hoàn Kiếm, TP. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/ms71224-xe-o-to-con-nhan-hieu-kia-morning-bien-so-64a06247-so-khung-51a4jc136064-so-may-g4lajp018754-mau-trang-05-cho-ngoi-dung-tich-1248-cm3--343678.html', 'Công ty Đấu giá Hợp danh Minh Pháp', '151 Trần Huy Liệu, Phường 8, Quận Phú Nhuận, Thành phố Hồ Chí Minh', '0903392209'),
(84, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác và cung cấp dịch vụ tại các vị trí trong khu vực Bảo tàng Hồ Chí Minh', '(trong giờ hành chính, trừ thứ bảy và chủ nhật) Thời gian, địa điểm, điều kiện, cách thức mua hồ sơ, nộp hồ sơ, nộp tiền đặt trước, tham gia đấu giá, thông tin chi tiết tài sản và các quy định khác theo từng Quy chế cuộc đấu giá do Công ty đấu giá ban hành.', 5072400000, 'Từ 13 giờ 30 phút  tại phòng đấu giá của Công ty đấu giá hợp danh Phúc Thành (Địa chỉ: Số 9 phố Lương Khánh Thiện, phường Tương Mai, quận Hoàng Mai, TP. Hà Nội).', NULL, NULL, 249, NULL, '2024-07-17 13:30:00', '1,007,000,000 VNĐ', '2024-06-28 08:00:00', '2024-07-12 16:30:00', '2024-07-12 08:00:00', '2024-07-16 16:30:00', 'Bảo tàng Hồ Chí Minh', 'Quyền khai thác và cung cấp dịch vụ tại các vị trí trong khu vực Bảo tàng Hồ Chí Minh', 'Bảo tàng Hồ Chí Minh', 'Số 19 phố Ngọc Hà, phường Đội Cấn, quận Ba Đình, thành phố Hà Nội.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-va-cung-cap-dich-vu-tai-cac-vi-tri-trong-khu-vuc-bao-tang-ho-chi-minh-343652.html', 'Công ty đấu giá hợp danh Phúc Thành', 'Số 9 phố Lương Khánh Thiện, phường Tương Mai, Quận Hoàng Mai, Thành phố Hà Nội', ''),
(85, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền khai thác và cung cấp dịch vụ (hai gói) tại tầng 1 số 16 Lê Thái Tổ (mặt tiếp giáp phố Hàng Trống) là tài sản của Nhà hát Nghệ thuật đương đại Việt Nam. Thời gian khai thác: 03 năm. Trong đó:,Gói 2: Quyền khai thác và cung cấp dịch vụ tại phòng...', '(trong giờ hành chính, trừ thứ bảy và chủ nhật) Thời gian, địa điểm, điều kiện, cách thức mua hồ sơ, nộp hồ sơ, nộp tiền đặt trước, tham gia đấu giá, thông tin chi tiết tài sản và các quy định khác theo từng Quy chế cuộc đấu giá do Công ty đấu giá ban hành.', 9661680000, '(Thời gian tổ chức Gói 1: 9 giờ 30 phút; Gói 2: 10 giờ 30 phút) Tại phòng đấu giá của Công ty đấu giá hợp danh Phúc Thành (Địa chỉ: Số 9 phố Lương Khánh Thiện, phường Tương Mai, quận Hoàng Mai, TP. Hà Nội)', NULL, NULL, 249, NULL, '2024-07-12 09:30:00', '490,000,000 VNĐ', '2024-06-25 08:00:00', '2024-07-09 16:30:00', '2024-07-09 08:00:00', '2024-07-11 16:30:00', 'Nhà hát Nghệ thuật đương đại Việt Nam', 'Quyền khai thác và cung cấp dịch vụ (hai gói) tại tầng 1 số 16 Lê Thái Tổ (mặt tiếp giáp phố Hàng Trống) là tài sản của Nhà hát Nghệ thuật đương đại Việt Nam. Thời gian khai thác: 03 năm. Trong đó:', 'tại tầng 1 số 16 Lê Thái Tổ, phường Hàng Trống, quận Hoàn Kiếm, TP.Hà Nội (mặt tiếp giáp phố Hàng Trống).', 'Số 58 Kim Mã, quận Ba Đình, thành phố Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-khai-thac-va-cung-cap-dich-vu-hai-goi-tai-tang-1-so-16-le-thai-to-mat-tiep-giap-pho-hang-trong-la-tai-san-cua-nha-hat-nghe-thuat-duong-dai-viet-nam-thoi-gian-khai-thac-03-nam-trong-dogoi-2-quyen-khai-thac-va-cung-cap-dich-vu-tai-phong-tang-1-co-dien-tich-40-m2goi-1-quyen-khai-thac-va-cung-cap-dich-vu-tai-phong-tang-1-co-dien-tich-50-m2-343653.html', 'Công ty đấu giá hợp danh Phúc Thành', 'Số 9 phố Lương Khánh Thiện, phường Tương Mai, Quận Hoàng Mai, Thành phố Hà Nội', ''),
(86, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe tải có mui nhãn hiệu JAC đã qua sử dụng, biển kiểm soát số 26H-000.62; Màu sơn: Xanh; Số máy: 1A2A20034681; Số khung:  LED4LB100041', 'Địa điểm đăng ký: tại Số nhàB17 Lô 6 và số B5 Lô 5 KĐT Định Công, phường Định Công, quận Hoàng Mai, thành phố Hà Nội. Điều kiện đăng ký tham gia: Các cá nhân, tổ chức có nhu cầu, khả năng tài chính được tham gia đăng ký ngoại trừ những trường hợp quy định tại khoản 4 Điều 38 Luật đấu giá tài sản số 01/2016/QH14 ban hành ngày 17/11/2016 (Chi tiết tham khảo hồ sơ đấu giá). Cách thức đăng ký: Mua, nộp hồ sơ, đăng ký trực tiếp tại Địa chỉ: Số nhà B17 Lô 6 và số B5 Lô 5 KĐT Định Công, phường Định Công, quận Hoàng Mai, thành phố Hà Nội.', 277000000, 'Số nhà B5 Lô 5 Khu đô thị Định Công, Phường Định Công, Quận Hoàng Mai, TP.Hà Nội.', NULL, NULL, 249, NULL, '2024-07-03 09:30:00', '20 %', '2024-06-26 08:00:00', '2024-07-01 17:00:00', '2024-06-28 08:00:00', '2024-07-02 17:00:00', 'Ngân hàng TMCP Việt Nam Thịnh Vượng', '01 xe tải có mui nhãn hiệu JAC đã qua sử dụng, biển kiểm soát số 26H-000.62; Màu sơn: Xanh; Số máy: 1A2A20034681; Số khung: LED4LB100041', 'Bãi xe Minh Hằng, ngõ 136 Hồ Tùng Mậu, phường Mai Dịch, quận Cầu Giấy, TP. Hà Nội', 'Số 89 Láng Hạ, P. Láng Hạ, Q. Đống Đa, Tp. Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-tai-co-mui-nhan-hieu-jac-da-qua-su-dung-bien-kiem-soat-so-26h00062-mau-son-xanh-so-may-1a2a20034681-so-khung-led4lb100041-343409.html', 'Công ty Đấu giá hợp danh Vạn Thành An', '03 Lý Văn Phức, Phường Tân Định, Quận 1, Thành phố Hồ Chí Minh', '02838204858'),
(87, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Tài sản là toàn bộ trang thiết bị, công cụ dụng cụ và giá trị đầu tư còn lại tại điểm trường mầm non STEAMe Tây Hồ 1', 'Thời gian, địa điểm tham khảo hồ sơ và tiếp nhận hồ sơ tham gia đấu giá: Trong giờ hành chính từ 08 giờ 00 phút ngày 26/6/2024 đến 17 giờ 00 phút ngày 08/7/2024 bằng hình thức đăng ký trực tiếp tại Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\nNgười tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 1499000000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.', NULL, NULL, 249, NULL, '2024-07-11 11:00:00', '299,800,000 VNĐ', '2024-06-26 08:00:00', '2024-07-08 17:00:00', '2024-07-08 08:00:00', '2024-07-10 17:00:00', 'Ngân hàng TMCP đầu tư và phát triển Việt Nam – Chi nhánh Thanh Xuân', 'Tài sản là toàn bộ trang thiết bị, công cụ dụng cụ và giá trị đầu tư còn lại tại điểm trường mầm non STEAMe Tây Hồ 1', 'Tầng 1 và 2, công trình hỗn hợp dịch vụ công cộng thương mại nhà trẻ và khu chung cư số 02 đường Đặng Thai Mai, phường Quảng An, quận Tây Hồ, Thành phố Hà Nội', 'Hapulico Complex, số 1 Nguyễn Huy Tưởng, phường Thanh Xuân Trung, quận Thanh Xuân, thành phố Hà Nội', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/tai-san-la-toan-bo-trang-thiet-bi-cong-cu-dung-cu-va-gia-tri-dau-tu-con-lai-tai-diem-truong-mam-non-steame-tay-ho-1-343552.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(88, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: 01 xe ô tô khách nhỏ, nhãn hiệu Toyota, số loại Hiace, Biển kiểm soát: 29B-017.70,01 xe ô tô con nhãn hiệu Toyota, số loại Fortuner, biển kiểm soát: 30X-8425', 'Thời gian, địa điểm tham khảo hồ sơ và tiếp nhận hồ sơ tham gia đấu giá: Trong giờ hành chính từ 08 giờ 00 phút ngày 26/6/2024 đến 17 giờ 00 phút ngày 09/7/2024 (Không tính ngày nghỉ lễ, tết theo quy định) tại địa chỉ: Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\nNgười tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 192000000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội', NULL, NULL, 249, NULL, '2024-07-12 14:00:00', '19,200,000 VNĐ', '2024-06-26 08:00:00', '2024-07-09 17:00:00', '2024-07-09 08:00:00', '2024-07-11 17:00:00', 'Ngân hàng TMCP Công thương Việt Nam – Chi nhánh Hai Bà Trưng', '01 xe ô tô khách nhỏ, nhãn hiệu Toyota, số loại Hiace, Biển kiểm soát: 29B-017.70', 'Số 285 Trần Khát Chân, phường Thanh Nhàn, quận Hai Bà Trưng, thành phố Hà Nội.', 'Số 285 Trần Khát Chân, phường Thanh Nhàn, quận Hai Bà Trưng, thành phố Hà Nội.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/01-xe-o-to-khach-nho-nhan-hieu-toyota-so-loai-hiace-bien-kiem-soat-29b0177001-xe-o-to-con-nhan-hieu-toyota-so-loai-fortuner-bien-kiem-soat-30x8425-343556.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690'),
(89, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất và tài sản gắn liền với đất', 'Địa điểm đăng ký: Tại Công ty đấu giá hợp danh Thanh Bình, địa chỉ: Số 90, đường Cao Thắng, khóm 7, phường 8, thành phố Cà Mau, tỉnh Cà Mau. Điều kiện: Phải có đơn đăng ký tham gia đấu giá hợp lệ theo mẫu do Công ty phát hành, kèm theo giấy chứng minh nhân dân hoặc căn cước công dân và phải nộp đúng theo thời gian đã niêm yết, thông báo. Cách thức: Tổ chức, cá nhân có nhu cầu đăng ký tham gia đấu giá mua tài sản thì tự mình liên hệ đến Công ty nộp trực tiếp hoặc có thể ủy quyền cho người khác nộp thay.', 725898000, 'Tại Công ty đấu giá hợp danh Thanh Bình', NULL, NULL, 249, NULL, '2024-08-01 09:00:00', '10 %', '2024-06-27 07:00:00', '2024-07-30 09:00:00', '2024-07-29 07:00:00', '2024-07-31 17:00:00', 'Chi cục Thi hành án dân sự huyện Cái Nước', 'Quyền sử dụng đất và tài sản gắn liền với đất', 'Ấp Trần Độ, xã Thạnh Phú, huyện Cái Nước, tỉnh Cà Mau', 'Số 02, thị trấn Cái Nước, huyện Cái Nước, tỉnh Cà Mau', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-va-tai-san-gan-lien-voi-dat-343668.html', 'Công ty đấu giá hợp danh Thanh Bình', 'Số 90, đường Cao Thắng, Khóm 7, Phường 8, Thành phố Cà Mau, Tỉnh Cà Mau', '02906270678'),
(90, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: QSDĐ ở nông thôn + đất trồng cây lâu năm + Đất LUC và công trình xây dựng trên đất gồm có: 01 căn nhà ở chính 01 trệt, khung chịu lực bằng BTCT, vách tường, nền lót gạch men, mái tol giả ngói; Nhà tiền chế + Nhà bếp (liền kề nhà ở chính): Khung kết c...', 'Đăng ký tham gia đấu giá tại Trung tâm dịch vụ đấu giá tài sản tỉnh Vĩnh Long. Cá nhân, tổ chức khi đăng ký tham gia đấu giá thông qua việc mua và nộp hồ sơ tham gia đấu giá hợp lệ theo Quy chế cuộc đấu giá.', 2604080000, 'tại Hội trường Trung tâm dịch vụ đấu giá tài sản tỉnh Vĩnh Long', NULL, NULL, 249, NULL, '2024-08-02 08:00:00', '260,000,000 VNĐ', '2024-06-26 07:00:00', '2024-07-30 17:00:00', '2024-07-30 07:00:00', '2024-08-01 16:30:00', 'Cục Thi hành án dân sự tỉnh Vĩnh Long', 'QSDĐ ở nông thôn + đất trồng cây lâu năm + Đất LUC và công trình xây dựng trên đất gồm có: 01 căn nhà ở chính 01 trệt, khung chịu lực bằng BTCT, vách tường, nền lót gạch men, mái tol giả ngói; Nhà tiền chế + Nhà bếp (liền kề nhà ở chính): Khung kết cấu bằng sắt, mái tol, không trần, nền lót gạch men, không vách; Khu vệ sinh; Nhà kho; Hàng rào (1+2+3); Sân xi măng và cây trồng có trên đất như: Dừa, mít, xoài, ổi, sầu riêng….Tổng DT đất sd 04 thửa: 11.082,8 m2, theo tờ bản đồ số 32 (128569-2), Tách 278-1 (CLN): diện tích: 601,4 m2; Tách 278-2 (ONT+CLN): diện tích 3.281,5 m2, trong đó có 300 m2 đất ở tại nông thôn; Thửa 206 (LUC): DT: 5.210,6 m2; Thửa 239 (LUC): diện tích: 1.989,3 m2. Theo 02 Mảnh trích đo địa chính ngày 18/01/2024 và ngày 12/7/2022 của Văn phòng ĐKĐĐ tỉnh Vĩnh Long. Tài sản của Ông Trần Huỳnh Quyết và bà Nguyễn Thị Hoa.', 'Ấp Phú Hòa, xã An Phước, huyện Mang Thít, tỉnh Vĩnh Long.', 'Số 499, ấp Phước Ngươn A, xã Phước Hậu, huyện Long Hồ, tỉnh Vĩnh Long.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/qsdd-o-nong-thon-dat-trong-cay-lau-nam-dat-luc-va-cong-trinh-xay-dung-tren-dat-gom-co-01-can-nha-o-chinh-01-tret-khung-chiu-luc-bang-btct-vach-tuong-nen-lot-gach-men-mai-tol-gia-ngoi-nha-tien-che-nha-bep-lien-ke-nha-o-chinh-khung-ket-cau-bang-sat-mai-tol-khong-tran-nen-lot-gach-men-khong-vach-khu-ve-sinh-nha-kho-hang-rao-123-san-xi-mang-va-cay-trong-co-tren-dat-nhu-dua-mit-xoai-oi-sau-riengtong-dt-dat-sd-04-thua-110828-m2-theo-to-ban-do-so-32-1285692-tach-2781-cln-dien-tich-6014-m2-tach-2782-ontcln-dien-tich-32815-m2-trong-do-co-300-m2-dat-o-tai-nong-thon-thua-206-luc-dt-52106-m2-thua-239-luc-dien-tich-19893-m2-theo-02-manh-trich-do-dia-chinh-ngay-18012024-va-ngay-1272022-cua-van-phong-dkdd-tinh-vinh-long-tai-san-cua-ong-tran-huynh-quyet-va-ba-nguyen-thi-hoa-343657.html', 'Trung tâm Dịch vụ Đấu giá tài sản tỉnh Vĩnh Long', 'Số 06 đường 30/4, Phường 1, Thành phố Vĩnh Long, Tỉnh Vĩnh Long', '0270 3826232'),
(91, 1, 1, 'Thông báo việc đấu giá đối với danh mục tài sản: Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 124, tờ bản đồ số 9, diện tích: 105,40m2 có địa chỉ tại: Khu 8, phường Hải Tân, TP Hải Dương, tỉnh Hải Dương', 'Thời gian, địa điểm tham khảo hồ sơ và tiếp nhận hồ sơ tham gia đấu giá: Trong giờ hành chính từ 08 giờ 00 phút ngày 26/6/2024 đến 17 giờ 00 phút ngày 02/7/2024 bằng hình thức nộp trực tiếp tại địa chỉ: Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, thành phố Hà Nội.\nNgười tham gia đấu giá đáp ứng đủ điều kiện theo quy định pháp luật và quy chế đấu giá tài sản do công ty ban hành nộp hồ sơ tham gia đấu giá hợp lệ và tiền đặt trước theo đúng thời gian và địa điểm quy định.', 1378500000, 'Tầng 4, Tòa nhà 29T1 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, TP Hà Nội', NULL, NULL, 249, NULL, '2024-07-04 11:00:00', '137,850,000 VNĐ', '2024-06-26 08:00:00', '2024-07-02 17:00:00', '2024-07-01 08:00:00', '2024-07-03 17:00:00', 'Ngân hàng TMCP Quốc tế Việt Nam (VIB)', 'Quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất tại thửa đất số 124, tờ bản đồ số 9, diện tích: 105,40m2 có địa chỉ tại: Khu 8, phường Hải Tân, TP Hải Dương, tỉnh Hải Dương', 'Khu 8, phường Hải Tân, TP Hải Dương, tỉnh Hải Dương', 'Tầng 1 (Tầng trệt) và tầng 2 Tòa nhà Sailing Tower, số 111A Pasteur, phường Bến Nghé, Quận 1, thành phố Hồ Chí Minh, Việt Nam.', 'https://dgts.moj.gov.vn/thong-bao-cong-khai-viec-dau-gia/quyen-su-dung-dat-quyen-so-huu-nha-o-va-tai-san-khac-gan-lien-voi-dat-tai-thua-dat-so-124-to-ban-do-so-9-dien-tich-10540m2-co-dia-chi-tai-khu-8-phuong-hai-tan-tp-hai-duong-tinh-hai-duong-343551.html', 'Công ty Đấu giá Hợp danh Bến Thành', '336 An Dương Vương, Phường 4, Quận 5, Thành phố Hồ Chí Minh', '(028) 66820690');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `LocationID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Latitude` decimal(10,8) DEFAULT NULL,
  `Longitude` decimal(11,8) DEFAULT NULL,
  `Type` enum('registration','login','current') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `LastLoginIP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`LocationID`, `UserID`, `Latitude`, `Longitude`, `Type`, `UpdateTime`, `LastLoginIP`) VALUES
(274, 234, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:21:48', NULL),
(275, 235, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:33:51', NULL),
(276, 236, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:36:45', NULL),
(277, 237, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:39:03', NULL),
(278, 238, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:45:11', NULL),
(279, 239, 10.54000000, 20.43500000, 'registration', '2024-06-10 04:48:17', NULL),
(280, 240, 10.54000000, 20.43500000, 'registration', '2024-06-10 05:10:17', NULL),
(281, 241, 10.54000000, 20.43500000, 'registration', '2024-06-10 05:14:23', NULL),
(282, 244, 10.54000000, 20.43500000, 'registration', '2024-06-10 05:24:17', '2024-06-10 05:24:16.980403'),
(283, 245, 10.54000000, 20.43500000, 'registration', '2024-06-10 05:26:38', '2024-06-10 05:26:37.914926'),
(284, 246, 10.54000000, 20.43500000, 'registration', '2024-06-10 05:28:01', '2024-06-10 05:28:01.148399'),
(285, 247, 10.54000000, 20.43500000, 'registration', '2024-06-10 06:30:51', '2024-06-10 06:30:51.228632'),
(286, 248, 10.54000000, 20.43500000, 'registration', '2024-06-10 06:37:15', '2024-06-10 06:37:14.648109'),
(287, 249, 10.54000000, 20.43500000, 'registration', '2024-06-10 15:48:37', '2024-06-10 15:48:36.955810'),
(288, 249, 10.00000000, 100.00000000, 'login', '2024-07-02 07:56:10', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `PostComments`
--

CREATE TABLE `PostComments` (
  `CommentID` int NOT NULL,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `CommentTime` datetime DEFAULT NULL,
  `CommentUpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PostComments`
--

INSERT INTO `PostComments` (`CommentID`, `PostID`, `UserID`, `Content`, `CommentTime`, `CommentUpdateTime`) VALUES
(1, 1, 1, 'abc', '2024-03-01 16:28:11', '2024-03-01 16:28:11'),
(2, 1, 8, 'comment 1', '2024-03-01 17:00:57', '2024-03-01 17:00:57'),
(12, 5, 249, 'di ee7otr to', '2024-07-01 08:21:40', '2024-07-01 08:21:40'),
(14, 5, 249, 'di ee7otr to', '2024-07-01 08:24:31', '2024-07-01 08:24:31'),
(17, 5, 249, 'di ee7otr to', '2024-07-01 08:27:17', '2024-07-01 08:27:17'),
(18, 5, 249, 'di ee7otr to', '2024-07-01 08:30:56', '2024-07-01 08:30:56'),
(19, 5, 249, 'di ee7otr to', '2024-07-01 08:31:42', '2024-07-01 08:31:42'),
(20, 5, 249, 'di ee7otr to', '2024-07-01 08:34:50', '2024-07-01 08:34:50'),
(21, 5, 249, 'di ee7otr to', '2024-07-01 08:35:17', '2024-07-01 08:35:17'),
(22, 5, 249, 'di ee7otr to', '2024-07-01 08:35:34', '2024-07-01 08:35:34'),
(23, 5, 249, 'di ee7otr to', '2024-07-01 08:35:59', '2024-07-01 08:35:59'),
(24, 5, 249, 'di ee7otr to', '2024-07-01 08:37:30', '2024-07-01 08:37:30'),
(26, 5, 249, 'di ee7otr to', '2024-07-01 09:06:06', '2024-07-01 09:06:06'),
(27, 5, 249, 'di ee7otr to', '2024-07-01 09:06:53', '2024-07-01 09:06:53'),
(28, 5, 249, 'di ee7otr to', '2024-07-01 09:19:39', '2024-07-01 09:19:39'),
(29, 5, 249, 'di ee7otr to', '2024-07-01 09:20:19', '2024-07-01 09:20:19'),
(30, 5, 249, 'di ee7otr to', '2024-07-01 09:20:39', '2024-07-01 09:20:39'),
(31, 5, 249, 'di ee7otr to', '2024-07-01 09:21:24', '2024-07-01 09:21:24'),
(32, 5, 249, 'di ee7otr to', '2024-07-01 09:22:44', '2024-07-01 09:22:44'),
(33, 5, 249, 'di ee7otr to', '2024-07-01 09:22:59', '2024-07-01 09:22:59'),
(34, 5, 249, 'di ee7otr to', '2024-07-01 09:29:24', '2024-07-01 09:29:24'),
(35, 5, 249, 'di ee7otr to', '2024-07-01 09:29:49', '2024-07-01 09:29:49'),
(36, 5, 249, 'di ee7otr to', '2024-07-01 09:34:04', '2024-07-01 09:34:04'),
(37, 5, 249, 'di ee7otr to', '2024-07-01 09:36:22', '2024-07-01 09:36:22'),
(38, 5, 249, 'abce', '2024-07-01 09:42:32', '2024-07-01 09:42:32'),
(39, 5, 249, 'di ee7otr to', '2024-07-01 09:44:39', '2024-07-01 09:44:39'),
(40, 5, 249, 'di ee7otr to', '2024-07-01 10:15:15', '2024-07-01 10:15:15'),
(41, 5, 249, 'di ee7otr to', '2024-07-01 10:15:58', '2024-07-01 10:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `Provinces`
--

CREATE TABLE `Provinces` (
  `ProvinceID` int NOT NULL,
  `ProvinceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Provinces`
--

INSERT INTO `Provinces` (`ProvinceID`, `ProvinceName`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(5, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(3, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'binh thuan'),
(9, 'Bình Định'),
(12, 'Cà Mau'),
(14, 'Cần Thơ'),
(13, 'Cao Bằng'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(30, 'Hậu Giang'),
(29, 'Hồ Chí Minh'),
(28, 'Hòa Bình'),
(31, 'Hưng Yên'),
(32, 'Khánh Hòa'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(38, 'Lâm Đồng'),
(37, 'Lạng Sơn'),
(36, 'Lào Cai'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hóa'),
(57, 'Thừa Thiên Huế'),
(58, 'Tiền Giang'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp');

-- --------------------------------------------------------

--
-- Table structure for table `RefreshTokens`
--

CREATE TABLE `RefreshTokens` (
  `RefreshTokenID` int NOT NULL,
  `UserID` int NOT NULL,
  `token` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RefreshTokens`
--

INSERT INTO `RefreshTokens` (`RefreshTokenID`, `UserID`, `token`, `expires_at`) VALUES
(56, 249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcxOTkwMTkzMCwianRpIjoiMzEwODE5ZGItMmE5NS00ZmVlLWFlYWEtNzgxMGY0YmE0ZjQ0IiwidHlwZSI6InJlZnJlc2giLCJzdWIiOnsiVXNlcklEIjoyNDksIkVtYWlsIjoiaGlldW5rYmJAZ21haWwuY29tIiwiUm9sZSI6dHJ1ZX0sIm5iZiI6MTcxOTkwMTkzMCwiZXhwIjoxNzIyNDkzOTMwfQ.x0vjBEsaAAowhgeLKszFFicO5xPbjE0iP7q4lM-k5KY', '2024-08-01 06:32:10'),
(57, 249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcxOTkwNjQ5OSwianRpIjoiZjcwYTY2NGQtYTdjNy00ODA1LTg0NGMtODViYTQ3YmFhYmIxIiwidHlwZSI6InJlZnJlc2giLCJzdWIiOnsiVXNlcklEIjoyNDksIkVtYWlsIjoiaGlldW5rYmJAZ21haWwuY29tIiwiUm9sZSI6dHJ1ZX0sIm5iZiI6MTcxOTkwNjQ5OSwiZXhwIjoxNzIyNDk4NDk5fQ.98PVuqtEIMTHT7-T_g9w5IDZMiSJcOZUzGG-K3J4vhU', '2024-08-01 07:48:19'),
(58, 249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcxOTkwNjk3MCwianRpIjoiYzQ0OTEwZWQtODEzYy00NjhjLWI3NTMtYWIzMjM4OTEwZWIxIiwidHlwZSI6InJlZnJlc2giLCJzdWIiOnsiVXNlcklEIjoyNDksIkVtYWlsIjoiaGlldW5rYmJAZ21haWwuY29tIiwiUm9sZSI6dHJ1ZX0sIm5iZiI6MTcxOTkwNjk3MCwiZXhwIjoxNzIyNDk4OTcwfQ.br9wngmAr3qCgQp_lTl54bbxGlP5y6jnu_DjCOVpSLw', '2024-08-01 07:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `Relationships`
--

CREATE TABLE `Relationships` (
  `RelationshipID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `RelatedUserID` int DEFAULT NULL,
  `RelationshipType` enum('block','other','favorite') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `idReceive` int NOT NULL,
  `relation` tinyint(1) DEFAULT '1',
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Relationships`
--

INSERT INTO `Relationships` (`RelationshipID`, `UserID`, `RelatedUserID`, `RelationshipType`, `CreateTime`, `idReceive`, `relation`, `id`) VALUES
(2, 37, 1, 'other', '2024-03-12 17:22:27', 1, 0, 0),
(3, 37, 3, 'other', '2024-03-12 18:05:15', 0, 0, 0),
(4, 192, 2, 'favorite', '2024-03-12 18:06:15', 1, 0, 0),
(5, 192, 2, 'other', '2024-03-12 18:06:21', 1, 1, 0),
(6, 192, 2, 'favorite', '2024-03-12 18:07:05', 1, 1, 0),
(8, 187, 2, 'favorite', '2024-03-13 23:18:31', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserPhotos`
--

CREATE TABLE `UserPhotos` (
  `PhotoID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PhotoURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL,
  `SetAsAvatar` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UserPhotos`
--

INSERT INTO `UserPhotos` (`PhotoID`, `UserID`, `PhotoURL`, `UploadTime`, `SetAsAvatar`) VALUES
(31, 37, 'https://i.ibb.co/rx7hkRR/980aeed129de.png', '2024-02-28 17:02:29', 0),
(32, 37, 'https://i.ibb.co/rx7hkRR/980aeed129de.png', '2024-02-28 17:04:53', 0),
(33, 37, 'https://i.ibb.co/rx7hkRR/980aeed129de.png', '2024-02-28 17:05:12', 0),
(34, 37, 'https://i.ibb.co/rx7hkRR/980aeed129de.png', '2024-02-28 17:05:49', 0),
(35, 37, 'https://i.ibb.co/rx7hkRR/980aeed129de.png', '2024-02-28 17:08:37', 0),
(36, 37, 'https://i.ibb.co/SmFQ2Gz/fd8bd3372635.png', '2024-02-28 17:19:59', 0),
(37, 37, 'https://i.ibb.co/R4WL2K1/980aeed129de.png', '2024-02-29 11:07:18', 0),
(38, 37, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-02-29 11:11:06', 0),
(39, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-02 12:07:49', 0),
(40, 37, 'https://i.ibb.co/TmD0wqs/6fbc45b80846.png', '2024-03-04 22:33:41', 0),
(41, 37, 'https://i.ibb.co/XpXrhrj/1ba58d13a065.png', '2024-03-05 09:38:53', 0),
(42, 37, 'https://i.ibb.co/s1QLQ9V/b5aede205121.png', '2024-03-05 10:54:08', 0),
(43, 37, 'https://i.ibb.co/s1QLQ9V/b5aede205121.png', '2024-03-05 10:54:47', 0),
(44, 37, 'https://i.ibb.co/8YLpLg8/df65f33cd1f9.png', '2024-03-05 10:59:55', 0),
(45, 37, 'https://i.ibb.co/PDvnvGC/df65f33cd1f9.png', '2024-03-05 11:03:36', 0),
(46, 37, 'https://i.ibb.co/PDvnvGC/df65f33cd1f9.png', '2024-03-05 11:03:42', 0),
(47, 37, 'https://i.ibb.co/PDvnvGC/df65f33cd1f9.png', '2024-03-05 11:03:46', 0),
(48, 37, 'https://i.ibb.co/PDvnvGC/df65f33cd1f9.png', '2024-03-05 11:04:44', 0),
(49, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 11:41:02', 0),
(50, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 11:41:09', 0),
(51, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 12:12:56', 0),
(52, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 12:46:39', 0),
(53, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 12:47:00', 0),
(54, 5, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 13:23:19', 1),
(55, 37, 'https://i.ibb.co/R6sPSsy/21555612b8f5.png', '2024-03-05 13:34:51', 0),
(56, 37, 'https://i.ibb.co/v3L7RSW/e5684e97deed.png', '2024-03-05 14:09:37', 0),
(57, 37, 'https://i.ibb.co/T1xFkBw/684da5d2d6b6.png', '2024-03-05 14:22:35', 0),
(58, 37, 'https://i.ibb.co/mNpBz5t/36ef50a9ac31.png', '2024-03-05 14:27:02', 0),
(59, 37, 'https://i.ibb.co/kBZyvyC/5703ee3d14dc.png', '2024-03-05 14:54:32', 0),
(60, 37, 'https://i.ibb.co/GPG1nJx/8ca5ea587b61.png', '2024-03-05 14:58:20', 0),
(61, 37, 'https://i.ibb.co/kQYvMsZ/33d11b801efa.png', '2024-03-05 15:01:05', 0),
(62, 3, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 16:15:10', 0),
(63, 3, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', '2024-03-05 16:20:42', 1),
(64, 37, 'https://i.ibb.co/jbMs9Sj/89bcb02bc297.png', '2024-03-12 10:05:58', 0),
(65, 37, 'https://i.ibb.co/cgh8NJ2/5f38dec633fe.png', '2024-03-12 10:12:13', 0),
(66, 37, 'https://i.ibb.co/cgh8NJ2/5f38dec633fe.png', '2024-03-12 10:20:31', 1),
(67, 192, 'https://i.ibb.co/YtLfDVY/25a045b64f2e.png', '2024-03-12 14:35:38', 0),
(68, 192, 'https://i.ibb.co/tbHTHy9/b876bba9fe41.png', '2024-03-12 14:38:27', 1),
(70, 187, '2.jpg', '2024-03-14 12:10:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int NOT NULL,
  `FullName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gender` enum('Nam','Nữ','Đồng tính nữ','Đồng tính nam') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `BirthTime` time DEFAULT NULL,
  `ProvinceID` int DEFAULT NULL,
  `IsAnonymous` smallint DEFAULT '0',
  `RegistrationIP` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LastLoginIP` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LastActivityTime` datetime DEFAULT NULL,
  `IsLoggedIn` tinyint(1) DEFAULT NULL,
  `Role` tinyint(1) NOT NULL,
  `avatarLink` varchar(400) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `CurrentAdd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `BirthPlace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Confirmed` tinyint(1) DEFAULT '0',
  `Blocked` tinyint(1) DEFAULT '0',
  `Create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(1, 'Ba Phạm', 'Ba', '$pbkdf2-sha256$29000$JUQIgfAeY6w1hlBKaU3JOQ$.sh6R45PjgMaAqQVeLR6qeMiOrGuXpQwBtP6/.aXnWc', 'Ba@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, 0, '42.113.61.229', '222.254.6.175', NULL, 1, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 1, NULL),
(2, 'Linh Nguyen', 'Tam', '$pbkdf2-sha256$29000$oFRqDUFo7X1vzdk75zynlA$qry4vGt4Lc9vc84jJhdEd3B56/aprhFPtITSkP0qqsg', 'nguyenvanlinh12134@gmail.com', '001', 'Nam', '2001-05-13', '00:00:00', 1, 0, '42.113.61.229', '42.113.61.229', NULL, 1, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'HaNoi', 'HaNoi', 0, 0, NULL),
(3, 'Linh Nguyen', 'admin', '$pbkdf2-sha256$29000$lpLSOuf8H.M8R4hRypmTsg$/mSExajxc7b5om7p3hIDlD0450fLeKjUwV4Lb2aP/iE', 'nguyenvanlinh12136@gmail.com', '001', 'Nam', '2001-05-13', '00:00:00', 1, 0, '171.224.181.144', '113.178.49.22', '2024-03-12 16:44:29', 1, 0, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'HaNoi', 'HaNoi', 0, 0, NULL),
(5, 'testData', 'DB', '$pbkdf2-sha256$29000$ZGytFWLsHcN4r1XKmZPSGg$XiPm4g3lmrhka53jZq1tKlbsQ9E8BLHuP7RuarffJsg', 'nguyenvanlinh11232113@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 1, 0, '222.254.6.175', '54.86.50.139', NULL, 1, 0, 'https://i.ibb.co/y6GvggT/Progetto-senza-titolo-5-jpg.webp', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut laLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et bore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(6, 'Phạm Đình Minh', 'PDM', '$pbkdf2-sha256$29000$yhmj1FprbU2JcQ5BSKlVSg$7YloSKBK55bbgdnCklkmiMHFdTY3jtqGEQAqjrzveA4', 'minh1997@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '113.178.49.22', '113.178.49.22', NULL, 1, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(7, 'Taiii', 'linh', '$pbkdf2-sha256$29000$J.QcQ6hVitE65xyj9L733g$r7DUdsKTtLtPfB46rTbAzhXbRcyw.Xq6D/HyHMhmgMY', 'pxltaiii@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(8, 'Linh Nguyen', 'huukien02', '$pbkdf2-sha256$29000$fI8RgjBmzHlv7d2bs9Y6hw$5fCip0Kv1BxOwdL8unDu5pE4gsgemUmoM7ZNKZf0Hvs', 'nguyenvanlinh1213@gmail.com', '0356600737', 'Nam', '1997-05-13', '00:00:00', 1, 0, '127.0.0.1', '', '2024-03-04 10:12:01', 1, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(11, 'Le Huu Kien', 'huukien2707', '$pbkdf2-sha256$29000$F6J0jrF2Tul9jxEiZOx9zw$YRD8n7pK7tEOuxX5VPXu9nhqWbnku2jRkKsDEwfqj9w', 'lhkien270702@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(13, 'Le Huu Kien', 'huukien27072002', '$pbkdf2-sha256$29000$q3UOQQgBgHAO4XxPqXWOcQ$0K5SsaygpejeFudwsk5kLe1fk2gU11Qtdko0sLMPWWA', 'kien.lh@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(15, 'Linh Nguyen', 'huukien2k2', '$pbkdf2-sha256$29000$rVUqxXivFYIQIgRAyNnbew$fTM8qdKaTaYmaFqb.LerUIjnHkW2eFv/FAg8rvaqZm4', 'nguyenvanlinh1123213@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 1, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(17, 'Le Huu Kien', 'huukien2k2123', '$pbkdf2-sha256$29000$eO99j7G2tlbK.R9jjNGa0w$1KO/68sfpbC3fmGG/NFw1pl17FS75ooDOtBsDqogAfg', 'kien123@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(18, 'Le Huu Kien', '12344', '$pbkdf2-sha256$29000$yJkTIgQgZGwtxVhrTanV.g$AGewMfJysNTjZBqvfsWoV28aaKCPWvi0zk5n/ykmvkc', 'kien1234@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(21, 'Le Huu Kien', '12345', '$pbkdf2-sha256$29000$DKGUMsY4x3gvZUxJaQ2hVA$nAeWqybcNPuCmUp40yH3D9gO9DEjU1D9VqvtW2RYmiE', 'kien12345@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(22, 'Le Huu Kien', '123456', '$pbkdf2-sha256$29000$gTBmTEnJuZey9p4TQijlnA$AZd.mNFvAB6QayPWETetV9bLlHqSzwoQIgkXmtVXV5g', 'kien123456@haposoft.com', NULL, 'Nam', NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(23, 'Le Huu Kien', 'admin123', '$pbkdf2-sha256$29000$09p7T2kNYSwlBEColdJ6Tw$l2CjsQWQUkmJlxpJyISZ759X0TS.bjbOqzqm92IoNGM', 'lehuukien27072k2@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(28, 'Le Huu Kien', 'admin2002', '$pbkdf2-sha256$29000$SElpLaU0hpDyXqv1npNSig$IHrJeVH15PIgiuGC6Jfo2ZYOHMLe0JHM05I.d1zCU0k', 'lehuukien270702123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(31, 'Taiii', 'linh1', '$pbkdf2-sha256$29000$kxJiDCEkZOy9d47x3jsH4A$JdBe06mn3Fk1iT5yyzzu7ArO51lPzGryWRU3bxoCT3s', 'pxltaiii@gmail.com12', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(33, 'Taiii', 'linh2', '$pbkdf2-sha256$29000$4jyHcA5hzBlDiPGeM.Z8rw$uiRK/.WTy..11mIzXcvtf8ZI6Dmro0UjrWC0I.biH.w', 'nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(34, 'Taiii', 'linh3', '$pbkdf2-sha256$29000$GGMsReg955yT0tr7X0spRQ$O/cZkN7/uKM4hF/y4PhS/tuNtXZ7afAGeU0mvVcFqtE', '3nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(35, 'Linh', 'l', '$pbkdf2-sha256$29000$ak1pDQHAOAeg1JrT.p.zFg$ioLkERl5CwF7W8oOpv2eCSpue6UfFSY3Qcc2sLK0TTg', '5nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(36, 'Linh', 'l2', '$pbkdf2-sha256$29000$.H/vnVNq7V1rDQHg/F/LWQ$UIlmwi8UCN6PK.QNkX.H2eZPWnif/5rx.SBJsXtbpxs', '6nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(37, 'Linh Nguyen', 'linhli', '$pbkdf2-sha256$29000$/58TwtgbQ6iVUmpNyTlH6A$UgaWKaU5SWY.kruWznQ7LPil0XbVRm5fbvfNkCPwcrs', 'linh@gmail.com', '121', 'Nữ', '2001-05-13', '00:00:00', 24, 0, '127.0.0.1', '113.178.49.22', '2024-03-12 10:55:16', 1, 0, 'https://i.ibb.co/cgh8NJ2/5f38dec633fe.png', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod te.jsgskjdsayduiashhgasuhgdashgdhjasgdhjasghdasgjdhgasgdhasgjdhgsajgdgihasdasghgasukhhchasdhjgsadhuasgdhjgasdhgashdgashgashdgasgdhasdjjkfbjgbjfvahdaskshdjasdjashdkasdashdjkashdjsnhnkhj', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(40, 'linhlinh', 'linhli1', '$pbkdf2-sha256$29000$05ozJqQ0ptRay/k/RygFwA$rht.5iEuHSesG83q0hkjLyldQ0frpnzrOJ9PvHZL8.8', 'linh123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '127.0.0.1', '2024-02-27 14:05:24', 1, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(41, 'linhlinh', 'linhli11', '$pbkdf2-sha256$29000$8b7X2juHUOo9J.T8XwtBCA$wo5IRK0/hjjtDjZ.O.EYL8kgPIRlP2F5/b4U93XCDlo', 'linh1234@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '127.0.0.1', '2024-02-27 13:51:16', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(42, 'linhli1123', 'linhli1123', '$pbkdf2-sha256$29000$uzemdO49J4QwhtBai5GyFg$6sd9cFfWoQVD1WTcGwMQxDtG.NG5OG.t.EFDUqPjdbE', 'hieunk3bb@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:25:42', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(43, 'linhli1123', 'linhli112342', '$pbkdf2-sha256$29000$DUForZUyhhBizHmvda4VQg$l2XlBpusKWiGx9ezKb2KJWhuoMAus3KM2DYxIGhfFIY', 'llinh613@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:28:51', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(44, 'linh123', 'linh123', '$pbkdf2-sha256$29000$3luL8V4rBcC4F4JQivHeGw$iahR53IQ475hSyXXgKCPsnfA/j3xGFJjdalg/iH9DWU', 'linh124123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:34:07', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(45, 'linhli1123421', 'linhli1123421', '$pbkdf2-sha256$29000$6X2PEYIQAmDsPadUyjknBA$4JijCw.jyRIZKt1xjEURtEamLNWXsDPZneG42hNqdok', 'llinh614@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:38:45', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(50, 'linhlu', 'linhlu', '$pbkdf2-sha256$29000$KIXQGkPovXcOwZjzXsv5nw$QjgDmawKQvf1QhzC3PXBA1LQylYZdrTvqYPQ5Mc4cpg', 'lin@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:41:47', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(54, 'linhl1u', 'linhl1u', '$pbkdf2-sha256$29000$q1XKOefc2/t/b805BwCglA$BtdtJwmpsuYS9WULOmn0We0N3ol1970p8dmfyapGtSI', 'liqss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:42:34', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(55, 'linhl1u1', 'linhl1u1', '$pbkdf2-sha256$29000$l/J.zzln7D1HyJmTEmLsvQ$LUsVL/VwNp.XH5jOb7zJl7ftVOYrkXcssvJJV.i3bf8', 'laiqss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:43:37', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(58, 'linhl1u13', 'linhl1u13', '$pbkdf2-sha256$29000$P.dcy7mXUupdC6GUci6FEA$gWQAz7ag7Wt4ZYYSeer5pSzwYS/rc1.qMt/GfrPd3SM', 'laiq3ss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:44:10', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(60, 'linhl1u134', 'linhl1u134', '$pbkdf2-sha256$29000$WotxrpXSeg9BCAEAQMj5fw$nVYet1JlbwsoQ4LvFVAwl62QS3/mFtXg4iNlyU.LVlI', 'lai2q3ss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:51:38', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(62, 'linhl1u1341', 'linhl1u1341', '$pbkdf2-sha256$29000$Q4ix1rrXGiPknNO6F6L03g$.kNpe6oNYO8asAI0mPGaFnYcjEFd/ZZTZmHa0Hnqa4Q', 'lai2q3ss1@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 09:50:23', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(63, 'linhl1u13412', 'linhl1u13412', '$pbkdf2-sha256$29000$BgBAiDHmvDemdG7NWWstpQ$dSJl/PsG5ukjNsnhUHdn/vThWhiFXnMCSs6.UQfhDJg', 'lai2q3ss13@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 09:51:58', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(67, 'weeds', 'weeds', '$pbkdf2-sha256$29000$YGxt7T0HQKg1prSWMgYAYA$HPgbJ0AnTMyZ6m.elKu5o87fFz1q1DiSNRNbEFhLHTs', 'lam123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 15:39:41', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(70, 'linh10', 'linh10', '$pbkdf2-sha256$29000$uTfGWMuZE.L8PwfgfA8BoA$FGNHdFK3dKPM/2.PZcaJDdSSDf1yOEa0qtq38O4muag', 'linh10@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:03:44', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(71, 'linh11', 'linh11', '$pbkdf2-sha256$29000$Q.g9B8AYYwzhHAMg5LzX2g$wMmE/EPvLOTw.7YXHeLuWfj17ZWoYrW7YNDxDxjH9Yo', 'linh11@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:00', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(72, 'linh15', 'linh15', '$pbkdf2-sha256$29000$P.d8T4lRSqlVylnL2TunlA$VIxnkj16aYsg.bv1pvFXZcyM/yb6V7JMTQFDVy.qChA', 'linh15@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:09', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(73, 'linh166', 'linh166', '$pbkdf2-sha256$29000$FULImXOudQ6BsNaa0/ofQw$/1ziAoo1/v69aRf1BH2/Z4CRSr79YuxwxHqWqY/h/cA', 'linh166@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:34', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(77, 'linhlinh', 'linh1661', '$pbkdf2-sha256$29000$zBmjVIqR8r73fo.xFsKYEw$d80xRzlZ9piKu6E3qC/dWk1KGdPunPFxl.4Vz945qaQ', 'linh1616@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:06:00', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(79, 'linhlinh', 'linh16611', '$pbkdf2-sha256$29000$7d2bkxLi3Ls3Zqz1HgMAgA$ZHFLsQbIQUCJIjHr.yzB1t5znAe3V24REZHLif/sabY', 'linh16161@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:07:02', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(81, 'linhlinh', 'linh16612', '$pbkdf2-sha256$29000$0xpj7F2rtZZyzjnHmBPiHA$p7G7EtX3psUzIT1t.ITpL6tU47Dv73uwE1W83V2HZfA', 'linh16162@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:07:21', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(83, 'linhlinh', 'linh166112', '$pbkdf2-sha256$29000$vdeaE6I0pvT.X2stJSRESA$bR8AlqMAih0K5OouRq35xBH2uCkQZRdiwRyMyM3tlPk', 'linh161162@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 13:03:28', 0, 0, 'https://img.freepik.com/premium-vector/man-avatar-icon-flat-illustration-man-avatar-vector-icon-any-web-design_98396-3379.jpg', NULL, NULL, NULL, 0, 0, NULL),
(87, 'linhlinh1', 'linh100', '$pbkdf2-sha256$29000$CqEUQkjJmTPmfO9dCyHEGA$elqK.Uh.U4ESo5jogR/qYRjbWzF6kYX6NAf8hxe8VnA', 'linh100@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:48:48', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(88, 'linhlinh1', 'linh1000', '$pbkdf2-sha256$29000$bS3FGKN0bq21FmIMAYCQEg$9kQ6Wlvj3rzM1afhqJ.IBREpGrObp0MfHgc0AVDL7rw', 'linh1000@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:49:03', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(90, 'linhlinh1', 'linh2000', '$pbkdf2-sha256$29000$J6S0Nsa4956TsjZmDMHYuw$g5ovE964yjZEhOk0KFi3Ojr5HDxbKafbFMaKDeD2.Z0', 'linh202@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:50:23', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(91, 'linhlinh1', 'linh203', '$pbkdf2-sha256$29000$1vp/z9lbK0XIeQ/BuPeekw$Ri34RCnKxB6rJMoS/DVlmgrH0O28Z/loKoQbJPLeYmg', 'linh203@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:51:00', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(93, 'linhlinh1', 'linh204', '$pbkdf2-sha256$29000$LIUwpvQ.B.A8hxBiLCUEAA$u0hKJURgCaPBBXLfG3SSaYwdyBtb0ZsxoLRbd2aikCs', 'linh204@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:51:57', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(95, 'linhlinh1', 'linh205', '$pbkdf2-sha256$29000$SKlV6l3r3Xvv3ZtT6v2/dw$xbKyNFJZPcimWLjyxLv6bFtvIjWnWvtFjSieJqqZTEs', 'linh205@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:53:50', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(97, 'linhlinh1', 'linh206', '$pbkdf2-sha256$29000$5fzfGyOEkPIeo5RSKgXAGA$XjIIiyHalfI1thnR7rMOHTa4jl3SmcZYN1IOkeWkQXo', 'linh206@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 16:16:56', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(98, 'linhlinh1', 'linh207', '$pbkdf2-sha256$29000$S0nJ.Z.z1vo/xxhDKCUkpA$gygDVo7QrVie.t7b2VkX9vH6X6R0hG90q0rDjQFhiEs', 'linh207@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '113.178.49.22', '2024-02-28 16:18:59', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(100, 'linhlinh1', 'linh208', '$pbkdf2-sha256$29000$uPdeK.W8l3Kuda4VYmzt3Q$wxhKjmHO2vtxjfGVdBN1P9sHbWkhY/yZp2Lq0lx3jgs', 'linh208@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '113.178.49.22', '2024-03-04 13:02:41', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(102, 'linhlinh1', 'linh2081', '$pbkdf2-sha256$29000$836vFUII4bw3RqgVAuCcsw$JiRVHRVlFMDn/AUARrlUjCrdKvkJuaaZvb6DVsdbWuk', 'linh1208@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-06 14:34:18', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(103, 'thanh thanh ', 'thanh', '$pbkdf2-sha256$29000$pzQmhDDmnNNaa.0dYyzlnA$03MRRpB8PsWiKskt4tlxeXdAtkPK2NapnjcyIuE6Pcw', 'thanh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 13:36:46', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(104, 'Đỗ Hưng ', 'tolahung', '$pbkdf2-sha256$29000$rHXOuTcm5Pxfi/GeM6YU4g$AAk9HyTEYZig/1h/YpZbOQOTtXXoHsb1qPw/NxAcP7Y', 'dotheviethung@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '123.16.198.5', '2024-03-12 13:16:15', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(105, 'Beokute', 'hung123321', '$pbkdf2-sha256$29000$ai2FMAbgfM85x3hvDeF8Tw$7oPkxEXMB.iOgM8qxoWjmArimSJOOkh5JN6ICPOJYrM', 'thgkjgjgv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:52:04', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(107, 'Beokute', 'hung123321111', '$pbkdf2-sha256$29000$9p5zbs0ZY4yx9l6rFWKMEQ$QYT1yTGLKvgpiMzrcyBxqMCuUh4lw26y4QBC1JxrpBA', 'thgkjgjgv1111251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:57:31', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(109, 'Beokute', 'hung1233211111111111', '$pbkdf2-sha256$29000$xxjj3Dun1FqrtTamNOYcAw$EuC8aP.wwQLZ.87zHXHG9rNnTGI2fF8PyXtNp94ckKQ', 'thgkjgj2222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:59:14', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(110, 'Beokute', 'hung12332169999', '$pbkdf2-sha256$29000$3nsvBWAMQQhhLCVk7J2Tsg$USpWNFadZrQbA0K6nblxs0hE4Mlkc5WmrUm3DTNbnjc', 'thgkjgj222214596782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:05:48', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(111, 'Beokute', 'hung1233211077821', '$pbkdf2-sha256$29000$M0YoRSiltDamVArhvJdSKg$s7bG281zdDU5Lod8GA70YAfhrt8fVpLcjxOt/pXIHfo', 'thgkjgj2222g1111v251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:07:13', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(113, 'Beokute', 'hung1233216969', '$pbkdf2-sha256$29000$2hvDWEtpjVEK4VwLgRACQA$BRyV9SCNtgXT3.XtWtLa49Pv7ng/2IUPmrZJ2VdFgZk', 'thgkjgj2222g1111v11111111111251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:11:31', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(114, 'Beokute', 'hung12332111111213', '$pbkdf2-sha256$29000$fW9NqdXa.78XgpDyfs/53w$eIsJwRG37cdEPBkR9OZsAtY3HxyHPIqaLPZrrZNFA5I', 'thgkjgj223596782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:15:10', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(115, 'Beokute', 'hung1233216966', '$pbkdf2-sha256$29000$LiXkvPd.j9FaS0nJuddaaw$4X5izAob7NtoP9b5hYAUFEAv6zmLo6kM0qrxFnOR7Pg', 'thgkjgjgv25691@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:17:32', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(116, 'Beokute', 'beokute69', '$pbkdf2-sha256$29000$PkeIkfLeW8tZq/Xee8.Zcw$Opz02LmagOgL0owD/RN2/csCLSUFE9T96E54uMltzA0', 'tunalph4ev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:18:00', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(118, 'quoc', 'quoc2002', '$pbkdf2-sha256$29000$WuvdO2eMsbZWCkFIaQ0BQA$troy2qFam7uFv1TsRTgSy0/qZHToRjN1c05If.Al3iE', 'quoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 16:40:39', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(120, 'linhlinh1', 'linh209', '$pbkdf2-sha256$29000$TqlVCqHUOqcUgnDuHYMwhg$h2lZZgqeLzR76GobT..dt1LsSQuORvGuAv0TDIh.crM', 'linh209@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 18:57:10', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(126, 'Beokute', 'hung12332110', '$pbkdf2-sha256$29000$QKiV0hoDIGSMcS4lRMhZyw$JvHfIeyrhxQuRfZcGLVVcFI/Ke/4btjJN3qqIMb.afM', 'thgkjgjgv14251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 19:42:14', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(127, 'Beokute', 'hung12332163', '$pbkdf2-sha256$29000$F2Lsfc/Z2zuHcO59790b4w$dmN4hxScEsPgoPkjjosMKJm9gwC1L0Tx15pkjqxq0mk', 'thgkjgj22221456782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 19:43:41', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(130, 'Nguyen Trang', 'trang123', '$pbkdf2-sha256$29000$6v0fg/Ce8x4jpHTunVMqZQ$XdsSBnueRgIwQosphbaiyuGcnP3yQIiPyjbkFhM.sRE', 'trang12345@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '103.224.168.28', '2024-03-05 12:32:41', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(131, 'linhlinh1', 'linh20869', '$pbkdf2-sha256$29000$lrIWgtCaE4LwnrM2hpBy7g$03BeMqPEc1G3dAQqwqEbrli59zfEgcKhJmqjfEvFtpA', 'linh20869@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-05 13:42:57', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(132, 'linhlinh1', 'linh208699', '$pbkdf2-sha256$29000$UUppbc2ZUypl7J3T.h/jfA$L85x2.rAZFbO8CEQgPgAtNiHOOQFRSHoIkWudWEoi9o', 'linh208699@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-05 13:46:56', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(133, 'Hung do the', 'Hungheo', '$pbkdf2-sha256$29000$BaAUYmwtRUipdQ7BuJey9g$5Havb.8HAzSKAMF1yBjxg09E1e8Kv8jHdEff6UUb/tY', 'khoacoj91@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-07 13:51:52', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(134, 'Do the viet hung', 'NguyenHung', '$pbkdf2-sha256$29000$hZAyBuC8t/ZeS2mN8V6rtQ$HTbM5mPS8bVvoETjZ3CTDR1MuELKfOieY5qTbiiS68Y', 'hunghung@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 17:09:40', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(136, 'linhlinh1', 'linh210', '$pbkdf2-sha256$29000$HSOEEOI8Z6zV2nsvJcS41w$buifSmTdNRigQdTNyRujkmrgKm3oEESk8DNiMeIBtDs', 'linh210@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-08 13:27:18', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(137, 'linh1231', 'linh1231', '$pbkdf2-sha256$29000$BWAMYYzxfs.Zk1IqBaD0vg$avjCdHLIezzExLK4cmyP6tIZXerrnA3zBYoU6h1H4xM', 'linh213@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:11:29', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(147, 'linhqwe', 'linhqwe', '$pbkdf2-sha256$29000$TundG0NozVlrzfl/T8n5/w$IxHjZW.MxjB9cwZE419LkiL7lurEoy3vcoYYrUENtxM', 'linqweeqweh@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:18:24', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(151, 'linhlinhlinhlinhlnihlnhin', 'linhlinhlinhlinhlnihlnhin', '$pbkdf2-sha256$29000$eO.dE6IUorS21jrnnJMyRg$wPLswx6TApfydGANGcn5T0Kq8Sq0QdkgOlCni5aVcvQ', 'aSlinqweeqweh@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:19:45', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(153, 'linhlinh1', 'linh211', '$pbkdf2-sha256$29000$ZywFoHRubW1tjXEOQSiFsA$aboNKsCUizlqVY5hrXe9RTnRg2VwDgOPs6/bcjOoNkA', 'linh211@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:23:31', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(156, 'linh212', 'linh212', '$pbkdf2-sha256$29000$IMRYqxXiPCfEWCslxFjLOQ$TLn4wG5uA0mxPOyVenaxES8bW2eafqcAsyKcQLQOf9Q', 'linh212@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:08', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(159, 'linhlinh1', 'linh214', '$pbkdf2-sha256$29000$TonRuvdeC2FsTekdAwDgPA$klJ6eviZDOKVtZJ7dv83sz9x4xuvmJqWlbzLR5kRllU', 'linh214@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:31', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(160, 'linh215', 'linh215', '$pbkdf2-sha256$29000$pFRKac1Zy5nTuhdiTMlZaw$bF3psiKL47IDnH.3.pfPrswuUp./8xjRna2pzXHqEtU', 'linh215@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:54', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(162, 'linhlinh1', '6', '$pbkdf2-sha256$29000$2/s/h9A6x5jzHuP835tzTg$a9PN/P9uXTYjhBjC4U/j6WfteXjO.LyJiuyXnESBa50', 'linh216@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:26:18', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(163, '1dsfgtyuhyijoik', '1dsfgtyuhyijoik', '$pbkdf2-sha256$29000$Y6zVWotRyhmDEMJYi9E6Jw$i7nIqjbrA4LMQxXvU482bjQsPofyDp6BSoFgH3F.iF8', 'szfxdgchjbklm@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:26:57', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(164, 'linhlinh1', 'linh217', '$pbkdf2-sha256$29000$dU6JUYpxbm2tVSpF6F0rhQ$ulZx/2rzrl9F5IgkeAqWjeR1ckLIxT7sQFmz4S2erOw', 'linh217@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:27:55', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(165, 'linh218', 'linh218', '$pbkdf2-sha256$29000$5byXUsoZA6C0ds75v7d27g$D90vs5FmKqhZqGfTjXxIIkmE/1Yooa1Qa8IAhow1YRg', 'linh218@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:35:08', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(168, 'linh219', 'linh219', '$pbkdf2-sha256$29000$LgUgxHhPCQEgxLi3do4RYg$EtYSTTaxOb7P1CSRs0/ICleZyaWsehh7fakqlB3Q.NY', 'linh219@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:37:00', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(173, 'linh218', 'linh220', '$pbkdf2-sha256$29000$b.09h/Ce0/r//1/rfU/pfQ$GFlNBkpmjJ9pu64fp3CNdSOvKEbRZmd/o5pewkkay3s', 'linh220@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:53:07', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(175, 'linh230', 'linh230', '$pbkdf2-sha256$29000$pTQmpHRurTUGwJhTilGK0Q$s6GUdeJR0iO7nvC9M6TJe7EbKkkYMDk0OJSDYXxzyqo', 'linh230@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:55:59', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(178, 'linh218', 'linh221', '$pbkdf2-sha256$29000$zBmjFAKgNGZMyTmHsPaeMw$XIIJfGb6295twNlCJ2WnsIqAxO1RE7qDsUUSbAkyvTg', 'linh221@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 15:30:39', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(179, 'Nguyen Thi A', 'hahaha', '$pbkdf2-sha256$29000$rJXS2lsr5TwHAECIkVLq/Q$mMIj6MDUU2Zk8Us2J4PJR5XCke4xDZVbepWFqtIQaks', 'hahaha@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 16:15:43', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(180, 'testData', 'linh222', '$pbkdf2-sha256$29000$uHduzRmj9F4rJaQUgjDmvA$rMA29XS9fQCDcyMIoQJ9nuMIwvMTGHe8u3XjC2dRCKg', 'nguyenvanlinewretyyh11232113@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 16:23:18', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', '', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(181, 'Dương Ngọc Hùng', 'beokute', '$pbkdf2-sha256$29000$o1RqTSklhHBujfE.RyilFA$qTsPnqZrlOll8d4LjSdq0SG9O4urJWFYdaWf7EWpT/g', 'beokute@gmail.com', '', 'Nam', '2000-03-08', NULL, 56, NULL, '127.0.0.1', '123.16.198.5', '2024-03-12 02:36:30', 1, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', 'Dui dẻ dễ gần dễ mến đáng iu =]]', 'Hà Đông, Hà Nội', 'Thanh Hóa', 0, 0, NULL),
(182, 'linh218', 'linh223', '$pbkdf2-sha256$29000$tlaKcU6pVYpxjjEGoJQyxg$0OjWKBu2RoV7/MFUjxjx6m7b0s6Lx.kC4E5TZABc22g', 'linh223@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 09:28:54', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', NULL, NULL, NULL, 0, 0, NULL),
(183, 'linh224', 'linh224', '$pbkdf2-sha256$29000$onROSUkJAUAoJaR0zhnDOA$9tvFqQb0ClfjQXGM2YUB5mP59MKX/nv8utMdsIG0gSA', 'linh224@gmail.com', 'uig7ufqwcsz', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 10:28:27', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', '7tr5ugy23', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(184, 'linh225', 'linh225', '$pbkdf2-sha256$29000$CeEcQ2jN.X8PAcD4P.c8pw$18hLgtwd1x.ARUojdoKgmeve080msnlNmMqJamQlvBA', 'linh225@gmail.com', 'qwe', 'Nam', '2024-03-07', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 10:35:03', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', 'Dư', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(185, 'linh226', 'linh226', '$pbkdf2-sha256$29000$JOQcQ2itVQohxDinFCIkpA$rOeogaqX54jyGvkKkh3Z5SFNX.cl77LtaeBNEo6CTOs', 'linh226@gmail.com', '123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:18:19', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', '123', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(186, 'linh227', 'linh227', '$pbkdf2-sha256$29000$IuTc./8fYywlxPi/l3Lu3Q$U1wnIJTE2fs0z5vIz2HxV23/yep.MWaWFnatytNUvIk', 'linh227@gmail.com', '123123123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:44:39', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', '123213', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(187, 'toanvv', 'toan', '$pbkdf2-sha256$29000$qpUyhrC2llKqdQ5hrJVS6g$pT3yDPCzR8H1AiX.Zm5Ta5QxoEeRi88O1nr/HbJX8AY', 'vnntoan@gmail.com', '086218963', 'Nam', '2001-05-13', '00:00:00', 24, NULL, '127.0.0.1', '42.114.38.206', '2024-03-13 16:57:44', 1, 0, '2.jpg', NULL, NULL, NULL, 0, 0, NULL),
(188, 'linh228', 'linh228', '$pbkdf2-sha256$29000$n7MWQohxbo2x1lrrPWfMuQ$/e2asFQtIFp0uQ/pzQ99kBLC.D83fSZscaP7GiPrUv4', 'linh228@gmail.com', 'qwe', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:47:40', 0, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9Zde21fi2AnY9_C17tqYi8DO25lRM_yAa7Q&usqp=CAU&fbclid=IwAR16g1ONptpUiKuDIt37LRxU3FTZck1cv9HDywe9VWxWSQBwcuGNfB7JUw4', 'Were we', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(222, 'user test', 'usertest', '$pbkdf2-sha256$29000$bi3l/L8XAsCY01pr7R2D8A$5YP7wrKulOhWlknkzPNGhIL/aFfvtXI5HONKhkbh/LU', 'testuser@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 16:19:53', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(223, 'hieu nguyen', 'nguyenkhachieu3', '$pbkdf2-sha256$29000$AaA0ptSas3YO4bw3ptS6dw$pd5TzC0F5hCpTqMW4wG7KU72lPLB5GkZ5dh2Y7Cdnag', 'hieuabc@gmail.com', '0345466678', 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-09 08:55:22', 1, 1, NULL, NULL, NULL, NULL, 0, 0, NULL),
(249, 'Nguyen Khac Hieu', 'admin2205', '$pbkdf2-sha256$29000$iXHunbOWEqJUSimltHZujQ$dzVuhYrthr3PiCsFDrucMVWbNOH1fsHHRrNpIis8U8U', 'hieunkbb@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-07-02 07:56:10', 1, 1, 'http://127.0.0.1:2345/api/group/image/groupimgid=249.jpeg', NULL, NULL, 'Ha Noi', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ZoningImg_UserUpload`
--

CREATE TABLE `ZoningImg_UserUpload` (
  `ZoningImgID` int NOT NULL,
  `DistrictID` int NOT NULL,
  `UserID` int NOT NULL,
  `ZoningUserImg` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Imglat` float DEFAULT '0',
  `Imglng` float DEFAULT '0',
  `Imgwidth` float DEFAULT '0',
  `Imgheight` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ZoningImg_UserUpload`
--

INSERT INTO `ZoningImg_UserUpload` (`ZoningImgID`, `DistrictID`, `UserID`, `ZoningUserImg`, `Description`, `Imglat`, `Imglng`, `Imgwidth`, `Imgheight`) VALUES
(1, 1, 6, 'https://github.com/hieunguyen-lang/landinvest/blob/main/231101_Ban%20do%20KHSD%C3%90%202024%20quan%20Nam%20Tu%20Liem%20%20(1).jpg?raw=true', 'Ban do quy hoach quan bac tu liem', 10.7, 100.6, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Zonings`
--

CREATE TABLE `Zonings` (
  `ZoningID` int NOT NULL,
  `DistrictID` int NOT NULL,
  `ZoningImg` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Imglat` float NOT NULL DEFAULT '0',
  `Imglng` float NOT NULL DEFAULT '0',
  `Imgwidth` float NOT NULL DEFAULT '0',
  `Imgheight` float NOT NULL DEFAULT '0',
  `Path` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Zonings`
--

INSERT INTO `Zonings` (`ZoningID`, `DistrictID`, `ZoningImg`, `Description`, `Imglat`, `Imglng`, `Imgwidth`, `Imgheight`, `Path`) VALUES
(1, 12, 'https://github.com/hieunguyen-lang/landinvest/blob/main/231101_Ban%20do%20KHSD%C3%90%202024%20quan%20Nam%20Tu%20Liem%20%20(1).jpg?raw=true', 'Nam Từ Liêm', 21.0196, 105.724, 9922, 11103, NULL),
(2, 6, 'https://github.com/hieunguyen-lang/landinvest/blob/main/Ban%20do%20ke%20hoach%20su%20dung%20dat%202024%20quan%20Dong%20Da.jpg?raw=true', 'Đống Đa', 21.0147, 105.81, 9922, 11103, NULL),
(3, 9, 'https://github.com/hieunguyen-lang/landinvest/blob/main/Ban%20do%20KHSDD%202024%20quan%20Thanh%20Xuan.jpg?raw=true', 'Thanh Xuan', 21.0196, 105.724, 17747, 9933, NULL),
(4, 9, 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg', 'Thanh Xuan', 12, 34, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AuctionImgs`
--
ALTER TABLE `AuctionImgs`
  ADD PRIMARY KEY (`AuctionImgID`),
  ADD KEY `LandAuctionID` (`LandAuctionID`);

--
-- Indexes for table `AuctionVideos`
--
ALTER TABLE `AuctionVideos`
  ADD PRIMARY KEY (`AuctionVideoID`),
  ADD KEY `LandAuctionID` (`LandAuctionID`);

--
-- Indexes for table `Boxs`
--
ALTER TABLE `Boxs`
  ADD PRIMARY KEY (`BoxID`),
  ADD UNIQUE KEY `BoxName` (`BoxName`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  ADD PRIMARY KEY (`CommentFavoriteID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CommentID` (`CommentID`);

--
-- Indexes for table `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `CommentID` (`CommentID`);

--
-- Indexes for table `Districts`
--
ALTER TABLE `Districts`
  ADD PRIMARY KEY (`DistrictID`),
  ADD KEY `ProvinceID` (`ProvinceID`);

--
-- Indexes for table `Favorite`
--
ALTER TABLE `Favorite`
  ADD PRIMARY KEY (`FavoriteID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PostID` (`PostID`);

--
-- Indexes for table `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `ForumPhotos_ibfk_1` (`PostID`);

--
-- Indexes for table `ForumPosts`
--
ALTER TABLE `ForumPosts`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `ForumPosts_ibfk_2` (`GroupID`),
  ADD KEY `ForumPosts_ibfk_1` (`UserID`);

--
-- Indexes for table `gmail_from`
--
ALTER TABLE `gmail_from`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`GroupID`),
  ADD UNIQUE KEY `GroupName` (`GroupName`),
  ADD KEY `BoxID` (`BoxID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `LandAuctionCategories`
--
ALTER TABLE `LandAuctionCategories`
  ADD PRIMARY KEY (`LandAuctionCategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `LandAuctions`
--
ALTER TABLE `LandAuctions`
  ADD PRIMARY KEY (`LandAuctionID`),
  ADD KEY `DistrictID` (`DistrictID`),
  ADD KEY `LandAuctionCategoryID` (`LandAuctionCategoryID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`LocationID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `PostComments`
--
ALTER TABLE `PostComments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `PostID` (`PostID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Provinces`
--
ALTER TABLE `Provinces`
  ADD PRIMARY KEY (`ProvinceID`),
  ADD UNIQUE KEY `ProvinceName` (`ProvinceName`);

--
-- Indexes for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD PRIMARY KEY (`RefreshTokenID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Relationships`
--
ALTER TABLE `Relationships`
  ADD PRIMARY KEY (`RelationshipID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RelatedUserID` (`RelatedUserID`);

--
-- Indexes for table `UserPhotos`
--
ALTER TABLE `UserPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `ProvinceID` (`ProvinceID`);

--
-- Indexes for table `ZoningImg_UserUpload`
--
ALTER TABLE `ZoningImg_UserUpload`
  ADD PRIMARY KEY (`ZoningImgID`),
  ADD UNIQUE KEY `ZoningUserImg` (`ZoningImgID`),
  ADD KEY `DistrictID` (`DistrictID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Zonings`
--
ALTER TABLE `Zonings`
  ADD PRIMARY KEY (`ZoningID`),
  ADD KEY `DistrictID` (`DistrictID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AuctionImgs`
--
ALTER TABLE `AuctionImgs`
  MODIFY `AuctionImgID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `AuctionVideos`
--
ALTER TABLE `AuctionVideos`
  MODIFY `AuctionVideoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Boxs`
--
ALTER TABLE `Boxs`
  MODIFY `BoxID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  MODIFY `CommentFavoriteID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Districts`
--
ALTER TABLE `Districts`
  MODIFY `DistrictID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Favorite`
--
ALTER TABLE `Favorite`
  MODIFY `FavoriteID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `ForumPosts`
--
ALTER TABLE `ForumPosts`
  MODIFY `PostID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `gmail_from`
--
ALTER TABLE `gmail_from`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `GroupID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `LandAuctions`
--
ALTER TABLE `LandAuctions`
  MODIFY `LandAuctionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `LocationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `PostComments`
--
ALTER TABLE `PostComments`
  MODIFY `CommentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `Provinces`
--
ALTER TABLE `Provinces`
  MODIFY `ProvinceID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  MODIFY `RefreshTokenID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `Relationships`
--
ALTER TABLE `Relationships`
  MODIFY `RelationshipID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `UserPhotos`
--
ALTER TABLE `UserPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `ZoningImg_UserUpload`
--
ALTER TABLE `ZoningImg_UserUpload`
  MODIFY `ZoningImgID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Zonings`
--
ALTER TABLE `Zonings`
  MODIFY `ZoningID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Boxs`
--
ALTER TABLE `Boxs`
  ADD CONSTRAINT `Boxs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  ADD CONSTRAINT `CommentFavorite_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `CommentFavorite_ibfk_2` FOREIGN KEY (`CommentID`) REFERENCES `PostComments` (`CommentID`);

--
-- Constraints for table `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  ADD CONSTRAINT `CommentPhotos_ibfk_1` FOREIGN KEY (`CommentID`) REFERENCES `PostComments` (`CommentID`);

--
-- Constraints for table `Districts`
--
ALTER TABLE `Districts`
  ADD CONSTRAINT `Districts_ibfk_1` FOREIGN KEY (`ProvinceID`) REFERENCES `Provinces` (`ProvinceID`);

--
-- Constraints for table `Favorite`
--
ALTER TABLE `Favorite`
  ADD CONSTRAINT `Favorite_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `Favorite_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `ForumPosts` (`PostID`);

--
-- Constraints for table `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  ADD CONSTRAINT `ForumPhotos_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `ForumPosts` (`PostID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ForumPosts`
--
ALTER TABLE `ForumPosts`
  ADD CONSTRAINT `ForumPosts_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `ForumPosts_ibfk_2` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Groups`
--
ALTER TABLE `Groups`
  ADD CONSTRAINT `Groups_ibfk_1` FOREIGN KEY (`BoxID`) REFERENCES `Boxs` (`BoxID`),
  ADD CONSTRAINT `Groups_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `LandAuctions`
--
ALTER TABLE `LandAuctions`
  ADD CONSTRAINT `LandAuctions_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD CONSTRAINT `RefreshTokens_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_old_user_with_id_1` ON SCHEDULE EVERY 1 HOUR STARTS '2024-06-12 02:22:06' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM Users WHERE Confirmed = FALSE AND created_at < NOW() - INTERVAL 1 DAY$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
