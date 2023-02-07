-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 فبراير 2023 الساعة 19:49
-- إصدار الخادم: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'himo@123', '123');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `categoryDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDate`) VALUES
(1, 'تقنيه', '2023-02-03'),
(2, 'الصحة', '2023-02-03'),
(3, 'منوعات', '2023-02-03');

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postCat` varchar(200) NOT NULL,
  `postImage` varchar(200) NOT NULL,
  `postContent` varchar(10000) NOT NULL,
  `postDate` datetime NOT NULL DEFAULT current_timestamp(),
  `postAuthor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `posts`
--

INSERT INTO `posts` (`id`, `postTitle`, `postCat`, `postImage`, `postContent`, `postDate`, `postAuthor`) VALUES
(1, 'البرمجة', 'تقنيه', '331_himo.jpg', 'سشهبالاشسبرىئ ا تئ{ؤئ تسبلؤرءئا{} عسختلرؤ~أ{}', '2023-02-03 19:26:44', 'عبدالله محمد'),
(2, 'الصوم', 'الصحة', '649_himo.png', '\r\nاذهب إلى التنقل\r\nاذهب إلى البحث\r\n\r\nReact (والتي تُعرَف أيضًا باسم React.js أو ReactJS) هي مكتبة JavaScript تُستخدَم لبناء واجهات المستخدم. تُدار React من شركة Facebook بالإضافة إلى مجتمع كبير من المطورين، فهي مشروعٌ مفتوح المصدر.\r\n\r\nتُسهِّل React عملية إنشاء واجهات مستخدم تفاعليّة. عليك فقط تصميم عروض (views) لكل حالة في تطبيقك، وستُحدِّث React المكوّنات الصحيحة بكفاءة وتقوم بتُصيّرها عندما تتغير بياناتك.\r\n\r\nتعتمد React بشكل أساسي على مفهوم المكوّنات (Components). حيث يجب عليك بناء مكوّنات مُغلَّفة تُدير حالتها الخاصّة، ومن ثمّ تُركِّب هذه المكوّنات مع بعضها لإنشاء واجهات مستخدم مُعقّدة. ولمّا كان منطق المكوّنات مكتوبا باستخدام JavaScript بدلًا من صيغة القوالب، فبإمكانك تمرير الكثير من البيانات عبر تطبيقك بسهولة وإبقاء الحالة بعيدة عن DOM.\r\n\r\nتسير React على مبدأ «تعلّم مرّة واكتب في أي مكان»، إذ لا تفترض تعاملك مع تقنية مُحدّدة، بل تستطيع تطوير ميزات جديدة فيها دون إعادة كتابة شيفرة جديدة. يُمكِن تصيير React على الخادوم باستخدام Node.js، ويُمكن من خلالها إنشاء تطبيقات الهواتف النقالة عبر React Native. ', '2023-02-03 19:28:58', 'عبدالله محمد'),
(3, 'القرائه', 'منوعات', '805_books.jpg', '\r\nاذهب إلى التنقل\r\nاذهب إلى البحث\r\n\r\nReact (والتي تُعرَف أيضًا باسم React.js أو ReactJS) هي مكتبة JavaScript تُستخدَم لبناء واجهات المستخدم. تُدار React من شركة Facebook بالإضافة إلى مجتمع كبير من المطورين، فهي مشروعٌ مفتوح المصدر.\r\n\r\nتُسهِّل React عملية إنشاء واجهات مستخدم تفاعليّة. عليك فقط تصميم عروض (views) لكل حالة في تطبيقك، وستُحدِّث React المكوّنات الصحيحة بكفاءة وتقوم بتُصيّرها عندما تتغير بياناتك.\r\n\r\nتعتمد React بشكل أساسي على مفهوم المكوّنات (Components). حيث يجب عليك بناء مكوّنات مُغلَّفة تُدير حالتها الخاصّة، ومن ثمّ تُركِّب هذه المكوّنات مع بعضها لإنشاء واجهات مستخدم مُعقّدة. ولمّا كان منطق المكوّنات مكتوبا باستخدام JavaScript بدلًا من صيغة القوالب، فبإمكانك تمرير الكثير من البيانات عبر تطبيقك بسهولة وإبقاء الحالة بعيدة عن DOM.\r\n\r\nتسير React على مبدأ «تعلّم مرّة واكتب في أي مكان»، إذ لا تفترض تعاملك مع تقنية مُحدّدة، بل تستطيع تطوير ميزات جديدة فيها دون إعادة كتابة شيفرة جديدة. يُمكِن تصيير React على الخادوم باستخدام Node.js، ويُمكن من خلالها إنشاء تطبيقات الهواتف النقالة عبر React Native. ', '2023-02-03 19:33:17', 'ابراهيم ثابت');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
