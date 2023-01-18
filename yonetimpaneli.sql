-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Oca 2023, 13:30:41
-- Sunucu sürümü: 5.6.17
-- PHP Sürümü: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `yonetimpaneli`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE IF NOT EXISTS `ayarlar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`ID`, `baslik`, `anahtar`, `aciklama`, `telefon`, `mail`, `adres`, `fax`, `url`) VALUES
(1, 'Website', 'yönetim paneli, admin panel,php ile yönetim paneli', 'İbrahim Özdemir', '5384789488', 'ibrahim.ozdemir3@ogr.dpu.edu.tr', 'Balıkesir', '02666141049', 'http://localhost/kurumsalsite/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bloglar`
--

CREATE TABLE IF NOT EXISTS `bloglar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=9 ;

--
-- Tablo döküm verisi `bloglar`
--

INSERT INTO `bloglar` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(7, 'Apartman Yönetmeliği Nedir?', 'apartman-yonetmeligi-nedir', 5, '<li>Günümüzde apartman yönetmeliği, genel anlamda apartman içinde yaşam alanı olan herkesin uymak zorunda olduğu kurallar bütünü olmaktadır. Bu noktada apartman yönetmeliği kurallarına apartman sakinlerinin uymaması gibi durumlarda yapılması gereken adımların hepsi apartman yönetmeliğinde belirlenmektedir. Bu durumlarda apartman yönetmeliğinde; apartman gürültü yönetmeliği, apartman altı dükkan yönetmeliği, apartman aidat yönetmeliği gibi konularda bilgilendirmeler yapılmaktadır.</li>\r\n\r\n<li>Yasal çerçevede apartmanlar, kat malikleri kurulunca yönetilmektedir. Bu noktada apartmanlarda belirli bir sayının üstünde apartman yönetimlerinin olması gereklidir. Bu durumda yine apartman hakkında belirlenen kararlar apartman yönetimi tarafından fikir birliği ile alınmaktadır. Bunların yanında apartman yönetmeliği esasında kat mülkiyeti kanunu ifade etmekte olup hukuki literatürde apartman yönetmeliği diye bir yönetmelik bulunmamaktadır.</li>', NULL, 'bloglar', 'blog', 1, 1, '2023-01-18'),
(8, 'Apartman Kuralları Nelerdir?', 'apartman-kurallari-nelerdir', 5, '<li>Konutların, belli düzenle işleyebilmesi için aylık süreçlerinin takibi için apartman yönetimleri gereklidir. Apartman yönetimleri aynı zamanda apartman kuralları olarak karşımıza çıkmaktadır. Bu şekilde herkes eşit şartlarda ve doğru bir şekilde yaşamaktadır. Bu kurallar sayesinde huzurlu sağlıklı ve mutlu bir şekilde yaşamanın temelleri atılmaktadır.</li>\r\n\r\n<li>Apartman kuralları herkes için aynıdır. Bu kurallar aynı şekilde site yönetim kuralları için de geçerlidir. Herkes eşit aynı özgürlükte ve kurallara uyulması zorunluluk gerektirmektedir. Apartmanda herkesin herkese karşı sorumlulukları vardır. Kurallara uymak herkesin en başı sorumluluk görevi arasındadır. Sağlıklı huzurlu bir bina için apartmana ve apartman kurallarına önem verilmesi gerekmektedir.</li>', NULL, 'bloglar', 'blog', 1, 2, '2023-01-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE IF NOT EXISTS `hizmetler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=17 ;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(10, 'Bakım & İşletim Hizmetleri', 'bakim-isletim-hizmetleri', 4, 'Temel yönetim hizmetlerinin ifasında aktif olarak ana başlıklar halinde karşımıza çıkan ancak bakım ve işletim hizmetleri olarak alt kategoride değerlendirdiğimiz hizmetlerimiz ise şunlardır:\r\n\r\nTemizlik Hizmetleri\r\nPeyzaj ve Çevre Düzenleme Hizmetleri\r\nHavuz İşletim Hizmetleri\r\nAsansör İşletim Hizmetleri\r\nHidrofor, Merkezi Isıtma İşletim Hizmetleri\r\nTeknik Destek Hizmetleri Vb.\r\nBu alt başlıkların tamamı ana hizmet kollarımızın işlerinin gerçekleşmesi için şart koşullardır. Örneğin teknik ekip ve mühendislerimiz düzenli olarak havuz, kazan dairesi vb yerlerin bakım onarım ve muayenelerini gerçekteştirdikleri gibi bunların takibini de yapmaktadır. Böylece ana yönetim hizmetlerimizin dışında bu şekilde alınan aksiyonlar önemli problemlerin oluşmasına da engel olmaktadır.', '163c7da3f23d25.png', 'hizmetler', 'hizmet', 1, 2, '2023-01-18'),
(11, 'Balıkesir Kurumsal Site Yönetim Hizmetleri', 'balikesir-kurumsal-site-yonetim-hizmetleri', 4, 'Biz profesyonel bir ekibiz. Genç ve güçlü ekibimiz, uzman ve yetkin yöneticilerimizle entegre çalışmaktadır. Uzun yıllardır biriken tecrübelerimiz sizleri asla yarı yolda bırakmaz. Balıkesir site yönetim hizmetlerinin yanısıra, Bursa site yönetim hizmetleri, Kütahya site yönetim hizmetleri, derince site yönetim hizmetleri, Bigadiç site yönetim hizmetleri, Dursunbey site yönetim hizmetleri, darıca site yönetim hizmetleri; hizmet verdiğimiz lokasyonlardan bazılardır.\r\n\r\nApartman yönetimlerinde dahi oluşan onlarca problemin çözümü, teknik detayı, tamir ve bakım işleri, güvenlik hizmetleri, para ve muhasebesel konular başta olmak üzere yönetimi zorlukla gerçekleştirilen işlerin tamamını sizin için yapıyoruz. Baştan aşağı tüm detaylar planlanarak hazırlanmış iş planları ile mevcut yönetmelikler baz alınarak sizlere baş ağrısız bir ortak yönetim imkanı sunuyoruz.', '163c7daffd8353.jpg', 'hizmetler', 'hizmet', 1, 3, '2023-01-18'),
(12, 'Hukuk Hizmeti', 'hukuk-hizmeti', 4, '● Hukuki danışmanlık hizmeti.\r\n● Borç ve yükümlülüklerini yerine getirmeyen kat malikleri ve kiracılar hakkında icra takibinin yapılması.\r\n● Dışarıdan hizmet alımlarında yapılacak sözleşmelerden doğabilecek ihtilafların en aza indirilmesinin sağlanması.', '163c7db64251a0.jpg', 'hizmetler', 'hizmet', 1, 4, '2023-01-18'),
(14, 'Yönetim Hizmetleri', 'yonetim-hizmetleri', 4, '<li>Genel olarak yönetim hizmetleri başlığı altında toplanan hizmetlerimizden bazıları şunlardır:</li>\r\n\r\n<li>Site Yönetimi</li>\r\n<li>Bütçe Yönetimi</li>\r\n<li>Güvenlik Yönetimi</li>\r\n<li>Hukuki Yönetim</li>\r\n<li>Tam izahıyla sitenizde bulunan tüm dairelerin ortak yönetim ihtiyaçlarını belirlemek, bu ihtiyaçlara uygun iş planı çıkarmak ve bu plana göre aksiyon almak işlerinin tamamını sizin adınıza biz yapıyoruz. Tüm evrak işleri de dahil olmak üzere ek hizmetler sayılabilecek, satın alma işlemleri, bakım onarım hizmetleri, temizlik gibi işlemler de site yönetim hizmetleri alanına girmektedir. </li>', NULL, 'hizmetler', 'hizmet', 1, 1, '2023-01-18'),
(16, 'Site Güvenliği', 'site-guvenligi', 4, '<li>Günümüzde insanların site yerleşimlerinde yaşamayı tercih etmesinin ilk sebebi güvenliktir. Özellikle de çocuklu aileler için yaşam alanı seçerken güvenlik bazen tek kriter olabilmektedir. Çünkü sitede yaşamak demek, site içerisinde bulunan eğitimli güvenlik görevlilerinin herhangi kritik bir anda duruma hemen müdahale etmesi demektir. Bizler sitenizde güvenli ve huzurlu yaşamanız için site prestijinize uygun olarak birçok güvenlik alanında sizlere hizmet vermektedir. </li>\r\n\r\n<li>Bu bağlamda sitede can ve mal güvenliğinin korunması için; siteye yönelik tehdit ve riskler tespit edilerek, bu risklerin ortadan kaldırılması için eylem planları hazırlanır ve bu planların yürütülmesi sağlanır.</li>\r\n\r\n<li>Sitede mevcut bir güvenlik sistemi varsa bunun işler durumda olması, kamera güvenlik kayıtlarının kontrol altında tutulması ve kayıtların arşivlenmesi yapılır.</li>\r\n\r\n<li>Siteye giriş çıkış yapan araçların plakaları için plaka tanıma sisteminin işletilmesi, bu plakaların kayıt altına alınarak raporlanması sağlanır; giriş-çıkış kontrol altında tutulur. Benzer şekilde siteye giriş çıkış yapan kargo, nakliye gibi yardımcı personelin kayıtları tutularak, denetim kuruluna rapor edilir. </li>\r\n\r\n<li>Ana mahaller dışında, otopark, spor alanları, sosyal alanlar ve açık peyzaj alanlarında devriye hizmetimiz bulunmaktadır.</li>\r\n\r\n<li>Teknik hacimlerde çalışan makinelerde ve asansörlerde güvenlik tedbirlerini alıyoruz.</li>\r\n\r\n<li>Bizler profesyonel site yönetimi kapsamında, yaşam alanınızı 7/24 kameralar ile gözlemliyor, sizin ve ailenizin güvenliği için alanında eğitimli uzman kadromuz ile gerekli tüm tedbirleri alıyoruz.</li>', '163c7dd66aa51c.png', 'hizmetler', 'hizmet', 1, 5, '2023-01-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE IF NOT EXISTS `kategoriler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tablo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`ID`, `baslik`, `seflink`, `tablo`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(2, 'Kurumsal', 'kurumsal', 'modul', NULL, NULL, 1, NULL, '2023-01-12'),
(4, 'Hizmetler', 'hizmetler', 'modul', NULL, NULL, 1, NULL, '2023-01-12'),
(5, 'Bloglar', 'bloglar', 'modul', NULL, NULL, 1, NULL, '2023-01-12'),
(6, 'Projeler', 'projeler', 'modul', NULL, NULL, 1, NULL, '2023-01-12'),
(7, 'Satış', 'satis', 'modul', NULL, NULL, 1, NULL, '2023-01-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`ID`, `adsoyad`, `kullanici`, `sifre`, `mail`, `tarih`) VALUES
(1, 'İbrahim Özdemir', 'ibrahim', '827ccb0eea8a706c4c34a16891f84e7b', 'test@hotmail.com', '2023-01-14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kurumsal`
--

CREATE TABLE IF NOT EXISTS `kurumsal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=14 ;

--
-- Tablo döküm verisi `kurumsal`
--

INSERT INTO `kurumsal` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(10, 'Hakkımızda', 'hakkimizda', 2, 'Toplu yaşam alanlarının artmasıyla birlikte günümüzde profesyonel yönetimi gereklilik göstermektedir ve bu amaçla site yönetim hizmeti vermekteyiz. Sitelerde yaşanan yönetim problemlerini hukuksal boyutta çözen firmamız çözüm odaklı, kaliteli hizmet anlayışı ve 7/24 hizmet garantisi ile kat maliklerinin ve sakinlerinin en iyi hizmeti almasını sağlamaktadır. Şeffaf ve güvenilir hizmet kalitesinden ödün vermeden yönettiği ve yöneteceği sitelerin problemlerini çözmeyi görev edinmekteyiz.', '163c7d599c79bf.jpg', 'hakkımızda,kurumsal', 'hakkımızda', 1, 1, '2023-01-18'),
(13, 'Misyonumuz', 'misyonumuz', 2, 'Sakinlerimizle aramızda güven ve sevgiye dayalı bir ortam yaratarak ortak alan sorunlarını oluşma aşamasında çözmek, yaşam alanlarını onlara yakışır seviyeye çıkarmaktır. \r\nKütahya Site Yönetim Hizmetleri\r\nKütahya ve çevre ilçelerde hizmet vermekteyiz.\r\n\r\nBursa Site Yönetim Hizmetleri\r\nBursa ve çevre ilçelerde hizmetimiz vardır.\r\n\r\nBalıkesir Site Yönetim Hizmetleri\r\nBigadiç, Dursunbey, Sındırgı ve Bandırma ilçelerinde hizmetimiz mevcuttur.', '163c7d73241170.jpg', 'misyonumuz,misyon', 'misyon', 1, 2, '2023-01-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `moduller`
--

CREATE TABLE IF NOT EXISTS `moduller` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tablo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `moduller`
--

INSERT INTO `moduller` (`ID`, `baslik`, `tablo`, `durum`, `tarih`) VALUES
(1, 'Kurumsal', 'kurumsal', 1, '2023-01-12'),
(3, 'Hizmetler', 'hizmetler', 1, '2023-01-12'),
(4, 'Bloglar', 'bloglar', 1, '2023-01-12'),
(5, 'Projeler', 'projeler', 1, '2023-01-12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE IF NOT EXISTS `projeler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=14 ;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(12, '', '', 6, '', '163c7e4a91101f.jpg', 'projeler', '', 1, 2, '2023-01-18'),
(13, '', '', 6, '', NULL, 'projeler', 'proje', 1, 1, '2023-01-18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
