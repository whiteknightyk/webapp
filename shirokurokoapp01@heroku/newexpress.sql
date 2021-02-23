-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-02-20 17:43:35
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `newexpress`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `language`
--

INSERT INTO `language` (`id`, `language`, `url`) VALUES
(1, 'アイスランド語', 'https://www.hakusuisha.co.jp/book/b506271.html'),
(2, 'アイヌ語', 'https://www.hakusuisha.co.jp/book/b206288.html'),
(3, 'アイルランド語', 'https://www.hakusuisha.co.jp/book/b498406.html'),
(4, 'アムハラ語', 'https://www.hakusuisha.co.jp/book/b351996.html'),
(5, 'アラビア語', 'https://www.hakusuisha.co.jp/book/b487662.html'),
(6, 'エジプトアラビア語', 'https://www.hakusuisha.co.jp/book/b481987.html'),
(7, 'イタリア語', 'https://www.hakusuisha.co.jp/book/b440962.html'),
(8, 'インドネシア語', 'https://www.hakusuisha.co.jp/book/b535814.html'),
(9, 'ウクライナ語', 'https://www.hakusuisha.co.jp/book/b451091.html'),
(10, 'ウルドゥー語', 'https://www.hakusuisha.co.jp/book/b437600.html'),
(11, 'イギリス英語', 'https://www.hakusuisha.co.jp/book/b535816.html'),
(12, 'エスペラント語', 'https://www.hakusuisha.co.jp/book/b375945.html'),
(13, 'オランダ語', 'https://www.hakusuisha.co.jp/book/b470492.html'),
(14, 'カタルーニャ語', 'https://www.hakusuisha.co.jp/book/b206184.html'),
(15, 'カンボジア語', 'https://www.hakusuisha.co.jp/book/b548329.html'),
(16, '広東語', 'https://www.hakusuisha.co.jp/book/b487656.html'),
(17, '現代ギリシア語', 'https://www.hakusuisha.co.jp/book/b510256.html'),
(18, 'グルジア語', 'https://www.hakusuisha.co.jp/book/b451090.html'),
(19, '上海語', 'https://www.hakusuisha.co.jp/book/b517242.html'),
(20, 'スペイン語', 'https://www.hakusuisha.co.jp/book/b457638.html'),
(21, 'スウェーデン語', 'https://www.hakusuisha.co.jp/book/b373633.html'),
(22, 'スワヒリ語', 'https://www.hakusuisha.co.jp/book/b383223.html'),
(23, 'セルビア・クロアチア語', 'https://www.hakusuisha.co.jp/book/b427606.html'),
(24, 'タイ語', 'https://www.hakusuisha.co.jp/book/b377976.html'),
(25, '台湾語', 'https://www.hakusuisha.co.jp/book/b454340.html'),
(26, 'タミル語', 'https://www.hakusuisha.co.jp/book/b470486.html'),
(27, 'チェコ語', 'https://www.hakusuisha.co.jp/book/b457634.html'),
(28, 'チベット語', 'https://www.hakusuisha.co.jp/book/b481988.html'),
(29, '中国語', 'https://www.hakusuisha.co.jp/book/b370897.html'),
(30, 'デンマーク語', 'https://www.hakusuisha.co.jp/book/b373634.html'),
(31, 'ドイツ語', 'https://www.hakusuisha.co.jp/book/b372460.html'),
(32, '日本語の隣人たちⅡ', 'https://www.hakusuisha.co.jp/book/b206266.html'),
(33, 'トルコ語', 'https://www.hakusuisha.co.jp/book/b372463.html'),
(34, 'ノルウェー語', 'https://www.hakusuisha.co.jp/book/b372467.html'),
(35, 'バスク語', 'https://www.hakusuisha.co.jp/book/b457637.html'),
(36, 'ビルマ語', 'https://www.hakusuisha.co.jp/book/b432164.html'),
(37, 'ヒンディー語', 'https://www.hakusuisha.co.jp/book/b491939.html'),
(38, 'ハンガリー語', 'https://www.hakusuisha.co.jp/book/b206203.html'),
(39, 'フィリピノ語', 'https://www.hakusuisha.co.jp/book/b496883.html'),
(40, 'フィンランド語', 'https://www.hakusuisha.co.jp/book/b373636.html'),
(41, 'フランス語', 'https://www.hakusuisha.co.jp/book/b370903.html'),
(42, 'ブルガリア語', 'https://www.hakusuisha.co.jp/book/b440960.html'),
(43, 'ベトナム語', 'https://www.hakusuisha.co.jp/book/b370902.html'),
(44, '現代ヘブライ語', 'https://www.hakusuisha.co.jp/book/b472206.html'),
(45, '古典ヘブライ語', 'https://www.hakusuisha.co.jp/book/b437597.html'),
(46, 'ペルシア語', 'https://www.hakusuisha.co.jp/book/b377968.html'),
(47, 'ベンガル語', 'https://www.hakusuisha.co.jp/book/b372457.html'),
(48, 'ポーランド語', 'https://www.hakusuisha.co.jp/book/b472213.html'),
(49, 'ブラジル・ポルトガル語', 'https://www.hakusuisha.co.jp/book/b375949.html'),
(50, 'マレー語', 'https://www.hakusuisha.co.jp/book/b432168.html'),
(51, 'モンゴル語', 'https://www.hakusuisha.co.jp/book/b479952.html'),
(52, 'ヨーロッパのおもしろ言語', 'https://www.hakusuisha.co.jp/book/b206191.html'),
(53, 'ラオス語', 'https://www.hakusuisha.co.jp/book/b454341.html'),
(54, 'ラテン語', 'https://www.hakusuisha.co.jp/book/b370899.html'),
(55, 'ラトヴィア語', 'https://www.hakusuisha.co.jp/book/b383222.html'),
(56, 'リトアニア語', 'https://www.hakusuisha.co.jp/book/b479953.html'),
(57, 'ルーマニア語', 'https://www.hakusuisha.co.jp/book/b427604.html'),
(58, 'ロシア語', 'https://www.hakusuisha.co.jp/book/b370896.html'),
(59, 'ロマ(ジプシー)語', 'https://www.hakusuisha.co.jp/book/b345226.html');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
