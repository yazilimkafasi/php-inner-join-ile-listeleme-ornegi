-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 15 Haz 2020, 14:44:19
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `antakya_myo`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolum`
--

CREATE TABLE `bolum` (
  `bolum_id` int(11) NOT NULL,
  `bolum_ad` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bolum`
--

INSERT INTO `bolum` (`bolum_id`, `bolum_ad`) VALUES
(1, 'Bilgisayar'),
(2, 'Elektrik'),
(3, 'Muhasebe'),
(4, 'Otomasyon'),
(5, 'İnşaat'),
(0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ögrenci`
--

CREATE TABLE `ögrenci` (
  `ogr_id` int(11) NOT NULL,
  `ogr_ad` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ogr_soyad` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `ogr_bolum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ögrenci`
--

INSERT INTO `ögrenci` (`ogr_id`, `ogr_ad`, `ogr_soyad`, `ogr_bolum`) VALUES
(1, 'Ali', 'Yılmaz', 1),
(2, 'Melis', 'Kara', 2),
(3, 'Yasin', 'Temiz', 0),
(4, 'Gülçin', 'Egemen', 3),
(5, 'Remzi', 'Kaya', 4),
(6, 'Fatih', 'Duman', 5),
(7, 'Hüseyin', 'Teker', 5),
(8, 'Selim', 'Demir', 1),
(9, 'Canan', 'Güneş', 1),
(10, 'Kemal', 'Yarar', 2),
(11, 'Tutku', 'Yıldız', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ögrenci`
--
ALTER TABLE `ögrenci`
  ADD PRIMARY KEY (`ogr_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ögrenci`
--
ALTER TABLE `ögrenci`
  MODIFY `ogr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
