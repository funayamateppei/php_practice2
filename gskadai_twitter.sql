-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 12 月 02 日 02:06
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gskadai_twitter`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookmark_table`
--

CREATE TABLE `bookmark_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `tweet_table`
--

CREATE TABLE `tweet_table` (
  `id` int(11) NOT NULL,
  `text` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `tweet_table`
--

INSERT INTO `tweet_table` (`id`, `text`, `user_id`, `username`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 1, 'ふなむし', '2022-11-30 04:18:12', '2022-11-30 04:18:12'),
(2, 'aaa', 1, 'ふなむし', '2022-12-01 04:56:28', '2022-12-01 04:56:28'),
(3, 'aaa', 1, 'ふなむし', '2022-12-01 05:24:45', '2022-12-01 05:24:45'),
(4, 'カシージャス', 1, 'ふなむし', '2022-12-02 04:08:49', '2022-12-02 04:08:49'),
(5, 'ガビ', 1, 'ふなむし', '2022-12-02 05:00:47', '2022-12-02 05:00:47'),
(6, '日本一位通過おめでとう！', 5, 'test1', '2022-12-02 06:23:30', '2022-12-02 06:23:30'),
(7, 'どうあんりつぅぅぅぅぅうううう', 6, 'test2', '2022-12-02 06:24:49', '2022-12-02 06:24:49'),
(8, '海外の方へ、\r\nブルーロックは実在します！', 6, 'test2', '2022-12-02 06:25:12', '2022-12-02 06:25:12'),
(9, '三笘のあおひげ', 1, 'ふなむし', '2022-12-02 06:26:06', '2022-12-02 06:26:06'),
(10, '伊藤純也の眉毛', 1, 'ふなむし', '2022-12-02 06:28:00', '2022-12-02 06:28:00'),
(11, '決勝トーナメント１試合目、\r\nvsクロアチア 12月6日 0:00~ キックオフ', 6, 'test2', '2022-12-02 06:29:12', '2022-12-02 06:29:12'),
(12, 'あああ', 6, 'test2', '2022-12-02 06:29:29', '2022-12-02 06:29:29'),
(13, 'あああ', 6, 'test2', '2022-12-02 06:29:35', '2022-12-02 06:29:35');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `email`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'ふなむし', 't.funayama0217@gmail.com', '$2y$10$Al//EQTxN8mzaFTqw7WoAuLqMvIvUOkTQoFsKRYidpiIy0XadAe8i', '2022-12-01 06:20:08', '2022-12-01 06:20:08'),
(5, 'test1', 'test1@gmail.com', '$2y$10$ON.l2ieBwRPnDaSfbxWg6eIRa7n3VTXc2I3jtYWp1JWdyPXQwLGfO', '2022-12-02 06:23:05', '2022-12-02 06:23:05'),
(6, 'test2', 'test2@gmail.com', '$2y$10$ocHehZLEC6VmRdnC/0rKNeF/7Uvw2mJBsZ4KKZcHPgU.4LgOWFcnW', '2022-12-02 06:24:18', '2022-12-02 06:24:18');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `tweet_table`
--
ALTER TABLE `tweet_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `tweet_table`
--
ALTER TABLE `tweet_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;