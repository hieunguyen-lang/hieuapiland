-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 14, 2024 lúc 08:40 AM
-- Phiên bản máy phục vụ: 8.0.37-0ubuntu0.24.04.1
-- Phiên bản PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `landinvest`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `AuctionImgs`
--

CREATE TABLE `AuctionImgs` (
  `AuctionImgID` int NOT NULL,
  `LandAuctionID` int NOT NULL,
  `Descritption` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `AuctionImgs`
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
-- Cấu trúc bảng cho bảng `AuctionVideos`
--

CREATE TABLE `AuctionVideos` (
  `AuctionVideoID` int NOT NULL,
  `LandAuctionID` int NOT NULL,
  `Descritption` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Video` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `AuctionVideos`
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
-- Cấu trúc bảng cho bảng `Boxs`
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
-- Đang đổ dữ liệu cho bảng `Boxs`
--

INSERT INTO `Boxs` (`BoxID`, `UserID`, `BoxName`, `CreateAt`, `Description`, `avatarLink`) VALUES
(1, 223, 'ban dat ', NULL, NULL, NULL),
(2, 126, 'ban giay', '2024-06-09 05:33:45', 'cai nay de lam gi', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg'),
(3, 223, 'ban quan ao', '2024-06-09 05:50:39', ' Noi cho moi nguoi ban quan ao', 'hhgh'),
(4, 223, 'ban nha ', '2024-06-09 06:30:41', ' Noi cho moi nguoi ban quan ao', 'hhgh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CommentFavorite`
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
-- Cấu trúc bảng cho bảng `CommentPhotos`
--

CREATE TABLE `CommentPhotos` (
  `PhotoID` int NOT NULL,
  `CommentID` int DEFAULT NULL,
  `PhotoURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `CommentPhotos`
--

INSERT INTO `CommentPhotos` (`PhotoID`, `CommentID`, `PhotoURL`, `UploadTime`) VALUES
(1, 1, 'https://picsum.photos/200/300', '2024-03-01 16:28:11'),
(2, 2, 'https://i.ibb.co/WVLJRb0/timestudio-vn-headshot-eye-glasses-02.jpg', '2024-03-01 17:00:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Districts`
--

CREATE TABLE `Districts` (
  `DistrictID` int NOT NULL,
  `ProvinceID` int NOT NULL,
  `DistrictName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Districts`
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
(30, 24, 'Huyện Ứng Hòa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Favorite`
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
-- Cấu trúc bảng cho bảng `ForumPhotos`
--

CREATE TABLE `ForumPhotos` (
  `PhotoID` int NOT NULL,
  `PostID` int DEFAULT NULL,
  `PhotoURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ForumPosts`
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
-- Đang đổ dữ liệu cho bảng `ForumPosts`
--

INSERT INTO `ForumPosts` (`PostID`, `UserID`, `GroupID`, `Title`, `Content`, `PostTime`, `IPPosted`, `PostLatitude`, `PostLongitude`, `UpdatePostAt`) VALUES
(5, 223, 2, 'SALE', 'oto di rat hay', '2024-06-09 06:36:42', '127.0.0.1', 10.00000000, 100.00000000, '2024-06-09 06:36:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gmail_from`
--

CREATE TABLE `gmail_from` (
  `id` int NOT NULL,
  `gmail` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `password_app` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gmail_from`
--

INSERT INTO `gmail_from` (`id`, `gmail`, `password`, `password_app`) VALUES
(1, 'mailtowork001@gmail.com', 'mailwork', 'exvd odnt rkbe pttw'),
(2, 'devmobilepro1888@gmail.com', 'devmobilepro1888@gmail.com', 'qaxl xbjp gkmx rwha'),
(3, 'vubaolong2000pro@gmail.com', 'vubaolong2000pro@gmail.com', 'tjdu dggw bhma shqx'),
(4, 'guiemailfree1@gmail.com', 'guiemailfree1@gmail.com', 'zkfl fids cbjc dkuu'),
(5, 'hayho.netfilm@gmail.com', 'hayho.netfilm@gmail.com', 'addj czun lozf hcqj');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Groups`
--

CREATE TABLE `Groups` (
  `GroupID` int NOT NULL,
  `BoxID` int NOT NULL,
  `UserID` int NOT NULL,
  `GroupName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateAt` datetime DEFAULT NULL,
  `avatarLink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Groups`
--

INSERT INTO `Groups` (`GroupID`, `BoxID`, `UserID`, `GroupName`, `CreateAt`, `avatarLink`) VALUES
(2, 1, 1, 'Tim nguoi yeu ha noi', '2024-02-28 16:00:11', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474087SOH/avatar-cap-doi-dep-nhat_040408956.jpg'),
(4, 1, 8, 'My Family', '2024-02-29 14:33:01', 'https://i.ibb.co/SVt2FxF/family.png'),
(5, 1, 8, 'hi', '2024-02-29 14:38:19', 'https://i.ibb.co/k5w31fF/image4.jpg'),
(6, 1, 8, 'anh yeu', '2024-02-29 14:39:39', 'https://i.ibb.co/wYFLmXc/anh.jpg'),
(7, 1, 8, 'kien', '2024-02-29 14:40:37', 'https://i.ibb.co/LQbyTCg/image3.gif'),
(8, 1, 8, 'sdfsd', '2024-02-29 14:41:36', 'https://i.ibb.co/RgL95VC/1-Spash-Screen.png'),
(9, 1, 8, 'me', '2024-02-29 14:42:42', 'https://i.ibb.co/PM83Tv3/429120657-1090999722050229-5526531086846996657-n.png'),
(10, 1, 8, 'oke', '2024-03-01 15:01:51', 'https://i.ibb.co/qWYJCGV/family.png'),
(11, 1, 223, 'Coder', '2024-06-08 18:23:50', '34343434');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `LandAuctionCategories`
--

CREATE TABLE `LandAuctionCategories` (
  `LandAuctionCategoryID` int NOT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `LandAuctionCategories`
--

INSERT INTO `LandAuctionCategories` (`LandAuctionCategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Trung tâm phát triển quỹ đất', 'Đấu giá do trung tâm phát triển quỹ đất tổ chức'),
(2, 'Thanh lý tài sản của ngân hàng', 'Hàng này có thể dính quy hoạch'),
(3, 'Tư nhân', 'Đấu giá do các đơn vị tư nhân muốn bán hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `LandAuctions`
--

CREATE TABLE `LandAuctions` (
  `LandAuctionID` int NOT NULL,
  `DistrictID` int NOT NULL,
  `LandAuctionCategoryID` int NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OpenPrice` float DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `AuctionAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `UserID` int NOT NULL,
  `CreateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `LandAuctions`
--

INSERT INTO `LandAuctions` (`LandAuctionID`, `DistrictID`, `LandAuctionCategoryID`, `Title`, `Description`, `OpenPrice`, `StartTime`, `EndTime`, `AuctionAddress`, `Latitude`, `Longitude`, `UserID`, `CreateAt`) VALUES
(8, 3, 2, 'Đấu giá lô đất 56h', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-07-25 09:00:00', '2024-07-29 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-14 06:21:01'),
(9, 4, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-12 09:00:00', '2024-06-25 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 14:49:23'),
(10, 7, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-12 09:00:00', '2024-06-25 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 14:49:27'),
(11, 8, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-12 09:00:00', '2024-06-26 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 14:49:32'),
(12, 8, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-12 09:00:00', '2024-06-12 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 16:02:47'),
(13, 23, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-16 09:00:00', '2024-06-21 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 16:03:01'),
(14, 23, 3, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-07-18 09:00:00', '2024-08-16 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-12 16:15:38'),
(15, 23, 2, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-15 09:00:00', '2024-06-28 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-13 02:24:05'),
(16, 3, 2, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-07-11 09:00:00', '2024-07-25 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-13 02:41:04'),
(17, 3, 2, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-07-12 09:00:00', '2024-06-12 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-13 07:59:08'),
(18, 3, 2, 'Đấu giá lô đất', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-06-12 09:00:00', '2024-06-12 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-13 10:34:14'),
(19, 3, 2, 'Đấu giá lô đất 56', ' Lô đất đặc biệt giá siêu rẻ', 100000000, '2024-07-25 09:00:00', '2024-07-29 09:00:00', '123 Main St, Anytown, USA', 37.7749, -122.419, 249, '2024-06-14 04:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Locations`
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
-- Đang đổ dữ liệu cho bảng `Locations`
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
(288, 249, 10.00000000, 100.00000000, 'login', '2024-06-14 04:49:58', '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PostComments`
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
-- Đang đổ dữ liệu cho bảng `PostComments`
--

INSERT INTO `PostComments` (`CommentID`, `PostID`, `UserID`, `Content`, `CommentTime`, `CommentUpdateTime`) VALUES
(1, 1, 1, 'abc', '2024-03-01 16:28:11', '2024-03-01 16:28:11'),
(2, 1, 8, 'comment 1', '2024-03-01 17:00:57', '2024-03-01 17:00:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Provinces`
--

CREATE TABLE `Provinces` (
  `ProvinceID` int NOT NULL,
  `ProvinceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Provinces`
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
-- Cấu trúc bảng cho bảng `RefreshTokens`
--

CREATE TABLE `RefreshTokens` (
  `RefreshTokenID` int NOT NULL,
  `UserID` int NOT NULL,
  `token` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `RefreshTokens`
--

INSERT INTO `RefreshTokens` (`RefreshTokenID`, `UserID`, `token`, `expires_at`) VALUES
(13, 249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcxODI3NDgzNywianRpIjoiZWY5ZDM3NWMtYmUyMC00Y2RlLWI5NjAtMTc0MjdjOTBlMTM5IiwidHlwZSI6InJlZnJlc2giLCJzdWIiOnsiVXNlcklEIjoyNDksIkVtYWlsIjoiaGlldW5rYmJAZ21haWwuY29tIiwiUm9sZSI6dHJ1ZX0sIm5iZiI6MTcxODI3NDgzNywiZXhwIjoxNzIwODY2ODM3fQ.y-fkJVxc4HNF9RQVpr4jZNXr6CV_701WmBfxc_MfF9g', '2024-07-13 10:33:58'),
(14, 249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcxODM0MDU5NywianRpIjoiNjdjM2UzZWUtYjBhMy00YzY0LTk0ODItYmMwYWExYTlkNmVjIiwidHlwZSI6InJlZnJlc2giLCJzdWIiOnsiVXNlcklEIjoyNDksIkVtYWlsIjoiaGlldW5rYmJAZ21haWwuY29tIiwiUm9sZSI6dHJ1ZX0sIm5iZiI6MTcxODM0MDU5NywiZXhwIjoxNzIwOTMyNTk3fQ.8QOm4Mb_A2t3bK97JDI5rgtQVnkntfY-oXBD5JpGcF8', '2024-07-14 04:49:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Relationships`
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
-- Đang đổ dữ liệu cho bảng `Relationships`
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
-- Cấu trúc bảng cho bảng `UserPhotos`
--

CREATE TABLE `UserPhotos` (
  `PhotoID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PhotoURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UploadTime` datetime DEFAULT NULL,
  `SetAsAvatar` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `UserPhotos`
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
-- Cấu trúc bảng cho bảng `Users`
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
  `avatarLink` blob,
  `Bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `CurrentAdd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `BirthPlace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Confirmed` tinyint(1) DEFAULT '0',
  `Blocked` tinyint(1) DEFAULT '0',
  `Create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Users`
--

INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(1, 'Ba Phạm', 'Ba', '$pbkdf2-sha256$29000$JUQIgfAeY6w1hlBKaU3JOQ$.sh6R45PjgMaAqQVeLR6qeMiOrGuXpQwBtP6/.aXnWc', 'Ba@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, 0, '42.113.61.229', '222.254.6.175', NULL, 1, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 1, NULL),
(2, 'Linh Nguyen', 'Tam', '$pbkdf2-sha256$29000$oFRqDUFo7X1vzdk75zynlA$qry4vGt4Lc9vc84jJhdEd3B56/aprhFPtITSkP0qqsg', 'nguyenvanlinh12134@gmail.com', '001', 'Nam', '2001-05-13', '00:00:00', 1, 0, '42.113.61.229', '42.113.61.229', NULL, 1, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'HaNoi', 'HaNoi', 0, 0, NULL),
(3, 'Linh Nguyen', 'admin', '$pbkdf2-sha256$29000$lpLSOuf8H.M8R4hRypmTsg$/mSExajxc7b5om7p3hIDlD0450fLeKjUwV4Lb2aP/iE', 'nguyenvanlinh12136@gmail.com', '001', 'Nam', '2001-05-13', '00:00:00', 1, 0, '171.224.181.144', '113.178.49.22', '2024-03-12 16:44:29', 1, 0, 0x68747470733a2f2f692e6962622e636f2f793647766767542f50726f676574746f2d73656e7a612d7469746f6c6f2d352d6a70672e77656270, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'HaNoi', 'HaNoi', 0, 0, NULL),
(5, 'testData', 'DB', '$pbkdf2-sha256$29000$ZGytFWLsHcN4r1XKmZPSGg$XiPm4g3lmrhka53jZq1tKlbsQ9E8BLHuP7RuarffJsg', 'nguyenvanlinh11232113@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 1, 0, '222.254.6.175', '54.86.50.139', NULL, 1, 0, 0x68747470733a2f2f692e6962622e636f2f793647766767542f50726f676574746f2d73656e7a612d7469746f6c6f2d352d6a70672e77656270, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut laLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et bore et Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(6, 'Phạm Đình Minh', 'PDM', '$pbkdf2-sha256$29000$yhmj1FprbU2JcQ5BSKlVSg$7YloSKBK55bbgdnCklkmiMHFdTY3jtqGEQAqjrzveA4', 'minh1997@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '113.178.49.22', '113.178.49.22', NULL, 1, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(7, 'Taiii', 'linh', '$pbkdf2-sha256$29000$J.QcQ6hVitE65xyj9L733g$r7DUdsKTtLtPfB46rTbAzhXbRcyw.Xq6D/HyHMhmgMY', 'pxltaiii@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(8, 'Linh Nguyen', 'huukien02', '$pbkdf2-sha256$29000$fI8RgjBmzHlv7d2bs9Y6hw$5fCip0Kv1BxOwdL8unDu5pE4gsgemUmoM7ZNKZf0Hvs', 'nguyenvanlinh1213@gmail.com', '0356600737', 'Nam', '1997-05-13', '00:00:00', 1, 0, '127.0.0.1', '', '2024-03-04 10:12:01', 1, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(11, 'Le Huu Kien', 'huukien2707', '$pbkdf2-sha256$29000$F6J0jrF2Tul9jxEiZOx9zw$YRD8n7pK7tEOuxX5VPXu9nhqWbnku2jRkKsDEwfqj9w', 'lhkien270702@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(13, 'Le Huu Kien', 'huukien27072002', '$pbkdf2-sha256$29000$q3UOQQgBgHAO4XxPqXWOcQ$0K5SsaygpejeFudwsk5kLe1fk2gU11Qtdko0sLMPWWA', 'kien.lh@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(15, 'Linh Nguyen', 'huukien2k2', '$pbkdf2-sha256$29000$rVUqxXivFYIQIgRAyNnbew$fTM8qdKaTaYmaFqb.LerUIjnHkW2eFv/FAg8rvaqZm4', 'nguyenvanlinh1123213@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 1, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(17, 'Le Huu Kien', 'huukien2k2123', '$pbkdf2-sha256$29000$eO99j7G2tlbK.R9jjNGa0w$1KO/68sfpbC3fmGG/NFw1pl17FS75ooDOtBsDqogAfg', 'kien123@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(18, 'Le Huu Kien', '12344', '$pbkdf2-sha256$29000$yJkTIgQgZGwtxVhrTanV.g$AGewMfJysNTjZBqvfsWoV28aaKCPWvi0zk5n/ykmvkc', 'kien1234@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(21, 'Le Huu Kien', '12345', '$pbkdf2-sha256$29000$DKGUMsY4x3gvZUxJaQ2hVA$nAeWqybcNPuCmUp40yH3D9gO9DEjU1D9VqvtW2RYmiE', 'kien12345@haposoft.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(22, 'Le Huu Kien', '123456', '$pbkdf2-sha256$29000$gTBmTEnJuZey9p4TQijlnA$AZd.mNFvAB6QayPWETetV9bLlHqSzwoQIgkXmtVXV5g', 'kien123456@haposoft.com', NULL, 'Nam', NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(23, 'Le Huu Kien', 'admin123', '$pbkdf2-sha256$29000$09p7T2kNYSwlBEColdJ6Tw$l2CjsQWQUkmJlxpJyISZ759X0TS.bjbOqzqm92IoNGM', 'lehuukien27072k2@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(28, 'Le Huu Kien', 'admin2002', '$pbkdf2-sha256$29000$SElpLaU0hpDyXqv1npNSig$IHrJeVH15PIgiuGC6Jfo2ZYOHMLe0JHM05I.d1zCU0k', 'lehuukien270702123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(31, 'Taiii', 'linh1', '$pbkdf2-sha256$29000$kxJiDCEkZOy9d47x3jsH4A$JdBe06mn3Fk1iT5yyzzu7ArO51lPzGryWRU3bxoCT3s', 'pxltaiii@gmail.com12', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(33, 'Taiii', 'linh2', '$pbkdf2-sha256$29000$4jyHcA5hzBlDiPGeM.Z8rw$uiRK/.WTy..11mIzXcvtf8ZI6Dmro0UjrWC0I.biH.w', 'nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(34, 'Taiii', 'linh3', '$pbkdf2-sha256$29000$GGMsReg955yT0tr7X0spRQ$O/cZkN7/uKM4hF/y4PhS/tuNtXZ7afAGeU0mvVcFqtE', '3nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(35, 'Linh', 'l', '$pbkdf2-sha256$29000$ak1pDQHAOAeg1JrT.p.zFg$ioLkERl5CwF7W8oOpv2eCSpue6UfFSY3Qcc2sLK0TTg', '5nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(36, 'Linh', 'l2', '$pbkdf2-sha256$29000$.H/vnVNq7V1rDQHg/F/LWQ$UIlmwi8UCN6PK.QNkX.H2eZPWnif/5rx.SBJsXtbpxs', '6nguyenhuulinhd0codt@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, NULL, 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(37, 'Linh Nguyen', 'linhli', '$pbkdf2-sha256$29000$/58TwtgbQ6iVUmpNyTlH6A$UgaWKaU5SWY.kruWznQ7LPil0XbVRm5fbvfNkCPwcrs', 'linh@gmail.com', '121', 'Nữ', '2001-05-13', '00:00:00', 24, 0, '127.0.0.1', '113.178.49.22', '2024-03-12 10:55:16', 1, 0, 0x68747470733a2f2f692e6962622e636f2f636768384e4a322f3566333864656336333366652e706e67, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod te.jsgskjdsayduiashhgasuhgdashgdhjasgdhjasghdasgjdhgasgdhasgjdhgsajgdgihasdasghgasukhhchasdhjgsadhuasgdhjgasdhgashdgashgashdgasgdhasdjjkfbjgbjfvahdaskshdjasdjashdkasdashdjkashdjsnhnkhj', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(40, 'linhlinh', 'linhli1', '$pbkdf2-sha256$29000$05ozJqQ0ptRay/k/RygFwA$rht.5iEuHSesG83q0hkjLyldQ0frpnzrOJ9PvHZL8.8', 'linh123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '127.0.0.1', '2024-02-27 14:05:24', 1, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(41, 'linhlinh', 'linhli11', '$pbkdf2-sha256$29000$8b7X2juHUOo9J.T8XwtBCA$wo5IRK0/hjjtDjZ.O.EYL8kgPIRlP2F5/b4U93XCDlo', 'linh1234@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '127.0.0.1', '2024-02-27 13:51:16', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(42, 'linhli1123', 'linhli1123', '$pbkdf2-sha256$29000$uzemdO49J4QwhtBai5GyFg$6sd9cFfWoQVD1WTcGwMQxDtG.NG5OG.t.EFDUqPjdbE', 'hieunk3bb@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:25:42', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(43, 'linhli1123', 'linhli112342', '$pbkdf2-sha256$29000$DUForZUyhhBizHmvda4VQg$l2XlBpusKWiGx9ezKb2KJWhuoMAus3KM2DYxIGhfFIY', 'llinh613@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:28:51', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(44, 'linh123', 'linh123', '$pbkdf2-sha256$29000$3luL8V4rBcC4F4JQivHeGw$iahR53IQ475hSyXXgKCPsnfA/j3xGFJjdalg/iH9DWU', 'linh124123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:34:07', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(45, 'linhli1123421', 'linhli1123421', '$pbkdf2-sha256$29000$6X2PEYIQAmDsPadUyjknBA$4JijCw.jyRIZKt1xjEURtEamLNWXsDPZneG42hNqdok', 'llinh614@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:38:45', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(50, 'linhlu', 'linhlu', '$pbkdf2-sha256$29000$KIXQGkPovXcOwZjzXsv5nw$QjgDmawKQvf1QhzC3PXBA1LQylYZdrTvqYPQ5Mc4cpg', 'lin@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:41:47', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(54, 'linhl1u', 'linhl1u', '$pbkdf2-sha256$29000$q1XKOefc2/t/b805BwCglA$BtdtJwmpsuYS9WULOmn0We0N3ol1970p8dmfyapGtSI', 'liqss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:42:34', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(55, 'linhl1u1', 'linhl1u1', '$pbkdf2-sha256$29000$l/J.zzln7D1HyJmTEmLsvQ$LUsVL/VwNp.XH5jOb7zJl7ftVOYrkXcssvJJV.i3bf8', 'laiqss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:43:37', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(58, 'linhl1u13', 'linhl1u13', '$pbkdf2-sha256$29000$P.dcy7mXUupdC6GUci6FEA$gWQAz7ag7Wt4ZYYSeer5pSzwYS/rc1.qMt/GfrPd3SM', 'laiq3ss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:44:10', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(60, 'linhl1u134', 'linhl1u134', '$pbkdf2-sha256$29000$WotxrpXSeg9BCAEAQMj5fw$nVYet1JlbwsoQ4LvFVAwl62QS3/mFtXg4iNlyU.LVlI', 'lai2q3ss@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 00:51:38', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(62, 'linhl1u1341', 'linhl1u1341', '$pbkdf2-sha256$29000$Q4ix1rrXGiPknNO6F6L03g$.kNpe6oNYO8asAI0mPGaFnYcjEFd/ZZTZmHa0Hnqa4Q', 'lai2q3ss1@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 09:50:23', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(63, 'linhl1u13412', 'linhl1u13412', '$pbkdf2-sha256$29000$BgBAiDHmvDemdG7NWWstpQ$dSJl/PsG5ukjNsnhUHdn/vThWhiFXnMCSs6.UQfhDJg', 'lai2q3ss13@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 09:51:58', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(67, 'weeds', 'weeds', '$pbkdf2-sha256$29000$YGxt7T0HQKg1prSWMgYAYA$HPgbJ0AnTMyZ6m.elKu5o87fFz1q1DiSNRNbEFhLHTs', 'lam123@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-27 15:39:41', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(70, 'linh10', 'linh10', '$pbkdf2-sha256$29000$uTfGWMuZE.L8PwfgfA8BoA$FGNHdFK3dKPM/2.PZcaJDdSSDf1yOEa0qtq38O4muag', 'linh10@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:03:44', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(71, 'linh11', 'linh11', '$pbkdf2-sha256$29000$Q.g9B8AYYwzhHAMg5LzX2g$wMmE/EPvLOTw.7YXHeLuWfj17ZWoYrW7YNDxDxjH9Yo', 'linh11@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:00', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(72, 'linh15', 'linh15', '$pbkdf2-sha256$29000$P.d8T4lRSqlVylnL2TunlA$VIxnkj16aYsg.bv1pvFXZcyM/yb6V7JMTQFDVy.qChA', 'linh15@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:09', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(73, 'linh166', 'linh166', '$pbkdf2-sha256$29000$FULImXOudQ6BsNaa0/ofQw$/1ziAoo1/v69aRf1BH2/Z4CRSr79YuxwxHqWqY/h/cA', 'linh166@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:04:34', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(77, 'linhlinh', 'linh1661', '$pbkdf2-sha256$29000$zBmjVIqR8r73fo.xFsKYEw$d80xRzlZ9piKu6E3qC/dWk1KGdPunPFxl.4Vz945qaQ', 'linh1616@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:06:00', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(79, 'linhlinh', 'linh16611', '$pbkdf2-sha256$29000$7d2bkxLi3Ls3Zqz1HgMAgA$ZHFLsQbIQUCJIjHr.yzB1t5znAe3V24REZHLif/sabY', 'linh16161@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:07:02', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(81, 'linhlinh', 'linh16612', '$pbkdf2-sha256$29000$0xpj7F2rtZZyzjnHmBPiHA$p7G7EtX3psUzIT1t.ITpL6tU47Dv73uwE1W83V2HZfA', 'linh16162@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 12:07:21', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(83, 'linhlinh', 'linh166112', '$pbkdf2-sha256$29000$vdeaE6I0pvT.X2stJSRESA$bR8AlqMAih0K5OouRq35xBH2uCkQZRdiwRyMyM3tlPk', 'linh161162@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 13:03:28', 0, 0, 0x68747470733a2f2f696d672e6672656570696b2e636f6d2f7072656d69756d2d766563746f722f6d616e2d6176617461722d69636f6e2d666c61742d696c6c757374726174696f6e2d6d616e2d6176617461722d766563746f722d69636f6e2d616e792d7765622d64657369676e5f39383339362d333337392e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(87, 'linhlinh1', 'linh100', '$pbkdf2-sha256$29000$CqEUQkjJmTPmfO9dCyHEGA$elqK.Uh.U4ESo5jogR/qYRjbWzF6kYX6NAf8hxe8VnA', 'linh100@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:48:48', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(88, 'linhlinh1', 'linh1000', '$pbkdf2-sha256$29000$bS3FGKN0bq21FmIMAYCQEg$9kQ6Wlvj3rzM1afhqJ.IBREpGrObp0MfHgc0AVDL7rw', 'linh1000@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:49:03', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(90, 'linhlinh1', 'linh2000', '$pbkdf2-sha256$29000$J6S0Nsa4956TsjZmDMHYuw$g5ovE964yjZEhOk0KFi3Ojr5HDxbKafbFMaKDeD2.Z0', 'linh202@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:50:23', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(91, 'linhlinh1', 'linh203', '$pbkdf2-sha256$29000$1vp/z9lbK0XIeQ/BuPeekw$Ri34RCnKxB6rJMoS/DVlmgrH0O28Z/loKoQbJPLeYmg', 'linh203@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:51:00', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(93, 'linhlinh1', 'linh204', '$pbkdf2-sha256$29000$LIUwpvQ.B.A8hxBiLCUEAA$u0hKJURgCaPBBXLfG3SSaYwdyBtb0ZsxoLRbd2aikCs', 'linh204@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:51:57', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(95, 'linhlinh1', 'linh205', '$pbkdf2-sha256$29000$SKlV6l3r3Xvv3ZtT6v2/dw$xbKyNFJZPcimWLjyxLv6bFtvIjWnWvtFjSieJqqZTEs', 'linh205@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 15:53:50', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(97, 'linhlinh1', 'linh206', '$pbkdf2-sha256$29000$5fzfGyOEkPIeo5RSKgXAGA$XjIIiyHalfI1thnR7rMOHTa4jl3SmcZYN1IOkeWkQXo', 'linh206@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', NULL, '2024-02-28 16:16:56', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(98, 'linhlinh1', 'linh207', '$pbkdf2-sha256$29000$S0nJ.Z.z1vo/xxhDKCUkpA$gygDVo7QrVie.t7b2VkX9vH6X6R0hG90q0rDjQFhiEs', 'linh207@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '113.178.49.22', '2024-02-28 16:18:59', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(100, 'linhlinh1', 'linh208', '$pbkdf2-sha256$29000$uPdeK.W8l3Kuda4VYmzt3Q$wxhKjmHO2vtxjfGVdBN1P9sHbWkhY/yZp2Lq0lx3jgs', 'linh208@gmail.com', NULL, NULL, NULL, NULL, NULL, 0, '127.0.0.1', '113.178.49.22', '2024-03-04 13:02:41', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(102, 'linhlinh1', 'linh2081', '$pbkdf2-sha256$29000$836vFUII4bw3RqgVAuCcsw$JiRVHRVlFMDn/AUARrlUjCrdKvkJuaaZvb6DVsdbWuk', 'linh1208@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-06 14:34:18', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(103, 'thanh thanh ', 'thanh', '$pbkdf2-sha256$29000$pzQmhDDmnNNaa.0dYyzlnA$03MRRpB8PsWiKskt4tlxeXdAtkPK2NapnjcyIuE6Pcw', 'thanh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 13:36:46', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(104, 'Đỗ Hưng ', 'tolahung', '$pbkdf2-sha256$29000$rHXOuTcm5Pxfi/GeM6YU4g$AAk9HyTEYZig/1h/YpZbOQOTtXXoHsb1qPw/NxAcP7Y', 'dotheviethung@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '123.16.198.5', '2024-03-12 13:16:15', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(105, 'Beokute', 'hung123321', '$pbkdf2-sha256$29000$ai2FMAbgfM85x3hvDeF8Tw$7oPkxEXMB.iOgM8qxoWjmArimSJOOkh5JN6ICPOJYrM', 'thgkjgjgv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:52:04', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(107, 'Beokute', 'hung123321111', '$pbkdf2-sha256$29000$9p5zbs0ZY4yx9l6rFWKMEQ$QYT1yTGLKvgpiMzrcyBxqMCuUh4lw26y4QBC1JxrpBA', 'thgkjgjgv1111251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:57:31', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(109, 'Beokute', 'hung1233211111111111', '$pbkdf2-sha256$29000$xxjj3Dun1FqrtTamNOYcAw$EuC8aP.wwQLZ.87zHXHG9rNnTGI2fF8PyXtNp94ckKQ', 'thgkjgj2222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 14:59:14', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(110, 'Beokute', 'hung12332169999', '$pbkdf2-sha256$29000$3nsvBWAMQQhhLCVk7J2Tsg$USpWNFadZrQbA0K6nblxs0hE4Mlkc5WmrUm3DTNbnjc', 'thgkjgj222214596782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:05:48', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(111, 'Beokute', 'hung1233211077821', '$pbkdf2-sha256$29000$M0YoRSiltDamVArhvJdSKg$s7bG281zdDU5Lod8GA70YAfhrt8fVpLcjxOt/pXIHfo', 'thgkjgj2222g1111v251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:07:13', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(113, 'Beokute', 'hung1233216969', '$pbkdf2-sha256$29000$2hvDWEtpjVEK4VwLgRACQA$BRyV9SCNtgXT3.XtWtLa49Pv7ng/2IUPmrZJ2VdFgZk', 'thgkjgj2222g1111v11111111111251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:11:31', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(114, 'Beokute', 'hung12332111111213', '$pbkdf2-sha256$29000$fW9NqdXa.78XgpDyfs/53w$eIsJwRG37cdEPBkR9OZsAtY3HxyHPIqaLPZrrZNFA5I', 'thgkjgj223596782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:15:10', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(115, 'Beokute', 'hung1233216966', '$pbkdf2-sha256$29000$LiXkvPd.j9FaS0nJuddaaw$4X5izAob7NtoP9b5hYAUFEAv6zmLo6kM0qrxFnOR7Pg', 'thgkjgjgv25691@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:17:32', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(116, 'Beokute', 'beokute69', '$pbkdf2-sha256$29000$PkeIkfLeW8tZq/Xee8.Zcw$Opz02LmagOgL0owD/RN2/csCLSUFE9T96E54uMltzA0', 'tunalph4ev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 15:18:00', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(118, 'quoc', 'quoc2002', '$pbkdf2-sha256$29000$WuvdO2eMsbZWCkFIaQ0BQA$troy2qFam7uFv1TsRTgSy0/qZHToRjN1c05If.Al3iE', 'quoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 16:40:39', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(120, 'linhlinh1', 'linh209', '$pbkdf2-sha256$29000$TqlVCqHUOqcUgnDuHYMwhg$h2lZZgqeLzR76GobT..dt1LsSQuORvGuAv0TDIh.crM', 'linh209@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-04 18:57:10', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(126, 'Beokute', 'hung12332110', '$pbkdf2-sha256$29000$QKiV0hoDIGSMcS4lRMhZyw$JvHfIeyrhxQuRfZcGLVVcFI/Ke/4btjJN3qqIMb.afM', 'thgkjgjgv14251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 19:42:14', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(127, 'Beokute', 'hung12332163', '$pbkdf2-sha256$29000$F2Lsfc/Z2zuHcO59790b4w$dmN4hxScEsPgoPkjjosMKJm9gwC1L0Tx15pkjqxq0mk', 'thgkjgj22221456782222gv251@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-04 19:43:41', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(130, 'Nguyen Trang', 'trang123', '$pbkdf2-sha256$29000$6v0fg/Ce8x4jpHTunVMqZQ$XdsSBnueRgIwQosphbaiyuGcnP3yQIiPyjbkFhM.sRE', 'trang12345@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '103.224.168.28', '2024-03-05 12:32:41', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(131, 'linhlinh1', 'linh20869', '$pbkdf2-sha256$29000$lrIWgtCaE4LwnrM2hpBy7g$03BeMqPEc1G3dAQqwqEbrli59zfEgcKhJmqjfEvFtpA', 'linh20869@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-05 13:42:57', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(132, 'linhlinh1', 'linh208699', '$pbkdf2-sha256$29000$UUppbc2ZUypl7J3T.h/jfA$L85x2.rAZFbO8CEQgPgAtNiHOOQFRSHoIkWudWEoi9o', 'linh208699@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-05 13:46:56', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(133, 'Hung do the', 'Hungheo', '$pbkdf2-sha256$29000$BaAUYmwtRUipdQ7BuJey9g$5Havb.8HAzSKAMF1yBjxg09E1e8Kv8jHdEff6UUb/tY', 'khoacoj91@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '1', '2024-03-07 13:51:52', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(134, 'Do the viet hung', 'NguyenHung', '$pbkdf2-sha256$29000$hZAyBuC8t/ZeS2mN8V6rtQ$HTbM5mPS8bVvoETjZ3CTDR1MuELKfOieY5qTbiiS68Y', 'hunghung@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 17:09:40', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(136, 'linhlinh1', 'linh210', '$pbkdf2-sha256$29000$HSOEEOI8Z6zV2nsvJcS41w$buifSmTdNRigQdTNyRujkmrgKm3oEESk8DNiMeIBtDs', 'linh210@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-08 13:27:18', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(137, 'linh1231', 'linh1231', '$pbkdf2-sha256$29000$BWAMYYzxfs.Zk1IqBaD0vg$avjCdHLIezzExLK4cmyP6tIZXerrnA3zBYoU6h1H4xM', 'linh213@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:11:29', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(147, 'linhqwe', 'linhqwe', '$pbkdf2-sha256$29000$TundG0NozVlrzfl/T8n5/w$IxHjZW.MxjB9cwZE419LkiL7lurEoy3vcoYYrUENtxM', 'linqweeqweh@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:18:24', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(151, 'linhlinhlinhlinhlnihlnhin', 'linhlinhlinhlinhlnihlnhin', '$pbkdf2-sha256$29000$eO.dE6IUorS21jrnnJMyRg$wPLswx6TApfydGANGcn5T0Kq8Sq0QdkgOlCni5aVcvQ', 'aSlinqweeqweh@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:19:45', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(153, 'linhlinh1', 'linh211', '$pbkdf2-sha256$29000$ZywFoHRubW1tjXEOQSiFsA$aboNKsCUizlqVY5hrXe9RTnRg2VwDgOPs6/bcjOoNkA', 'linh211@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:23:31', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(156, 'linh212', 'linh212', '$pbkdf2-sha256$29000$IMRYqxXiPCfEWCslxFjLOQ$TLn4wG5uA0mxPOyVenaxES8bW2eafqcAsyKcQLQOf9Q', 'linh212@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:08', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(159, 'linhlinh1', 'linh214', '$pbkdf2-sha256$29000$TonRuvdeC2FsTekdAwDgPA$klJ6eviZDOKVtZJ7dv83sz9x4xuvmJqWlbzLR5kRllU', 'linh214@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:31', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(160, 'linh215', 'linh215', '$pbkdf2-sha256$29000$pFRKac1Zy5nTuhdiTMlZaw$bF3psiKL47IDnH.3.pfPrswuUp./8xjRna2pzXHqEtU', 'linh215@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:25:54', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(162, 'linhlinh1', '6', '$pbkdf2-sha256$29000$2/s/h9A6x5jzHuP835tzTg$a9PN/P9uXTYjhBjC4U/j6WfteXjO.LyJiuyXnESBa50', 'linh216@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:26:18', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(163, '1dsfgtyuhyijoik', '1dsfgtyuhyijoik', '$pbkdf2-sha256$29000$Y6zVWotRyhmDEMJYi9E6Jw$i7nIqjbrA4LMQxXvU482bjQsPofyDp6BSoFgH3F.iF8', 'szfxdgchjbklm@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:26:57', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(164, 'linhlinh1', 'linh217', '$pbkdf2-sha256$29000$dU6JUYpxbm2tVSpF6F0rhQ$ulZx/2rzrl9F5IgkeAqWjeR1ckLIxT7sQFmz4S2erOw', 'linh217@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:27:55', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(165, 'linh218', 'linh218', '$pbkdf2-sha256$29000$5byXUsoZA6C0ds75v7d27g$D90vs5FmKqhZqGfTjXxIIkmE/1Yooa1Qa8IAhow1YRg', 'linh218@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:35:08', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(168, 'linh219', 'linh219', '$pbkdf2-sha256$29000$LgUgxHhPCQEgxLi3do4RYg$EtYSTTaxOb7P1CSRs0/ICleZyaWsehh7fakqlB3Q.NY', 'linh219@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:37:00', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(173, 'linh218', 'linh220', '$pbkdf2-sha256$29000$b.09h/Ce0/r//1/rfU/pfQ$GFlNBkpmjJ9pu64fp3CNdSOvKEbRZmd/o5pewkkay3s', 'linh220@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:53:07', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(175, 'linh230', 'linh230', '$pbkdf2-sha256$29000$pTQmpHRurTUGwJhTilGK0Q$s6GUdeJR0iO7nvC9M6TJe7EbKkkYMDk0OJSDYXxzyqo', 'linh230@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 11:55:59', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(178, 'linh218', 'linh221', '$pbkdf2-sha256$29000$zBmjFAKgNGZMyTmHsPaeMw$XIIJfGb6295twNlCJ2WnsIqAxO1RE7qDsUUSbAkyvTg', 'linh221@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 15:30:39', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(179, 'Nguyen Thi A', 'hahaha', '$pbkdf2-sha256$29000$rJXS2lsr5TwHAECIkVLq/Q$mMIj6MDUU2Zk8Us2J4PJR5XCke4xDZVbepWFqtIQaks', 'hahaha@gmail.com', NULL, 'Nữ', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 16:15:43', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(180, 'testData', 'linh222', '$pbkdf2-sha256$29000$uHduzRmj9F4rJaQUgjDmvA$rMA29XS9fQCDcyMIoQJ9nuMIwvMTGHe8u3XjC2dRCKg', 'nguyenvanlinewretyyh11232113@gmail.com', '001', 'Nữ', '1997-05-13', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-11 16:23:18', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(181, 'Dương Ngọc Hùng', 'beokute', '$pbkdf2-sha256$29000$o1RqTSklhHBujfE.RyilFA$qTsPnqZrlOll8d4LjSdq0SG9O4urJWFYdaWf7EWpT/g', 'beokute@gmail.com', '', 'Nam', '2000-03-08', NULL, 56, NULL, '127.0.0.1', '123.16.198.5', '2024-03-12 02:36:30', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, 'Dui dẻ dễ gần dễ mến đáng iu =]]', 'Hà Đông, Hà Nội', 'Thanh Hóa', 0, 0, NULL),
(182, 'linh218', 'linh223', '$pbkdf2-sha256$29000$tlaKcU6pVYpxjjEGoJQyxg$0OjWKBu2RoV7/MFUjxjx6m7b0s6Lx.kC4E5TZABc22g', 'linh223@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 09:28:54', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(183, 'linh224', 'linh224', '$pbkdf2-sha256$29000$onROSUkJAUAoJaR0zhnDOA$9tvFqQb0ClfjQXGM2YUB5mP59MKX/nv8utMdsIG0gSA', 'linh224@gmail.com', 'uig7ufqwcsz', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 10:28:27', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '7tr5ugy23', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(184, 'linh225', 'linh225', '$pbkdf2-sha256$29000$CeEcQ2jN.X8PAcD4P.c8pw$18hLgtwd1x.ARUojdoKgmeve080msnlNmMqJamQlvBA', 'linh225@gmail.com', 'qwe', 'Nam', '2024-03-07', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 10:35:03', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, 'Dư', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(185, 'linh226', 'linh226', '$pbkdf2-sha256$29000$JOQcQ2itVQohxDinFCIkpA$rOeogaqX54jyGvkKkh3Z5SFNX.cl77LtaeBNEo6CTOs', 'linh226@gmail.com', '123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:18:19', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '123', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(186, 'linh227', 'linh227', '$pbkdf2-sha256$29000$IuTc./8fYywlxPi/l3Lu3Q$U1wnIJTE2fs0z5vIz2HxV23/yep.MWaWFnatytNUvIk', 'linh227@gmail.com', '123123123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:44:39', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '123213', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(187, 'toanvv', 'toan', '$pbkdf2-sha256$29000$qpUyhrC2llKqdQ5hrJVS6g$pT3yDPCzR8H1AiX.Zm5Ta5QxoEeRi88O1nr/HbJX8AY', 'vnntoan@gmail.com', '086218963', 'Nam', '2001-05-13', '00:00:00', 24, NULL, '127.0.0.1', '42.114.38.206', '2024-03-13 16:57:44', 1, 0, 0x322e6a7067, NULL, NULL, NULL, 0, 0, NULL),
(188, 'linh228', 'linh228', '$pbkdf2-sha256$29000$n7MWQohxbo2x1lrrPWfMuQ$/e2asFQtIFp0uQ/pzQ99kBLC.D83fSZscaP7GiPrUv4', 'linh228@gmail.com', 'qwe', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:47:40', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, 'Were we', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(190, 'linh229', 'linh229', '$pbkdf2-sha256$29000$BoBQCqH0XiuFMMb4XwsBQA$WCw00FosMp9ZuSa1X7gnY5YXknQDVIRxAVfWh3iaM7M', 'linh229@gmail.com', '123123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:55:05', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '12312', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(191, 'linh231', 'linh231', '$pbkdf2-sha256$29000$7H1vLQVgbC2lNOZcS6mV8g$ZmqeHkVHKiKIZC8Ucf72yrdkjSRvUJgz3kDFWGZMtaA', 'linh231@gmail.com', '213', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 11:58:14', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, '213123123', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(192, 'linh232', 'linh232', '$pbkdf2-sha256$29000$v3dOaU3p3ftfy1nrvVeqlQ$k5ccPVjIJha9u3rN.RX4H73.dZbQ6UQjjEY6Am8BrP4', 'linh232@gmail.com', '123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 13:09:16', 0, 0, 0x68747470733a2f2f692e6962622e636f2f746248544879392f6238373662626139666534312e706e67, '1231', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(195, 'linh235', 'linh235', '$pbkdf2-sha256$29000$x/ifk1LqnXMupdTau1cKIQ$901ez918K6CImUVoWjJlRSTu8CAb2n5CsoMgEoMAEpU', 'linh235@gmail.com', '123', 'Nam', '2024-03-12', '00:00:00', 24, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 17:11:13', 1, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, 'Linh1', 'Hà Nội', 'Hà Nội', 0, 0, NULL),
(200, 'linh235', 'linh236', '$pbkdf2-sha256$29000$wngvRSjFmJOS0lrLWWttTQ$6UU2ZJCXs5lS40uKsP9bqtWsPaIFqvJmXMswnP8JwnI', 'linh236@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '113.178.49.22', '2024-03-12 17:07:46', 0, 0, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e253341414e6439476353395a64653231666932416e59395f4331377471596938444f32356c524d5f794161375126757371703d434155266662636c69643d49774152313667314f4e70747055694b7544497433374c5278553346545a636b3163763948447977653956577857535142776375474e6642374a557734, NULL, NULL, NULL, 0, 0, NULL),
(212, 'vantoanne', 'toantest', '$pbkdf2-sha256$29000$rLVWyjkHwDjn3JuTEgLAmA$lBBYkNhYfc4IivaRHztquLuZ41e6EH7Xt30kBb4l9K0', 'vntoan@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '42.114.38.206', '2024-03-13 23:30:41', 0, 0, 0x6874747073, NULL, NULL, NULL, 0, 0, NULL),
(213, 'hieu nguyen', 'nguyenkhhhachiue', '$pbkdf2-sha256$29000$Q0jpPecc45xz7j1nLGVMCQ$bdZJkIrq24Qyf2axtS1Jr2vksaUlA1lcCmXdF.5RIUo', 'abc@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 05:19:06', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(216, 'hieu nguyen', 'nguytenkhhhachiue', '$pbkdf2-sha256$29000$3hsjpLRWam3t3RsjRKi1Ng$qOoA0YSiODbA1azZTOjnkGKfE7SKRNQ2uI7jK.fZ.Dw', 'abct@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 13:17:54', 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(218, 'hieu nguyen', 'nguytenkhrhhachiue', '$pbkdf2-sha256$29000$OkcIwRgjxFhLKYWQUsqZUw$u7rZ7hnzxWHRqVtCnDYkTKvnqEyh6kho139kAqJr4BE', 'abcrt@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 06:52:31', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(221, 'hieu nguyen', 'nguyrtenkhrhhachiue', '$pbkdf2-sha256$29000$630vBQBACAFAqJUSgnBuzQ$UMxxAIEEcPKFeTAaCIq0nR/QGXi891h5f4sd84y7Qi0', 'abcrrt@gmail.com', '0356600737', 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 08:05:52', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(222, 'user test', 'usertest', '$pbkdf2-sha256$29000$bi3l/L8XAsCY01pr7R2D8A$5YP7wrKulOhWlknkzPNGhIL/aFfvtXI5HONKhkbh/LU', 'testuser@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-06 16:19:53', 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(223, 'hieu nguyen', 'nguyenkhachieu3', '$pbkdf2-sha256$29000$AaA0ptSas3YO4bw3ptS6dw$pd5TzC0F5hCpTqMW4wG7KU72lPLB5GkZ5dh2Y7Cdnag', 'hieuabc@gmail.com', '0345466678', 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-09 08:55:22', 1, 1, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(226, 'hieu nguyen', 'nguyenkhachieu4', '$pbkdf2-sha256$29000$M0aIkZLyHiPkPIdQaq3VOg$XL30fFD91mYCsrxSbUq5KEj6Jmwsl3RNcw01yAXomE8', 'hieuabDc@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-09 08:53:08', 1, 0, 0x89504e470d0a1a0a0000000d4948445200000258000002580806000000be6698dc000000097048597300000b1300000b1301009a9c180000200049444154785eecdd797815f5ddffffe7394908010c4882220a04657123046841089b1612425b0117505c51b8dbaab57ad7ebf7add75db1155bf5fbb3dafedc5a41d42a2a2e2c959648505048006509011414055c10954436bd0364f9fd3182f0760332336766ceeb715d7385bedea7970a4cce2b9f99f319101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111f97e311b8888345023200bc83ee8ebc1bfce021a03e95fbd76ffd7837ffd6d59231c7bbf3af67ccbafbf2bab062a816d077d3df8d7955fbd5644c4152a582272b85a0039071ded80561c5aa2b2816308a75d7c5dbcf697aecf80f7814d071ddb1111f9012a5822b25f268716a80ee67fb740c029589b0e3a369affbd1311497a2a5822c925061c0fe4025dbffa7a064e996a79d0ebe4e855e194aeb54005b0faabaf9f00f507bd4e44224c054b24ba3280d339b44ce5e25cd613ff7d8653b4f61fab813781ff3df84522120d2a5822d19005f401f2f8ba4c7506e207bf4802a70e789baf0b5739b018e7fe2f110931152c91f089019d80fc838e530f798584dd3aa0f4ab6311b0015d5e140915152c91e04b077a7068a1d265bee4f2195f17ae526005cef6132212502a5822c1d31c18c0d765eac738254b64bf3dc01b7c5db85e03761cf20a114928152c91c48b01dd80a2af8ebe40ca21af10f97e3540193007280656a14b8a2209a582259218c7024380a15f1d271c3a1669908f718ad61c601ef0f9a16311f19a0a96883fe2389ff0dbbf4a75165aa5127fd4024b70cad61c9c4f2ad61df20a11719d0a9688779a00c3809f0385381b7c8a24da27c04bc08bc07f802f0f1d8b881b54b044dc958173c96f344eb16a72e8582450bec0295acfe2ac6e551f3a1691a3a58225d270e9382b54a380e140b343c722a1b00bf817300d988bb681106910152c91a3d308188cb3523502e741c92251b1039889b3b2350fd87be858447e880a96c8e14b03cec159a91a89f3494091a8fb1c988153b65e01f61d3a16916fa38225f2c33a01e3802b81e30e1d8924954f80c780c9388fef1191efa08225f2ed1a03e701e38141878e4404980f4cc259ddd2cdf122860a96c8a1cec0295597012dcd4c44bea90af8274ed97ad3cc4492960a960834c5b9af6a3cd0c7cc44e4f095e114ade770b68010495a2a5892cc7ae094aa31e85380226eda093c8553b6569899888844500acebd55a5380fc3d5a14387b74729cea76ef56828492a5ac19264d104e75380ff0d9c72e848447cb001b817e753887a3c8f449e0a9644ddf1c0b5c0354096998988ff2a8107810770b67d108924152c89aad37056ab2ec379948d8804cb1e9c4f1fde03ac333391d053c19228890103809b809f99998804d76ce06ee0359cfbb644424f054ba2200e9c0ffc1fa0a7998948782c07ee025e00eacc4c44447c12c379d07205dffce4920e1d3ac27bacc239b7b5082022e2a318300c58c637bf31ebd0a1233ac7329c735d454b42477f69254c62c04f8089c059662622d1b5189800bc8c53bc44024f054bc262004eb11a60072292345e056e0116da8148d0a86049d09d8553ac06db818824ad129ca2b5d40e448242054b82aa3b4eb1faa91d88887ce5df38456ba51d88249a0a96044d6be04fc058f4f753447e583df028f03fc056331349183d7c5382221d6783d0e7702e0baa5c89c8e188e1ac78ff0267efac6540ed21af104900bd8949a2eddfcbea6ee0643313113952ef01bf0566a14f1c4a02a9604922e5027f05ceb6031191067a05b801586d07227e88db40c407ad80bfe3dc98aa7225225e380728071ec2f99e23e22bdd83257e6a045c8ff39cb17cb4822a22de8a013f02fe0bd803ac40f767894ff406277e2900ee033adb8188884fde06aec3d9474bc453ba44285ecb02fe09bc84ca9588245667602ef038cef72611cfe812a17825065c0ccc06fa989988482275c3d96bef4360ad9989b8429708c50bed706e2c1d6607222201f36fe01ae07d3b106908ad60899b5270ee6f98019c6166222241d419180fec0296a3bdb3c4255ac112b79c014cc6d9855d44248c16e3942d5d369406d30a9634543a30017812686f66222261d216a760a5e0942d6de920474d2b58d2107d7156ad4eb3031191907b0b180794d981c8e1d00a961c8d34e08f384fb03fcecc4444a2a015ce270dd38045380f9216396c5ac19223d511980af4b2031191887a1db804d8600722df451b8dcae18ae1fc34578eca958824975e38dffbc6a28509394cfa8b2287a325f00fe0023b10114932cf01bf04aaec40e4602a58f243ce069e004eb403119124f521703930df0e44f6d34deef25d1a017fc659b9ca3433119164968953b03280d7d0760ef22db48225dfe6549c1bd97bd88188881c62053006586f0792dc7493bb1c2c86b3c9de0a54ae44440e470f6025ce9e595ab49003f49741f6cb001ec0f9948c88881cb929c0b540b51d48f251c112801ce005b46a2522d250cb81f381cd7620c9459708a500e71b82ca958848c3f5c4f99e3ac40e24b9e85384c92b0edc8cb3a4ddc4cc4444e4e835c1d9f97d1f506a6692247489303935071e0786db818888b86a267005b0d30e24da54b092cfe9c00ca0b31d88888827de0646026fda814497eec14a2e17e23cb454e54a44c43f9d71bef75e6807125dba072b39a402ff17b8176787761111f157239c82d50ce7113b75878e256a748930fa8e019e0586da81888824c41c6034b0cb0e243a54b0a2ed246036d0cd0e444424a156013f053eb203890615ace8ea06fc1b38d10e444424103ec22959abec40c24f37b947d35060112a572222417622cef7ea423b90f0d34deed1f35fc054a0b11d888848e034022e06b6e2ec002f11a182151d71e00ee0ceaf7e2d2222e110077e8ef383f17ca0fed0b18491eec18a86c6383bb38fb2031111099569c09540b5c9256454b0c22f1b9805f4b503111109a5526004b0cd0e243c54b0c2ad23ce7e2a1ded404444426d0350f4d557092115acf03a1398071c6f07222212095b81c1c05a3b90e0d3cdd0e1d4135880ca95884894b5065e057ad881049f0a56f8e403af005976202222919385f3c942dd671b322a58e1f213602e906907222212599938dffbcfb103092e15acf0f829cea36f9ad8818888445e53e03f38ef0512022a58e17021301348b7031111491ae9c00ce0023b90e0d14eeec17739f024fab3121111e7bde00260137a4874a0e94d3bd87e054c46db698888c8d762c048e0136099994940a86005d76f81bfd9504444e42b3f0376018bed40124f052b987e0bdc6d43111111a310d88d4a56e0a86005cfafd0ca9588881cbe0274b9307054b082e50a60920d4544447ec0cf808de8c6f7c050c10a8e0b8127d00ded2222727486036f7e754882e9cd3c187e8ab3cf55aa1d8888881c811a6004cec6d492402a5889f7139c13419b888a88881bf600c3709e5b2b09a2829558f938cf97d2e36f4444c44d5fe0dcfc5e6607e20f15acc4e981f384743db8594444bcb003e701d12bec40bca782951867020b802c938b8888b8a9121808acb503f1960a96ff3a020b81d676202222e281ad407f60831d887754b0fc958db3db6e473b101111f1d006a00fb0cd0ec41b711b88671a03b350b9121111ff75c4d90ea8b11d883754b0fc11071e07fada818888884ff281c7d07bbf2fb4b1a53ffe0c8cb2a148326ad1a20539393974e8d081934e3a89ecec6cb2b2b20e7ccdcaca22333393468d1a919e9e7ee068d4a811007bf7ee65cf9e3d078ebd7bf7b273e74e2a2b2ba9acac64dbb66d07be7ef8e1876cdcb8918d1b37b263c70ef36f22929446e33c52e7663b1077e91e2ceffd17f00f1b8a44593c1ea743870ee4e6e6929b9b4bd7ae5d39f9e493e9d0a1032d5ab4b02ff7c5f6eddbd9b87123efbdf71eab57afa6a2a2828a8a0a366edc485d5d9d7db948d4fd177af6ada754b0bc3514988d9ef92811168bc568dfbe3df9f9f9f4eddb971e3d7ad0b56b579a366d6a5f1a485f7cf105ab57af66c58a15949595515a5acae6cd9ba9afafb72f1589925a9cc7b4bd6407e20e152cef74031601cdec4024cc62b118a79e7a2a43860ca15fbf7ee4e7e7d3a64d1bfbb250dbb2650ba5a5a52c5ab488929212d6ad5ba7c22551b40b67fb865576200da782e58d938025c089762012469999999c73ce391415153174e850dab56b675f12699b376fa6b8b898e2e2625e7ef96576edda655f2212561f01bdbffa2a2e52c172df31381b8976b3039130c9caca62e4c8918c1e3d9a418306919aaacfc400d4d4d4b060c102a64d9bc68c1933a8acacb42f11099b726000ce8a96b84405cb5da9c08b38f75e89844e8b162d18316204a3478f66f0e0c12a553fa0a6a68679f3e6316dda3466ce9cc9f6eddbed4b44c2620e702e5063072241703750af4347988e582c567ff6d967d74f9d3ab5bebababa5e8e4e757575fdd4a953eb070d1a541f8bc5bef1fbac4347088eff17718d56b0dc330a98664391a06addba35575e7925575f7d351d3bea01036edab0610393274fe6f1c71f67ebd6ad762c1264a380e76c2892286700bbf9e64f033a7404eec8cbcbab7fe28927eaf7eddb671761c465fbf6edab7fe28927eaf3f2f2bef1e7a04347408fddc0e988044073603ddffc4baa4347608e582c565f5858585f5252623b80f8a4a4a4a4bea0a040970f7584e1580f64229240716006dffccba94347208e783c5e7fe18517d6575454d8f77b49908a8a8afa0b2fbcb03e1e8f7fe3cf4b878e001dd3d16d44924037f3cdbf943a7424fc88c562f523468ca85fb56a957d7f9780282f2faf1f3e7cb856b47404f9f81d22095000d4f1cdbf903a7424ec88c562f5454545f5cb962db3efe71250cb962dab2f2a2a52d1d211c4a31618821c152dff1d9d1c6039d0d2e4220973e6996772efbdf73278f0603b921098376f1e37dc70036bd7aeb5239144aa047a029bed40be5fdc06f28332801750b9928068d9b225f7dd771fe5e5e52a57213678f06056ad5ac57df7dd47cb96faf622819185f39ed7d80ee4fba5d840be570cf80730cc0e44fc969292c2af7ef52b66cc98c1c0810389c7f5f352d8c5e3717af5eac5f8f1e3d9bd7b372b56acd043a62508da7c75bc6807f2dd7489f0c88c0326d950c46f679e792693274fa677efde762411b264c912c68f1fcf9a356bec482411c603936d28df4e2b5887ef546026906607227e69dcb831b7de7a2b4f3ef924eddab5b3638998934e3a89f1e3c7939696c6e2c58ba9a9d163e224a106e35c2ed413ce0f8356b00e4f236031d0c30e44fcd2b76f5fa64c9942972e5dec4892c0faf5ebb9eaaaab282b2bb323113f2d07fa027bed400ea515acc3f327e0421b8af8212d2d8d3ffef18f3cfae8a3b46ad5ca8e25496467673376ec5852535359b46811757575f625227e68837325e7653b90436905eb879d8df31749bf57e2bb8e1d3b3275ea547af5ea654792c4962e5dcaa5975eca860d1bec48c40ff5c04f80f976205fd3c78ebe5f4be00954aec467b1588cb163c7525e5eae7225dfd0bb776fcacbcb193b762cb198be3d89ef6238ef8dda4fe47ba8607db718f03070a21d887829232383471e79842953a6d0b469533b1601a069d3a64c993285c99327d3b8b1b62812df9d88b36d911afe77d06fcc771b0b4cb1a18897dab76fcff4e9d3e9d1439fa790c3b77cf972ce3fff7c366fd666dbe2bbb1c063361415acefd2112807b47c20be193264084f3ffd345959597624f2832a2b2bb9e8a28b98376f9e1d89786937d01dd00d81862e117e531a3015952bf1d175d75d477171b1ca951cb5acac2c5e7ae925aebbee3a3b12f15233e049b447e437689b866ffa2370b10d45bc108bc5b8fdf6dbb9e38e3b74b3b234582c1663d8b061a4a6a6b260c1023b16f1ca495f7dd5a70a0fa28275a8bec0a3e8d2a9f8203535957ffce31fdc70c30d7624d22003060ca04d9b36cc993347fb65895ffa0325c0877690ac5424be960eac044eb30311b7656464f0d4534f3162c4083b1271cdcc9933b9f8e28ba9aeaeb623112fbc85733fd61e3b4846ba07eb6b37a372253e68d1a205c5c5c52a57e2b9112346505c5c4cf3e6cded48c40ba701bfb361b2d20a96e30c9cd52bdda4279e3ae18413282e2e263737d78e443cb36ad52a8a8a8af8f8e38fed48c46dfb7056b1d6da41b2d10a96731fda23a85c89c73a75ea44595999ca95f8ae5bb76e949696d2a953273b12715b1a3019dde3ad82055c03f4b6a1889bf2f2f2282d2d252727c78e447cd1a143074a4b4bc9cbcbb32311b79d05fcca86c926d92f11b603de447b5e89873a75ea44696929ad5ab5b22311df7dfae9a7e4e7e7eb41d1e2b5dd38b7dfbc6f07c9229957b062c043a85c89874e38e104e6ce9dab72258171dc71c73177ee5c4e38e1043b127153339cf7d8a45dc849e682751130cc86226ed9ff69415d1694a0e9d0a10373e6ccd1a70bc56bc380d1364c16c9da2cb371f6ebc8b6031137646464505c5ccc800103ec4824305e7df555860e1daa7db2c44b9fe16cdf5069075197ac2b587f41e54a3c929a9aca534f3da57225813770e0409e7aea29525292fe035fe29d5638efb9492719cfaa02e06e1b8ab821168bf18f7ffc833163c6d89148209d76da699c70c209cc9e3ddb8e44dc92079401efd94194255bc16a04bc0864d981881b6ebffd763d5b5042a767cf9ea4a4a4307fbe9ed52b9ee905fc03489a8763265bc1ba1ed0d28278e2d7bffe3577dc71878d454261c08001545656f2faebafdb91881bb2812a60891d445532dde4de0a7807d0c766c47543860ca1b8b898783c596f6b9428a8ababa3b0b09079f3e6d991881bb6039d806d761045c9f46e701b2a57e281f6eddbf3f4d34fab5c49e8c5e3719e79e619dab76f6f47226e6881f35e9c149265052b17e761ce7a071457656464b068d1227af4e8614722a1b57cf972faf5eba7ed1bc40b75380f83aeb083a84986c21103fe4a72fcb78a8f62b1180f3ef8a0ca95444ecf9e3d79f0c10789c592e56770f1511cb8972458e049869bdc4702bfb3a148438d1d3b965b6fbdd5c62291d0bd7b77366fde4c7979b91d89345407a01c5867075112f506998ef330e793ed40a4213a76ec487979394d9bea5196125dbb77efa67bf7ee7a30b478e15d9c8741efb183a888fa65b31b50b91297a5a5a53175ea54952b89bc66cd9af1e4934f9296966647220d750af01b1b4649942f11b6069ec7d95c54c4357ff8c31fb453bb248d934e3a89fafa7a162c586047220d75163005f8c20ea220ca97081f01aeb2a14843e4e7e7f3da6baf694b06492a757575f4efdf9fb2b2323b1269a8478071368c82a816aceec072a2fbdf2709d0b87163cacbcbe9d2a58b1d8944deba75ebe8debdbbb66e10b7d5033d706e7a8f94a85e229c0c74b6a14843dc7aebad9c77de793616490ad9d9d9d4d7d7eb7985e2b6187012f0b41d845d145778ce0216db50a421ba76edca8a152b484d4db52391a4b16fdf3e7af4e8c19a356bec48a4a1ce0296da30cca2782349d26cc32ffe48494961d2a4492a5792f4d2d2d298346912292951bdf8210914b9f7eea815ac01c0101b8a34c42f7ef10b7af7ee6d6391a474d65967f18b5ffcc2c6220d5500f4b7619845e912610c588053b2445c919595c53befbcc3b1c71e6b472249abaaaa8a4e9d3a5155556547220df12a7036ce8defa117a515ac9fa072252efbc31ffea0722562b46cd9923ffce10f361669a881c039360caba8ac60c580329c9be4445c71e69967525e5eaefb4d44be456d6d2dddba7563eddab57624d2108b817c22b08a159515ac2254aec445b1588cbffef5af2a5722df212525857befbd97582c2a3fa74b40f40186da308ca27066c48037809e762072b48a8a8af8cf7ffe63631131860d1bc69c39736c2cd210cb805e847c152b0a056b0430c38622472b168bf1c61b6fd0b3a73abbc80f59b66c19bd7af5a2be3ed4ef85123c238059360c93b05f228c13c1bd3324b1ce3df75c952b91c3f4a31ffd889ffffce7361669a8db08794709fb0ad685c0b33614395af1789c952b57929b9b6b4722f21d56ad5a458f1e3da8ababb323918618053c67c3b008733b8c01ffc786220d71fef9e7ab5c891ca16eddbae9399de285ff87102f0485f65f1c67bf8c053614395ab1588c55ab56d1b56b573b12911f505151415e5e9eeec512b70d045eb36118847905eb261b883444414181ca95c851cacdcd65c8103da94c5c17daf7fab016acd3809fd950a4216eba29b4e7b14820e81c120ffc1c38d5866110d682f5df36106988bcbc3c060f1e6c6311390243860ca15bb76e361669a850bee787b1601d0f5c66439186f8ed6f7f6b2311390a3a97c4039703c7d930e8c27893fb6dc02d3614395aad5bb7e6830f3e203535d58e44e408d5d4d4d0b66d5bb66edd6a47220d711b70ab0d832c6c2b584d806b6d28d210575e79a5ca95884b525353b9e28a2b6c2cd250d7e27480d0085bc1ba1268694391a3158bc518376e9c8d45a401c68d1ba787408bdbb2805035f73015ac14e0461b8a34c4a0418338e594536c2c220dd0b16347060e1c68639186ba11a70b8442980ad6b940471b8a348456af44bca1734b3cd00967db865008d31a6e29d0d7862247ab458b166cddba95f4f4743b129106dab3670fad5bb766fbf6ed7624d210a5403f1b06515856b07aa072252e1b316284ca958847d2d3d3193e7cb88d451a2a1fe86ec3200a4bc11a6f0391861a3d7ab48d44c4453ac7c423a1e80461b844d814f81838c60e448e565656165bb76ed5f60c221eaaa9a9e1f8e38fa7aaaaca8e441a6227d006f8c20e82240c2b58a350b912978d1c3952e54ac463a9a9a98c1c39d2c6220d95095c68c3a00943c10ac552a0848b2e5d88f843e79a7824f0dd20e89708cf00d6d850a421323333a9acacd40a96880ff6eddb47565616bb76edb22391863a13586bc3a008fa0a56e01baa84cf39e79ca37225e293b4b434ce39e71c1b8bb821d09bad05b96035062eb3a148430d1d3ad44622e2219d73e291cb71ba422005b9609d879e3b282e8bc562141515d958443c545454a467138a175a0281fd1445900b56a097fe249c4e3df554dab56b676311f150fbf6ede9d2a58b8d45dc10d8ae10d482d51138db86220d3564c8101b89880f0a0a0a6c24e2867380536c1804412d58816da4126efdfa85e211562291939f9f6f2311b704b23304f1a2781af00170bc1d8834442c16e3c30f3fa44d9b367624221efbe8a38f68dbb62df5f5f57624d2509f006d817d769048415cc13a07952bf140fbf6ed55ae4412e4c4134fd4fd8fe295e309e06d45412c58a36c20e2065da210492c9d83e2a1c07587a015ac4638db3388b8ae6fdfbe3612111fa9608987cec3e9108111b48235186861431137f4e8d1c34622e2a3eeddbbdb48c42dc7023fb1612205ad60e9a9a0e289783c4ed7ae5d6d2c223eeadab52bf178d0de76244202d52182f4373d1d186143113774e8d081a64d9bda58447cd4ac59337272726c2ce29611385d22108254b00a814c1b8ab8213737d7462292003a17c543cd81c0ec681ba48215b84f004874e89bba4830e85c148f05a64b04a5606500c36d28e216dd7f25120c3a17c563c381c6364c84a014aca140331b8ab8e5e4934fb691882480ce45f1d831389d22e18252b00275e7bf444f870e1d6c242209a073517c10884e1184671136013efbeaab88eb5ab468c1e79f7f6e63114990162d5ab063c70e1b8bb8e50be038e04b3bf0531056b086a172251ed2c7c2458245e7a478ac294eb748a82014ac9fdb40c44dba2421122c3a27c5073fb381df125db0e238fb5f8978e6a4934eb291882450dbb66d6d24e2b6a124b8e324f41f0ee401c7db50c44dd9d9d936129104cacacab29188db8e07bad9d04f892e58453610719bbe998b048bce49f149423b860a96449e56b0448245e7a4f824a11d239105eb58a08f0d45dca69f96458245e7a4f8a40fd0c2867e4964c11a4c62fff99224f4cd5c2458744e8a4f5270ba464224b2e02474e94e92476666a68d442481744e8a8f12d6351255b06204e45941127d8d1a35b291882490ce49f1d15012f4d49a4415ac6ec0093614f1427a7aba8d442481744e8a8fda00b936f443a20a56c296ec24f9e89bb948b0e89c149f25a47324aa60e9f2a0f846dfcc458245e7a4f82c219d2311d7259b03953877f78b78aeb6b696783c513f4b8888555757474a8ade02c437354016b0d30ebc9488779d01a85c898888883f5271ba87af1251b0f26d20e2a5bd7bf7da48441268cf9e3d3612f19aefdd43054b224fdfcc458245e7a42480efddc3ef82950efcd886225ed237739160d1392909f063c0d70dd8fc2e583d704a96886ff4cd5c2458744e4a0234c6e920bef1bb60f9be4427a27bb0448245e7a42488af1d44054b226fe74e5f3f992b223f40e7a42488af1dc4cf8215c3e7ff381180caca4a1b894802e99c9404e9878ffb7ffa59b03a01ad6c28e2357d331709169d939220ad808e36f48a9f054bab579210dbb66db391882490ce494920dfba880a96449e7e5a1609169d939240be7511152c893cfdb42c122c2a589240be7511bf0a561670aa0d45fcf0e1871fda484412e8830f3eb091885f4e035adad00b7e15ac3e3610f1cbc68d1b6d242209a4735212cc974ee257c1cab381885f366dda64231149209d939260be7412bf0a56571b88f865fbf6ed6cdfbeddc62292009f7ffe393b76ecb0b1889f7ce9247e15ac5c1b88f8499724448241e7a204802f9dc48f82950174b6a1889fde7bef3d1b894802e85c9400e882f3f0674ff951b04ec79f7f8ec8775abd7ab58d442401742e4a00c471ba89a7fc283ebe2cc5897c9f8a8a0a1b894802e85c9480f0bc9bf851b07cb9994ce4fbe89bba4830e85c9480f0bc9bf851b03c6f89223f64e3c68d7cf1c5173616111feddebd5b5b34485078de4dbc2e5831a09b0d45fc565757a77b3f44126cf5ead5d4d5d5d9582411425fb08e07b26d2892082b56acb09188f868e5ca9536124994e3703a8a67bc2e589e374491c3555656662311f1516969a98d4412c9d38ee275c1f2fc263291c3a56fee2289a5735002c6d38ee275c1f2b41d8a1c89cd9b37b365cb161b8b880f3efae823de7fff7d1b8b2492a71dc5eb8275860d4412a5bebe5e3f418b2448696929f5f5f5361649a4336de026af0b56071b8824d2a2458b6c24223ed00f3712403936709397052b1368694391442a2929b19188f860eedcb9361249b42ce0181bbac5cb8295630391445bb76e9dee0311f1d9e6cd9b59bf7ebd8d458220c7066e51c192a4525f5fcf9c39736c2c221e9a33678eeebf92a0cab1815b54b024e9141717db48443ca4734e022cc7066ef1b260e9067709a4575e79a2521ae50000200049444154859a9a1a1b8b8807f6eddbc72bafbc626391a0f0acab7859b0726c2012043b77ee64c182053616110f2c58b0805dbb76d9582428726ce016152c494ad3a64db391887840e79a045c8e0ddc12b3818b3e075ad8502408b2b2b2d8ba752ba9a9a97624222ea9a9a9e1f8e38fa7aaaaca8e4482e2733cda52caab15ac165f1d2281545959c9bc79f36c2c222e2a292951b992a03b16686e43377855b0726c201234ba7421e22d9d631212393670830a9624ad993367b267cf1e1b8b880bf6ecd9c3ac59b36c2c1244393670830a9624adeddbb7f3c20b2fd858445cf0fcf3cfb37dfb761b8b04518e0ddce055c16a670391209a3c79b28d44c4053ab72444dadbc00d5e15ac56361009a2050b16b061c3061b8b48036cd8b081575f7dd5c62241956d03377855b0b26c201244f5f5f53cf2c82336169106983c79b29e3d2861e249c1f26a1facd7811fdb5024885ab76ecd071f7ca03db1445c50535343dbb66dd9ba75ab1d8904d5eb406f1b3694572b589eb441112f6cddba95679e79c6c62272149e7efa69952b091b4f3a8b572b583b81636c281254797979ac5cb9d2c6227284f2f2f258b56a958d45826c271e6c36eac50a562354ae2464cacbcbb5b3bb4803959494a85c4918650269366c282f0a966e709750bafbeebb6d24224740e7908498ebddc58b82e5c9b54c11afcd9d3b97d5ab57db58440e434545052525253616090bd7bb8b1705cbf51628e287fafa7a264e9c686311390c13274ed4d60c1266ae77172f0a96eb2d50c42f2fbcf002151515361691efb16ad52aa64f9f6e63913071bdbba860891ca4aeae8e091326d85844bec7840913a8ababb3b14898b8de5dbc2858ae2fb389f8e95ffffa17cb972fb7b1887c8b65cb96f1e28b2fda58246c5cef2e5e142cd75ba0889feaebebb9e5965b6c2c22df62c28409baf74aa2c0f5eee245c172bd058af8adb8b858fb6289fc809292128a8b8b6d2c1246ae77172f0a56631b88844d7d7d3d37de7823b5b5b5762422406d6d2d37de78a356af242a5cef2e5e14ac741b8884d19a356b78e8a1876c2c22c0830f3ec8dab56b6d2c1256ae77172f9e453807186a4391306ad9b225efbcf30e2d5bb6b42391a455555545a74e9da8aaaab22391b09a030cb3614368054be47b545555e9867711e3965b6e51b992a871bdbb78b182b508c8b7a14858a5a4a4505a5a4aefdebded4824e92c59b2847efdfae9fe44899a45407f1b3684172b588d6c201266b5b5b58c1b378e9a9a1a3b12492afbf6ed63dcb8712a571245ae77172f0a96ebcb6c2289b666cd1aeebcf34e1b8b24953befbc5337b64b54b9de5dbcb844f81670aa0d45c2ae71e3c6949797d3a54b173b1289bc75ebd6919797c79e3d7bec48240ade024eb7614368054be43055575773d55557e9996b9274eaeaeab8faeaab55ae24ca5cef2e5e142cd7af638a04455959197ffad39f6c2c1269b7df7e3b65656536168912d7bb8b1797083f055ad950242ad2d2d258b46811bd7af5b22391c859ba7429fdfaf5d3873c24ea3e058eb761437851b0760099361489928e1d3b525e5e4ed3a64ded48243276efde4d5e5e1eefbefbae1d8944cd0ea0850d1b429708458ec2860d1bf8f5af7f6d639148b9fefaeb55ae2459b8de5d54b0448ed2638f3dc6a38f3e6a6391489832650a8f3df6988d45a2caf59bdcbdb844588b37c54d247032323258b870213d7bf6b42391d05ab66c19fdfbf7a7babada8e44a2aa0e48b161437851b0fe17686c4391a86adfbe3dcb972f272b2bcb8e4442a7b2b2929e3d7bb279f3663b1289b2ff059ad8b021bc5869da6b039128dbbc7933175f7cb1f6c792d0abababe3a28b2e52b99264e47a77f1a26069273a493a252525fce637bfb1b148a8fce637bf61debc7936164906ae771757af377ee537689b064942afbffe3a6969690c1830c08e4402eff6db6fe7aebbeeb2b148b2f81cb8d7860de145c1ba0e38d68622c960fefcf9b469d34637bd4ba83cfcf0c3fcf6b7bfb5b14832d906fc7f366c085d221471517d7d3dd75c730d3367ceb42391409a316306d75c730df5f5f57624924c5cef2e5e142cd76f141309939a9a1a2ebef8625e7bed353b120994575f7d953163c6505b5b6b4722c9c6f5eee245c172bd058a844d757535c3870fa7a2a2c28e440261d5aa550c1f3e5c7b5d89385cef2e5e142cd75ba048186ddfbe9da14387b271e3463b1249a88d1b37525454c48e1d3bec482459b9de5d54b0443cf4f1c71f535858c8679f7d66472209f1e9a79f525050c0c71f7f6c4722c9ccf5eee245c1727d994d24ccde79e71d0a0a0a54b224e13efdf4530a0b0bd9b061831d89243bd7bb8b1705cbf516281276e5e5e5e4e7e7b369d3263b12f1c5c68d1bc9cfcfa7bcbcdc8e44c483eee245c172bd058a44c13befbc43dfbe7d75e3bbf86ed5aa55e4e7e76be54ae4bbb9de5dbc2858fa488ac877f8f8e38f19306080b67010dfbcfaeaab0c1c3850f75c897c3fd7bb8b1705abd20622f2b51d3b76505858a8cd48c5733366cc60e8d0a1fab4a0c80f73bdbb7851b0b6d940440e555d5dcd85175ec8a44993ec48c4150f3ffc30175e78a1f6b912393cae77172f9e457806f0331b8ac8a1eaeaea983d7b362929297a40b4b86ae2c489dc74d34dd4d5d5d991887cbbe780e5366c082f0a560e30ca8622f2ede6cf9f4f65652543870e25168bd9b1c861abababe3faebafe7aebbeeb22311f97e8f016fd9b0217489502400eebfff7e0a0b0ba9ac74fd3600491295959514141470fffdf7db9188fc30d7bb8b17054bef10224761debc79f4ecd993e5cb5d5da59624b07cf9727af6ecc9cb2fbf6c472272785cef2e5e142cd75ba048b2d8bc7933fdfaf5e3d1471fb523916f3565ca14faf5ebc7e6cd9bed48440e9febddc58b1b3e1ae1c1865d22c924168b71e5955772df7df7d1b469533b1661f7eedd5c7ffdf53cf6d863d4d7d7dbb1881c9946c03e1b368417050b6027708c0d45e4c874ecd891279f7c92debd7bdb9124b1a54b9772c92597f0eebbefda91881cb99d40731b3694179708c183a5369164b461c306faf7efcfc48913f5917ba1aeae8edb6ebb8dfefdfbab5c89b8c793cee2d50ad6ebc08f6d282247af6fdfbe4c9932852e5dbad891248175ebd671f5d557535656664722d230af03ae5f26d00a964848949595919797c7c48913d9b7cfd55b0524c0f6eddbc76db7dd465e5e9eca9588375cff04217857b03cf997154976d5d5d54c9830811e3d7ab064c9123b968859b26409ddbb77e7d65b6f65cf1e7d7648c4239e2c0a7955b03eb38188b867cd9a35f4ebd78f6bafbd96aaaa2a3b9690abaaaae2da6bafa55fbf7eac5dbbd68e45c45da12a58efdb4044dc555b5bcb830f3e48a74e9db8efbefba8adadb52f9190a9adade5befbeea353a74e3cf8e083fa3315f187279bc87955b036d94044bc515555c5f5d75f4fb76edd98376f9e1d4b48949494d0ad5b37aebffe7aad4a8af86b930ddca0822512116bd7aea5a0a08061c386b16cd9323b96805ab66c19c3860da3b0b0509703451263930ddce0d5360d2d80cf6d2822fe88c5629c7beeb9dc76db6de4e6e6dab104c0aa55ab983061022fbef8a276621749ac16c00e1b369457050b9c82d5c28622e29f783cce79e79dc7840913e8dab5ab1d4b025454543071e244a64f9faecd634512ef73a0a50ddde0d52542f068c94d440e5f5d5d1dcf3fff3cddba75a3b0b090929212fb12f149494909858585e4e5e5f1fcf3cfab5c8904c3261bb845054b2409d4d7d73377ee5c0a0a0ac8cbcbe389279ea0a6a6c6be4c5c565353c3134f3c415e5e1e050505cc9d3b579703458265930ddce2e525c27b811b6c2822c1d0ba756baeb8e20ac68d1b47c78e1ded581ae09d77de61f2e4c9fcf39fff64ebd6ad762c22c1712ff0df3674839705eb7ae06f3614916089c5620c1c389071e3c671c10517909e9e6e5f228761cf9e3d3cfffcf34c9a3489d75e7b4d2b5522e1703d709f0ddde065c13a179865431109ae162d5a307cf870468f1ecd902143484d4db52f9183d4d4d4505252c2b469d398356b16dbb76fb72f1191603b1778d1866ef0b260e502ab6c2822e1909595c5881123183d7a3483060d222d2dcdbe2429eddbb78f050b16306dda3466cc98a14d4145c22d17586d43377859b032f1605f0911f1df31c71cc339e79c43515111454545b46bd7cebe24d2366fdecc9c3973282e2ee695575e61d7ae5df62522124e99802727b497050ba0128ff6971091c488c56274e9d285828202f2f3f3c9cfcfe7c4134fb42f0bb58f3efa88d2d2524a4b4b993b772eebd7afd73d5522d1530964dbd02d5e17ac65404f1b8a4874c46231dab56b77a06c75efde9ddcdc5c9a366d6a5f1a48bb77ef66f5ead5ac5cb9f240a97afffdf755a844a26f39f0231bbac5eb82f53870b90d4524dae2f138393939e4e6e6929b9b4bd7ae5d39f9e493e9d0a103c71e7bac7db92f3efffc73366edcc87befbdc7ead5aba9a8a8a0a2a2824d9b3669d34f91e4f43870a50ddde275c1fa2d70b70d452479356fde9c9c9c1c3a74e840dbb66dc9caca222b2b8bececec03bfcecccca451a346a4a7a71f7280b31dc2c1c7debd7bd9b97327959595545656b26ddbb603bffee0830fd8b871239b366d62c70edd122a2287f82d708f0ddde2f567b03db9335f44822f168bd1ac59b303c5293b3bfb905fefffdab265cb03056a7fa98ac7e3a4a4a4108fc789c7e3c4625fff2c188bc50ee4fb5fd3a4491352525268d1a205279d74127bf6eca1aaaaea40d93af8ebc1bfdebd7bb72e058a242f4f3b8ad72b58ad818f6d2822e1979292429b366d0eac46e5e4e41cf2eb366ddad0a85123fb7f0b94bd7bf7b265cb16366dda7460a5ebe05f6fd9b285dada5afb7f139168680d7c6243b7785db06238fff2adec4044c2a179f3e674eddaf5c0fd541d3b762427278776edda457e6fac7dfbf6f1fefbefb369d326366cd870e0beadd5ab57eb92a348b87d0a1c6f4337795db000e6013fb1a188044b6a6a2a1d3b763c50a4f61feddbb7b72f159cbdb1f617aefdc73befbca3152f917098070cb1a19bfc2858f70037da504412eb84134e38b0b542dfbe7dc9cdcda571e3c6f6657204aaababa9a8a8a0acacecc0960f1f7facbb244402e81e9c9bdc3de347c11a0b4cb1a188f82725258533ce38e340a1cacfcf272727c7be4c3cb071e3c6430ad7dab56bb5ca2592786381c76ce8263f0a564f9c0d4745c427b1588cbcbc3c860e1dcac08103e9d3a70f999999f66592003b77ee64f1e2c5bcfaeaab141717535e5eae4f328af8af27b0c2866ef2a3606500bb81b81d88887b8e3df658860c194251511143870ea575ebd6f62512405bb76ea5b8b8983973e6505252c2e79f7f6e5f2222eeaa039a02d576e0263f0a16c05bc0a9361491a3178fc7e9debdfb8107309f75d659c4e3fa3926cceaeaea58bc78f181c2b572e54aed322fe2beb780d36de836bf0ad63460940d45e4c8a4a6a63270e040468d1ac5f0e1c339fe784f3f652c09f6c9279f306bd62c9e7df6595e7df5556a6a6aec4b44e4c84d032eb2a1dbfc2a58bf0726da50447e584a4a0afdfbf767d4a8519c7ffef91c77dc71f62592043efdf4535e78e1059e7df659162e5ca81be5458edeef813fd9d06d7e15ac9f012fda5044be5d3c1e273f3f9f51a34671c10517e87e2a39c4d6ad5b79fef9e799366d1a656565ba8c2872647e06fcdb866ef3ab606501db6c2822873ae38c33b8faeaab19356a14279e78a21d8b7cc3471f7dc4b469d378e4914778f3cd37ed5844be290ba8b2a1dbfc2a58a01bdd45be55d3a64d19356a14e3c78fa74f9f3e762c72d8cacaca98346912cf3df71c5f7cf1851d8b884f37b883bf056b3270b50d4592558f1e3d183f7e3c63c68cd11e55e2aa9d3b773275ea54264f9ecc8a159e6ef52312369381f136f4829f054b3bba4bd2cbcccc64cc98318c1f3f9e1e3d7ad8b188eb56ac58c1a4499378eaa9a7d8b973a71d8b241bcf7770dfcfcf82d519586f43916470ca29a770c30d3770d55557d1a449133b16f1dc975f7ec9942953b8f7de7b79efbdf7ec5824597406deb1a117fc2c5831e013a0951d8844d559679dc54d37ddc4c89123b509a804425d5d1dd3a74fe7eebbef66e9d2a5762c12659f01c703be3c9bcacfeff8f540a90d45a226252585112346b068d122162f5eccf9e79faf722581118fc7b9e0820b58b264090b172e64f8f0e1fafb29c962113e952bf0b760810a96445893264df8e52f7fc95b6fbdc58c1933c8cfcfb72f1109947efdfa3173e64cd6ad5bc72f7ff94b323232ec4b44a2c4d70ee2e72542803e40990d45c2ac69d3a65c77dd75dc74d34d646767dbb148686cdbb68dbbefbe9bfbefbf5fdb3c4814f50196d8d02b7e17ac7460c7575f45422d2323835ffef297fcee77bfd3e36b24523efdf453eeb8e30efefef7bf535d5d6dc72261540d3407f6da8157fc2e58000b817e3614098bf4f474aebefa6afee77ffe87366ddad8b148646cd9b2853ffde94f3cf2c823ecd9b3c78e45c2642130c0865ef2fb1e2cf0f91aa8885bd2d2d218376e1c6fbffd360f3cf080ca95445e9b366d78e0810778fbedb719376e1c696969f6252261e17bf750c112f901f1789ccb2ebb8c75ebd63169d224dab56b675f221269eddab563d2a449bcf5d65b5c76d965fad4a18491efdd231197089be33cf839d50e4482a65fbf7efced6f7fd3aeeb220759be7c3937dc70038b162db2239120aac179c0b3af8f3248c48f213bd0270925e0dab76fcfb469d358b870a1ca9588d1b3674f162e5cc833cf3ca3155d0983527c2e5790988205506c03912068d6ac1913274e64ddba758c1a35ca8e45e420a3478f66fdfaf5dc76db6d346ddad48e458222219d2311970801f2809536144994783cce25975cc29d77dea99bd7458ec2962d5bf8ddef7ec7d4a953a9ababb3639144ca0356d9d06b892a5831e023e0043b10f1db8f7ffc63eebfff7e7af5ea6547227284962e5dcaaf7ffd6bde78e30d3b1249842dc049f8f8889cfd127589b09e042dd989ecd7ac5933eebdf75e962e5daa7225e292debd7bb364c912eeb9e71e5d369420282601e50a1257b000e6d840c42f858585ac59b3861b6eb881582c510bb922d1148fc7b9f1c61b59b3660d858585762ce2a784758d44beb31c8bb35d43224b9e2499ecec6ceeb9e71e2ebbec323b12118f3cf1c413dc78e38d545656da9188976a816c60bb1df82191e5e67360b10d45bc108bc5183366cc818d1245c43f975d76196fbdf516175f7cb1568cc54f8b4950b982c4162c48e0d29d248f76edda317bf66ca64e9d4a7676b61d8b880f5ab56ac5534f3dc5ecd9b3b57796f825a11d43054b222b168b71f9e597b366cd1a860d1b66c7229200c3860d63cd9a355c76d9655acd12af25b46324fa6f771ce72394c7db8148431c7becb13cf4d0438c1e3dda8e4424209e79e6197ef5ab5fb17d7bc2aee248746d05da90a04f1042e257b0ea80976c28d21003070e64d5aa552a57220177d14517515151c1c08103ed48a4a15e2281e50a125fb0005eb481c8d168d4a81177dc7107f3e7cfa76ddbb6762c2201d4b66d5be6cf9fcf9ffffc671a356a64c722476bb60dfc96e84b84004d80cfbefa2a7254ba74e9c2d4a953e9d9b3a71d8948482c5bb68c4b2eb984b7df7edb8e448ec417c071c09776e0a720ac607d8956b1e428c56231c68d1bc78a152b54ae4442ee473ffa112b57ae64dcb871ba015e1ae245125cae2018050b609a0d447e484646068f3efa2893264da249132d808a444193264d9834691253a64c212323c38e450e47203a45507e44c8003e059ad981c8b7c9c9c961faf4e974efdedd8e44242256ac58c1f9e79fcfa64d9bec48e4bbecc2b93c586d077e0bca0ad6ff02b36c28f26d0a0a0a58be7cb9ca9548c4f5e8d183e5cb97535050604722df651601285700293648a01ae0621b8aec178fc7b9f9e69b9932658a2e098a24898c8c0c2ebdf452f6eedd4b6969a91d8b58bf0702f12989a05c220448c7b94c98690722cd9b37e7f1c71f67f8f0e17624224962e6cc995c71c515ecdcb9d38e440076e06c5cbec70e1221289708c1f90d99694391d34f3f9dd75f7f5de54a24c98d18318237de7883d34f3fdd8e44c0e91081285710ac820501b9f35f8263f0e0c12c5ebc98ce9d3bdb918824a1ce9d3bb378f162060f1e6c472281ea10412b58f380cf6d28c9e9aaabae62ce9c396466eaaab1887c2d3333933973e63076ec583b92e4f539f0b20d13294837b903d4029d017d3c2c89c56231264e9cc85ffef217e2f1a0fd0c202241108fc7193e7c38a9a9a92c58b0c08e25f93c05ccb0612205ad608173fdf4521b4a72484f4fe7f1c71fe7da6bafb52311916f183060001d3b76e4dffffe37b5b5b5762cc9e366e05d1b2652903e45b85f1af001ce270124896465653163c60cfaf7ef6f472222dfebb5d75e63e4c891545555d99144df27405b609f1d245210afbfec031eb3a144db29a79c42595999ca95881c95010306505656c629a79c6247127d8f12b07205c15cc102e808bc634389a6eeddbbf3d24b2fd1aa552b3b121139229f7df619858585ac5cb9d28e24ba3a12b0cb8310cc152c800dc07c1b4af4f4e9d387f9f3e7ab5c89882b5ab56ac52bafbcc259679d6547124daf10c07205c12d5800936d20d13268d0204a4a4a68debcb91d89881cb5162d5a505252c2a04183ec48a227b05d21a89708011a031f012ded40c2afa8a888e9d3a7d3b871633b1211714575753523478ea4b8b8d88e241aaa801309c8c39dad20af6055034fd850c2efbcf3ce63d6ac592a5722e2a9c68d1bf3af7ffd8b912347da9144c33f0968b98260172c8049369070bbe4924b78f6d967494b4bb3231111d7a5a5a5f1dc73cf3166cc183b92f00b7447087ac15a0b2cb6a184d3f8f1e379e28927484909e2feb62212552929293cf9e4938c1b37ce8e24bcca80376d18246178a7ab0386db50c265fcf8f13cfcf0c3c46241beed4f44a22a168b71eeb9e7b265cb1656ac5861c7123e1380721b064918deed9a025b003df137a42ebdf452fef9cf7faa5c8948c2d5d7d773d965973175ea543b92f0d809b401beb0832009fa2542707e039fb2a184c379e79dc7638f3da672252281108bc578fcf1c775e37bb84d25e0e50ac2b18205d003586e4309b6a2a22266cd9aa51bda452470f6eddbc7b9e79eab2d1cc2a90710f8adfac352b0004a81be3694601a34681073e6ccd1560c221258d5d5d5141515b160c1023b92e02a05fad93088c2708970bfbb6d20c1d4a74f1f66cf9ead72252281d6b8716366cf9eadc7ea844b68ba409856b0528075380f759480eadebd3bf3e7cfd7e36f44243476ecd8c1d9679fad074407df3bc06940ad1d04519856b06a817b6d28c171ca29a7f0d24b2fa95c8948a8346fde9c975e7a89934f3ed98e2458ee2524e50ac2b58205d004781fc8b20349ac962d5bb278f1623a77ee6c472222a1b07efd7afaf6ed4b5555951d49e25502ed802fed20a8c2b48205ce6fec833694c44a4f4f67e6cc992a5722126a5dba7461c68c19a4a7a7db9124de0384a85c41f80a1638bfc97b6c2889118bc59832650afdfbf7b7231191d01930600053a64cd1de7dc1b207e7bd3f54c2f0a81ceb0ba03dce3e18926013274ee4da6bafb5b188486875edda95783ccefcf9f3ed4812e351e0191b065d180b16c00640efea0976d55557f197bffcc5c62222a13770e040de7fff7dcacb03fdb8bb647129b0cd864117e635d017819fd950fc3178f060e6cc99436a6aaa1d898844424d4d0d43870ee5e5975fb623f1cf8bc0b9360c833017ac81c0021b8af74e3ffd74162f5e4c66a69ebf2d22d1b673e74efaf4e9c39b6fbe6947e28f81c06b360c833017ac18f006d0d30ec43bcd9b37e7f5d75fd72706452469bcfdf6dbf4ead58b1d3b76d891786b19d00ba8b7833008e3a708f7ab07eeb2a178271e8ff3f8e38fab5c894852e9dcb9338f3df618f17898df3243e9ff12d27205e1bdc97dbf75c079c0f17620eebbf9e69bb9e69a6b6c2c221279a79e7a2a7bf6ec61d1a2457624dea8007e43880b56982f11ee37029861437157414101c5c5c5da1b464492565d5d1d43870ea5a4a4c48ec47d238059360c9328bc5bea5e2c8fe5e4e4b07cf9725ab66c6947222249a5b2b2921ffde8476cdab4c98ec43da1bef76abf285c50ae0726d850dc919191c1f4e9d355ae444480acac2c5e78e105323232ec48dc338190972b8846c10298032cb1a1344c2c16e3c1071fa47bf7ee76242292b47af4e8c1030f3ca05b26bcb11828b6611885fd26f7836d062eb7a11cbd71e3c631618216074544aceeddbbf3e1871fb262c50a3b9286190bbc67c3308a52fd8ee16c3c3ac0e47214ba74e9c28a152b68d2a4891d898808f0e5975fd2bd7b77de7efb6d3b92a3f32a703611b83c08d1b94408ce1fc82d369423d7a85123a64e9daa722522f23d9a3469c2d4a953494b4bb323393ab710917205d1ba4408ce65c27ce0143b90c33771e244468d1a6563111131dab469434a4a0aafbcf28a1dc991990bfcc9866116a54b84fbf54637bc1fb5810307327ffe7cddbc29227298eaebeb19346810afbd16ca47e605456fe0751b865954df4567033fb5a17cbf638f3d9655ab56d1b66d5b3b121191eff1c1071f909b9bcbf6eddbed487ed86ce0e7360cbb28dd8375b0485dc7f5432c16e3ef7fffbbca9588c85168dbb62d7ffffbdfb5fa7fe4227bff74d4eec1da6f2bd00ed0064e87e9f2cb2fe7f7bfffbd8d4544e4309d79e699bcfbeebb545454d8917cb729c0c3368c822857edd6c0dbc0317620876ad7ae1d6bd6ace19863f45b2522d210bb76ede2cc33cfe4fdf7dfb723f9a65d4027e0133b8882a85e220467152b529f48f0422c16e3a1871e52b9121171c131c71cc3430f3da44b8587e776225aae20da2b5800e9c09bc0c976208e3163c63075ea541b8b8848038c193386a79f7edac6f2b5778133803d761015512f58002381e93614c8cecee6adb7de223b3bdb8e4444a401b66ddbc669a79dc6b66ddbec481c238199368c92285f22dc6f2630df8602f7dc738fca95888807b2b3b3f9cb5ffe626371bc02ccb261d424c30a16402eb092e4289487a5b0b090e2e2483cb05c4424b00a0b0b993b77ae8d93591d9007acb683a849968205f010f04b1b26a366cd9ab166cd1adab76f6f472222e2a24d9b36d1b56b5776efde6d47c9ea21e01a1b465154f7c1fa36af03ff0534b6836473d75d773174e8501b8b8888cb5ab468414646062fbdf4921d25a3edc079c097761045c9b482057023708f0d9349af5ebd58b264893e422c22e293baba3ace3aeb2cde78e30d3b4a3637027fb5615425dbbb6c239cebbe9ded2019c4e371162f5e4caf5ebdec4844443cb474e952faf6ed4b5d5d9d1d258bf54057609f1d4455b2ddf4bd17b8ce86c9e2924b2e51b912114980d9cc9f91000011ac49444154debd7b3366cc181b27935f9344e50a926f056bbfc781cb6d1865cd9a3563fdfaf5b469d3c68e4444c4071f7df4115dba74e18b2fbeb0a3a87b1cb8d28651974c37b91f6c213016686a075175cb2db7f0d39ffed4c62222e293cccc4c6a6b6b993f3fa9b666fc0c3817f85f3b88ba645dc102b81878ca8651d4be7d7bd6ad5b47e3c649ff014a119184aaaeaee6d4534f65f3e6cd7614551703cfd8301924db3d58077b06f88f0da3e8aebbee52b912110980c68d1b73e79d77da38aafe0d4cb361b248e6152c8076380f838eeca5c27efdfab170e1421b8b884802f5ebd78fd2d2521b47c96e9c8739bf6f07c9229957b0c0f983bfd98651118fc7f9eb5f9366cb111191d0f8dbdffe463c1ee9b7e09b49e272052a58000f024b6c1805975c72093d7bf6b4b188882458cf9e3da3bc6dc3629c47e224b564bf44b8df19380f834eb383b04a4b4b63ddba759c7cf2c97624222201f0eebbef72da69a7b16f5fa4b687da077407d6da41b2d10a96632df0671b86d915575ca17225ff7f7bf71e6c57599f71fcfb3ba146724a2c262424670814122e8922c4aa494860a0847231de30498136023102052a369dce54d45a69a76051a79db1d6a230ea388a8858bc404144c7c434d670138284480d253926260a81000172defeb176cc3e6f2e27e79c7d5b7b7f3f3367cee67d16fcc1c05a4f7e6bed77496a61471d75148b16b5dd968cff88e50a7082556d24c514ebb83c289b912347b266cd1a264d9a944792a416b26edd3a8e3efa685e7ae9a53c2aa3d5c074607b1e74222758bb6c07de0b94fe45518b172fb65c4952091c7ef8e12c5ebc385f2ea33e8a6ba8e5aac209d6eeae013e942f96c581071ec8dab56b7d258e2495c4860d1b983c79322fbc50eacdceaf013e922f76322758bbfb18f0937cb12c2ebdf452cb952495c8c48913b9e4924bf2e532594951b054c509d69e4d061ea0641b90767777f3c4134f306edcb83c9224b5b04d9b3671e4914796f145d0cf012700bfc8834ee7046bcfd60257e68badee8a2baeb05c4952098d1b378ecb2fbf3c5f2e832bb15ced9113acbd0be06bc0bbf3a0158d1a358a75ebd63176ecd83c922495c0e6cd9b99346952999ec5ba055808a43c9013ac7d49c025c0fa3c68458b162db25c4952898d1d3bb64cfb623d055c8ae56aaf9c600dec54e01e5af8dfd588112378f4d1479932654a1e49924ae4f1c71fe7d8638fa5afafa5770c4ac069c00fb27555718235b07b818fe78bad64debc79962b496a0353a64c61debc79f972abb90ecbd5805a762ad3625e45f1f2cae979d00a962d5bc649279d942f4b924a68d9b265cc9933275f6e15ab8059405b6c3d5f4f16acfd770cc5ab740ecc83669a3163062b56acc8972549253663c60c56ae5c992f37dbf3148386c7f240bbf316e1fe7b0cf8cb7cb1d9962e5d9a2f49924aae45cfedefc772b5df9c600d4e009f072eca836638eaa8a358b3660d5d5df664496a277d7d7d4c993285279e78228f9ae5468a770dfaadc1fde4957970127039705f1e34c355575d65b992a436d4d5d5c555575d952f37cb2a8a6b9fe56a109c600dcd1114ffc1bd365b6f98d1a347d3dbdbcba851a3f24892d406b66ddbc6c48913d9ba756b1e35d216e08dc0ba3cd0be39fe189a5f02e7d1c4367ffef9e75bae24a98d75777773de79e7e5cb8dd44771adb35c0d81056be8ee02aece171b65c99225f99224a9cd34f95c7f357077bea8fde32dc2e109e01bc03bf2a09ea64f9fceaa55abf26549521b9a3e7d3af7df7f7fbe5c6fb701e7d2c43b3565e7046b7812f01e604d1ed45393ff4423496aa0269cf31f032ec472352c4eb06a632af013a03b0f6aadbbbb9bdede5e0e3ae8a03c9224b5a1ad5bb73271e244b66ddb9647f5b00d7833b03a0f34384eb06a63350dda1b6bc18205962b49ea20a3478f66fefcf9f972bd5c84e5aa262c58b5730bf0897cb1d69a302a9624355983cefdd7535ccb5403de22acad0380db81b3f2a016a64d9bc6c30f3f9c2f4b923ac0b469d358bdba6ec3a53b80b701afe48186c609566dbd022c041ecc835ab8f8e28bf32549528758bc7871be542b0f505cbb2c5735e404ab3e7a809595df35d1d5d5c5934f3e494f4fcdfe9192a41259bf7e3d93264da2afaf2f8f86633df096ca6fd59013acfa580f9c033c970743356bd62ccb952475b09e9e1e66ce9c992f0fc7b3c0d958aeeac282553f0f02f3811d7930140b172ecc9724491da686d7821d14d7a887f240b5e12dc2fa7b1ff0d97c7130468c18c1534f3dc5a1871e9a4792a40ed2dbdbcb61871dc68e1dc3feb3fbfb801bf245d58e13acfafb0fe0ba7c7130e6cc9963b992243161c20466cf9e9d2f0fd6b558aeeace82d5181f04be962feeaf050b16e44b92a40e35cc6bc2cd142f71569d798bb0715e0ddc03ccca837d39e08003d8b06103871c72481e49923ad0a64d9be8e9e9e1955706bdabc272e074e0c53c50ed39c16a9c1781b7036bf3605f4e39e514cb9524e977c68d1bc7c9279f9c2f0fe471e01d58ae1ac682d5589b297679ff551eeccd3047c192a43634c86bc3af28b663d89c07aa1f6f1136c734e087c0983ca8d6d5d5c5860d1b183f7e7c1e49923ad8c68d1b993871e2fe6c3aba05380578240f545f4eb09ae311e00c606b1e543bf1c4132d5792a4dd8c1f3f9e134e38215fce3d4371adb15c358105ab79eea3b85df87c1eec74d659757967b424a90d0c708dd846715bf0be3c506358b09aebc7146f2fdf9e0700679e7966be244912b0cf6bc4768a6bcb8ff3408de33358ade11ce09bc0013b170e3ef860366fde4c57971d5892b4bb1d3b763076ec589e7efae9eae59729be2df8ddea45359e57efd6f01de07ce0774f2bce9d3bd7722549daab1123463077eedceaa53e8a6b89e5aa0578056f1db70017edfc8b01eead4b92945f2b2e04be5ebda0e6f11661ebb9acababebdfd6af5feffb072549fbd4dbdb4b4f4f0f29a5cb807fcf73358f13acd6f399a953a77ed47225491ac8840913983a75eadf61b96a394eb05a544a6929707dbe2e495295a511f1c97c51cd67c16a6129a54b81cfe4eb92a48e9780cb22e2b379a0d660c16a7129a545c04d783b579254e8032e8c882fe5815a8705ab04524aef06be42d53e5992a48ef432705e44dc9a076a2d16ac9248299d03dc0a8ccc33495247d80ebc2b22dce7aa042c582592523a0db81de8ce3349525bdb06bc2d22be9f076a4d16ac924929cd02ee0046e79924a92d3d039c1d11be5bb0442c582594529a0edc058cc93349525bd9029c1111f7e5815a9b05aba4524aaf03ee06dc915492dad3af80d323e2913c50ebf3abff2515110f037380b57926492abdc7813996abf2b260955844ac056602cbf34c92545acb81999573bc4aca82557211b119381db839cf2449a5f3558adb825bf240e562c16a0311f122703e706d9e49924ae39f800b2ae774959c0fb9b79994d2128af7178ec83349524bda41f15ec11bf240e565c16a4329a53f01be0efc7e9e49925acab3c0fc88f8af3c50b959b0da544ae90dc077809e3c9324b584a7807322e2a13c50f9f90c569b8a880781b7000fe69924a9e91e006658aeda9705ab8d45c47a8abdb2eecc334952d3dc019c5c3947ab4d59b0da5c443c0bcc03aecf334952c3fd33c54b9b9fcd03b5179fc1ea2029a5f9c04d40779e4992eaea39e0a288f87a1ea83d59b03a4c4a692a701b70749e4992ea620df0ce88589d076a5fde22ec3095ffc1df0c7c33cf244935771bf026cb55e7b16075a08878063817f820d097c592a4e1eb03fe16383722b6e6a1da9fb7083b5c4a692ef015604c9e499286640bf0a711f1bd3c50e7b0608994d2e1c0adc01bf34c923428ab28a656ebf2409dc55b84a27222984df10d4349d2d0dc08ccb65c092c58aa88e2eded8b8125c00b592c49dabbe729ce9defad9c4b256f116a7729a563812f03d3f34c92d4cf2ae08288782c0fd4d99c60693711f1736026701d90b25892549c1baf056659aeb4274eb0b44f29a553812f013d7926491dea29e0cf23e2077920ede4044bfb1411f702c703bede4192e016e078cb950662c1d28022e237c002e022605b164b5227788ee21cb830227e9b8752ce5b841a9494d2648a07e0df9c6792d4a656027f16116bf340da1b27581a94ca096636700dbe6647527beba338d7cdb15c69b09c6069c8524a3381cf03c7e5992495dca3c0e288589107d2fe7082a521ab9c784e04fe1e78398b25a98c5e063e0a9c68b9d27038c1524da494a6019f0366e4992495c40a6049443c9207d26039c1524d544e48b3812b29be6d234965f11c7005c57b042d57aa092758aab994d224e033c0d97926492de63bc06511f17f79200d87132cd55c443c09bc15380ff875164b522bf835c5396a9ee54af560c1525d44448a88af527cc3f08b792e494df405e0b888f86a44f8be55d585b708d51029a533807f058ec933496a90c7802b23e2ee3c906acd09961a2222eea278a7e1078067b25892eae9698a73cfeb2d576a1427586ab894d221c0c780f761c997543f7dc067818f44c4e63c94eac982a5a649291d0f7c0a382dcf246998ee013e10113fcb03a9112c586aaa9452006f073e011c99c5923458bf009602b7fb00bb9ac982a59690521a09bc1ff8107050164bd2409e05fe01f89788d89e8752a359b0d452524a87529c242fc6ff3e250d2c0137025747c4c63c949ac50b985a524ae904e01a8a0d4b25694fbe0d7c38221ec803a9d92c586a6929a5b75014adb97926a963dd45f1cdc0957920b50a0b964a21a53487a2689d9267923ac60f2926563fca03a9d558b0541a956f1c9e4651b46666b1a4f6b502f830f07dbf19a8b2b060a9742a45eb4c8aa2f5c62c96d43e7e0a7c04b8d362a5b2b160a9b42a45eb6d1445ebf5592ca9bc1ea22856ee65a5d2b260a9f4524a5dc0b9c0df007f94c592cae3a7c0c7815b23a22f0fa532b160a96d54265a7380bf06e665b1a4d6f52de07ae0474eacd42e2c586a4b29a56381bf02160123b35852f36d07be007c2a227e9e8752d959b0d4d6524ae381bf002e07c664b1a4c6db027c1af874446cca43a95d58b0d411524aa380f7504cb52667b1a4fa5b0b7c12f842443c9f8752bbb160a9a3a49446507cf370297052164baabde514cf577d2b2276e4a1d4ae2c58ea5829a5138125c005c0e82c9634745b812f033744c4fd792875020b963a5e4aa91b984f51b66665b1a4fdb71cb801b8c5db80ea74162ca94a4a691af05e8a6f1fbe368b25ed6e0bf045e07311b13a0fa54e65c192f620a5f46ae09d1453ad53b358127c9f625a755b446ccf43a9d359b0a401a49426534cb52e04c6f74fa58eb211b809f87c44accd4349bb58b0a4fd9452fa3d8a69d602e05dc0c1fd8f90dad26f816f005f03ee8d8897b35cd21e58b0a4214829bd0af8636021f00ee035fd8f904aed19e0368a52754f44bc94e5920660c1928629a53412388362b2f576e0a0fe4748a5f02cf09fc0cdc0dd3e57250d8f054baaa1cac3f167524cb6e601ddfd8f905aca36e0768a49d59d11f162964b1a220b96542795d7f39c0dbc95a274f980bc5ac146e04ee0dbc077ddaf4aaa0f0b96d40029a52ee00dc059959f99c0887e0749f5b1035801dc51f9793022fafa1f22a9d62c585213a494fe00984b31d93a0b98d0ff0869587ad955a8be17114f67b9a43ab360494d96520ae078764db7660107f43b48dab757285e537307c5edbf872222f53f44522359b0a41693527a0d300738a9f2f326e0d5fd0e52a77b11f81f8a52b51cf851443cd3ff1049cd64c1925a5c65cfade9ec2a5cb38143fa1da476b7895d656a39709f7b5349adcd8225954ce596e2647615ae9380e3fa1da4b27b945d656a19f00b6ff949e562c192da404a690c30033801783dc5335dc7005dd5c7a9e5f4018f010f013f031e00fe3b22b6f43b4a52e958b0a43695523a9062b2753cbb4ad71bf0f662b3fc1a7890a24ced2c548f46c40bfd8e92d4162c58528749298da77fe97a1d700430a6ea300ddd16e097c0c3ec2a520f45c4c6ea8324b5370b962400524aa381c329cad611c01f567d3e02381801fc96a240edfcf9dfaacfeb22626b7198a44e66c192b45f2a9ba35617b0c381b1959f31559f47177f47e96c0536577eb6547d5e4755a1723b0449fbc38225a9a62adb4abc96dd8bd7cecf6328f6f51a09bcaaea77f5e7bdad016c075eaafa5dfd796f6b2fb2ab345597a79d9f7fe3b60792244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992a446fa7f23042de550f55d460000000049454e44ae426082, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(227, 'hieu nguyen', 'nguyenkhachieu5', '$pbkdf2-sha256$29000$VkppTWmNcU7pfU.pFSIkxA$Aupr.hZ0lFjcVxOVVIHvTu8nxD4njZpq5TcsGT5aZ2Q', 'hieuab3Dc@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-09 08:00:34', 0, 0, 0x89504e470d0a1a0a0000000d4948445200000258000002580806000000be6698dc000000097048597300000b1300000b1301009a9c180000200049444154785eecdd797815f5ddffffe7394908010c4882220a04657123046841089b1612425b0117505c51b8dbaab57ad7ebf7add75db1155bf5fbb3dafedc5a41d42a2a2e2c959648505048006509011414055c10954436bd0364f9fd3182f0760332336766ceeb715d7385bedea7970a4cce2b9f99f319101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111f97e311b8888345023200bc83ee8ebc1bfce021a03e95fbd76ffd7837ffd6d59231c7bbf3af67ccbafbf2bab062a816d077d3df8d7955fbd5644c4152a582272b85a0039071ded80561c5aa2b2816308a75d7c5dbcf697aecf80f7814d071ddb1111f9012a5822b25f268716a80ee67fb740c029589b0e3a369affbd1311497a2a5822c925061c0fe4025dbffa7a064e996a79d0ebe4e855e194aeb54005b0faabaf9f00f507bd4e44224c054b24ba3280d339b44ce5e25cd613ff7d8653b4f61fab813781ff3df84522120d2a5822d19005f401f2f8ba4c7506e207bf4802a70e789baf0b5739b018e7fe2f110931152c91f089019d80fc838e530f798584dd3aa0f4ab6311b0015d5e140915152c91e04b077a7068a1d265bee4f2195f17ae526005cef6132212502a5822c1d31c18c0d765eac738254b64bf3dc01b7c5db85e03761cf20a114928152c91c48b01dd80a2af8ebe40ca21af10f97e3540193007280656a14b8a2209a582259218c7024380a15f1d271c3a1669908f718ad61c601ef0f9a16311f19a0a96883fe2389ff0dbbf4a75165aa5127fd4024b70cad61c9c4f2ad61df20a11719d0a9688779a00c3809f0385381b7c8a24da27c04bc08bc07f802f0f1d8b881b54b044dc958173c96f344eb16a72e8582450bec0295acfe2ac6e551f3a1691a3a58225d270e9382b54a380e140b343c722a1b00bf817300d988bb681106910152c91a3d308188cb3523502e741c92251b1039889b3b2350fd87be858447e880a96c8e14b03cec159a91a89f3494091a8fb1c988153b65e01f61d3a16916fa38225f2c33a01e3802b81e30e1d8924954f80c780c9388fef1191efa08225f2ed1a03e701e38141878e4404980f4cc259ddd2cdf122860a96c8a1cec0295597012dcd4c44bea90af8274ed97ad3cc4492960a960834c5b9af6a3cd0c7cc44e4f095e114ade770b68010495a2a5892cc7ae094aa31e85380226eda093c8553b6569899888844500acebd55a5380fc3d5a14387b74729cea76ef56828492a5ac19264d104e75380ff0d9c72e848447cb001b817e753887a3c8f449e0a9644ddf1c0b5c0354096998988ff2a8107810770b67d108924152c89aad37056ab2ec379948d8804cb1e9c4f1fde03ac333391d053c19228890103809b809f99998804d76ce06ee0359cfbb644424f054ba2200e9c0ffc1fa0a7998948782c07ee025e00eacc4c44447c12c379d07205dffce4920e1d3ac27bacc239b7b5082022e2a318300c58c637bf31ebd0a1233ac7329c735d454b42477f69254c62c04f8089c059662622d1b5189800bc8c53bc44024f054bc262004eb11a60072292345e056e0116da8148d0a86049d09d8553ac06db818824ad129ca2b5d40e448242054b82aa3b4eb1faa91d88887ce5df38456ba51d88249a0a96044d6be04fc058f4f753447e583df028f03fc056331349183d7c5382221d6783d0e7702e0baa5c89c8e188e1ac78ff0267efac6540ed21af104900bd8949a2eddfcbea6ee0643313113952ef01bf0566a14f1c4a02a9604922e5027f05ceb6031191067a05b801586d07227e88db40c407ad80bfe3dc98aa7225225e380728071ec2f99e23e22bdd83257e6a045c8ff39cb17cb4822a22de8a013f02fe0bd803ac40f767894ff406277e2900ee033adb8188884fde06aec3d9474bc453ba44285ecb02fe09bc84ca9588245667602ef038cef72611cfe812a17825065c0ccc06fa989988482275c3d96bef4360ad9989b8429708c50bed706e2c1d6607222201f36fe01ae07d3b106908ad60899b5270ee6f98019c6166222241d419180fec0296a3bdb3c4255ac112b79c014cc6d9855d44248c16e3942d5d369406d30a9634543a30017812686f66222261d216a760a5e0942d6de920474d2b58d2107d7156ad4eb3031191907b0b180794d981c8e1d00a961c8d34e08f384fb03fcecc4444a2a015ce270dd38045380f9216396c5ac19223d511980af4b2031191887a1db804d8600722df451b8dcae18ae1fc34578eca958824975e38dffbc6a28509394cfa8b2287a325f00fe0023b10114932cf01bf04aaec40e4602a58f243ce069e004eb403119124f521703930df0e44f6d34deef25d1a017fc659b9ca3433119164968953b03280d7d0760ef22db48225dfe6549c1bd97bd88188881c62053006586f0792dc7493bb1c2c86b3c9de0a54ae44440e470f6025ce9e595ab49003f49741f6cb001ec0f9948c88881cb929c0b540b51d48f251c112801ce005b46a2522d250cb81f381cd7620c9459708a500e71b82ca958848c3f5c4f99e3ac40e24b9e85384c92b0edc8cb3a4ddc4cc4444e4e835c1d9f97d1f506a6692247489303935071e0786db818888b86a267005b0d30e24da54b092cfe9c00ca0b31d88888827de0646026fda814497eec14a2e17e23cb454e54a44c43f9d71bef75e6807125dba072b39a402ff17b8176787761111f157239c82d50ce7113b75878e256a748930fa8e019e0586da81888824c41c6034b0cb0e243a54b0a2ed246036d0cd0e444424a156013f053eb203890615ace8ea06fc1b38d10e444424103ec22959abec40c24f37b947d35060112a572222417622cef7ea423b90f0d34deed1f35fc054a0b11d888848e034022e06b6e2ec002f11a182151d71e00ee0ceaf7e2d2222e110077e8ef383f17ca0fed0b18491eec18a86c6383bb38fb2031111099569c09540b5c9256454b0c22f1b9805f4b503111109a5526004b0cd0e243c54b0c2ad23ce7e2a1ded404444426d0350f4d557092115acf03a1398071c6f07222212095b81c1c05a3b90e0d3cdd0e1d4135880ca95884894b5065e057ad881049f0a56f8e403af005976202222919385f3c942dd671b322a58e1f213602e906907222212599938dffbcfb103092e15acf0f829cea36f9ad8818888445e53e03f38ef0512022a58e17021301348b7031111491ae9c00ce0023b90e0d14eeec17739f024fab3121111e7bde00260137a4874a0e94d3bd87e054c46db698888c8d762c048e0136099994940a86005d76f81bfd9504444e42b3f0376018bed40124f052b987e0bdc6d43111111a310d88d4a56e0a86005cfafd0ca9588881cbe0274b9307054b082e50a60920d4544447ec0cf808de8c6f7c050c10a8e0b8127d00ded2222727486036f7e754882e9cd3c187e8ab3cf55aa1d8888881c811a6004cec6d492402a5889f7139c13419b888a88881bf600c3709e5b2b09a2829558f938cf97d2e36f4444c44d5fe0dcfc5e6607e20f15acc4e981f384743db8594444bcb003e701d12bec40bca782951867020b802c938b8888b8a9121808acb503f1960a96ff3a020b81d676202222e281ad407f60831d887754b0fc958db3db6e473b101111f1d006a00fb0cd0ec41b711b88671a03b350b9121111ff75c4d90ea8b11d883754b0fc11071e07fada818888884ff281c7d07bbf2fb4b1a53ffe0c8cb2a148326ad1a20539393974e8d081934e3a89ecec6cb2b2b20e7ccdcaca22333393468d1a919e9e7ee068d4a811007bf7ee65cf9e3d078ebd7bf7b273e74e2a2b2ba9acac64dbb66d07be7ef8e1876cdcb8918d1b37b263c70ef36f22929446e33c52e7663b1077e91e2ceffd17f00f1b8a44593c1ea743870ee4e6e6929b9b4bd7ae5d39f9e493e9d0a1032d5ab4b02ff7c5f6eddbd9b87123efbdf71eab57afa6a2a2828a8a0a366edc485d5d9d7db948d4fd177af6ada754b0bc3514988d9ef92811168bc568dfbe3df9f9f9f4eddb971e3d7ad0b56b579a366d6a5f1a485f7cf105ab57af66c58a15949595515a5acae6cd9ba9afafb72f1589925a9cc7b4bd6407e20e152cef74031601cdec4024cc62b118a79e7a2a43860ca15fbf7ee4e7e7d3a64d1bfbb250dbb2650ba5a5a52c5ab488929212d6ad5ba7c22551b40b67fb865576200da782e58d938025c089762012469999999c73ce391415153174e850dab56b675f12699b376fa6b8b898e2e2625e7ef96576edda655f2212561f01bdbffa2a2e52c172df31381b8976b3039130c9caca62e4c8918c1e3d9a418306919aaacfc400d4d4d4b060c102a64d9bc68c1933a8acacb42f11099b726000ce8a96b84405cb5da9c08b38f75e89844e8b162d18316204a3478f66f0e0c12a553fa0a6a68679f3e6316dda3466ce9cc9f6eddbed4b44c2620e702e5063072241703750af4347988e582c567ff6d967d74f9d3ab5bebababa5e8e4e757575fdd4a953eb070d1a541f8bc5bef1fbac4347088eff17718d56b0dc330a98664391a06addba35575e7925575f7d351d3bea01036edab0610393274fe6f1c71f67ebd6ad762c1264a380e76c2892286700bbf9e64f033a7404eec8cbcbab7fe28927eaf7eddb671761c465fbf6edab7fe28927eaf3f2f2bef1e7a04347408fddc0e988044073603ddffc4baa4347608e582c565f5858585f5252623b80f8a4a4a4a4bea0a040970f7584e1580f64229240716006dffccba94347208e783c5e7fe18517d6575454d8f77b49908a8a8afa0b2fbcb03e1e8f7fe3cf4b878e001dd3d16d44924037f3cdbf943a7424fc88c562f523468ca85fb56a957d7f9780282f2faf1f3e7cb856b47404f9f81d22095000d4f1cdbf903a7424ec88c562f5454545f5cb962db3efe71250cb962dab2f2a2a52d1d211c4a31618821c152dff1d9d1c6039d0d2e4220973e6996772efbdf73278f0603b921098376f1e37dc70036bd7aeb5239144aa047a029bed40be5fdc06f28332801750b9928068d9b225f7dd771fe5e5e52a57213678f06056ad5ac57df7dd47cb96faf622819185f39ed7d80ee4fba5d840be570cf80730cc0e44fc969292c2af7ef52b66cc98c1c0810389c7f5f352d8c5e3717af5eac5f8f1e3d9bd7b372b56acd043a62508da7c75bc6807f2dd7489f0c88c0326d950c46f679e792693274fa677efde762411b264c912c68f1fcf9a356bec482411c603936d28df4e2b5887ef546026906607227e69dcb831b7de7a2b4f3ef924eddab5b3638998934e3a89f1e3c7939696c6e2c58ba9a9d163e224a106e35c2ed413ce0f8356b00e4f236031d0c30e44fcd2b76f5fa64c9942972e5dec4892c0faf5ebb9eaaaab282b2bb323113f2d07fa027bed400ea515acc3f327e0421b8af8212d2d8d3ffef18f3cfae8a3b46ad5ca8e25496467673376ec5852535359b46811757575f625227e68837325e7653b90436905eb879d8df31749bf57e2bb8e1d3b3275ea547af5ea654792c4962e5dcaa5975eca860d1bec48c40ff5c04f80f976205fd3c78ebe5f4be00954aec467b1588cb163c7525e5eae7225dfd0bb776fcacbcb193b762cb198be3d89ef6238ef8dda4fe47ba8607db718f03070a21d887829232383471e79842953a6d0b469533b1601a069d3a64c993285c99327d3b8b1b62812df9d88b36d911afe77d06fcc771b0b4cb1a18897dab76fcff4e9d3e9d1439fa790c3b77cf972ce3fff7c366fd666dbe2bbb1c063361415acefd2112807b47c20be193264084f3ffd345959597624f2832a2b2bb9e8a28b98376f9e1d89786937d01dd00d81862e117e531a3015952bf1d175d75d477171b1ca951cb5acac2c5e7ae925aebbee3a3b12f15233e049b447e437689b866ffa2370b10d45bc108bc5b8fdf6dbb9e38e3b74b3b234582c1663d8b061a4a6a6b260c1023b16f1ca495f7dd5a70a0fa28275a8bec0a3e8d2a9f8203535957ffce31fdc70c30d7624d22003060ca04d9b36cc993347fb65895ffa0325c0877690ac5424be960eac044eb30311b7656464f0d4534f3162c4083b1271cdcc9933b9f8e28ba9aeaeb623112fbc85733fd61e3b4846ba07eb6b37a372253e68d1a205c5c5c52a57e2b9112346505c5c4cf3e6cded48c40ba701bfb361b2d20a96e30c9cd52bdda4279e3ae18413282e2e263737d78e443cb36ad52a8a8a8af8f8e38fed48c46dfb7056b1d6da41b2d10a96731fda23a85c89c73a75ea44595999ca95f8ae5bb76e949696d2a953273b12715b1a3019dde3ad82055c03f4b6a1889bf2f2f2282d2d252727c78e447cd1a143074a4b4bc9cbcbb32311b79d05fcca86c926d92f11b603de447b5e89873a75ea44696929ad5ab5b22311df7dfae9a7e4e7e7eb41d1e2b5dd38b7dfbc6f07c9229957b062c043a85c89874e38e104e6ce9dab72258171dc71c73177ee5c4e38e1043b127153339cf7d8a45dc849e682751130cc86226ed9ff69415d1694a0e9d0a10373e6ccd1a70bc56bc380d1364c16c9da2cb371f6ebc8b6031137646464505c5ccc800103ec4824305e7df555860e1daa7db2c44b9fe16cdf5069075197ac2b587f41e54a3c929a9aca534f3da57225813770e0409e7aea29525292fe035fe29d5638efb9492719cfaa02e06e1b8ab821168bf18f7ffc833163c6d89148209d76da699c70c209cc9e3ddb8e44dc92079401efd94194255bc16a04bc0864d981881b6ebffd763d5b5042a767cf9ea4a4a4307fbe9ed52b9ee905fc03489a8763265bc1ba1ed0d28278e2d7bffe3577dc71878d454261c08001545656f2faebafdb91881bb2812a60891d445532dde4de0a7807d0c766c47543860ca1b8b898783c596f6b9428a8ababa3b0b09079f3e6d991881bb6039d806d761045c9f46e701b2a57e281f6eddbf3f4d34fab5c49e8c5e3719e79e619dab76f6f47226e6881f35e9c149265052b17e761ce7a071457656464b068d1227af4e8614722a1b57cf972faf5eba7ed1bc40b75380f83aeb083a84986c21103fe4a72fcb78a8f62b1180f3ef8a0ca95444ecf9e3d79f0c10789c592e56770f1511cb8972458e049869bdc4702bfb3a148438d1d3b965b6fbdd5c62291d0bd7b77366fde4c7979b91d89345407a01c5867075112f506998ef330e793ed40a4213a76ec487979394d9bea5196125dbb77efa67bf7ee7a30b478e15d9c8741efb183a888fa65b31b50b91297a5a5a53175ea54952b89bc66cd9af1e4934f9296966647220d750af01b1b4649942f11b6069ec7d95c54c4357ff8c31fb453bb248d934e3a89fafa7a162c586047220d75163005f8c20ea220ca97081f01aeb2a14843e4e7e7f3da6baf694b06492a757575f4efdf9fb2b2323b1269a8478071368c82a816aceec072a2fbdf2709d0b87163cacbcbe9d2a58b1d8944deba75ebe8debdbbb66e10b7d5033d706e7a8f94a85e229c0c74b6a14843dc7aebad9c77de793616490ad9d9d9d4d7d7eb7985e2b6187012f0b41d845d145778ce0216db50a421ba76edca8a152b484d4db52391a4b16fdf3e7af4e8c19a356bec48a4a1ce0296da30cca2782349d26cc32ffe48494961d2a4492a5792f4d2d2d298346912292951bdf8210914b9f7eea815ac01c0101b8a34c42f7ef10b7af7ee6d6391a474d65967f18b5ffcc2c6220d5500f4b7619845e912610c588053b2445c919595c53befbcc3b1c71e6b472249abaaaa8a4e9d3a5155556547220df12a7036ce8defa117a515ac9fa072252efbc31ffea0722562b46cd9923ffce10f361669a881c039360caba8ac60c580329c9be4445c71e69967525e5eaefb4d44be456d6d2dddba7563eddab57624d2108b817c22b08a159515ac2254aec445b1588cbffef5af2a5722df212525857befbd97582c2a3fa74b40f40186da308ca27066c48037809e762072b48a8a8af8cf7ffe63631131860d1bc69c39736c2cd210cb805e847c152b0a056b0430c38622472b168bf1c61b6fd0b3a73abbc80f59b66c19bd7af5a2be3ed4ef85123c238059360c93b05f228c13c1bd3324b1ce3df75c952b91c3f4a31ffd889ffffce7361669a8db08794709fb0ad685c0b33614395af1789c952b57929b9b6b4722f21d56ad5a458f1e3da8ababb323918618053c67c3b008733b8c01ffc786220d71fef9e7ab5c891ca16eddbae9399de285ff87102f0485f65f1c67bf8c053614395ab1588c55ab56d1b56b573b12911f505151415e5e9eeec512b70d045eb36118847905eb261b883444414181ca95c851cacdcd65c8103da94c5c17daf7fab016acd3809fd950a4216eba29b4e7b14820e81c120ffc1c38d5866110d682f5df36106988bcbc3c060f1e6c6311390243860ca15bb76e361669a850bee787b1601d0f5c66439186f8ed6f7f6b2311390a3a97c4039703c7d930e8c27893fb6dc02d3614395aad5bb7e6830f3e203535d58e44e408d5d4d4d0b66d5bb66edd6a47220d711b70ab0d832c6c2b584d806b6d28d210575e79a5ca95884b525353b9e28a2b6c2cd250d7e27480d0085bc1ba1268694391a3158bc518376e9c8d45a401c68d1ba787408bdbb2805035f73015ac14e0461b8a34c4a0418338e594536c2c220dd0b16347060e1c68639186ba11a70b8442980ad6b940471b8a348456af44bca1734b3cd00967db865008d31a6e29d0d7862247ab458b166cddba95f4f4743b129106dab3670fad5bb766fbf6ed7624d210a5403f1b06515856b07aa072252e1b316284ca958847d2d3d3193e7cb88d451a2a1fe86ec3200a4bc11a6f0391861a3d7ab48d44c4453ac7c423a1e80461b844d814f81838c60e448e565656165bb76ed5f60c221eaaa9a9e1f8e38fa7aaaaca8e441a6227d006f8c20e82240c2b58a350b912978d1c3952e54ac463a9a9a98c1c39d2c6220d95095c68c3a00943c10ac552a0848b2e5d88f843e79a7824f0dd20e89708cf00d6d850a421323333a9acacd40a96880ff6eddb47565616bb76edb22391863a13586bc3a008fa0a56e01baa84cf39e79ca37225e293b4b434ce39e71c1b8bb821d09bad05b96035062eb3a148430d1d3ad44622e2219d73e291cb71ba422005b9609d879e3b282e8bc562141515d958443c545454a467138a175a0281fd1445900b56a097fe249c4e3df554dab56b676311f150fbf6ede9d2a58b8d45dc10d8ae10d482d51138db86220d3564c8101b89880f0a0a0a6c24e2867380536c1804412d58816da4126efdfa85e211562291939f9f6f2311b704b23304f1a2781af00170bc1d8834442c16e3c30f3fa44d9b367624221efbe8a38f68dbb62df5f5f57624d2509f006d817d769048415cc13a07952bf140fbf6ed55ae4412e4c4134fd4fd8fe295e309e06d45412c58a36c20e2065da210492c9d83e2a1c07587a015ac4638db3388b8ae6fdfbe3612111fa9608987cec3e9108111b48235186861431137f4e8d1c34622e2a3eeddbbdb48c42dc7023fb1612205ad60e9a9a0e289783c4ed7ae5d6d2c223eeadab52bf178d0de76244202d52182f4373d1d186143113774e8d081a64d9bda58447cd4ac59337272726c2ce29611385d22108254b00a814c1b8ab8213737d7462292003a17c543cd81c0ec681ba48215b84f004874e89bba4830e85c148f05a64b04a5606500c36d28e216dd7f25120c3a17c563c381c6364c84a014aca140331b8ab8e5e4934fb691882480ce45f1d831389d22e18252b00275e7bf444f870e1d6c242209a073517c10884e1184671136013efbeaab88eb5ab468c1e79f7f6e63114990162d5ab063c70e1b8bb8e50be038e04b3bf0531056b086a172251ed2c7c2458245e7a478ac294eb748a82014ac9fdb40c44dba2421122c3a27c5073fb381df125db0e238fb5f8978e6a4934eb291882450dbb66d6d24e2b6a124b8e324f41f0ee401c7db50c44dd9d9d936129104cacacab29188db8e07bad9d04f892e58453610719bbe998b048bce49f149423b860a96449e56b0448245e7a4f824a11d239105eb58a08f0d45dca69f96458245e7a4f8a40fd0c2867e4964c11a4c62fff99224f4cd5c2458744e8a4f5270ba464224b2e02474e94e92476666a68d442481744e8a8f12d6351255b06204e45941127d8d1a35b291882490ce49f1d15012f4d49a4415ac6ec0093614f1427a7aba8d442481744e8a8fda00b936f443a20a56c296ec24f9e89bb948b0e89c149f25a47324aa60e9f2a0f846dfcc458245e7a4f82c219d2311d7259b03953877f78b78aeb6b696783c513f4b8888555757474a8ade02c437354016b0d30ebc9488779d01a85c898888883f5271ba87af1251b0f26d20e2a5bd7bf7da48441268cf9e3d3612f19aefdd43054b224fdfcc458245e7a42480efddc3ef82950efcd886225ed237739160d1392909f063c0d70dd8fc2e583d704a96886ff4cd5c2458744e4a0234c6e920bef1bb60f9be4427a27bb0448245e7a42488af1d44054b226fe74e5f3f992b223f40e7a42488af1dc4cf8215c3e7ff381180caca4a1b894802e99c9404e9878ffb7ffa59b03a01ad6c28e2357d331709169d939220ad808e36f48a9f054bab579210dbb66db391882490ce494920dfba880a96449e7e5a1609169d939240be7511152c893cfdb42c122c2a589240be7511bf0a561670aa0d45fcf0e1871fda484412e8830f3eb091885f4e035adad00b7e15ac3e3610f1cbc68d1b6d242209a4735212cc974ee257c1cab381885f366dda64231149209d939260be7412bf0a56571b88f865fbf6ed6cdfbeddc62292009f7ffe393b76ecb0b1889f7ce9247e15ac5c1b88f8499724448241e7a204802f9dc48f82950174b6a1889fde7bef3d1b894802e85c9400e882f3f0674ff951b04ec79f7f8ec8775abd7ab58d442401742e4a00c471ba89a7fc283ebe2cc5897c9f8a8a0a1b894802e85c9480f0bc9bf851b07cb9994ce4fbe89bba4830e85c9480f0bc9bf851b03c6f89223f64e3c68d7cf1c5173616111feddebd5b5b34485078de4dbc2e5831a09b0d45fc565757a77b3f44126cf5ead5d4d5d5d9582411425fb08e07b26d2892082b56acb09188f868e5ca9536124994e3703a8a67bc2e589e374491c3555656662311f1516969a98d4412c9d38ee275c1f2fc263291c3a56fee2289a5735002c6d38ee275c1f2b41d8a1c89cd9b37b365cb161b8b880f3efae823de7fff7d1b8b2492a71dc5eb8275860d4412a5bebe5e3f418b2448696929f5f5f5361649a4336de026af0b56071b8824d2a2458b6c24223ed00f3712403936709397052b1368694391442a2929b19188f860eedcb9361249b42ce0181bbac5cb8295630391445bb76e9dee0311f1d9e6cd9b59bf7ebd8d458220c7066e51c192a4525f5fcf9c39736c2c221e9a33678eeebf92a0cab1815b54b024e9141717db48443ca4734e022cc7066ef1b260e9067709a4575e79a2521ae50000200049444154859a9a1a1b8b8807f6eddbc72bafbc626391a0f0acab7859b0726c2012043b77ee64c182053616110f2c58b0805dbb76d9582428726ce016152c494ad3a64db391887840e79a045c8e0ddc12b3818b3e075ad8502408b2b2b2d8ba752ba9a9a97624222ea9a9a9e1f8e38fa7aaaaca8e4482e2733cda52caab15ac165f1d2281545959c9bc79f36c2c222e2a292951b992a03b16686e43377855b0726c201234ba7421e22d9d631212393670830a9624ad993367b267cf1e1b8b880bf6ecd9c3ac59b36c2c1244393670830a9624adeddbb7f3c20b2fd858445cf0fcf3cfb37dfb761b8b04518e0ddce055c16a670391209a3c79b28d44c4053ab72444dadbc00d5e15ac56361009a2050b16b061c3061b8b48036cd8b081575f7dd5c62241956d03377855b0b26c201244f5f5f53cf2c82336169106983c79b29e3d2861e249c1f26a1facd7811fdb5024885ab76ecd071f7ca03db1445c50535343dbb66dd9ba75ab1d8904d5eb406f1b3694572b589eb441112f6cddba95679e79c6c62272149e7efa69952b091b4f3a8b572b583b81636c281254797979ac5cb9d2c6227284f2f2f258b56a958d45826c271e6c36eac50a562354ae2464cacbcbb5b3bb4803959494a85c4918650269366c282f0a966e709750bafbeebb6d24224740e7908498ebddc58b82e5c9b54c11afcd9d3b97d5ab57db58440e434545052525253616090bd7bb8b1705cbf51628e287fafa7a264e9c686311390c13274ed4d60c1266ae77172f0a96eb2d50c42f2fbcf002151515361691efb16ad52aa64f9f6e63913071bdbba860891ca4aeae8e091326d85844bec7840913a8ababb3b14898b8de5dbc2858ae2fb389f8e95ffffa17cb972fb7b1887c8b65cb96f1e28b2fda58246c5cef2e5e142cd75ba0889feaebebb9e5965b6c2c22df62c28409baf74aa2c0f5eee245c172bd058af8adb8b858fb6289fc809292128a8b8b6d2c1246ae77172f0a56631b88844d7d7d3d37de7823b5b5b5762422406d6d2d37de78a356af242a5cef2e5e14ac741b8884d19a356b78e8a1876c2c22c0830f3ec8dab56b6d2c1256ae77172f9e453807186a4391306ad9b225efbcf30e2d5bb6b42391a455555545a74e9da8aaaab22391b09a030cb3614368054be47b545555e9867711e3965b6e51b992a871bdbb78b182b508c8b7a14858a5a4a4505a5a4aefdebded4824e92c59b2847efdfae9fe44899a45407f1b3684172b588d6c201266b5b5b58c1b378e9a9a1a3b12492afbf6ed63dcb8712a571245ae77172f0a96ebcb6c2289b666cd1aeebcf34e1b8b24953befbc5337b64b54b9de5dbcb844f81670aa0d45c2ae71e3c6949797d3a54b173b1289bc75ebd6919797c79e3d7bec48240ade024eb7614368054be43055575773d55557e9996b9274eaeaeab8faeaab55ae24ca5cef2e5e142cd7af638a04455959197ffad39f6c2c1269b7df7e3b65656536168912d7bb8b1797083f055ad950242ad2d2d258b46811bd7af5b22391c859ba7429fdfaf5d3873c24ea3e058eb761437851b0760099361489928e1d3b525e5e4ed3a64ded48243276efde4d5e5e1eefbefbae1d8944cd0ea0850d1b429708458ec2860d1bf8f5af7f6d639148b9fefaeb55ae2459b8de5d54b0448ed2638f3dc6a38f3e6a6391489832650a8f3df6988d45a2caf59bdcbdb844588b37c54d247032323258b870213d7bf6b42391d05ab66c19fdfbf7a7babada8e44a2aa0e48b161437851b0fe17686c4391a86adfbe3dcb972f272b2bcb8e4442a7b2b2929e3d7bb279f3663b1289b2ff059ad8b021bc5869da6b039128dbbc7933175f7cb1f6c792d0abababe3a28b2e52b99264e47a77f1a26069273a493a252525fce637bfb1b148a8fce637bf61debc7936164906ae771757af377ee537689b064942afbffe3a6969690c1830c08e4402eff6db6fe7aebbeeb2b148b2f81cb8d7860de145c1ba0e38d68622c960fefcf9b469d34637bd4ba83cfcf0c3fcf6b7bfb5b14832d906fc7f366c085d221471517d7d3dd75c730d3367ceb42391409a316306d75c730df5f5f57624924c5cef2e5e142cd76f141309939a9a1a2ebef8625e7bed353b120994575f7d953163c6505b5b6b4722c9c6f5eee245c172bd058a844d757535c3870fa7a2a2c28e440261d5aa550c1f3e5c7b5d89385cef2e5e142cd75ba048186ddfbe9da14387b271e3463b1249a88d1b37525454c48e1d3bec482459b9de5d54b0443cf4f1c71f535858c8679f7d66472209f1e9a79f525050c0c71f7f6c4722c9ccf5eee245c1727d994d24ccde79e71d0a0a0a54b224e13efdf4530a0b0bd9b061831d89243bd7bb8b1705cbf516281276e5e5e5e4e7e7b369d3263b12f1c5c68d1bc9cfcfa7bcbcdc8e44c483eee245c172bd058a44c13befbc43dfbe7d75e3bbf86ed5aa55e4e7e76be54ae4bbb9de5dbc2858fa488ac877f8f8e38f19306080b67010dfbcfaeaab0c1c3850f75c897c3fd7bb8b1705abd20622f2b51d3b76505858a8cd48c5733366cc60e8d0a1fab4a0c80f73bdbb7851b0b6d940440e555d5dcd85175ec8a44993ec48c4150f3ffc30175e78a1f6b912393cae77172f9e457806f0331b8ac8a1eaeaea983d7b362929297a40b4b86ae2c489dc74d34dd4d5d5d991887cbbe780e5366c082f0a560e30ca8622f2ede6cf9f4f65652543870e25168bd9b1c861abababe3faebafe7aebbeeb22311f97e8f016fd9b0217489502400eebfff7e0a0b0ba9ac74fd3600491295959514141470fffdf7db9188fc30d7bb8b17054bef10224761debc79f4ecd993e5cb5d5da59624b07cf9727af6ecc9cb2fbf6c472272785cef2e5e142cd75ba048b2d8bc7933fdfaf5e3d1471fb523916f3565ca14faf5ebc7e6cd9bed48440e9febddc58b1b3e1ae1c1865d22c924168b71e5955772df7df7d1b469533b1661f7eedd5c7ffdf53cf6d863d4d7d7dbb1881c9946c03e1b368417050b6027708c0d45e4c874ecd891279f7c92debd7bdb9124b1a54b9772c92597f0eebbefda91881cb99d40731b3694179708c183a5369164b461c306faf7efcfc48913f5917ba1aeae8edb6ebb8dfefdfbab5c89b8c793cee2d50ad6ebc08f6d282247af6fdfbe4c9932852e5dbad891248175ebd671f5d557535656664722d230af03ae5f26d00a964848949595919797c7c48913d9b7cfd55b0524c0f6eddbc76db7dd465e5e9eca9588375cff04217857b03cf997154976d5d5d54c9830811e3d7ab064c9123b968859b26409ddbb77e7d65b6f65cf1e7d7648c4239e2c0a7955b03eb38188b867cd9a35f4ebd78f6bafbd96aaaa2a3b9690abaaaae2da6bafa55fbf7eac5dbbd68e45c45da12a58efdb4044dc555b5bcb830f3e48a74e9db8efbefba8adadb52f9190a9adade5befbeea353a74e3cf8e083fa3315f187279bc87955b036d94044bc515555c5f5d75f4fb76edd98376f9e1d4b48949494d0ad5b37aebffe7aad4a8af86b930ddca0822512116bd7aea5a0a08061c386b16cd9323b96805ab66c19c3860da3b0b0509703451263930ddce0d5360d2d80cf6d2822fe88c5629c7beeb9dc76db6de4e6e6dab104c0aa55ab983061022fbef8a276621749ac16c00e1b369457050b9c82d5c28622e29f783cce79e79dc7840913e8dab5ab1d4b025454543071e244a64f9faecd634512ef73a0a50ddde0d52542f068c94d440e5f5d5d1dcf3fff3cddba75a3b0b090929212fb12f149494909858585e4e5e5f1fcf3cfab5c8904c3261bb845054b2409d4d7d73377ee5c0a0a0ac8cbcbe389279ea0a6a6c6be4c5c565353c3134f3c415e5e1e050505cc9d3b579703458265930ddce2e525c27b811b6c2822c1d0ba756baeb8e20ac68d1b47c78e1ded581ae09d77de61f2e4c9fcf39fff64ebd6ad762c22c1712ff0df3674839705eb7ae06f3614916089c5620c1c389071e3c671c10517909e9e6e5f228761cf9e3d3cfffcf34c9a3489d75e7b4d2b5522e1703d709f0ddde065c13a179865431109ae162d5a307cf870468f1ecd902143484d4db52f9183d4d4d4505252c2b469d398356b16dbb76fb72f1191603b1778d1866ef0b260e502ab6c2822e1909595c5881123183d7a3483060d222d2dcdbe2429eddbb78f050b16306dda3466cc98a14d4145c22d17586d43377859b032f1605f0911f1df31c71cc339e79c43515111454545b46bd7cebe24d2366fdecc9c3973282e2ee695575e61d7ae5df62522124e99802727b497050ba0128ff6971091c488c56274e9d285828202f2f3f3c9cfcfe7c4134fb42f0bb58f3efa88d2d2524a4b4b993b772eebd7afd73d5522d1530964dbd02d5e17ac65404f1b8a4874c46231dab56b77a06c75efde9ddcdc5c9a366d6a5f1a48bb77ef66f5ead5ac5cb9f240a97afffdf755a844a26f39f0231bbac5eb82f53870b90d4524dae2f138393939e4e6e6929b9b4bd7ae5d39f9e493e9d0a103c71e7bac7db92f3efffc73366edcc87befbdc7ead5aba9a8a8a0a2a2824d9b3669d34f91e4f43870a50ddde275c1fa2d70b70d452479356fde9c9c9c1c3a74e840dbb66dc9caca222b2b8bececec03bfcecccca451a346a4a7a71f7280b31dc2c1c7debd7bd9b97327959595545656b26ddbb603bffee0830fd8b871239b366d62c70edd122a2287f82d708f0ddde2f567b03db9335f44822f168bd1ac59b303c5293b3bfb905fefffdab265cb03056a7fa98ac7e3a4a4a4108fc789c7e3c4625fff2c188bc50ee4fb5fd3a4491352525268d1a205279d74127bf6eca1aaaaea40d93af8ebc1bfdebd7bb72e058a242f4f3b8ad72b58ad818f6d2822e1979292429b366d0eac46e5e4e41cf2eb366ddad0a85123fb7f0b94bd7bf7b265cb16366dda7460a5ebe05f6fd9b285dada5afb7f139168680d7c6243b7785db06238fff2adec4044c2a179f3e674eddaf5c0fd541d3b762427278776edda457e6fac7dfbf6f1fefbefb369d326366cd870e0beadd5ab57eb92a348b87d0a1c6f4337795db000e6013fb1a188044b6a6a2a1d3b763c50a4f61feddbb7b72f159cbdb1f617aefdc73befbca3152f917098070cb1a19bfc2858f70037da504412eb84134e38b0b542dfbe7dc9cdcda571e3c6f6657204aaababa9a8a8a0acacecc0960f1f7facbb244402e81e9c9bdc3de347c11a0b4cb1a188f82725258533ce38e340a1cacfcf272727c7be4c3cb071e3c6430ad7dab56bb5ca2592786381c76ce8263f0a564f9c0d4745c427b1588cbcbc3c860e1dcac08103e9d3a70f999999f66592003b77ee64f1e2c5bcfaeaab141717535e5eae4f328af8af27b0c2866ef2a3606500bb81b81d88887b8e3df658860c194251511143870ea575ebd6f62512405bb76ea5b8b8983973e6505252c2e79f7f6e5f2222eeaa039a02d576e0263f0a16c05bc0a9361491a3178fc7e9debdfb8107309f75d659c4e3fa3926cceaeaea58bc78f181c2b572e54aed322fe2beb780d36de836bf0ad63460940d45e4c8a4a6a63270e040468d1ac5f0e1c339fe784f3f652c09f6c9279f306bd62c9e7df6595e7df5556a6a6aec4b44e4c84d032eb2a1dbfc2a58bf0726da50447e584a4a0afdfbf767d4a8519c7ffef91c77dc71f62592043efdf4535e78e1059e7df659162e5ca81be5458edeef813fd9d06d7e15ac9f012fda5044be5d3c1e273f3f9f51a34671c10517e87e2a39c4d6ad5b79fef9e799366d1a656565ba8c2872647e06fcdb866ef3ab606501db6c2822873ae38c33b8faeaab19356a14279e78a21d8b7cc3471f7dc4b469d378e4914778f3cd37ed5844be290ba8b2a1dbfc2a58a01bdd45be55d3a64d19356a14e3c78fa74f9f3e762c72d8cacaca98346912cf3df71c5f7cf1851d8b884f37b883bf056b3270b50d4592558f1e3d183f7e3c63c68cd11e55e2aa9d3b773275ea54264f9ecc8a159e6ef52312369381f136f4829f054b3bba4bd2cbcccc64cc98318c1f3f9e1e3d7ad8b188eb56ac58c1a4499378eaa9a7d8b973a71d8b241bcf7770dfcfcf82d519586f43916470ca29a770c30d3770d55557d1a449133b16f1dc975f7ec9942953b8f7de7b79efbdf7ec5824597406deb1a117fc2c5831e013a0951d8844d559679dc54d37ddc4c89123b509a804425d5d1dd3a74fe7eebbef66e9d2a5762c12659f01c703be3c9bcacfeff8f540a90d45a226252585112346b068d122162f5eccf9e79faf722581118fc7b9e0820b58b264090b172e64f8f0e1fafb29c962113e952bf0b760810a96445893264df8e52f7fc95b6fbdc58c1933c8cfcfb72f1109947efdfa3173e64cd6ad5bc72f7ff94b323232ec4b44a2c4d70ee2e72542803e40990d45c2ac69d3a65c77dd75dc74d34d646767dbb148686cdbb68dbbefbe9bfbefbf5fdb3c4814f50196d8d02b7e17ac7460c7575f45422d2323835ffef297fcee77bfd3e36b24523efdf453eeb8e30efefef7bf535d5d6dc72261540d3407f6da8157fc2e58000b817e3614098bf4f474aebefa6afee77ffe87366ddad8b148646cd9b2853ffde94f3cf2c823ecd9b3c78e45c2642130c0865ef2fb1e2cf0f91aa8885bd2d2d218376e1c6fbffd360f3cf080ca95445e9b366d78e0810778fbedb719376e1c696969f6252261e17bf750c112f901f1789ccb2ebb8c75ebd63169d224dab56b675f221269eddab563d2a449bcf5d65b5c76d965fad4a18491efdd231197089be33cf839d50e4482a65fbf7efced6f7fd3aeeb220759be7c3937dc70038b162db2239120aac179c0b3af8f3248c48f213bd0270925e0dab76fcfb469d358b870a1ca9588d1b3674f162e5cc833cf3ca3155d0983527c2e5790988205506c03912068d6ac1913274e64ddba758c1a35ca8e45e420a3478f66fdfaf5dc76db6d346ddad48e458222219d2311970801f2809536144994783cce25975cc29d77dea99bd7458ec2962d5bf8ddef7ec7d4a953a9ababb3639144ca0356d9d06b892a5831e023e0043b10f1db8f7ffc63eebfff7e7af5ea6547227284962e5dcaaf7ffd6bde78e30d3b1249842dc049f8f8889cfd127589b09e042dd989ecd7ac5933eebdf75e962e5daa7225e292debd7bb364c912eeb9e71e5d369420282601e50a1257b000e6d840c42f858585ac59b3861b6eb881582c510bb922d1148fc7b9f1c61b59b3660d858585762ce2a784758d44beb31c8bb35d43224b9e2499ecec6ceeb9e71e2ebbec323b12118f3cf1c413dc78e38d545656da9188976a816c60bb1df82191e5e67360b10d45bc108bc5183366cc818d1245c43f975d76196fbdf516175f7cb1568cc54f8b4950b982c4162c48e0d29d248f76edda317bf66ca64e9d4a7676b61d8b880f5ab56ac5534f3dc5ecd9b3b57796f825a11d43054b222b168b71f9e597b366cd1a860d1b66c7229200c3860d63cd9a355c76d9655acd12af25b46324fa6f771ce72394c7db8148431c7becb13cf4d0438c1e3dda8e4424209e79e6197ef5ab5fb17d7bc2aee248746d05da90a04f1042e257b0ea80976c28d21003070e64d5aa552a57220177d14517515151c1c08103ed48a4a15e2281e50a125fb0005eb481c8d168d4a81177dc7107f3e7cfa76ddbb6762c2201d4b66d5be6cf9fcf9ffffc671a356a64c722476bb60dfc96e84b84004d80cfbefa2a7254ba74e9c2d4a953e9d9b3a71d8948482c5bb68c4b2eb984b7df7edb8e448ec417c071c09776e0a720ac607d8956b1e428c56231c68d1bc78a152b54ae4442ee473ffa112b57ae64dcb871ba015e1ae245125cae2018050b609a0d447e484646068f3efa2893264da249132d808a444193264d9834691253a64c212323c38e450e47203a45507e44c8003e059ad981c8b7c9c9c961faf4e974efdedd8e44242256ac58c1f9e79fcfa64d9bec48e4bbecc2b93c586d077e0bca0ad6ff02b36c28f26d0a0a0a58be7cb9ca9548c4f5e8d183e5cb97535050604722df651601285700293648a01ae0621b8aec178fc7b9f9e69b9932658a2e098a24898c8c0c2ebdf452f6eedd4b6969a91d8b58bf0702f12989a05c220448c7b94c98690722cd9b37e7f1c71f67f8f0e17624224962e6cc995c71c515ecdcb9d38e440076e06c5cbec70e1221289708c1f90d99694391d34f3f9dd75f7f5de54a24c98d18318237de7883d34f3fdd8e44c0e91081285710ac820501b9f35f8263f0e0c12c5ebc98ce9d3bdb918824a1ce9d3bb378f162060f1e6c472281ea10412b58f380cf6d28c9e9aaabae62ce9c396466eaaab1887c2d3333933973e63076ec583b92e4f539f0b20d13294837b903d4029d017d3c2c89c56231264e9cc85ffef217e2f1a0fd0c202241108fc7193e7c38a9a9a92c58b0c08e25f93c05ccb0612205ad608173fdf4521b4a72484f4fe7f1c71fe7da6bafb52311916f183060001d3b76e4dffffe37b5b5b5762cc9e366e05d1b2652903e45b85f1af001ce270124896465653163c60cfaf7ef6f472222dfebb5d75e63e4c891545555d99144df27405b609f1d245210afbfec031eb3a144db29a79c42595999ca95881c95010306505656c629a79c6247127d8f12b07205c15cc102e808bc634389a6eeddbbf3d24b2fd1aa552b3b121139229f7df619858585ac5cb9d28e24ba3a12b0cb8310cc152c800dc07c1b4af4f4e9d387f9f3e7ab5c89882b5ab56ac52bafbcc259679d6547124daf10c07205c12d5800936d20d13268d0204a4a4a68debcb91d89881cb5162d5a505252c2a04183ec48a227b05d21a89708011a031f012ded40c2afa8a888e9d3a7d3b871633b1211714575753523478ea4b8b8d88e241aaa801309c8c39dad20af6055034fd850c2efbcf3ce63d6ac592a5722e2a9c68d1bf3af7ffd8b912347da9144c33f0968b98260172c8049369070bbe4924b78f6d967494b4bb3231111d7a5a5a5f1dc73cf3166cc183b92f00b7447087ac15a0b2cb6a184d3f8f1e379e28927484909e2feb62212552929293cf9e4938c1b37ce8e24bcca80376d18246178a7ab0386db50c265fcf8f13cfcf0c3c46241beed4f44a22a168b71eeb9e7b265cb1656ac5861c7123e1380721b064918deed9a025b003df137a42ebdf452fef9cf7faa5c8948c2d5d7d773d965973175ea543b92f0d809b401beb0832009fa2542707e039fb2a184c379e79dc7638f3da672252281108bc578fcf1c775e37bb84d25e0e50ac2b18205d003586e4309b6a2a22266cd9aa51bda452470f6eddbc7b9e79eab2d1cc2a90710f8adfac352b0004a81be3694601a34681073e6ccd1560c221258d5d5d5141515b160c1023b92e02a05fad93088c2708970bfbb6d20c1d4a74f1f66cf9ead72252281d6b8716366cf9eadc7ea844b68ba409856b0528075380f759480eadebd3bf3e7cfd7e36f44243476ecd8c1d9679fad074407df3bc06940ad1d04519856b06a817b6d28c171ca29a7f0d24b2fa95c8948a8346fde9c975e7a89934f3ed98e2458ee2524e50ac2b58205d004781fc8b20349ac962d5bb278f1623a77ee6c472222a1b07efd7afaf6ed4b5555951d49e25502ed802fed20a8c2b48205ce6fec833694c44a4f4f67e6cc992a5722126a5dba7461c68c19a4a7a7db9124de0384a85c41f80a1638bfc97b6c2889118bc59832650afdfbf7b7231191d01930600053a64cd1de7dc1b207e7bd3f54c2f0a81ceb0ba03dce3e18926013274ee4da6bafb5b188486875edda95783ccefcf9f3ed4812e351e0191b065d180b16c00640efea0976d55557f197bffcc5c62222a13770e040de7fff7dcacb03fdb8bb647129b0cd864117e635d017819fd950fc3178f060e6cc99436a6aaa1d898844424d4d0d43870ee5e5975fb623f1cf8bc0b9360c833017ac81c0021b8af74e3ffd74162f5e4c66a69ebf2d22d1b673e74efaf4e9c39b6fbe6947e28f81c06b360c833017ac18f006d0d30ec43bcd9b37e7f5d75fd72706452469bcfdf6dbf4ead58b1d3b76d891786b19d00ba8b7833008e3a708f7ab07eeb2a178271e8ff3f8e38fab5c894852e9dcb9338f3df618f17898df3243e9ff12d27205e1bdc97dbf75c079c0f17620eebbf9e69bb9e69a6b6c2c221279a79e7a2a7bf6ec61d1a2457624dea8007e43880b56982f11ee37029861437157414101c5c5c5da1b464492565d5d1d43870ea5a4a4c48ec47d238059360c9328bc5bea5e2c8fe5e4e4b07cf9725ab66c6947222249a5b2b2921ffde8476cdab4c98ec43da1bef76abf285c50ae0726d850dc919191c1f4e9d355ae444480acac2c5e78e105323232ec48dc338190972b8846c10298032cb1a1344c2c16e3c1071fa47bf7ee76242292b47af4e8c1030f3ca05b26bcb11828b6611885fd26f7836d062eb7a11cbd71e3c631618216074544aceeddbbf3e1871fb262c50a3b9286190bbc67c3308a52fd8ee16c3c3ac0e47214ba74e9c28a152b68d2a4891d898808f0e5975fd2bd7b77de7efb6d3b92a3f32a703611b83c08d1b94408ce1fc82d369423d7a85123a64e9daa722522f23d9a3469c2d4a953494b4bb323393ab710917205d1ba4408ce65c27ce0143b90c33771e244468d1a6563111131dab469434a4a0aafbcf28a1dc991990bfcc9866116a54b84fbf54637bc1fb5810307327ffe7cddbc29227298eaebeb19346810afbd16ca47e605456fe0751b865954df4567033fb5a17cbf638f3d9655ab56d1b66d5b3b121191eff1c1071f909b9bcbf6eddbed487ed86ce0e7360cbb28dd8375b0485dc7f5432c16e3ef7fffbbca9588c85168dbb62d7ffffbdfb5fa7fe4227bff74d4eec1da6f2bd00ed0064e87e9f2cb2fe7f7bfffbd8d4544e4309d79e699bcfbeebb545454d8917cb729c0c3368c822857edd6c0dbc0317620876ad7ae1d6bd6ace19863f45b2522d210bb76ede2cc33cfe4fdf7dfb723f9a65d4027e0133b8882a85e220467152b529f48f0422c16e3a1871e52b9121171c131c71cc3430f3da44b8587e776225aae20da2b5800e9c09bc0c976208e3163c63075ea541b8b8848038c193386a79f7edac6f2b5778133803d761015512f58002381e93614c8cecee6adb7de223b3bdb8e4444a401b66ddbc669a79dc6b66ddbec481c238199368c92285f22dc6f2630df8602f7dc738fca95888807b2b3b3f9cb5ffe626371bc02ccb261d424c30a16402eb092e4289487a5b0b090e2e2483cb05c4424b00a0b0b993b77ae8d93591d9007acb683a849968205f010f04b1b26a366cd9ab166cd1adab76f6f472222e2a24d9b36d1b56b5776efde6d47c9ea21e01a1b465154f7c1fa36af03ff0534b6836473d75d773174e8501b8b8888cb5ab468414646062fbdf4921d25a3edc079c097761045c9b482057023708f0d9349af5ebd58b264893e422c22e293baba3ace3aeb2cde78e30d3b4a3637027fb5615425dbbb6c239cebbe9ded2019c4e371162f5e4caf5ebdec4844443cb474e952faf6ed4b5d5d9d1d258bf54057609f1d4455b2ddf4bd17b8ce86c9e2924b2e51b912114980d9cc9f91000011ac49444154debd7b3366cc181b27935f9344e50a926f056bbfc781cb6d1865cd9a3563fdfaf5b469d3c68e4444c4071f7df4115dba74e18b2fbeb0a3a87b1cb8d28651974c37b91f6c213016686a075175cb2db7f0d39ffed4c62222e293cccc4c6a6b6b993f3fa9b666fc0c3817f85f3b88ba645dc102b81878ca8651d4be7d7bd6ad5b47e3c649ff014a119184aaaeaee6d4534f65f3e6cd7614551703cfd8301924db3d58077b06f88f0da3e8aebbee52b912110980c68d1b73e79d77da38aafe0d4cb361b248e6152c8076380f838eeca5c27efdfab170e1421b8b884802f5ebd78fd2d2521b47c96e9c8739bf6f07c9229957b0c0f983bfd98651118fc7f9eb5f9366cb111191d0f8dbdffe463c1ee9b7e09b49e272052a58000f024b6c1805975c72093d7bf6b4b188882458cf9e3da3bc6dc3629c47e224b564bf44b8df19380f834eb383b04a4b4b63ddba759c7cf2c97624222201f0eebbef72da69a7b16f5fa4b687da077407d6da41b2d10a96632df0671b86d915575ca17225ff7f7bf71e6c57599f71fcfb3ba146724a2c262424670814122e8922c4aa494860a0847231de30498136023102052a369dce54d45a69a76051a79db1d6a230ea388a8858bc404144c7c434d670138284480d253926260a81000172defeb176cc3e6f2e27e79c7d5b7b7f3f3367cee67d16fcc1c05a4f7e6bed77496a61471d75148b16b5dd968cff88e50a7082556d24c514ebb83c289b912347b266cd1a264d9a944792a416b26edd3a8e3efa685e7ae9a53c2aa3d5c074607b1e74222758bb6c07de0b94fe45518b172fb65c4952091c7ef8e12c5ebc385f2ea33e8a6ba8e5aac209d6eeae013e942f96c581071ec8dab56b7d258e2495c4860d1b983c79322fbc50eacdceaf013e922f76322758bbfb18f0937cb12c2ebdf452cb952495c8c48913b9e4924bf2e532594951b054c509d69e4d061ea0641b90767777f3c4134f306edcb83c9224b5b04d9b3671e4914796f145d0cf012700bfc8834ee7046bcfd60257e68badee8a2baeb05c4952098d1b378ecb2fbf3c5f2e832bb15ced9113acbd0be06bc0bbf3a0158d1a358a75ebd63176ecd83c922495c0e6cd9b99346952999ec5ba055808a43c9013ac7d49c025c0fa3c68458b162db25c4952898d1d3bb64cfb623d055c8ae56aaf9c600dec54e01e5af8dfd588112378f4d1479932654a1e49924ae4f1c71fe7d8638fa5afafa5770c4ac069c00fb27555718235b07b818fe78bad64debc79962b496a0353a64c61debc79f972abb90ecbd5805a762ad3625e45f1f2cae979d00a962d5bc649279d942f4b924a68d9b265cc9933275f6e15ab8059405b6c3d5f4f16acfd770cc5ab740ecc83669a3163062b56acc8972549253663c60c56ae5c992f37dbf3148386c7f240bbf316e1fe7b0cf8cb7cb1d9962e5d9a2f49924aae45cfedefc772b5df9c600d4e009f072eca836638eaa8a358b3660d5d5df664496a277d7d7d4c993285279e78228f9ae5468a770dfaadc1fde4957970127039705f1e34c355575d65b992a436d4d5d5c555575d952f37cb2a8a6b9fe56a109c600dcd1114ffc1bd365b6f98d1a347d3dbdbcba851a3f24892d406b66ddbc6c48913d9ba756b1e35d216e08dc0ba3cd0be39fe189a5f02e7d1c4367ffef9e75bae24a98d75777773de79e7e5cb8dd44771adb35c0d81056be8ee02aece171b65c99225f99224a9cd34f95c7f357077bea8fde32dc2e109e01bc03bf2a09ea64f9fceaa55abf26549521b9a3e7d3af7df7f7fbe5c6fb701e7d2c43b3565e7046b7812f01e604d1ed45393ff4423496aa0269cf31f032ec472352c4eb06a632af013a03b0f6aadbbbb9bdede5e0e3ae8a03c9224b5a1ad5bb73271e244b66ddb9647f5b00d7833b03a0f34384eb06a63350dda1b6bc18205962b49ea20a3478f66fefcf9f972bd5c84e5aa262c58b5730bf0897cb1d69a302a9624355983cefdd7535ccb5403de22acad0380db81b3f2a016a64d9bc6c30f3f9c2f4b923ac0b469d358bdba6ec3a53b80b701afe48186c609566dbd022c041ecc835ab8f8e28bf32549528758bc7871be542b0f505cbb2c5735e404ab3e7a809595df35d1d5d5c5934f3e494f4fcdfe9192a41259bf7e3d93264da2afaf2f8f86633df096ca6fd59013acfa580f9c033c970743356bd62ccb952475b09e9e1e66ce9c992f0fc7b3c0d958aeeac282553f0f02f3811d7930140b172ecc9724491da686d7821d14d7a887f240b5e12dc2fa7b1ff0d97c7130468c18c1534f3dc5a1871e9a4792a40ed2dbdbcb61871dc68e1dc3feb3fbfb801bf245d58e13acfafb0fe0ba7c7130e6cc9963b992243161c20466cf9e9d2f0fd6b558aeeace82d5181f04be962feeaf050b16e44b92a40e35cc6bc2cd142f71569d798bb0715e0ddc03ccca837d39e08003d8b06103871c72481e49923ad0a64d9be8e9e9e1955706bdabc272e074e0c53c50ed39c16a9c1781b7036bf3605f4e39e514cb9524e977c68d1bc7c9279f9c2f0fe471e01d58ae1ac682d5589b297679ff551eeccd3047c192a43634c86bc3af28b663d89c07aa1f6f1136c734e087c0983ca8d6d5d5c5860d1b183f7e7c1e49923ad8c68d1b993871e2fe6c3aba05380578240f545f4eb09ae311e00c606b1e543bf1c4132d5792a4dd8c1f3f9e134e38215fce3d4371adb15c358105ab79eea3b85df87c1eec74d659757967b424a90d0c708dd846715bf0be3c506358b09aebc7146f2fdf9e0700679e7966be244912b0cf6bc4768a6bcb8ff3408de33358ade11ce09bc0013b170e3ef860366fde4c57971d5892b4bb1d3b763076ec589e7efae9eae59729be2df8ddea45359e57efd6f01de07ce0774f2bce9d3bd7722549daab1123463077eedceaa53e8a6b89e5aa0578056f1db70017edfc8b01eead4b92945f2b2e04be5ebda0e6f11661ebb9acababebdfd6af5feffb072549fbd4dbdb4b4f4f0f29a5cb807fcf73358f13acd6f399a953a77ed47225491ac8840913983a75eadf61b96a394eb05a544a6929707dbe2e495295a511f1c97c51cd67c16a6129a54b81cfe4eb92a48e9780cb22e2b379a0d660c16a7129a545c04d783b579254e8032e8c882fe5815a8705ab04524aef06be42d53e5992a48ef432705e44dc9a076a2d16ac9248299d03dc0a8ccc33495247d80ebc2b22dce7aa042c582592523a0db81de8ce3349525bdb06bc2d22be9f076a4d16ac924929cd02ee0046e79924a92d3d039c1d11be5bb0442c582594529a0edc058cc93349525bd9029c1111f7e5815a9b05aba4524aaf03ee06dc915492dad3af80d323e2913c50ebf3abff2515110f037380b57926492abdc7813996abf2b260955844ac056602cbf34c92545acb81999573bc4aca82557211b119381db839cf2449a5f3558adb825bf240e562c16a0311f122703e706d9e49924ae39f800b2ae774959c0fb9b79994d2128af7178ec83349524bda41f15ec11bf240e565c16a4329a53f01be0efc7e9e49925acab3c0fc88f8af3c50b959b0da544ae90dc077809e3c9324b584a7807322e2a13c50f9f90c569b8a880781b7000fe69924a9e91e006658aeda9705ab8d45c47a8abdb2eecc334952d3dc019c5c3947ab4d59b0da5c443c0bcc03aecf334952c3fd33c54b9b9fcd03b5179fc1ea2029a5f9c04d40779e4992eaea39e0a288f87a1ea83d59b03a4c4a692a701b70749e4992ea620df0ce88589d076a5fde22ec3095ffc1df0c7c33cf244935771bf026cb55e7b16075a08878063817f820d097c592a4e1eb03fe16383722b6e6a1da9fb7083b5c4a692ef015604c9e499286640bf0a711f1bd3c50e7b0608994d2e1c0adc01bf34c923428ab28a656ebf2409dc55b84a27222984df10d4349d2d0dc08ccb65c092c58aa88e2eded8b8125c00b592c49dabbe729ce9defad9c4b256f116a7729a563812f03d3f34c92d4cf2ae08288782c0fd4d99c60693711f1736026701d90b25892549c1baf056659aeb4274eb0b44f29a553812f013d7926491dea29e0cf23e2077920ede4044bfb1411f702c703bede4192e016e078cb950662c1d28022e237c002e022605b164b5227788ee21cb830227e9b8752ce5b841a9494d2648a07e0df9c6792d4a656027f16116bf340da1b27581a94ca096636700dbe6647527beba338d7cdb15c69b09c6069c8524a3381cf03c7e5992495dca3c0e288589107d2fe7082a521ab9c784e04fe1e78398b25a98c5e063e0a9c68b9d27038c1524da494a6019f0366e4992495c40a6049443c9207d26039c1524d544e48b3812b29be6d234965f11c7005c57b042d57aa092758aab994d224e033c0d97926492de63bc06511f17f79200d87132cd55c443c09bc15380ff875164b522bf835c5396a9ee54af560c1525d44448a88af527cc3f08b792e494df405e0b888f86a44f8be55d585b708d51029a533807f058ec933496a90c7802b23e2ee3c906acd09961a2222eea278a7e1078067b25892eae9698a73cfeb2d576a1427586ab894d221c0c780f761c997543f7dc067818f44c4e63c94eac982a5a649291d0f7c0a382dcf246998ee013e10113fcb03a9112c586aaa9452006f073e011c99c5923458bf009602b7fb00bb9ac982a59690521a09bc1ff8107050164bd2409e05fe01f89788d89e8752a359b0d452524a87529c242fc6ff3e250d2c0137025747c4c63c949ac50b985a524ae904e01a8a0d4b25694fbe0d7c38221ec803a9d92c586a6929a5b75014adb97926a963dd45f1cdc0957920b50a0b964a21a53487a2689d9267923ac60f2926563fca03a9d558b0541a956f1c9e4651b46666b1a4f6b502f830f07dbf19a8b2b060a9742a45eb4c8aa2f5c62c96d43e7e0a7c04b8d362a5b2b160a9b42a45eb6d1445ebf5592ca9bc1ea22856ee65a5d2b260a9f4524a5dc0b9c0df007f94c592cae3a7c0c7815b23a22f0fa532b160a96d54265a7380bf06e665b1a4d6f52de07ae0474eacd42e2c586a4b29a56381bf02160123b35852f36d07be007c2a227e9e8752d959b0d4d6524ae381bf002e07c664b1a4c6db027c1af874446cca43a95d58b0d411524aa380f7504cb52667b1a4fa5b0b7c12f842443c9f8752bbb160a9a3a49446507cf370297052164baabde514cf577d2b2276e4a1d4ae2c58ea5829a5138125c005c0e82c9634745b812f033744c4fd792875020b963a5e4aa91b984f51b66665b1a4fdb71cb801b8c5db80ea74162ca94a4a691af05e8a6f1fbe368b25ed6e0bf045e07311b13a0fa54e65c192f620a5f46ae09d1453ad53b358127c9f625a755b446ccf43a9d359b0a401a49426534cb52e04c6f74fa58eb211b809f87c44accd4349bb58b0a4fd9452fa3d8a69d602e05dc0c1fd8f90dad26f816f005f03ee8d8897b35cd21e58b0a4214829bd0af8636021f00ee035fd8f904aed19e0368a52754f44bc94e5920660c1928629a53412388362b2f576e0a0fe4748a5f02cf09fc0cdc0dd3e57250d8f054baaa1cac3f167524cb6e601ddfd8f905aca36e0768a49d59d11f162964b1a220b96542795d7f39c0dbc95a274f980bc5ac146e04ee0dbc077ddaf4aaa0f0b96d40029a52ee00dc059959f99c0887e0749f5b1035801dc51f9793022fafa1f22a9d62c585213a494fe00984b31d93a0b98d0ff0869587ad955a8be17114f67b9a43ab360494d96520ae078764db7660107f43b48dab757285e537307c5edbf872222f53f44522359b0a41693527a0d300738a9f2f326e0d5fd0e52a77b11f81f8a52b51cf851443cd3ff1049cd64c1925a5c65cfade9ec2a5cb38143fa1da476b7895d656a39709f7b5349adcd8225954ce596e2647615ae9380e3fa1da4b27b945d656a19f00b6ff949e562c192da404a690c30033801783dc5335dc7005dd5c7a9e5f4018f010f013f031e00fe3b22b6f43b4a52e958b0a43695523a9062b2753cbb4ad71bf0f662b3fc1a7890a24ced2c548f46c40bfd8e92d4162c58528749298da77fe97a1d700430a6ea300ddd16e097c0c3ec2a520f45c4c6ea8324b5370b962400524aa381c329cad611c01f567d3e02381801fc96a240edfcf9dfaacfeb22626b7198a44e66c192b45f2a9ba35617b0c381b1959f31559f47177f47e96c0536577eb6547d5e4755a1723b0449fbc38225a9a62adb4abc96dd8bd7cecf6328f6f51a09bcaaea77f5e7bdad016c075eaafa5dfd796f6b2fb2ab345597a79d9f7fe3b60792244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992a446fa7f23042de550f55d460000000049454e44ae426082, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `Users` (`UserID`, `FullName`, `Username`, `Password`, `Email`, `Phone`, `Gender`, `BirthDate`, `BirthTime`, `ProvinceID`, `IsAnonymous`, `RegistrationIP`, `LastLoginIP`, `LastActivityTime`, `IsLoggedIn`, `Role`, `avatarLink`, `Bio`, `CurrentAdd`, `BirthPlace`, `Confirmed`, `Blocked`, `Create_at`) VALUES
(228, 'hieu nguyen', 'nguyenkhachieu35', '$pbkdf2-sha256$29000$Nqb0ntN6T4nROmdM6R3jfA$AGP5pZYLlQr6bCdyWXoxCeQYzRtPr1G4prnQ5FQrj90', 'hieu3ab3Dc@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-09 08:07:39', 0, 0, 0x89504e470d0a1a0a0000000d4948445200000258000002580806000000be6698dc000000097048597300000b1300000b1301009a9c180000200049444154785eecdd797815f5ddffffe7394908010c4882220a04657123046841089b1612425b0117505c51b8dbaab57ad7ebf7add75db1155bf5fbb3dafedc5a41d42a2a2e2c959648505048006509011414055c10954436bd0364f9fd3182f0760332336766ceeb715d7385bedea7970a4cce2b9f99f319101111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111f97e311b8888345023200bc83ee8ebc1bfce021a03e95fbd76ffd7837ffd6d59231c7bbf3af67ccbafbf2bab062a816d077d3df8d7955fbd5644c4152a582272b85a0039071ded80561c5aa2b2816308a75d7c5dbcf697aecf80f7814d071ddb1111f9012a5822b25f268716a80ee67fb740c029589b0e3a369affbd1311497a2a5822c925061c0fe4025dbffa7a064e996a79d0ebe4e855e194aeb54005b0faabaf9f00f507bd4e44224c054b24ba3280d339b44ce5e25cd613ff7d8653b4f61fab813781ff3df84522120d2a5822d19005f401f2f8ba4c7506e207bf4802a70e789baf0b5739b018e7fe2f110931152c91f089019d80fc838e530f798584dd3aa0f4ab6311b0015d5e140915152c91e04b077a7068a1d265bee4f2195f17ae526005cef6132212502a5822c1d31c18c0d765eac738254b64bf3dc01b7c5db85e03761cf20a114928152c91c48b01dd80a2af8ebe40ca21af10f97e3540193007280656a14b8a2209a582259218c7024380a15f1d271c3a1669908f718ad61c601ef0f9a16311f19a0a96883fe2389ff0dbbf4a75165aa5127fd4024b70cad61c9c4f2ad61df20a11719d0a9688779a00c3809f0385381b7c8a24da27c04bc08bc07f802f0f1d8b881b54b044dc958173c96f344eb16a72e8582450bec0295acfe2ac6e551f3a1691a3a58225d270e9382b54a380e140b343c722a1b00bf817300d988bb681106910152c91a3d308188cb3523502e741c92251b1039889b3b2350fd87be858447e880a96c8e14b03cec159a91a89f3494091a8fb1c988153b65e01f61d3a16916fa38225f2c33a01e3802b81e30e1d8924954f80c780c9388fef1191efa08225f2ed1a03e701e38141878e4404980f4cc259ddd2cdf122860a96c8a1cec0295597012dcd4c44bea90af8274ed97ad3cc4492960a960834c5b9af6a3cd0c7cc44e4f095e114ade770b68010495a2a5892cc7ae094aa31e85380226eda093c8553b6569899888844500acebd55a5380fc3d5a14387b74729cea76ef56828492a5ac19264d104e75380ff0d9c72e848447cb001b817e753887a3c8f449e0a9644ddf1c0b5c0354096998988ff2a8107810770b67d108924152c89aad37056ab2ec379948d8804cb1e9c4f1fde03ac333391d053c19228890103809b809f99998804d76ce06ee0359cfbb644424f054ba2200e9c0ffc1fa0a7998948782c07ee025e00eacc4c44447c12c379d07205dffce4920e1d3ac27bacc239b7b5082022e2a318300c58c637bf31ebd0a1233ac7329c735d454b42477f69254c62c04f8089c059662622d1b5189800bc8c53bc44024f054bc262004eb11a60072292345e056e0116da8148d0a86049d09d8553ac06db818824ad129ca2b5d40e448242054b82aa3b4eb1faa91d88887ce5df38456ba51d88249a0a96044d6be04fc058f4f753447e583df028f03fc056331349183d7c5382221d6783d0e7702e0baa5c89c8e188e1ac78ff0267efac6540ed21af104900bd8949a2eddfcbea6ee0643313113952ef01bf0566a14f1c4a02a9604922e5027f05ceb6031191067a05b801586d07227e88db40c407ad80bfe3dc98aa7225225e380728071ec2f99e23e22bdd83257e6a045c8ff39cb17cb4822a22de8a013f02fe0bd803ac40f767894ff406277e2900ee033adb8188884fde06aec3d9474bc453ba44285ecb02fe09bc84ca9588245667602ef038cef72611cfe812a17825065c0ccc06fa989988482275c3d96bef4360ad9989b8429708c50bed706e2c1d6607222201f36fe01ae07d3b106908ad60899b5270ee6f98019c6166222241d419180fec0296a3bdb3c4255ac112b79c014cc6d9855d44248c16e3942d5d369406d30a9634543a30017812686f66222261d216a760a5e0942d6de920474d2b58d2107d7156ad4eb3031191907b0b180794d981c8e1d00a961c8d34e08f384fb03fcecc4444a2a015ce270dd38045380f9216396c5ac19223d511980af4b2031191887a1db804d8600722df451b8dcae18ae1fc34578eca958824975e38dffbc6a28509394cfa8b2287a325f00fe0023b10114932cf01bf04aaec40e4602a58f243ce069e004eb403119124f521703930df0e44f6d34deef25d1a017fc659b9ca3433119164968953b03280d7d0760ef22db48225dfe6549c1bd97bd88188881c62053006586f0792dc7493bb1c2c86b3c9de0a54ae44440e470f6025ce9e595ab49003f49741f6cb001ec0f9948c88881cb929c0b540b51d48f251c112801ce005b46a2522d250cb81f381cd7620c9459708a500e71b82ca958848c3f5c4f99e3ac40e24b9e85384c92b0edc8cb3a4ddc4cc4444e4e835c1d9f97d1f506a6692247489303935071e0786db818888b86a267005b0d30e24da54b092cfe9c00ca0b31d88888827de0646026fda814497eec14a2e17e23cb454e54a44c43f9d71bef75e6807125dba072b39a402ff17b8176787761111f157239c82d50ce7113b75878e256a748930fa8e019e0586da81888824c41c6034b0cb0e243a54b0a2ed246036d0cd0e444424a156013f053eb203890615ace8ea06fc1b38d10e444424103ec22959abec40c24f37b947d35060112a572222417622cef7ea423b90f0d34deed1f35fc054a0b11d888848e034022e06b6e2ec002f11a182151d71e00ee0ceaf7e2d2222e110077e8ef383f17ca0fed0b18491eec18a86c6383bb38fb2031111099569c09540b5c9256454b0c22f1b9805f4b503111109a5526004b0cd0e243c54b0c2ad23ce7e2a1ded404444426d0350f4d557092115acf03a1398071c6f07222212095b81c1c05a3b90e0d3cdd0e1d4135880ca95884894b5065e057ad881049f0a56f8e403af005976202222919385f3c942dd671b322a58e1f213602e906907222212599938dffbcfb103092e15acf0f829cea36f9ad8818888445e53e03f38ef0512022a58e17021301348b7031111491ae9c00ce0023b90e0d14eeec17739f024fab3121111e7bde00260137a4874a0e94d3bd87e054c46db698888c8d762c048e0136099994940a86005d76f81bfd9504444e42b3f0376018bed40124f052b987e0bdc6d43111111a310d88d4a56e0a86005cfafd0ca9588881cbe0274b9307054b082e50a60920d4544447ec0cf808de8c6f7c050c10a8e0b8127d00ded2222727486036f7e754882e9cd3c187e8ab3cf55aa1d8888881c811a6004cec6d492402a5889f7139c13419b888a88881bf600c3709e5b2b09a2829558f938cf97d2e36f4444c44d5fe0dcfc5e6607e20f15acc4e981f384743db8594444bcb003e701d12bec40bca782951867020b802c938b8888b8a9121808acb503f1960a96ff3a020b81d676202222e281ad407f60831d887754b0fc958db3db6e473b101111f1d006a00fb0cd0ec41b711b88671a03b350b9121111ff75c4d90ea8b11d883754b0fc11071e07fada818888884ff281c7d07bbf2fb4b1a53ffe0c8cb2a148326ad1a20539393974e8d081934e3a89ecec6cb2b2b20e7ccdcaca22333393468d1a919e9e7ee068d4a811007bf7ee65cf9e3d078ebd7bf7b273e74e2a2b2ba9acac64dbb66d07be7ef8e1876cdcb8918d1b37b263c70ef36f22929446e33c52e7663b1077e91e2ceffd17f00f1b8a44593c1ea743870ee4e6e6929b9b4bd7ae5d39f9e493e9d0a1032d5ab4b02ff7c5f6eddbd9b87123efbdf71eab57afa6a2a2828a8a0a366edc485d5d9d7db948d4fd177af6ada754b0bc3514988d9ef92811168bc568dfbe3df9f9f9f4eddb971e3d7ad0b56b579a366d6a5f1a485f7cf105ab57af66c58a15949595515a5acae6cd9ba9afafb72f1589925a9cc7b4bd6407e20e152cef74031601cdec4024cc62b118a79e7a2a43860ca15fbf7ee4e7e7d3a64d1bfbb250dbb2650ba5a5a52c5ab488929212d6ad5ba7c22551b40b67fb865576200da782e58d938025c089762012469999999c73ce391415153174e850dab56b675f12699b376fa6b8b898e2e2625e7ef96576edda655f2212561f01bdbffa2a2e52c172df31381b8976b3039130c9caca62e4c8918c1e3d9a418306919aaacfc400d4d4d4b060c102a64d9bc68c1933a8acacb42f11099b726000ce8a96b84405cb5da9c08b38f75e89844e8b162d18316204a3478f66f0e0c12a553fa0a6a68679f3e6316dda3466ce9cc9f6eddbed4b44c2620e702e5063072241703750af4347988e582c567ff6d967d74f9d3ab5bebababa5e8e4e757575fdd4a953eb070d1a541f8bc5bef1fbac4347088eff17718d56b0dc330a98664391a06addba35575e7925575f7d351d3bea01036edab0610393274fe6f1c71f67ebd6ad762c1264a380e76c2892286700bbf9e64f033a7404eec8cbcbab7fe28927eaf7eddb671761c465fbf6edab7fe28927eaf3f2f2bef1e7a04347408fddc0e988044073603ddffc4baa4347608e582c565f5858585f5252623b80f8a4a4a4a4bea0a040970f7584e1580f64229240716006dffccba94347208e783c5e7fe18517d6575454d8f77b49908a8a8afa0b2fbcb03e1e8f7fe3cf4b878e001dd3d16d44924037f3cdbf943a7424fc88c562f523468ca85fb56a957d7f9780282f2faf1f3e7cb856b47404f9f81d22095000d4f1cdbf903a7424ec88c562f5454545f5cb962db3efe71250cb962dab2f2a2a52d1d211c4a31618821c152dff1d9d1c6039d0d2e4220973e6996772efbdf73278f0603b921098376f1e37dc70036bd7aeb5239144aa047a029bed40be5fdc06f28332801750b9928068d9b225f7dd771fe5e5e52a57213678f06056ad5ac57df7dd47cb96faf622819185f39ed7d80ee4fba5d840be570cf80730cc0e44fc969292c2af7ef52b66cc98c1c0810389c7f5f352d8c5e3717af5eac5f8f1e3d9bd7b372b56acd043a62508da7c75bc6807f2dd7489f0c88c0326d950c46f679e792693274fa677efde762411b264c912c68f1fcf9a356bec482411c603936d28df4e2b5887ef546026906607227e69dcb831b7de7a2b4f3ef924eddab5b3638998934e3a89f1e3c7939696c6e2c58ba9a9d163e224a106e35c2ed413ce0f8356b00e4f236031d0c30e44fcd2b76f5fa64c9942972e5dec4892c0faf5ebb9eaaaab282b2bb323113f2d07fa027bed400ea515acc3f327e0421b8af8212d2d8d3ffef18f3cfae8a3b46ad5ca8e25496467673376ec5852535359b46811757575f625227e68837325e7653b90436905eb879d8df31749bf57e2bb8e1d3b3275ea547af5ea654792c4962e5dcaa5975eca860d1bec48c40ff5c04f80f976205fd3c78ebe5f4be00954aec467b1588cb163c7525e5eae7225dfd0bb776fcacbcb193b762cb198be3d89ef6238ef8dda4fe47ba8607db718f03070a21d887829232383471e79842953a6d0b469533b1601a069d3a64c993285c99327d3b8b1b62812df9d88b36d911afe77d06fcc771b0b4cb1a18897dab76fcff4e9d3e9d1439fa790c3b77cf972ce3fff7c366fd666dbe2bbb1c063361415acefd2112807b47c20be193264084f3ffd345959597624f2832a2b2bb9e8a28b98376f9e1d89786937d01dd00d81862e117e531a3015952bf1d175d75d477171b1ca951cb5acac2c5e7ae925aebbee3a3b12f15233e049b447e437689b866ffa2370b10d45bc108bc5b8fdf6dbb9e38e3b74b3b234582c1663d8b061a4a6a6b260c1023b16f1ca495f7dd5a70a0fa28275a8bec0a3e8d2a9f8203535957ffce31fdc70c30d7624d22003060ca04d9b36cc993347fb65895ffa0325c0877690ac5424be960eac044eb30311b7656464f0d4534f3162c4083b1271cdcc9933b9f8e28ba9aeaeb623112fbc85733fd61e3b4846ba07eb6b37a372253e68d1a205c5c5c52a57e2b9112346505c5c4cf3e6cded48c40ba701bfb361b2d20a96e30c9cd52bdda4279e3ae18413282e2e263737d78e443cb36ad52a8a8a8af8f8e38fed48c46dfb7056b1d6da41b2d10a96731fda23a85c89c73a75ea44595999ca95f8ae5bb76e949696d2a953273b12715b1a3019dde3ad82055c03f4b6a1889bf2f2f2282d2d252727c78e447cd1a143074a4b4bc9cbcbb32311b79d05fcca86c926d92f11b603de447b5e89873a75ea44696929ad5ab5b22311df7dfae9a7e4e7e7eb41d1e2b5dd38b7dfbc6f07c9229957b062c043a85c89874e38e104e6ce9dab72258171dc71c73177ee5c4e38e1043b127153339cf7d8a45dc849e682751130cc86226ed9ff69415d1694a0e9d0a10373e6ccd1a70bc56bc380d1364c16c9da2cb371f6ebc8b6031137646464505c5ccc800103ec4824305e7df555860e1daa7db2c44b9fe16cdf5069075197ac2b587f41e54a3c929a9aca534f3da57225813770e0409e7aea29525292fe035fe29d5638efb9492719cfaa02e06e1b8ab821168bf18f7ffc833163c6d89148209d76da699c70c209cc9e3ddb8e44dc92079401efd94194255bc16a04bc0864d981881b6ebffd763d5b5042a767cf9ea4a4a4307fbe9ed52b9ee905fc03489a8763265bc1ba1ed0d28278e2d7bffe3577dc71878d454261c08001545656f2faebafdb91881bb2812a60891d445532dde4de0a7807d0c766c47543860ca1b8b898783c596f6b9428a8ababa3b0b09079f3e6d991881bb6039d806d761045c9f46e701b2a57e281f6eddbf3f4d34fab5c49e8c5e3719e79e619dab76f6f47226e6881f35e9c149265052b17e761ce7a071457656464b068d1227af4e8614722a1b57cf972faf5eba7ed1bc40b75380f83aeb083a84986c21103fe4a72fcb78a8f62b1180f3ef8a0ca95444ecf9e3d79f0c10789c592e56770f1511cb8972458e049869bdc4702bfb3a148438d1d3b965b6fbdd5c62291d0bd7b77366fde4c7979b91d89345407a01c5867075112f506998ef330e793ed40a4213a76ec487979394d9bea5196125dbb77efa67bf7ee7a30b478e15d9c8741efb183a888fa65b31b50b91297a5a5a53175ea54952b89bc66cd9af1e4934f9296966647220d750af01b1b4649942f11b6069ec7d95c54c4357ff8c31fb453bb248d934e3a89fafa7a162c586047220d75163005f8c20ea220ca97081f01aeb2a14843e4e7e7f3da6baf694b06492a757575f4efdf9fb2b2323b1269a8478071368c82a816aceec072a2fbdf2709d0b87163cacbcbe9d2a58b1d8944deba75ebe8debdbbb66e10b7d5033d706e7a8f94a85e229c0c74b6a14843dc7aebad9c77de793616490ad9d9d9d4d7d7eb7985e2b6187012f0b41d845d145778ce0216db50a421ba76edca8a152b484d4db52391a4b16fdf3e7af4e8c19a356bec48a4a1ce0296da30cca2782349d26cc32ffe48494961d2a4492a5792f4d2d2d298346912292951bdf8210914b9f7eea815ac01c0101b8a34c42f7ef10b7af7ee6d6391a474d65967f18b5ffcc2c6220d5500f4b7619845e912610c588053b2445c919595c53befbcc3b1c71e6b472249abaaaa8a4e9d3a5155556547220df12a7036ce8defa117a515ac9fa072252efbc31ffea0722562b46cd9923ffce10f361669a881c039360caba8ac60c580329c9be4445c71e69967525e5eaefb4d44be456d6d2dddba7563eddab57624d2108b817c22b08a159515ac2254aec445b1588cbffef5af2a5722df212525857befbd97582c2a3fa74b40f40186da308ca27066c48037809e762072b48a8a8af8cf7ffe63631131860d1bc69c39736c2cd210cb805e847c152b0a056b0430c38622472b168bf1c61b6fd0b3a73abbc80f59b66c19bd7af5a2be3ed4ef85123c238059360c93b05f228c13c1bd3324b1ce3df75c952b91c3f4a31ffd889ffffce7361669a8db08794709fb0ad685c0b33614395af1789c952b57929b9b6b4722f21d56ad5a458f1e3da8ababb323918618053c67c3b008733b8c01ffc786220d71fef9e7ab5c891ca16eddbae9399de285ff87102f0485f65f1c67bf8c053614395ab1588c55ab56d1b56b573b12911f505151415e5e9eeec512b70d045eb36118847905eb261b883444414181ca95c851cacdcd65c8103da94c5c17daf7fab016acd3809fd950a4216eba29b4e7b14820e81c120ffc1c38d5866110d682f5df36106988bcbc3c060f1e6c6311390243860ca15bb76e361669a850bee787b1601d0f5c66439186f8ed6f7f6b2311390a3a97c4039703c7d930e8c27893fb6dc02d3614395aad5bb7e6830f3e203535d58e44e408d5d4d4d0b66d5bb66edd6a47220d711b70ab0d832c6c2b584d806b6d28d210575e79a5ca95884b525353b9e28a2b6c2cd250d7e27480d0085bc1ba1268694391a3158bc518376e9c8d45a401c68d1ba787408bdbb2805035f73015ac14e0461b8a34c4a0418338e594536c2c220dd0b16347060e1c68639186ba11a70b8442980ad6b940471b8a348456af44bca1734b3cd00967db865008d31a6e29d0d7862247ab458b166cddba95f4f4743b129106dab3670fad5bb766fbf6ed7624d210a5403f1b06515856b07aa072252e1b316284ca958847d2d3d3193e7cb88d451a2a1fe86ec3200a4bc11a6f0391861a3d7ab48d44c4453ac7c423a1e80461b844d814f81838c60e448e565656165bb76ed5f60c221eaaa9a9e1f8e38fa7aaaaca8e441a6227d006f8c20e82240c2b58a350b912978d1c3952e54ac463a9a9a98c1c39d2c6220d95095c68c3a00943c10ac552a0848b2e5d88f843e79a7824f0dd20e89708cf00d6d850a421323333a9acacd40a96880ff6eddb47565616bb76edb22391863a13586bc3a008fa0a56e01baa84cf39e79ca37225e293b4b434ce39e71c1b8bb821d09bad05b96035062eb3a148430d1d3ad44622e2219d73e291cb71ba422005b9609d879e3b282e8bc562141515d958443c545454a467138a175a0281fd1445900b56a097fe249c4e3df554dab56b676311f150fbf6ede9d2a58b8d45dc10d8ae10d482d51138db86220d3564c8101b89880f0a0a0a6c24e2867380536c1804412d58816da4126efdfa85e211562291939f9f6f2311b704b23304f1a2781af00170bc1d8834442c16e3c30f3fa44d9b367624221efbe8a38f68dbb62df5f5f57624d2509f006d817d769048415cc13a07952bf140fbf6ed55ae4412e4c4134fd4fd8fe295e309e06d45412c58a36c20e2065da210492c9d83e2a1c07587a015ac4638db3388b8ae6fdfbe3612111fa9608987cec3e9108111b48235186861431137f4e8d1c34622e2a3eeddbbdb48c42dc7023fb1612205ad60e9a9a0e289783c4ed7ae5d6d2c223eeadab52bf178d0de76244202d52182f4373d1d186143113774e8d081a64d9bda58447cd4ac59337272726c2ce29611385d22108254b00a814c1b8ab8213737d7462292003a17c543cd81c0ec681ba48215b84f004874e89bba4830e85c148f05a64b04a5606500c36d28e216dd7f25120c3a17c563c381c6364c84a014aca140331b8ab8e5e4934fb691882480ce45f1d831389d22e18252b00275e7bf444f870e1d6c242209a073517c10884e1184671136013efbeaab88eb5ab468c1e79f7f6e63114990162d5ab063c70e1b8bb8e50be038e04b3bf0531056b086a172251ed2c7c2458245e7a478ac294eb748a82014ac9fdb40c44dba2421122c3a27c5073fb381df125db0e238fb5f8978e6a4934eb291882450dbb66d6d24e2b6a124b8e324f41f0ee401c7db50c44dd9d9d936129104cacacab29188db8e07bad9d04f892e58453610719bbe998b048bce49f149423b860a96449e56b0448245e7a4f824a11d239105eb58a08f0d45dca69f96458245e7a4f8a40fd0c2867e4964c11a4c62fff99224f4cd5c2458744e8a4f5270ba464224b2e02474e94e92476666a68d442481744e8a8f12d6351255b06204e45941127d8d1a35b291882490ce49f1d15012f4d49a4415ac6ec0093614f1427a7aba8d442481744e8a8fda00b936f443a20a56c296ec24f9e89bb948b0e89c149f25a47324aa60e9f2a0f846dfcc458245e7a4f82c219d2311d7259b03953877f78b78aeb6b696783c513f4b8888555757474a8ade02c437354016b0d30ebc9488779d01a85c898888883f5271ba87af1251b0f26d20e2a5bd7bf7da48441268cf9e3d3612f19aefdd43054b224fdfcc458245e7a42480efddc3ef82950efcd886225ed237739160d1392909f063c0d70dd8fc2e583d704a96886ff4cd5c2458744e4a0234c6e920bef1bb60f9be4427a27bb0448245e7a42488af1d44054b226fe74e5f3f992b223f40e7a42488af1dc4cf8215c3e7ff381180caca4a1b894802e99c9404e9878ffb7ffa59b03a01ad6c28e2357d331709169d939220ad808e36f48a9f054bab579210dbb66db391882490ce494920dfba880a96449e7e5a1609169d939240be7511152c893cfdb42c122c2a589240be7511bf0a561670aa0d45fcf0e1871fda484412e8830f3eb091885f4e035adad00b7e15ac3e3610f1cbc68d1b6d242209a4735212cc974ee257c1cab381885f366dda64231149209d939260be7412bf0a56571b88f865fbf6ed6cdfbeddc62292009f7ffe393b76ecb0b1889f7ce9247e15ac5c1b88f8499724448241e7a204802f9dc48f82950174b6a1889fde7bef3d1b894802e85c9400e882f3f0674ff951b04ec79f7f8ec8775abd7ab58d442401742e4a00c471ba89a7fc283ebe2cc5897c9f8a8a0a1b894802e85c9480f0bc9bf851b07cb9994ce4fbe89bba4830e85c9480f0bc9bf851b03c6f89223f64e3c68d7cf1c5173616111feddebd5b5b34485078de4dbc2e5831a09b0d45fc565757a77b3f44126cf5ead5d4d5d5d9582411425fb08e07b26d2892082b56acb09188f868e5ca9536124994e3703a8a67bc2e589e374491c3555656662311f1516969a98d4412c9d38ee275c1f2fc263291c3a56fee2289a5735002c6d38ee275c1f2b41d8a1c89cd9b37b365cb161b8b880f3efae823de7fff7d1b8b2492a71dc5eb8275860d4412a5bebe5e3f418b2448696929f5f5f5361649a4336de026af0b56071b8824d2a2458b6c24223ed00f3712403936709397052b1368694391442a2929b19188f860eedcb9361249b42ce0181bbac5cb8295630391445bb76e9dee0311f1d9e6cd9b59bf7ebd8d458220c7066e51c192a4525f5fcf9c39736c2c221e9a33678eeebf92a0cab1815b54b024e9141717db48443ca4734e022cc7066ef1b260e9067709a4575e79a2521ae50000200049444154859a9a1a1b8b8807f6eddbc72bafbc626391a0f0acab7859b0726c2012043b77ee64c182053616110f2c58b0805dbb76d9582428726ce016152c494ad3a64db391887840e79a045c8e0ddc12b3818b3e075ad8502408b2b2b2d8ba752ba9a9a97624222ea9a9a9e1f8e38fa7aaaaca8e4482e2733cda52caab15ac165f1d2281545959c9bc79f36c2c222e2a292951b992a03b16686e43377855b0726c201234ba7421e22d9d631212393670830a9624ad993367b267cf1e1b8b880bf6ecd9c3ac59b36c2c1244393670830a9624adeddbb7f3c20b2fd858445cf0fcf3cfb37dfb761b8b04518e0ddce055c16a670391209a3c79b28d44c4053ab72444dadbc00d5e15ac56361009a2050b16b061c3061b8b48036cd8b081575f7dd5c62241956d03377855b0b26c201244f5f5f53cf2c82336169106983c79b29e3d2861e249c1f26a1facd7811fdb5024885ab76ecd071f7ca03db1445c50535343dbb66dd9ba75ab1d8904d5eb406f1b3694572b589eb441112f6cddba95679e79c6c62272149e7efa69952b091b4f3a8b572b583b81636c281254797979ac5cb9d2c6227284f2f2f258b56a958d45826c271e6c36eac50a562354ae2464cacbcbb5b3bb4803959494a85c4918650269366c282f0a966e709750bafbeebb6d24224740e7908498ebddc58b82e5c9b54c11afcd9d3b97d5ab57db58440e434545052525253616090bd7bb8b1705cbf51628e287fafa7a264e9c686311390c13274ed4d60c1266ae77172f0a96eb2d50c42f2fbcf002151515361691efb16ad52aa64f9f6e63913071bdbba860891ca4aeae8e091326d85844bec7840913a8ababb3b14898b8de5dbc2858ae2fb389f8e95ffffa17cb972fb7b1887c8b65cb96f1e28b2fda58246c5cef2e5e142cd75ba0889feaebebb9e5965b6c2c22df62c28409baf74aa2c0f5eee245c172bd058af8adb8b858fb6289fc809292128a8b8b6d2c1246ae77172f0a56631b88844d7d7d3d37de7823b5b5b5762422406d6d2d37de78a356af242a5cef2e5e14ac741b8884d19a356b78e8a1876c2c22c0830f3ec8dab56b6d2c1256ae77172f9e453807186a4391306ad9b225efbcf30e2d5bb6b42391a455555545a74e9da8aaaab22391b09a030cb3614368054be47b545555e9867711e3965b6e51b992a871bdbb78b182b508c8b7a14858a5a4a4505a5a4aefdebded4824e92c59b2847efdfae9fe44899a45407f1b3684172b588d6c201266b5b5b58c1b378e9a9a1a3b12492afbf6ed63dcb8712a571245ae77172f0a96ebcb6c2289b666cd1aeebcf34e1b8b24953befbc5337b64b54b9de5dbcb844f81670aa0d45c2ae71e3c6949797d3a54b173b1289bc75ebd6919797c79e3d7bec48240ade024eb7614368054be43055575773d55557e9996b9274eaeaeab8faeaab55ae24ca5cef2e5e142cd7af638a04455959197ffad39f6c2c1269b7df7e3b65656536168912d7bb8b1797083f055ad950242ad2d2d258b46811bd7af5b22391c859ba7429fdfaf5d3873c24ea3e058eb761437851b0760099361489928e1d3b525e5e4ed3a64ded48243276efde4d5e5e1eefbefbae1d8944cd0ea0850d1b429708458ec2860d1bf8f5af7f6d639148b9fefaeb55ae2459b8de5d54b0448ed2638f3dc6a38f3e6a6391489832650a8f3df6988d45a2caf59bdcbdb844588b37c54d247032323258b870213d7bf6b42391d05ab66c19fdfbf7a7babada8e44a2aa0e48b161437851b0fe17686c4391a86adfbe3dcb972f272b2bcb8e4442a7b2b2929e3d7bb279f3663b1289b2ff059ad8b021bc5869da6b039128dbbc7933175f7cb1f6c792d0abababe3a28b2e52b99264e47a77f1a26069273a493a252525fce637bfb1b148a8fce637bf61debc7936164906ae771757af377ee537689b064942afbffe3a6969690c1830c08e4402eff6db6fe7aebbeeb2b148b2f81cb8d7860de145c1ba0e38d68622c960fefcf9b469d34637bd4ba83cfcf0c3fcf6b7bfb5b14832d906fc7f366c085d221471517d7d3dd75c730d3367ceb42391409a316306d75c730df5f5f57624924c5cef2e5e142cd76f141309939a9a1a2ebef8625e7bed353b120994575f7d953163c6505b5b6b4722c9c6f5eee245c172bd058a844d757535c3870fa7a2a2c28e440261d5aa550c1f3e5c7b5d89385cef2e5e142cd75ba048186ddfbe9da14387b271e3463b1249a88d1b37525454c48e1d3bec482459b9de5d54b0443cf4f1c71f535858c8679f7d66472209f1e9a79f525050c0c71f7f6c4722c9ccf5eee245c1727d994d24ccde79e71d0a0a0a54b224e13efdf4530a0b0bd9b061831d89243bd7bb8b1705cbf516281276e5e5e5e4e7e7b369d3263b12f1c5c68d1bc9cfcfa7bcbcdc8e44c483eee245c172bd058a44c13befbc43dfbe7d75e3bbf86ed5aa55e4e7e76be54ae4bbb9de5dbc2858fa488ac877f8f8e38f19306080b67010dfbcfaeaab0c1c3850f75c897c3fd7bb8b1705abd20622f2b51d3b76505858a8cd48c5733366cc60e8d0a1fab4a0c80f73bdbb7851b0b6d940440e555d5dcd85175ec8a44993ec48c4150f3ffc30175e78a1f6b912393cae77172f9e457806f0331b8ac8a1eaeaea983d7b362929297a40b4b86ae2c489dc74d34dd4d5d5d991887cbbe780e5366c082f0a560e30ca8622f2ede6cf9f4f65652543870e25168bd9b1c861abababe3faebafe7aebbeeb22311f97e8f016fd9b0217489502400eebfff7e0a0b0ba9ac74fd3600491295959514141470fffdf7db9188fc30d7bb8b17054bef10224761debc79f4ecd993e5cb5d5da59624b07cf9727af6ecc9cb2fbf6c472272785cef2e5e142cd75ba048b2d8bc7933fdfaf5e3d1471fb523916f3565ca14faf5ebc7e6cd9bed48440e9febddc58b1b3e1ae1c1865d22c924168b71e5955772df7df7d1b469533b1661f7eedd5c7ffdf53cf6d863d4d7d7dbb1881c9946c03e1b368417050b6027708c0d45e4c874ecd891279f7c92debd7bdb9124b1a54b9772c92597f0eebbefda91881cb99d40731b3694179708c183a5369164b461c306faf7efcfc48913f5917ba1aeae8edb6ebb8dfefdfbab5c89b8c793cee2d50ad6ebc08f6d282247af6fdfbe4c9932852e5dbad891248175ebd671f5d557535656664722d230af03ae5f26d00a964848949595919797c7c48913d9b7cfd55b0524c0f6eddbc76db7dd465e5e9eca9588375cff04217857b03cf997154976d5d5d54c9830811e3d7ab064c9123b968859b26409ddbb77e7d65b6f65cf1e7d7648c4239e2c0a7955b03eb38188b867cd9a35f4ebd78f6bafbd96aaaa2a3b9690abaaaae2da6bafa55fbf7eac5dbbd68e45c45da12a58efdb4044dc555b5bcb830f3e48a74e9db8efbefba8adadb52f9190a9adade5befbeea353a74e3cf8e083fa3315f187279bc87955b036d94044bc515555c5f5d75f4fb76edd98376f9e1d4b48949494d0ad5b37aebffe7aad4a8af86b930ddca0822512116bd7aea5a0a08061c386b16cd9323b96805ab66c19c3860da3b0b0509703451263930ddce0d5360d2d80cf6d2822fe88c5629c7beeb9dc76db6de4e6e6dab104c0aa55ab983061022fbef8a276621749ac16c00e1b369457050b9c82d5c28622e29f783cce79e79dc7840913e8dab5ab1d4b025454543071e244a64f9faecd634512ef73a0a50ddde0d52542f068c94d440e5f5d5d1dcf3fff3cddba75a3b0b090929212fb12f149494909858585e4e5e5f1fcf3cfab5c8904c3261bb845054b2409d4d7d73377ee5c0a0a0ac8cbcbe389279ea0a6a6c6be4c5c565353c3134f3c415e5e1e050505cc9d3b579703458265930ddce2e525c27b811b6c2822c1d0ba756baeb8e20ac68d1b47c78e1ded581ae09d77de61f2e4c9fcf39fff64ebd6ad762c22c1712ff0df3674839705eb7ae06f3614916089c5620c1c389071e3c671c10517909e9e6e5f228761cf9e3d3cfffcf34c9a3489d75e7b4d2b5522e1703d709f0ddde065c13a179865431109ae162d5a307cf870468f1ecd902143484d4db52f9183d4d4d4505252c2b469d398356b16dbb76fb72f1191603b1778d1866ef0b260e502ab6c2822e1909595c5881123183d7a3483060d222d2dcdbe2429eddbb78f050b16306dda3466cc98a14d4145c22d17586d43377859b032f1605f0911f1df31c71cc339e79c43515111454545b46bd7cebe24d2366fdecc9c3973282e2ee695575e61d7ae5df62522124e99802727b497050ba0128ff6971091c488c56274e9d285828202f2f3f3c9cfcfe7c4134fb42f0bb58f3efa88d2d2524a4b4b993b772eebd7afd73d5522d1530964dbd02d5e17ac65404f1b8a4874c46231dab56b77a06c75efde9ddcdc5c9a366d6a5f1a48bb77ef66f5ead5ac5cb9f240a97afffdf755a844a26f39f0231bbac5eb82f53870b90d4524dae2f138393939e4e6e6929b9b4bd7ae5d39f9e493e9d0a103c71e7bac7db92f3efffc73366edcc87befbdc7ead5aba9a8a8a0a2a2824d9b3669d34f91e4f43870a50ddde275c1fa2d70b70d452479356fde9c9c9c1c3a74e840dbb66dc9caca222b2b8bececec03bfcecccca451a346a4a7a71f7280b31dc2c1c7debd7bd9b97327959595545656b26ddbb603bffee0830fd8b871239b366d62c70edd122a2287f82d708f0ddde2f567b03db9335f44822f168bd1ac59b303c5293b3bfb905fefffdab265cb03056a7fa98ac7e3a4a4a4108fc789c7e3c4625fff2c188bc50ee4fb5fd3a4491352525268d1a205279d74127bf6eca1aaaaea40d93af8ebc1bfdebd7bb72e058a242f4f3b8ad72b58ad818f6d2822e1979292429b366d0eac46e5e4e41cf2eb366ddad0a85123fb7f0b94bd7bf7b265cb16366dda7460a5ebe05f6fd9b285dada5afb7f139168680d7c6243b7785db06238fff2adec4044c2a179f3e674eddaf5c0fd541d3b762427278776edda457e6fac7dfbf6f1fefbefb369d326366cd870e0beadd5ab57eb92a348b87d0a1c6f4337795db000e6013fb1a188044b6a6a2a1d3b763c50a4f61feddbb7b72f159cbdb1f617aefdc73befbca3152f917098070cb1a19bfc2858f70037da504412eb84134e38b0b542dfbe7dc9cdcda571e3c6f6657204aaababa9a8a8a0acacecc0960f1f7facbb244402e81e9c9bdc3de347c11a0b4cb1a188f82725258533ce38e340a1cacfcf272727c7be4c3cb071e3c6430ad7dab56bb5ca2592786381c76ce8263f0a564f9c0d4745c427b1588cbcbc3c860e1dcac08103e9d3a70f999999f66592003b77ee64f1e2c5bcfaeaab141717535e5eae4f328af8af27b0c2866ef2a3606500bb81b81d88887b8e3df658860c194251511143870ea575ebd6f62512405bb76ea5b8b8983973e6505252c2e79f7f6e5f2222eeaa039a02d576e0263f0a16c05bc0a9361491a3178fc7e9debdfb8107309f75d659c4e3fa3926cceaeaea58bc78f181c2b572e54aed322fe2beb780d36de836bf0ad63460940d45e4c8a4a6a63270e040468d1ac5f0e1c339fe784f3f652c09f6c9279f306bd62c9e7df6595e7df5556a6a6aec4b44e4c84d032eb2a1dbfc2a58bf0726da50447e584a4a0afdfbf767d4a8519c7ffef91c77dc71f62592043efdf4535e78e1059e7df659162e5ca81be5458edeef813fd9d06d7e15ac9f012fda5044be5d3c1e273f3f9f51a34671c10517e87e2a39c4d6ad5b79fef9e799366d1a656565ba8c2872647e06fcdb866ef3ab606501db6c2822873ae38c33b8faeaab19356a14279e78a21d8b7cc3471f7dc4b469d378e4914778f3cd37ed5844be290ba8b2a1dbfc2a58a01bdd45be55d3a64d19356a14e3c78fa74f9f3e762c72d8cacaca98346912cf3df71c5f7cf1851d8b884f37b883bf056b3270b50d4592558f1e3d183f7e3c63c68cd11e55e2aa9d3b773275ea54264f9ecc8a159e6ef52312369381f136f4829f054b3bba4bd2cbcccc64cc98318c1f3f9e1e3d7ad8b188eb56ac58c1a4499378eaa9a7d8b973a71d8b241bcf7770dfcfcf82d519586f43916470ca29a770c30d3770d55557d1a449133b16f1dc975f7ec9942953b8f7de7b79efbdf7ec5824597406deb1a117fc2c5831e013a0951d8844d559679dc54d37ddc4c89123b509a804425d5d1dd3a74fe7eebbef66e9d2a5762c12659f01c703be3c9bcacfeff8f540a90d45a226252585112346b068d122162f5eccf9e79faf722581118fc7b9e0820b58b264090b172e64f8f0e1fafb29c962113e952bf0b760810a96445893264df8e52f7fc95b6fbdc58c1933c8cfcfb72f1109947efdfa3173e64cd6ad5bc72f7ff94b323232ec4b44a2c4d70ee2e72542803e40990d45c2ac69d3a65c77dd75dc74d34d646767dbb148686cdbb68dbbefbe9bfbefbf5fdb3c4814f50196d8d02b7e17ac7460c7575f45422d2323835ffef297fcee77bfd3e36b24523efdf453eeb8e30efefef7bf535d5d6dc72261540d3407f6da8157fc2e58000b817e3614098bf4f474aebefa6afee77ffe87366ddad8b148646cd9b2853ffde94f3cf2c823ecd9b3c78e45c2642130c0865ef2fb1e2cf0f91aa8885bd2d2d218376e1c6fbffd360f3cf080ca95445e9b366d78e0810778fbedb719376e1c696969f6252261e17bf750c112f901f1789ccb2ebb8c75ebd63169d224dab56b675f221269eddab563d2a449bcf5d65b5c76d965fad4a18491efdd231197089be33cf839d50e4482a65fbf7efced6f7fd3aeeb220759be7c3937dc70038b162db2239120aac179c0b3af8f3248c48f213bd0270925e0dab76fcfb469d358b870a1ca9588d1b3674f162e5cc833cf3ca3155d0983527c2e5790988205506c03912068d6ac1913274e64ddba758c1a35ca8e45e420a3478f66fdfaf5dc76db6d346ddad48e458222219d2311970801f2809536144994783cce25975cc29d77dea99bd7458ec2962d5bf8ddef7ec7d4a953a9ababb3639144ca0356d9d06b892a5831e023e0043b10f1db8f7ffc63eebfff7e7af5ea6547227284962e5dcaaf7ffd6bde78e30d3b1249842dc049f8f8889cfd127589b09e042dd989ecd7ac5933eebdf75e962e5daa7225e292debd7bb364c912eeb9e71e5d369420282601e50a1257b000e6d840c42f858585ac59b3861b6eb881582c510bb922d1148fc7b9f1c61b59b3660d858585762ce2a784758d44beb31c8bb35d43224b9e2499ecec6ceeb9e71e2ebbec323b12118f3cf1c413dc78e38d545656da9188976a816c60bb1df82191e5e67360b10d45bc108bc5183366cc818d1245c43f975d76196fbdf516175f7cb1568cc54f8b4950b982c4162c48e0d29d248f76edda317bf66ca64e9d4a7676b61d8b880f5ab56ac5534f3dc5ecd9b3b57796f825a11d43054b222b168b71f9e597b366cd1a860d1b66c7229200c3860d63cd9a355c76d9655acd12af25b46324fa6f771ce72394c7db8148431c7becb13cf4d0438c1e3dda8e4424209e79e6197ef5ab5fb17d7bc2aee248746d05da90a04f1042e257b0ea80976c28d21003070e64d5aa552a57220177d14517515151c1c08103ed48a4a15e2281e50a125fb0005eb481c8d168d4a81177dc7107f3e7cfa76ddbb6762c2201d4b66d5be6cf9fcf9ffffc671a356a64c722476bb60dfc96e84b84004d80cfbefa2a7254ba74e9c2d4a953e9d9b3a71d8948482c5bb68c4b2eb984b7df7edb8e448ec417c071c09776e0a720ac607d8956b1e428c56231c68d1bc78a152b54ae4442ee473ffa112b57ae64dcb871ba015e1ae245125cae2018050b609a0d447e484646068f3efa2893264da249132d808a444193264d9834691253a64c212323c38e450e47203a45507e44c8003e059ad981c8b7c9c9c961faf4e974efdedd8e44242256ac58c1f9e79fcfa64d9bec48e4bbecc2b93c586d077e0bca0ad6ff02b36c28f26d0a0a0a58be7cb9ca9548c4f5e8d183e5cb97535050604722df651601285700293648a01ae0621b8aec178fc7b9f9e69b9932658a2e098a24898c8c0c2ebdf452f6eedd4b6969a91d8b58bf0702f12989a05c220448c7b94c98690722cd9b37e7f1c71f67f8f0e17624224962e6cc995c71c515ecdcb9d38e440076e06c5cbec70e1221289708c1f90d99694391d34f3f9dd75f7f5de54a24c98d18318237de7883d34f3fdd8e44c0e91081285710ac820501b9f35f8263f0e0c12c5ebc98ce9d3bdb918824a1ce9d3bb378f162060f1e6c472281ea10412b58f380cf6d28c9e9aaabae62ce9c396466eaaab1887c2d3333933973e63076ec583b92e4f539f0b20d13294837b903d4029d017d3c2c89c56231264e9cc85ffef217e2f1a0fd0c202241108fc7193e7c38a9a9a92c58b0c08e25f93c05ccb0612205ad608173fdf4521b4a72484f4fe7f1c71fe7da6bafb52311916f183060001d3b76e4dffffe37b5b5b5762cc9e366e05d1b2652903e45b85f1af001ce270124896465653163c60cfaf7ef6f472222dfebb5d75e63e4c891545555d99144df27405b609f1d245210afbfec031eb3a144db29a79c42595999ca95881c95010306505656c629a79c6247127d8f12b07205c15cc102e808bc634389a6eeddbbf3d24b2fd1aa552b3b121139229f7df619858585ac5cb9d28e24ba3a12b0cb8310cc152c800dc07c1b4af4f4e9d387f9f3e7ab5c89882b5ab56ac52bafbcc259679d6547124daf10c07205c12d5800936d20d13268d0204a4a4a68debcb91d89881cb5162d5a505252c2a04183ec48a227b05d21a89708011a031f012ded40c2afa8a888e9d3a7d3b871633b1211714575753523478ea4b8b8d88e241aaa801309c8c39dad20af6055034fd850c2efbcf3ce63d6ac592a5722e2a9c68d1bf3af7ffd8b912347da9144c33f0968b98260172c8049369070bbe4924b78f6d967494b4bb3231111d7a5a5a5f1dc73cf3166cc183b92f00b7447087ac15a0b2cb6a184d3f8f1e379e28927484909e2feb62212552929293cf9e4938c1b37ce8e24bcca80376d18246178a7ab0386db50c265fcf8f13cfcf0c3c46241beed4f44a22a168b71eeb9e7b265cb1656ac5861c7123e1380721b064918deed9a025b003df137a42ebdf452fef9cf7faa5c8948c2d5d7d773d965973175ea543b92f0d809b401beb0832009fa2542707e039fb2a184c379e79dc7638f3da672252281108bc578fcf1c775e37bb84d25e0e50ac2b18205d003586e4309b6a2a22266cd9aa51bda452470f6eddbc7b9e79eab2d1cc2a90710f8adfac352b0004a81be3694601a34681073e6ccd1560c221258d5d5d5141515b160c1023b92e02a05fad93088c2708970bfbb6d20c1d4a74f1f66cf9ead72252281d6b8716366cf9eadc7ea844b68ba409856b0528075380f759480eadebd3bf3e7cfd7e36f44243476ecd8c1d9679fad074407df3bc06940ad1d04519856b06a817b6d28c171ca29a7f0d24b2fa95c8948a8346fde9c975e7a89934f3ed98e2458ee2524e50ac2b58205d004781fc8b20349ac962d5bb278f1623a77ee6c472222a1b07efd7afaf6ed4b5555951d49e25502ed802fed20a8c2b48205ce6fec833694c44a4f4f67e6cc992a5722126a5dba7461c68c19a4a7a7db9124de0384a85c41f80a1638bfc97b6c2889118bc59832650afdfbf7b7231191d01930600053a64cd1de7dc1b207e7bd3f54c2f0a81ceb0ba03dce3e18926013274ee4da6bafb5b188486875edda95783ccefcf9f3ed4812e351e0191b065d180b16c00640efea0976d55557f197bffcc5c62222a13770e040de7fff7dcacb03fdb8bb647129b0cd864117e635d017819fd950fc3178f060e6cc99436a6aaa1d898844424d4d0d43870ee5e5975fb623f1cf8bc0b9360c833017ac81c0021b8af74e3ffd74162f5e4c66a69ebf2d22d1b673e74efaf4e9c39b6fbe6947e28f81c06b360c833017ac18f006d0d30ec43bcd9b37e7f5d75fd72706452469bcfdf6dbf4ead58b1d3b76d891786b19d00ba8b7833008e3a708f7ab07eeb2a178271e8ff3f8e38fab5c894852e9dcb9338f3df618f17898df3243e9ff12d27205e1bdc97dbf75c079c0f17620eebbf9e69bb9e69a6b6c2c221279a79e7a2a7bf6ec61d1a2457624dea8007e43880b56982f11ee37029861437157414101c5c5c5da1b464492565d5d1d43870ea5a4a4c48ec47d238059360c9328bc5bea5e2c8fe5e4e4b07cf9725ab66c6947222249a5b2b2921ffde8476cdab4c98ec43da1bef76abf285c50ae0726d850dc919191c1f4e9d355ae444480acac2c5e78e105323232ec48dc338190972b8846c10298032cb1a1344c2c16e3c1071fa47bf7ee76242292b47af4e8c1030f3ca05b26bcb11828b6611885fd26f7836d062eb7a11cbd71e3c631618216074544aceeddbbf3e1871fb262c50a3b9286190bbc67c3308a52fd8ee16c3c3ac0e47214ba74e9c28a152b68d2a4891d898808f0e5975fd2bd7b77de7efb6d3b92a3f32a703611b83c08d1b94408ce1fc82d369423d7a85123a64e9daa722522f23d9a3469c2d4a953494b4bb323393ab710917205d1ba4408ce65c27ce0143b90c33771e244468d1a6563111131dab469434a4a0aafbcf28a1dc991990bfcc9866116a54b84fbf54637bc1fb5810307327ffe7cddbc29227298eaebeb19346810afbd16ca47e605456fe0751b865954df4567033fb5a17cbf638f3d9655ab56d1b66d5b3b121191eff1c1071f909b9bcbf6eddbed487ed86ce0e7360cbb28dd8375b0485dc7f5432c16e3ef7fffbbca9588c85168dbb62d7ffffbdfb5fa7fe4227bff74d4eec1da6f2bd00ed0064e87e9f2cb2fe7f7bfffbd8d4544e4309d79e699bcfbeebb545454d8917cb729c0c3368c822857edd6c0dbc0317620876ad7ae1d6bd6ace19863f45b2522d210bb76ede2cc33cfe4fdf7dfb723f9a65d4027e0133b8882a85e220467152b529f48f0422c16e3a1871e52b9121171c131c71cc3430f3da44b8587e776225aae20da2b5800e9c09bc0c976208e3163c63075ea541b8b8848038c193386a79f7edac6f2b5778133803d761015512f58002381e93614c8cecee6adb7de223b3bdb8e4444a401b66ddbc669a79dc6b66ddbec481c238199368c92285f22dc6f2630df8602f7dc738fca95888807b2b3b3f9cb5ffe626371bc02ccb261d424c30a16402eb092e4289487a5b0b090e2e2483cb05c4424b00a0b0b993b77ae8d93591d9007acb683a849968205f010f04b1b26a366cd9ab166cd1adab76f6f472222e2a24d9b36d1b56b5776efde6d47c9ea21e01a1b465154f7c1fa36af03ff0534b6836473d75d773174e8501b8b8888cb5ab468414646062fbdf4921d25a3edc079c097761045c9b482057023708f0d9349af5ebd58b264893e422c22e293baba3ace3aeb2cde78e30d3b4a3637027fb5615425dbbb6c239cebbe9ded2019c4e371162f5e4caf5ebdec4844443cb474e952faf6ed4b5d5d9d1d258bf54057609f1d4455b2ddf4bd17b8ce86c9e2924b2e51b912114980d9cc9f91000011ac49444154debd7b3366cc181b27935f9344e50a926f056bbfc781cb6d1865cd9a3563fdfaf5b469d3c68e4444c4071f7df4115dba74e18b2fbeb0a3a87b1cb8d28651974c37b91f6c213016686a075175cb2db7f0d39ffed4c62222e293cccc4c6a6b6b993f3fa9b666fc0c3817f85f3b88ba645dc102b81878ca8651d4be7d7bd6ad5b47e3c649ff014a119184aaaeaee6d4534f65f3e6cd7614551703cfd8301924db3d58077b06f88f0da3e8aebbee52b912110980c68d1b73e79d77da38aafe0d4cb361b248e6152c8076380f838eeca5c27efdfab170e1421b8b884802f5ebd78fd2d2521b47c96e9c8739bf6f07c9229957b0c0f983bfd98651118fc7f9eb5f9366cb111191d0f8dbdffe463c1ee9b7e09b49e272052a58000f024b6c1805975c72093d7bf6b4b188882458cf9e3da3bc6dc3629c47e224b564bf44b8df19380f834eb383b04a4b4b63ddba759c7cf2c97624222201f0eebbef72da69a7b16f5fa4b687da077407d6da41b2d10a96632df0671b86d915575ca17225ff7f7bf71e6c57599f71fcfb3ba146724a2c262424670814122e8922c4aa494860a0847231de30498136023102052a369dce54d45a69a76051a79db1d6a230ea388a8858bc404144c7c434d670138284480d253926260a81000172defeb176cc3e6f2e27e79c7d5b7b7f3f3367cee67d16fcc1c05a4f7e6bed77496a61471d75148b16b5dd968cff88e50a7082556d24c514ebb83c289b912347b266cd1a264d9a944792a416b26edd3a8e3efa685e7ae9a53c2aa3d5c074607b1e74222758bb6c07de0b94fe45518b172fb65c4952091c7ef8e12c5ebc385f2ea33e8a6ba8e5aac209d6eeae013e942f96c581071ec8dab56b7d258e2495c4860d1b983c79322fbc50eacdceaf013e922f76322758bbfb18f0937cb12c2ebdf452cb952495c8c48913b9e4924bf2e532594951b054c509d69e4d061ea0641b90767777f3c4134f306edcb83c9224b5b04d9b3671e4914796f145d0cf012700bfc8834ee7046bcfd60257e68badee8a2baeb05c4952098d1b378ecb2fbf3c5f2e832bb15ced9113acbd0be06bc0bbf3a0158d1a358a75ebd63176ecd83c922495c0e6cd9b99346952999ec5ba055808a43c9013ac7d49c025c0fa3c68458b162db25c4952898d1d3bb64cfb623d055c8ae56aaf9c600dec54e01e5af8dfd588112378f4d1479932654a1e49924ae4f1c71fe7d8638fa5afafa5770c4ac069c00fb27555718235b07b818fe78bad64debc79962b496a0353a64c61debc79f972abb90ecbd5805a762ad3625e45f1f2cae979d00a962d5bc649279d942f4b924a68d9b265cc9933275f6e15ab8059405b6c3d5f4f16acfd770cc5ab740ecc83669a3163062b56acc8972549253663c60c56ae5c992f37dbf3148386c7f240bbf316e1fe7b0cf8cb7cb1d9962e5d9a2f49924aae45cfedefc772b5df9c600d4e009f072eca836638eaa8a358b3660d5d5df664496a277d7d7d4c993285279e78228f9ae5468a770dfaadc1fde4957970127039705f1e34c355575d65b992a436d4d5d5c555575d952f37cb2a8a6b9fe56a109c600dcd1114ffc1bd365b6f98d1a347d3dbdbcba851a3f24892d406b66ddbc6c48913d9ba756b1e35d216e08dc0ba3cd0be39fe189a5f02e7d1c4367ffef9e75bae24a98d75777773de79e7e5cb8dd44771adb35c0d81056be8ee02aece171b65c99225f99224a9cd34f95c7f357077bea8fde32dc2e109e01bc03bf2a09ea64f9fceaa55abf26549521b9a3e7d3af7df7f7fbe5c6fb701e7d2c43b3565e7046b7812f01e604d1ed45393ff4423496aa0269cf31f032ec472352c4eb06a632af013a03b0f6aadbbbb9bdede5e0e3ae8a03c9224b5a1ad5bb73271e244b66ddb9647f5b00d7833b03a0f34384eb06a63350dda1b6bc18205962b49ea20a3478f66fefcf9f972bd5c84e5aa262c58b5730bf0897cb1d69a302a9624355983cefdd7535ccb5403de22acad0380db81b3f2a016a64d9bc6c30f3f9c2f4b923ac0b469d358bdba6ec3a53b80b701afe48186c609566dbd022c041ecc835ab8f8e28bf32549528758bc7871be542b0f505cbb2c5735e404ab3e7a809595df35d1d5d5c5934f3e494f4fcdfe9192a41259bf7e3d93264da2afaf2f8f86633df096ca6fd59013acfa580f9c033c970743356bd62ccb952475b09e9e1e66ce9c992f0fc7b3c0d958aeeac282553f0f02f3811d7930140b172ecc9724491da686d7821d14d7a887f240b5e12dc2fa7b1ff0d97c7130468c18c1534f3dc5a1871e9a4792a40ed2dbdbcb61871dc68e1dc3feb3fbfb801bf245d58e13acfafb0fe0ba7c7130e6cc9963b992243161c20466cf9e9d2f0fd6b558aeeace82d5181f04be962feeaf050b16e44b92a40e35cc6bc2cd142f71569d798bb0715e0ddc03ccca837d39e08003d8b06103871c72481e49923ad0a64d9be8e9e9e1955706bdabc272e074e0c53c50ed39c16a9c1781b7036bf3605f4e39e514cb9524e977c68d1bc7c9279f9c2f0fe471e01d58ae1ac682d5589b297679ff551eeccd3047c192a43634c86bc3af28b663d89c07aa1f6f1136c734e087c0983ca8d6d5d5c5860d1b183f7e7c1e49923ad8c68d1b993871e2fe6c3aba05380578240f545f4eb09ae311e00c606b1e543bf1c4132d5792a4dd8c1f3f9e134e38215fce3d4371adb15c358105ab79eea3b85df87c1eec74d659757967b424a90d0c708dd846715bf0be3c506358b09aebc7146f2fdf9e0700679e7966be244912b0cf6bc4768a6bcb8ff3408de33358ade11ce09bc0013b170e3ef860366fde4c57971d5892b4bb1d3b763076ec589e7efae9eae59729be2df8ddea45359e57efd6f01de07ce0774f2bce9d3bd7722549daab1123463077eedceaa53e8a6b89e5aa0578056f1db70017edfc8b01eead4b92945f2b2e04be5ebda0e6f11661ebb9acababebdfd6af5feffb072549fbd4dbdb4b4f4f0f29a5cb807fcf73358f13acd6f399a953a77ed47225491ac8840913983a75eadf61b96a394eb05a544a6929707dbe2e495295a511f1c97c51cd67c16a6129a54b81cfe4eb92a48e9780cb22e2b379a0d660c16a7129a545c04d783b579254e8032e8c882fe5815a8705ab04524aef06be42d53e5992a48ef432705e44dc9a076a2d16ac9248299d03dc0a8ccc33495247d80ebc2b22dce7aa042c582592523a0db81de8ce3349525bdb06bc2d22be9f076a4d16ac924929cd02ee0046e79924a92d3d039c1d11be5bb0442c582594529a0edc058cc93349525bd9029c1111f7e5815a9b05aba4524aaf03ee06dc915492dad3af80d323e2913c50ebf3abff2515110f037380b57926492abdc7813996abf2b260955844ac056602cbf34c92545acb81999573bc4aca82557211b119381db839cf2449a5f3558adb825bf240e562c16a0311f122703e706d9e49924ae39f800b2ae774959c0fb9b79994d2128af7178ec83349524bda41f15ec11bf240e565c16a4329a53f01be0efc7e9e49925acab3c0fc88f8af3c50b959b0da544ae90dc077809e3c9324b584a7807322e2a13c50f9f90c569b8a880781b7000fe69924a9e91e006658aeda9705ab8d45c47a8abdb2eecc334952d3dc019c5c3947ab4d59b0da5c443c0bcc03aecf334952c3fd33c54b9b9fcd03b5179fc1ea2029a5f9c04d40779e4992eaea39e0a288f87a1ea83d59b03a4c4a692a701b70749e4992ea620df0ce88589d076a5fde22ec3095ffc1df0c7c33cf244935771bf026cb55e7b16075a08878063817f820d097c592a4e1eb03fe16383722b6e6a1da9fb7083b5c4a692ef015604c9e499286640bf0a711f1bd3c50e7b0608994d2e1c0adc01bf34c923428ab28a656ebf2409dc55b84a27222984df10d4349d2d0dc08ccb65c092c58aa88e2eded8b8125c00b592c49dabbe729ce9defad9c4b256f116a7729a563812f03d3f34c92d4cf2ae08288782c0fd4d99c60693711f1736026701d90b25892549c1baf056659aeb4274eb0b44f29a553812f013d7926491dea29e0cf23e2077920ede4044bfb1411f702c703bede4192e016e078cb950662c1d28022e237c002e022605b164b5227788ee21cb830227e9b8752ce5b841a9494d2648a07e0df9c6792d4a656027f16116bf340da1b27581a94ca096636700dbe6647527beba338d7cdb15c69b09c6069c8524a3381cf03c7e5992495dca3c0e288589107d2fe7082a521ab9c784e04fe1e78398b25a98c5e063e0a9c68b9d27038c1524da494a6019f0366e4992495c40a6049443c9207d26039c1524d544e48b3812b29be6d234965f11c7005c57b042d57aa092758aab994d224e033c0d97926492de63bc06511f17f79200d87132cd55c443c09bc15380ff875164b522bf835c5396a9ee54af560c1525d44448a88af527cc3f08b792e494df405e0b888f86a44f8be55d585b708d51029a533807f058ec933496a90c7802b23e2ee3c906acd09961a2222eea278a7e1078067b25892eae9698a73cfeb2d576a1427586ab894d221c0c780f761c997543f7dc067818f44c4e63c94eac982a5a649291d0f7c0a382dcf246998ee013e10113fcb03a9112c586aaa9452006f073e011c99c5923458bf009602b7fb00bb9ac982a59690521a09bc1ff8107050164bd2409e05fe01f89788d89e8752a359b0d452524a87529c242fc6ff3e250d2c0137025747c4c63c949ac50b985a524ae904e01a8a0d4b25694fbe0d7c38221ec803a9d92c586a6929a5b75014adb97926a963dd45f1cdc0957920b50a0b964a21a53487a2689d9267923ac60f2926563fca03a9d558b0541a956f1c9e4651b46666b1a4f6b502f830f07dbf19a8b2b060a9742a45eb4c8aa2f5c62c96d43e7e0a7c04b8d362a5b2b160a9b42a45eb6d1445ebf5592ca9bc1ea22856ee65a5d2b260a9f4524a5dc0b9c0df007f94c592cae3a7c0c7815b23a22f0fa532b160a96d54265a7380bf06e665b1a4d6f52de07ae0474eacd42e2c586a4b29a56381bf02160123b35852f36d07be007c2a227e9e8752d959b0d4d6524ae381bf002e07c664b1a4c6db027c1af874446cca43a95d58b0d411524aa380f7504cb52667b1a4fa5b0b7c12f842443c9f8752bbb160a9a3a49446507cf370297052164baabde514cf577d2b2276e4a1d4ae2c58ea5829a5138125c005c0e82c9634745b812f033744c4fd792875020b963a5e4aa91b984f51b66665b1a4fdb71cb801b8c5db80ea74162ca94a4a691af05e8a6f1fbe368b25ed6e0bf045e07311b13a0fa54e65c192f620a5f46ae09d1453ad53b358127c9f625a755b446ccf43a9d359b0a401a49426534cb52e04c6f74fa58eb211b809f87c44accd4349bb58b0a4fd9452fa3d8a69d602e05dc0c1fd8f90dad26f816f005f03ee8d8897b35cd21e58b0a4214829bd0af8636021f00ee035fd8f904aed19e0368a52754f44bc94e5920660c1928629a53412388362b2f576e0a0fe4748a5f02cf09fc0cdc0dd3e57250d8f054baaa1cac3f167524cb6e601ddfd8f905aca36e0768a49d59d11f162964b1a220b96542795d7f39c0dbc95a274f980bc5ac146e04ee0dbc077ddaf4aaa0f0b96d40029a52ee00dc059959f99c0887e0749f5b1035801dc51f9793022fafa1f22a9d62c585213a494fe00984b31d93a0b98d0ff0869587ad955a8be17114f67b9a43ab360494d96520ae078764db7660107f43b48dab757285e537307c5edbf872222f53f44522359b0a41693527a0d300738a9f2f326e0d5fd0e52a77b11f81f8a52b51cf851443cd3ff1049cd64c1925a5c65cfade9ec2a5cb38143fa1da476b7895d656a39709f7b5349adcd8225954ce596e2647615ae9380e3fa1da4b27b945d656a19f00b6ff949e562c192da404a690c30033801783dc5335dc7005dd5c7a9e5f4018f010f013f031e00fe3b22b6f43b4a52e958b0a43695523a9062b2753cbb4ad71bf0f662b3fc1a7890a24ced2c548f46c40bfd8e92d4162c58528749298da77fe97a1d700430a6ea300ddd16e097c0c3ec2a520f45c4c6ea8324b5370b962400524aa381c329cad611c01f567d3e02381801fc96a240edfcf9dfaacfeb22626b7198a44e66c192b45f2a9ba35617b0c381b1959f31559f47177f47e96c0536577eb6547d5e4755a1723b0449fbc38225a9a62adb4abc96dd8bd7cecf6328f6f51a09bcaaea77f5e7bdad016c075eaafa5dfd796f6b2fb2ab345597a79d9f7fe3b60792244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992244992a446fa7f23042de550f55d460000000049454e44ae426082, NULL, NULL, NULL, 0, 0, NULL),
(249, 'hieunguyen', 'admin2205', '$pbkdf2-sha256$29000$iXHunbOWEqJUSimltHZujQ$dzVuhYrthr3PiCsFDrucMVWbNOH1fsHHRrNpIis8U8U', 'hieunkbb@gmail.com', NULL, 'Nam', NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', '2024-06-14 04:49:58', 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ZoningImg_UserUpload`
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
-- Đang đổ dữ liệu cho bảng `ZoningImg_UserUpload`
--

INSERT INTO `ZoningImg_UserUpload` (`ZoningImgID`, `DistrictID`, `UserID`, `ZoningUserImg`, `Description`, `Imglat`, `Imglng`, `Imgwidth`, `Imgheight`) VALUES
(1, 1, 6, 'https://github.com/hieunguyen-lang/landinvest/blob/main/231101_Ban%20do%20KHSD%C3%90%202024%20quan%20Nam%20Tu%20Liem%20%20(1).jpg?raw=true', 'Ban do quy hoach quan bac tu liem', 10.7, 100.6, 1000, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Zonings`
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
-- Đang đổ dữ liệu cho bảng `Zonings`
--

INSERT INTO `Zonings` (`ZoningID`, `DistrictID`, `ZoningImg`, `Description`, `Imglat`, `Imglng`, `Imgwidth`, `Imgheight`, `Path`) VALUES
(1, 12, 'https://github.com/hieunguyen-lang/landinvest/blob/main/231101_Ban%20do%20KHSD%C3%90%202024%20quan%20Nam%20Tu%20Liem%20%20(1).jpg?raw=true', 'Nam Từ Liêm', 21.0196, 105.724, 9922, 11103, NULL),
(2, 6, 'https://github.com/hieunguyen-lang/landinvest/blob/main/Ban%20do%20ke%20hoach%20su%20dung%20dat%202024%20quan%20Dong%20Da.jpg?raw=true', 'Đống Đa', 21.0147, 105.81, 9922, 11103, NULL),
(3, 9, 'https://github.com/hieunguyen-lang/landinvest/blob/main/Ban%20do%20KHSDD%202024%20quan%20Thanh%20Xuan.jpg?raw=true', 'Thanh Xuan', 21.0196, 105.724, 17747, 9933, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `AuctionImgs`
--
ALTER TABLE `AuctionImgs`
  ADD PRIMARY KEY (`AuctionImgID`),
  ADD KEY `LandAuctionID` (`LandAuctionID`);

--
-- Chỉ mục cho bảng `AuctionVideos`
--
ALTER TABLE `AuctionVideos`
  ADD PRIMARY KEY (`AuctionVideoID`),
  ADD KEY `LandAuctionID` (`LandAuctionID`);

--
-- Chỉ mục cho bảng `Boxs`
--
ALTER TABLE `Boxs`
  ADD PRIMARY KEY (`BoxID`),
  ADD UNIQUE KEY `BoxName` (`BoxName`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  ADD PRIMARY KEY (`CommentFavoriteID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CommentID` (`CommentID`);

--
-- Chỉ mục cho bảng `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `CommentID` (`CommentID`);

--
-- Chỉ mục cho bảng `Districts`
--
ALTER TABLE `Districts`
  ADD PRIMARY KEY (`DistrictID`),
  ADD KEY `ProvinceID` (`ProvinceID`);

--
-- Chỉ mục cho bảng `Favorite`
--
ALTER TABLE `Favorite`
  ADD PRIMARY KEY (`FavoriteID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PostID` (`PostID`);

--
-- Chỉ mục cho bảng `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `ForumPhotos_ibfk_1` (`PostID`);

--
-- Chỉ mục cho bảng `ForumPosts`
--
ALTER TABLE `ForumPosts`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `ForumPosts_ibfk_2` (`GroupID`),
  ADD KEY `ForumPosts_ibfk_1` (`UserID`);

--
-- Chỉ mục cho bảng `gmail_from`
--
ALTER TABLE `gmail_from`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`GroupID`),
  ADD UNIQUE KEY `GroupName` (`GroupName`),
  ADD KEY `BoxID` (`BoxID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `LandAuctionCategories`
--
ALTER TABLE `LandAuctionCategories`
  ADD PRIMARY KEY (`LandAuctionCategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Chỉ mục cho bảng `LandAuctions`
--
ALTER TABLE `LandAuctions`
  ADD PRIMARY KEY (`LandAuctionID`),
  ADD KEY `DistrictID` (`DistrictID`),
  ADD KEY `LandAuctionCategoryID` (`LandAuctionCategoryID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`LocationID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `PostComments`
--
ALTER TABLE `PostComments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `PostID` (`PostID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `Provinces`
--
ALTER TABLE `Provinces`
  ADD PRIMARY KEY (`ProvinceID`),
  ADD UNIQUE KEY `ProvinceName` (`ProvinceName`);

--
-- Chỉ mục cho bảng `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD PRIMARY KEY (`RefreshTokenID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `Relationships`
--
ALTER TABLE `Relationships`
  ADD PRIMARY KEY (`RelationshipID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RelatedUserID` (`RelatedUserID`);

--
-- Chỉ mục cho bảng `UserPhotos`
--
ALTER TABLE `UserPhotos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `ProvinceID` (`ProvinceID`);

--
-- Chỉ mục cho bảng `ZoningImg_UserUpload`
--
ALTER TABLE `ZoningImg_UserUpload`
  ADD PRIMARY KEY (`ZoningImgID`),
  ADD UNIQUE KEY `ZoningUserImg` (`ZoningImgID`),
  ADD KEY `DistrictID` (`DistrictID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `Zonings`
--
ALTER TABLE `Zonings`
  ADD PRIMARY KEY (`ZoningID`),
  ADD KEY `DistrictID` (`DistrictID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `AuctionImgs`
--
ALTER TABLE `AuctionImgs`
  MODIFY `AuctionImgID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `AuctionVideos`
--
ALTER TABLE `AuctionVideos`
  MODIFY `AuctionVideoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `Boxs`
--
ALTER TABLE `Boxs`
  MODIFY `BoxID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  MODIFY `CommentFavoriteID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `Favorite`
--
ALTER TABLE `Favorite`
  MODIFY `FavoriteID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `ForumPosts`
--
ALTER TABLE `ForumPosts`
  MODIFY `PostID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `gmail_from`
--
ALTER TABLE `gmail_from`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Groups`
--
ALTER TABLE `Groups`
  MODIFY `GroupID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `LandAuctions`
--
ALTER TABLE `LandAuctions`
  MODIFY `LandAuctionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `Locations`
--
ALTER TABLE `Locations`
  MODIFY `LocationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT cho bảng `PostComments`
--
ALTER TABLE `PostComments`
  MODIFY `CommentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `Provinces`
--
ALTER TABLE `Provinces`
  MODIFY `ProvinceID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  MODIFY `RefreshTokenID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `Relationships`
--
ALTER TABLE `Relationships`
  MODIFY `RelationshipID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `UserPhotos`
--
ALTER TABLE `UserPhotos`
  MODIFY `PhotoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT cho bảng `ZoningImg_UserUpload`
--
ALTER TABLE `ZoningImg_UserUpload`
  MODIFY `ZoningImgID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `Zonings`
--
ALTER TABLE `Zonings`
  MODIFY `ZoningID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `Boxs`
--
ALTER TABLE `Boxs`
  ADD CONSTRAINT `Boxs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Các ràng buộc cho bảng `CommentFavorite`
--
ALTER TABLE `CommentFavorite`
  ADD CONSTRAINT `CommentFavorite_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `CommentFavorite_ibfk_2` FOREIGN KEY (`CommentID`) REFERENCES `PostComments` (`CommentID`);

--
-- Các ràng buộc cho bảng `CommentPhotos`
--
ALTER TABLE `CommentPhotos`
  ADD CONSTRAINT `CommentPhotos_ibfk_1` FOREIGN KEY (`CommentID`) REFERENCES `PostComments` (`CommentID`);

--
-- Các ràng buộc cho bảng `Districts`
--
ALTER TABLE `Districts`
  ADD CONSTRAINT `Districts_ibfk_1` FOREIGN KEY (`ProvinceID`) REFERENCES `Provinces` (`ProvinceID`);

--
-- Các ràng buộc cho bảng `Favorite`
--
ALTER TABLE `Favorite`
  ADD CONSTRAINT `Favorite_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `Favorite_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `ForumPosts` (`PostID`);

--
-- Các ràng buộc cho bảng `ForumPhotos`
--
ALTER TABLE `ForumPhotos`
  ADD CONSTRAINT `ForumPhotos_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `ForumPosts` (`PostID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ForumPosts`
--
ALTER TABLE `ForumPosts`
  ADD CONSTRAINT `ForumPosts_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `ForumPosts_ibfk_2` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Groups`
--
ALTER TABLE `Groups`
  ADD CONSTRAINT `Groups_ibfk_1` FOREIGN KEY (`BoxID`) REFERENCES `Boxs` (`BoxID`),
  ADD CONSTRAINT `Groups_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Các ràng buộc cho bảng `LandAuctions`
--
ALTER TABLE `LandAuctions`
  ADD CONSTRAINT `LandAuctions_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Các ràng buộc cho bảng `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD CONSTRAINT `RefreshTokens_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

DELIMITER $$
--
-- Sự kiện
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_old_user_with_id_1` ON SCHEDULE EVERY 1 HOUR STARTS '2024-06-12 02:22:06' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM Users WHERE Confirmed = FALSE AND created_at < NOW() - INTERVAL 1 DAY$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
