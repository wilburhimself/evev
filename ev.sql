-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.235.34
-- Generation Time: Mar 22, 2012 at 02:38 PM
-- Server version: 5.0.92
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sinctodo2012`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `vocabulary` varchar(100) NOT NULL,
  `language` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `slug` (`slug`,`vocabulary`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` VALUES(1, 'Fiesta', 'fiesta', 'event-type', 'es');
INSERT INTO `categories` VALUES(2, 'Restaurantes & Bares', 'restaurantes-bares', 'business-type', 'es');
INSERT INTO `categories` VALUES(3, 'Servicios', 'servicios', 'business-type', 'es');
INSERT INTO `categories` VALUES(4, 'Deportes', 'deportes', 'business-type', 'es');
INSERT INTO `categories` VALUES(5, 'Bancos', 'bancos', 'business-type', 'es');
INSERT INTO `categories` VALUES(6, 'Tiendas', 'tiendas', 'business-type', 'es');
INSERT INTO `categories` VALUES(7, 'Salud & Belleza', 'salud-belleza', 'business-type', 'es');
INSERT INTO `categories` VALUES(8, 'Real Estate', 'real-estate', 'business-type', 'es');
INSERT INTO `categories` VALUES(9, 'Supermercados', 'supermercados', 'business-type', 'es');
INSERT INTO `categories` VALUES(10, 'Transporte', 'transporte', 'business-type', 'es');
INSERT INTO `categories` VALUES(11, 'Hospitales & Clínicas', 'hospitales-clinicas', 'business-type', 'es');
INSERT INTO `categories` VALUES(12, 'Otros', 'otros', 'business-type', 'es');
INSERT INTO `categories` VALUES(13, 'Fundación', 'fundacion', 'business-type', 'es');
INSERT INTO `categories` VALUES(14, 'Torneo de Golf', 'torneo-de-golf', 'event-type', 'es');
INSERT INTO `categories` VALUES(16, 'Caridad', 'caridad', 'event-type', 'es');
INSERT INTO `categories` VALUES(19, 'Concierto', 'concierto', 'event-type', 'es');
INSERT INTO `categories` VALUES(20, 'Torneo', 'torneo', 'event-type', 'es');
INSERT INTO `categories` VALUES(21, 'Social', 'social', 'event-type', 'es');
INSERT INTO `categories` VALUES(23, 'Gastronómico', 'gastronomico', 'event-type', 'es');
INSERT INTO `categories` VALUES(24, 'Coctel', 'coctel', 'event-type', 'es');
INSERT INTO `categories` VALUES(25, 'Otro', 'otro', 'event-type', 'es');
INSERT INTO `categories` VALUES(26, 'Restaurants & Bars', 'restaurants-bars', 'business-type', 'en');
INSERT INTO `categories` VALUES(27, 'Services', 'services', 'business-type', 'en');
INSERT INTO `categories` VALUES(28, 'Sports', 'sports', 'business-type', 'en');
INSERT INTO `categories` VALUES(29, 'Banks', 'banks', 'business-type', 'en');
INSERT INTO `categories` VALUES(30, 'Shops', 'shops', 'business-type', 'en');
INSERT INTO `categories` VALUES(31, 'Health & Beauty', 'health-beauty', 'business-type', 'en');
INSERT INTO `categories` VALUES(32, 'Real Estate', 'real-estate', 'business-type', 'en');
INSERT INTO `categories` VALUES(33, 'Supermarkets', 'supermarkets', 'business-type', 'en');
INSERT INTO `categories` VALUES(34, 'Transport', 'transport', 'business-type', 'en');
INSERT INTO `categories` VALUES(35, 'Medical', 'medical', 'business-type', 'en');
INSERT INTO `categories` VALUES(36, 'Other', 'other', 'business-type', 'en');
INSERT INTO `categories` VALUES(37, 'Golf Tournament', 'golf-tournament', 'event-type', 'en');
INSERT INTO `categories` VALUES(38, 'Charity', 'charity', 'event-type', 'en');
INSERT INTO `categories` VALUES(39, 'Tournament', 'tournament', 'event-type', 'en');
INSERT INTO `categories` VALUES(40, 'Concert', 'concert', 'event-type', 'en');
INSERT INTO `categories` VALUES(41, 'Social', 'social', 'event-type', 'en');
INSERT INTO `categories` VALUES(42, 'Gastronomic', 'gastronomic', 'event-type', 'en');
INSERT INTO `categories` VALUES(43, 'Cocktail', 'cocktail', 'event-type', 'en');
INSERT INTO `categories` VALUES(44, 'Other', 'other', 'event-type', 'en');
INSERT INTO `categories` VALUES(45, 'Hotels & Resorts', 'hotel-resorts', 'business-type', 'en');
INSERT INTO `categories` VALUES(46, 'Hoteles & Resorts', 'hotels-resorts', 'business-type', 'es');
INSERT INTO `categories` VALUES(47, 'Charity', 'charity', 'business-type', 'en');
INSERT INTO `categories` VALUES(48, 'Party', 'party', 'event-type', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`,`node_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` VALUES(5, 1, 12, 1332276570, 'Genial!  Esto es algo fantastico!  ');
INSERT INTO `comments` VALUES(6, 1, 101, 1332294155, 'Is this working?');

-- --------------------------------------------------------

--
-- Table structure for table `events_going`
--

CREATE TABLE `events_going` (
  `user_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_going`
--

INSERT INTO `events_going` VALUES(1, 12);
INSERT INTO `events_going` VALUES(1, 118);
INSERT INTO `events_going` VALUES(1, 122);
INSERT INTO `events_going` VALUES(1, 140);
INSERT INTO `events_going` VALUES(1, 154);

-- --------------------------------------------------------

--
-- Table structure for table `fields_business`
--

CREATE TABLE `fields_business` (
  `node_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `secondary_phone` varchar(75) NOT NULL,
  `fax` varchar(75) NOT NULL,
  `twitter` varchar(75) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `location` int(11) NOT NULL,
  PRIMARY KEY  (`node_id`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_business`
--

INSERT INTO `fields_business` VALUES(5, 'Altos de Chavon', '809.523.5380', 'Restaurante y Bar con &quot;Papa Jacks Disco&quot; cada viernes y s&aacute;bado despu&eacute;s de las 10pm. &nbsp;&nbsp;<br />\n<br />\nAbierto todos los d&iacute;as: 10am &ndash; late', 'papajacks@gmail.com, papajackschavon@hotmail.com, papajackschavon@yahoo.com', '809-737-3333', 'Restaurante y Bar con "Papa Jacks Disco" cada viernes y sábado después de l', 'PapaJacksChavon  ', 'https://www.facebook.com/profile.php?id=1383526499&sk=info', 13);
INSERT INTO `fields_business` VALUES(10, 'Casa de Campo', '809-523-2929', 'El campo de tiro de Casa de Campo es un lugar donde se pueden dar cartuchasos.', 'cdcshootingcenter@ccampo.com.do', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(11, 'Altos de la Piazzetta, Altos de Chavon, Casa de Campo, La Romana, Dominican Republic', '(809) 523-2045', 'Silgon, Inc. is a media company that develops incredible websites, publishes fantastic magazines and has a lot of really great ideas and options for marketing. If you want to promote your business, give us a call. ', 'info@silgon.net', '', '', 'silgoninc', 'https://www.facebook.com/silgoninc', 13);
INSERT INTO `fields_business` VALUES(15, 'Av. De La Marina #54, al principio del Paseo del Mar', '809-449-3321', '&bull; Caf&eacute; Nespresso &bull; refrescos &bull;&nbsp;<br />\n<br />\nAbierto todos los d&iacute;as: 8am &ndash; 9:30pm', 'y.genao@ibinautica.com ', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(16, 'Coconut Mall', '809-523-2267 ', 'sandwiches &bull; cakes/dulces &bull; snacks /meriendas &bull; Starbucks &bull; alcoholic drinks / tragos Open /abierto: &bull; 9am&ndash;6pm (sun-thurs) &bull; 9am&ndash;8pm (fri-sat)', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(17, 'Plaza Portofino', '809-523-2382 ', 'Open/abierto: \n5pm - 12am (Monday-Thursday / Lunes - jueves) \nTuesday (closed) Martes (cerrado)\n5pm - 12am (Friday-Saturday / Viernes - sábado) \n12pm - 1am (Sunday /Domingos)', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(18, 'Plaza Portofino', '809-523-2388', '&bull; comida china &bull; delivery &bull;<br />\n<br />\n<strong>Horario</strong><br />\n&bull; 12pm - 12am:&nbsp;Martes - Domingo<br />\n&bull; Cerrado: Lunes', 'kilate01@hotmail.com ', '809-523-2387', '', '', 'http://www.facebook.com/pages/Chinois-Restaurante/183712341703761', 14);
INSERT INTO `fields_business` VALUES(19, 'Plaza Portofino', '809-523-2343', '• Licor & wine store and bar • snacks • villa delivery service/ servicio a domicilio • \n\nOpen: \nSun – Thur/ Domo-jue, 10am - 10pm, \nFri–Sat/ Vie-sáb, 10am – 12pm', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(20, 'Plaza Portofino', '809-523-2299', '&bull; pizza &bull; pasta &bull; ensaladas &bull;<br />\n<br />\nAbierto todos los d&iacute;as: 11am &ndash; 11pm', 'limoncello888@hotmail.com ', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(21, 'Paseo del Mar', '809-523 2529 / 5026', '• seafood/mariscos • Spanish cuisine/comida española \n\nOpen/abierto: 6pm – 11pm', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(22, 'Avenida de la Marina', '809-523-2323', '&bull; especialidad italiana &bull; pizza &bull; pasta &bull; carnes &bull; mariscos &bull;<br />\n<br />\n<span style="white-space: normal;">A</span>bierto todos&nbsp;los d&iacute;as: 10am &ndash; 10pm', 'talentoadomicilio@gmail.com', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(23, 'Plaza Portofino #15', '809-523-2227', '&bull; cocina internacional &bull; pizza &bull; pasta &bull; sushi &bull; ensaladas &bull;<br />\n<br />\n<strong>Horario</strong><br />\n12pm &ndash; 12am:&nbsp;Lunes - jueves<br />\n12pm - 1am: Viernes - domingo&nbsp;', 'peperonimarina@yahoo.com', '', '', '', 'http://www.facebook.com/profile.php?id=100003377767358', 14);
INSERT INTO `fields_business` VALUES(24, 'Plaza Portofino', '809-523-2266', '&bull; variedad de helados &bull; malteadas &bull;<br />\n<br />\n<strong>Horario</strong><br />\n2pm &ndash; 12am: jueves &ndash; lunes<br />\nCerrado:&nbsp;martes y mi&eacute;rcoles', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(25, 'El Faro, Paseo del Mar', '809-523-2348', '&bull; bebidas &bull; noches tem&aacute;ticas<br />\n<br />\nAbierto todos los d&iacute;as: 5pm &ndash; 10pm ', 'victoryclubpianobar@hotmail.com ', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(26, 'Altos de Chavon', ' 809-523-1825', '&bull; comida italiana&nbsp;&bull; pizza &bull; pasta &bull; mariscos&nbsp;&bull; meats/carnes &bull;<br />\n<br />\n<strong>Horario:</strong><br />\n12pm -11:30pm: Viernes - Lunes :&nbsp;<br />\n5pm &ndash; 11:30pm: Martes y jueves:&nbsp;<br />\nCerrado: Mi&eacute;rcoles', 'ginoaltos@hotmail.com ', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(27, 'Altos de Chavon', '809-523-5339', '&bull; comida italiana &bull; antipasti &bull; pasta &bull; carnes &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n7pm - 11pm: jueves - domingo<br />\nCerrado: lunes - mi&eacute;rcoles', 'r.piazzetta@ccampo.com.do', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(28, 'Altos de Chavon', '809-523-1800', '&bull; comida criolla &bull; pastelitos &bull; quipes &bull; croquetas &bull; mofongo &bull;<br />\n<br />\n<strong>Horario</strong><br />\n11am-11pm: lunes - s&aacute;bado&nbsp;<br />\nCerrado: domingo&nbsp;', '', '', '', '', 'https://www.facebook.com/pages/La-Cantina-Latin-Bistro/157476107685753', 13);
INSERT INTO `fields_business` VALUES(29, 'Altos de Chavon', '809-523-5380', '&bull; comida de bar y tragos &bull; centro nocturno &bull;<br />\n<br />\nAbierto todos los d&iacute;as: 10am - tarde&nbsp;', 'papajackschavon@hotmail.com', '', '', 'PapaJacksChavon', 'https://www.facebook.com/profile.php?id=1383526499&sk=info', 13);
INSERT INTO `fields_business` VALUES(30, 'Altos de Chavon', '809-523-2868 ', '&bull; comida de bar y tragos &bull; centro nocturno &bull;<br />\n<br />\nAbierto todos los d&iacute;as: 5pm - hasta tarde<br />\n<br />\nWebsite: <a href="http://www.onnosbar.com">www.onnosbar.com</a>', 'oficinaaltosdechavon@onnosbar.com, altosdechavon@onnosbar.com', '', '', '', 'https://www.facebook.com/pages/Onnos-BarRestaurant-Altos-De-Chavon/234823459871328', 13);
INSERT INTO `fields_business` VALUES(31, 'Altos de Chavon', '809-523-5476', '&bull; bebidas &bull; una de las mejores vistas de Casa de Campo &ndash; la del Dye Fore y el R&iacute;o Chav&oacute;n &bull;<br />\n<br />\nAbierto todos los dias: 8am - 5pm', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(32, 'Casa de Campo Hotel', '809.523-3000', '* Mediterranean cuisine •\n\nLunch: 12 md - 4 pm, Dinner: 6 - 11 pm\nBar/lounge open 9am - 1am\n', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(33, 'Golf Pro Shop', '809-523-3162', '&nbsp;&bull; sandwiches &bull; merienda &bull; tragos &bull; refrescos &bull;<br />\n<br />\n<span style="white-space: normal;">A</span>bierto todos los d&iacute;as: 9am - 7pm', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(34, 'Casa de Campo', '809-523-5266', '&bull; desayuno buffet &bull; cena a la carta &bull;<br />\n<br />\n<span style="white-space: normal;">A</span>bierto todos los d&iacute;as: 6:30am - 11pm ', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(35, 'Minitas Beach', '809-523-5146', '&bull; comida mediterr&aacute;nea &bull; pizza &bull; pasta &bull; carnes &bull; mariscos &bull; cocteles &bull; al lado del mar &bull;<br />\n<br />\n<strong>Horario</strong><br />\nAlmuerzo y meriendas: 9am &ndash; 4pm<br />\nCena: 7pm &ndash; 11pm<br />\nBar: 9am &ndash; 11pm<br />\nRestaurante cerrado los lunes', 'r.pescador@ccampo.com.do', '', '', '', 'https://www.facebook.com/pages/The-Beach-Club-by-Le-Cirque/152559590821', 144);
INSERT INTO `fields_business` VALUES(36, 'Minitas Beach', '809-523-5144', '&bull; bebidas &bull; c&oacute;cteles &bull; comida de bar &bull;<br />\n<br />\n<strong>Horario</strong><br />\n9am -&nbsp;6pm: viernes - domingo<br />\nCerrado: lunes - jueves', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(37, 'Altos de Chavon', '809-523-2271', '* beach and resort wear/ ropa playera • jewellery/joyería • souvenirs • gifts/regakis\n\n10am - 8pm (Monday - Friday/ lunes - viernes) / 10am - 10pm (Saturday/ sábado) / 10am - 8pm (Sunday/ domingo)', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(39, 'Calle Barlovento', '809-523-2235', 'Designer high-end women&#39;s fashion boutique / boutique para damas 10am - 6pm (Monday-Thursday/ lunes - jueves) / 10am - 7pm (Friday-Saturday/ viernes - s&aacute;bado)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(40, 'Calle Barlovento', '809-523-2310', 'Handmade decorative boats / botes decorativos hechos a mano\n\n10am - 6pm (Monday-Thursday/ lunes - jueves) / 1pm - 8pm (Friday-Saturday / viernes - sábado) / 10am - 6pm (Sunday/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(41, '', '809-523-2698', 'Designer Fashion Boutique / de diseñadores\n\n9am - 8pm (Monday- Thursday/ lunes - jueves) / 9am - 10pm (Friday-Saturday/ viernes-sábado) / 9am - 8pm (Sunday/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(42, 'Calle Barlovento', '809-523-2335', 'Designer sunglasses boutique/ lentes de sol por diseñadores\n\n9am - 8pm (Monday - Thursday/ lunes - jueves) / 9am - 10pm (Friday - Saturday/ viernes - sabado) / 9am - 8pm (Sunday/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(43, 'Coconut Mall', '809-523-2226', 'Mobile phone and internet services / servicios de internet y m&oacute;viles 10am - 6pm (Monday - Saturday/ lunes - s&aacute;bado), 10am - 2pm (Sundays/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(44, 'Calle Barlovento', '809-523-1841', '• outdoor and adventure sports wear • atuendos deportivos\n\n10am - 8pm (Monday - Sunday/ lunes-domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(45, '', '809-523-2275', '&bull; jewelley/joyer&iacute;a &bull; shoes/calzados &bull; 10am - 10pm (Monday - Sunday/ lunes - domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(46, 'Calle Barlovento', '809-523-2580', '• furniture/ muebles • homeware accessories/ para el hogar • \n\n9am - 6pm (Monday - Thursday/ lunes-jueves) / 9am - 8pm (Friday/viernes) / 10am - 8pm (Saturday/sábado) / 10am - 6pm (Sunday/domingo)', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(47, '', '809-523-2301', 'Rental and sales of golf cars, bikes, pasolas/ rentas y ventas\n\n9am - 6pm (Monday-Saturday /Lunes- sábado 9am - 4pm', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(48, '', '809-523-2298', 'art • furntiure • \n\n9am - 10pm (Sunday - Thrusday/ domingo - jueves) / 9am - 12pm (Friday - Saturday/ viernes - sábado)', 'jean riocumayasa@yahoo.com ', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(49, 'Plaza Portofino', '809-523-2242', '• wines/vinos • liquors/licores • \n\n11am - 10:30pm (Monday-Friday/ lunes-viernes) / 11am - 12am (Saturday-Sunday/ sábado-domingo)', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(50, '', '809-523-2296', '• jewellery/joyería • watches/relojes • purses/carteras •\n\n10am - 9:30pm (Monday - Saturday / lunes - sábado) / 10am - 8pm (Sunday / domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(51, 'Coconut Mall', '809-523-2383', '• household hardware/eobjetos para el hogar • electronics/electrodomésticos • BBQ''s • household items/elementos• \n\n9am - 6pm (Monday- Saturday/ Lunes - sábado) / 9am - 2pm (Sunday/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(52, 'Calle Barlovento', '809-523-2275', 'Cigars/puros • cigarettes/cigarros • smoking accessories/accesorios para fumar • magazines/revistas • snacks/picadera\n\n10am - 10pm (Monday - Sunday/ lunes - domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(53, '', '809-523-2691', 'Men''s formal wear/ atuendos formales caballeros • chacabanas •\n\n10am - 6pm (Sunday-Thrusday) / 10am - 8pm (Friday-Saturday)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(54, '', '809-523-2304 / 2305', 'Fashion wear • decorative plates, bowls and housewear items • jewellery • purses •\n\n10am - 8pm (Monday - Sunday)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(55, '', '809-523-2507', '• Limited pharmacy items • perfumes • inflatable beach toys •\n\n10am - 8pm (Mon, Wed & Thurs/ Lun, mier, jue) / 10am - 9pm (Friday-Saturday) / 10am - 6pm (Sunday) / 9am - 8pm (Tuesday)', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(56, 'Calle Barlovento', '809-523-2237', '10am - 6pm (Monday-Saturday /Wednesday (closed) / 10am - 3pm (Sunday)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(57, '', '809-523-2300', 'antiques/ antiguedades • art/arte • collectors items/ artículos para colección •\n\n10am - 6pm (Monday-Saturday / lunes -sábbado) / (Wednesday/ miércoles - closed/ cerrado) / 10am - 3pm (Sunday/domingo)', 'torrianimauro@hotmail.com ', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(58, '', '809-523- 2287', '• swimwear/trajes de baño • beach shoes/calzado playero • bags/carteras • cover-ups •\n\nFriday-Saturday/viernes- sábado (10am - 10pm) / 10am - 8pm (Sunday - Thursday/ domingo - jueves)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(59, 'Calle Principal', '809-523-2564', '• LED lighting solutions/ soluciones luces LED •\n\n10am - 6pm (Monday - Friday/ lunes-viernes) 10am - 1pm (Saturday/sábado) / Sunday/domingo (closed/cerrado)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(60, 'Calle Barlovento', '809-523-2265', '• homeware accessories/para el hogar • gifts/regalos • jewellery/joyería • clothing/atuendos • shoes/calzado • fashion/moda \n\n10am - 8pm (Sunday - Thrusday/domingo - jueves) / 10am - 10pm (Friday-Saturday/ viernes - sábado)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(61, 'Calle Principal', '809-523-2344', '• supermarket/ supermercado • food/comida • household items/elementos del hogar • drinks/bebidas • \n\n9am - 8pm (Monday - Thursday/ lunes-jueves) / 9am - 9pm (Friday - Saturday/ viernes-sábado) / 9am - 6pm (Sunday/ domingo)', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(62, 'Calle Barlovento', '809-523-2837', 'fashion swimwear for men and boys/ trajes de baños masc.\n\n10am - 8pm (Sunday - Thursday/ domingo - jueves) / 10am - 10pm (Friday - Saturday/ viernes - sábado)\n', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(63, 'Coconut Mall', '809-550-8436 ', '• bespoke wooden furniture \n• creación de muebles de madera\n\n8:30am-5pm (mon-sat/lun-sat)\nclosed sun/cerado dom\n\nLa Romana: \nCalle 4ta, Esquina Rev. Emilio Herrera, Villa España, 22000 La Romana, Dominican Republic', 'info@rusticosymas.net', '', '', 'RusticosRD', 'https://www.facebook.com/RusticosRD', 14);
INSERT INTO `fields_business` VALUES(64, 'Altos de Chavon', '809-523-2133', '• supermarket/supermercado •\n\n8am - 8pm (Monday-Sunday)', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(65, 'Altos de Chavon', '809-523-2027', '&bull; moda &bull;&nbsp;joyas&nbsp;&bull; souvenirs &bull; ropa &bull;<br />\n<br />\nAbierto todo los d&iacute;as: 9am&nbsp;-&nbsp;6pm&nbsp;', 'jennypolancosa@claro.net.do', '809-523-8155', '', '', 'https://www.facebook.com/pages/JENNY-POLANCO-BOUTIQUE/311735254584', 13);
INSERT INTO `fields_business` VALUES(66, 'Altos de Chavon', '809-523-8331 / 2066', '&bull; jewellery/joyas 9am-10pm (Monday-Saturday/ Lunes -s&aacute;bado) / 9am - 9pm (Sunday/ Domingo)', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(67, 'Altos de Chavon', '809-523-5066', '• amber larimar museum/museo • jewellery/joyas\n\n9am - 9pm (Monday/ Lunes) \n9am - 6pm (Tuesday-Sunday/ Martes - domingo) ', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(69, 'Altos de Chavon', '809-523-8111', '&bull; cigars/puros 9am - 6pm (Monday-Saturday/Lunes - s&aacute;bado) Sunday/Domingo (Closed / Cerrado)', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(70, 'Altos de Chavon', '809-523-5353', '&bull; pottery/cer&aacute;micas&nbsp;<br />\n&bull; textiles<br />\n&bull; homeware accessories/ accesorios del hogar<br />\n&bull; 9am - 5pm (Monday-Sunday / Lunes -domingo)', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(71, 'Altos de Chavon', '809.523.3333 EXT.5479', '&bull; atuendos golf&nbsp;&bull; golf accesorios &bull;&nbsp;<br />\n<br />\nAbierto&nbsp;todos los d&iacute;as: 7:30am - 5:30pm', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(72, 'Altos de Chavon', '809.523.5337', '&bull; embroidered linens/ linos bordados 9:30am-8:40pm (Thursdays-Mondays/ Jue-Lun) 9:30am - 6pm (Tuesdays and Wednesdays/ Mar y mier)', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(73, 'Casa de Campo Hotel', '809.523.3333 Ext. 2165', 'Fashion boutique/tienda de moda\nOpening hours: 9am - 9pm (Monday - Sundays)\n', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(74, 'Casa de Campo Hotel', '809.523.3333 Ext. 2166', 'Essentials • personal items/artículos personales •\nOpening hours/ Horarios: 9am - 9pm (Monday - Sundays / Lunes - domingo )\n', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(75, 'Casa de Campo Hotel', '809.523.3333 Exts. 8129 / 8179', 'Opening hours/ Horarios: 8am - 6pm (Monday - Friday/ Lunes - vienres) / 8am - 3pm (Saturday/S&aacute;bado) / Sundays / Domingos (closed/ cerrado) ', 'm.taylor@costasur.com.do ', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(76, 'Casa de Campo Hotel', '809.523.5185', 'One of the Caribbean''s most complete facilities!\n\nOpen daily/abierto diaramente: 6am - 9pm\n\n• Entry/entrada: US$11 (free for hotel guests/gratis para huéspedes) • Personal training/entrenamiento personal (US$45) • Kick-boxing (US$17) • golf training/entrenamiento de golf (US$45) • Spinning (US$35) • \n', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(77, 'Casa de Campo Hotel', '809.523.8224', 'Opening hours/ horarios: 10am - 6:30pm (Monday-Saturday/lunes-sábado), Sunday/Domingo (Closed/cerrado) \n', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(78, 'Calle Barlovento', '809.523.2381', 'Opening hours/horario: 9am - 7:30pm (Monday - Saturday/Lunes - sábado), 9am - 6pm(Sundays/ Domingo)\n', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(79, 'Calle Barlovento #5', '809-523-7080', 'Opening times/ horarios: 9am-5pm (Monday-Fridays/ lunes-viernes)\n/9am-1pm (Saturday/sábado) / (Sunday/ domingo) (Closed/cerrado)	\n', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(80, 'Ave. Santa Rosa de Lima, Esq. General Luperón, La Romana', '(809)556-2181 / (809)556-2183', 'Lunes a Viernes de 8:30 A.M a 4:30 P.M.\nSábados de 9:00 A.M. a 1:00 P.M', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(81, 'Calle Barlovento #41', '809-523-7070 / 2364', 'Opening times/ horarios: 9am-5pm (Monday-Fridays/ lunes-viernes) /9am-1pm(Saturday/sábado), Sunday/domingo(closed/cerrado)	', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(82, 'Coconut Mall, #6 & #7', ' 809-523-7088', 'Opening times/ horarios: 9am-5pm(Monday-Fridays/ lunes-viernes) /9am-2pm(Saturday/sábado), Sunday (closed) 	\n\n', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(83, 'Cerca de la entrada principal de Casa de Campo', '809.523.3333 Ext. 1818', 'Abierto diariamente: 7am - 9pm&nbsp;', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(84, 'Batey #1, Central Romana, La Romana', '809.523.8695', '', '', '', '', '', '', 150);
INSERT INTO `fields_business` VALUES(85, 'Casa de Campo Hotel', '809.523.3333 ext.3127', 'La enfermer&iacute;a del hotel&nbsp;Casa de Campo', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(86, 'Casa de Campo Hotel', '809.523.3333 ext.3165/2106/3194', '', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(87, '', '809.523.5193/5194', '', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(88, '', '', '', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(89, 'Casa de Campo Hotel', '809.523.8077/ 2079/ 2080/ 2161', 'Villa Owners Club', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(90, 'Av. De la Marina #9', '809-523-2288', 'Opening hours/horario : 9am - 5pm (Monday-Sunday/lunes-domingo)\n', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(91, '', '809-523-3333 EXT. 3188', 'Hotel laundry service/\nOpening hours/horarios: 8am-5pm (Monday-Friday/lunes-viernes) 8am-12pm (Saturday/sábado), Sunday/domingo (closed/cerrado)\n', '', '', '', '', '', 96);
INSERT INTO `fields_business` VALUES(92, 'Calle del Faro #25', '809-523-2278', '', 'g.f.fini@gmail.com', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(93, 'Coconut Mall', '809-523-8297', '', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(94, 'Coconut Mall', '809-523-2221', '', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(95, '', '809-523-2739', 'Sailing School http://www.scuolavela.com/', '', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(98, 'Casa de Campo Hotel', '8095233333', '', 'res1@ccampo.com.do', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(99, 'Casa de Campo', '8095233333', '', '', '', '', '', '', 0);
INSERT INTO `fields_business` VALUES(100, '', '8095238115', '', '', '', '', '', '', 144);
INSERT INTO `fields_business` VALUES(102, 'Casa de Campo Polo', '809.523.8951', '', '', '', '', '', 'https://www.facebook.com/casadecampopolo', 144);
INSERT INTO `fields_business` VALUES(108, '', '', '', '', '', '', '', '', 13);
INSERT INTO `fields_business` VALUES(147, 'Gustavo Mejia Ricart #74', '809.732.0230', 'Bar/club ubicado&nbsp;en Santo Domingo y organizador de varias fiestas adentro del complejo de Casa de Campo.&nbsp;<br />\n<br />\n<br />\nWebsite: <a href="http://www. praia.com.do">www. praia.com.do</a>', 'info@praia.com.do', '', '', '', 'https://www.facebook.com/pages/PRAIA/144113945598937', 7);
INSERT INTO `fields_business` VALUES(175, 'Gustavo Mejia Ricart #74', '809.732.0230', 'Bar/nightclub located in Santo Domingo and the organizers of various parties inside Casa de Campo.<br />\n<br />\nWebsite:&nbsp;<a href="http://www. praia.com.do">www.praia.com.do</a>', 'info@praia.com.do', '', '', '', 'https://www.facebook.com/pages/PRAIA/144113945598937', 173);
INSERT INTO `fields_business` VALUES(176, '', '', '', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(177, 'Casa de Campo Polo', '809.523.8951', '', '', '', '', '', 'https://www.facebook.com/casadecampopolo', 169);
INSERT INTO `fields_business` VALUES(178, '', '8095238115', '', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(179, '', '809-523-2739', 'Sailing School http://www.scuolavela.com/', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(180, 'Coconut Mall', '809-523-2221', '', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(181, 'Coconut Mall', '809-523-8297', '', '', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(182, 'Calle del Faro #25', '809-523-2278', '', 'g.f.fini@gmail.com', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(183, '', '809-523-3333 EXT. 3188', '<strong>Opening hours: </strong><br />\nMonday-Friday - 8am-5pm&nbsp;<br />\nSaturday - 8am-12pm<br />\nSunday - Closed', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(184, 'Av. De la Marina #9', '809-523-2288', 'Monday-Sunday: &nbsp;9am - 5pm', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(185, '', '809.523.5193/', '', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(186, '', '809.523.5193', '', '', '809.523.5194', '', '', 'https://www.facebook.com/oca.acceso', 169);
INSERT INTO `fields_business` VALUES(187, 'Casa de Campo Hotel', '809.523.3333 ext.3127', 'The&nbsp;First Aid / Nurses Station for the Casa de Campo hotel', '', '', '', '', '', 170);
INSERT INTO `fields_business` VALUES(188, 'Altos de Chavon', '809-523-2027', '&bull; fashion clothing, &nbsp;jewellery&nbsp;&amp; souvenirs&nbsp;<br />\n<br />\n9am&nbsp;-&nbsp;6pm&nbsp;Monday-Sunday', '', '809-523-8155', '', '', 'https://www.facebook.com/pages/JENNY-POLANCO-BOUTIQUE/311735254584', 172);
INSERT INTO `fields_business` VALUES(189, 'Altos de Chavon', '809-523-2027', '&bull; fashion &bull; clothing &bull; jewellery&nbsp;&bull; souvenirs &bull;<br />\n<br />\nOpen daily: 9am&nbsp;-&nbsp;6pm', 'jennypolancosa@claro.net.do', '809-523-8155', '', '', 'https://www.facebook.com/pages/JENNY-POLANCO-BOUTIQUE/311735254584', 172);
INSERT INTO `fields_business` VALUES(190, 'Altos de Chavon', '809-523-8331 / 2066', '&bull; joyas&nbsp;/ jewlerry<br />\n9am-10pm&nbsp;Lunes -s&aacute;bado<br />\n9am - 9pm Domingo', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(191, 'Altos de Chavon', '809-523-5066', '&bull; amber larimar museum/museo<br />\n&bull; jewellery/joyas<br />\n<br />\n9am - 9pm&nbsp;Monday<br />\n9am - 6pm&nbsp;Tuesday-Sunday', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(192, 'Altos de Chavon', '809-523-8111', '&bull; cigars&nbsp;<br />\n<br />\n9am - 6pm&nbsp;Monday-Saturday<br />\nSunday Closed', '', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(193, 'Altos de Chavon', '809-523-5353', '&bull; pottery/cer&aacute;micas&nbsp;<br />\n&bull; textiles<br />\n&bull; homeware accessories/ accesorios del hogar<br />\n&bull; 9am - 5pm (Monday-Sunday / Lunes -domingo)', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(194, 'Altos de Chavon', '809.523.3333 EXT.5479', '&bull; golf wear&nbsp;&bull; golf accessories &bull;<br />\n<br />\nOpen daily: 7:30am - 5:30pm', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(195, 'Altos de Chavon', '809.523.5337', '&bull; embroidered linens/ linos bordados 9:30am-8:40pm (Thursdays-Mondays/ Jue-Lun) 9:30am - 6pm (Tuesdays and Wednesdays/ Mar y mier)', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(196, 'Casa de Campo Hotel', '809.523.3333 Ext. 2165', 'Fashion boutique/tienda de moda Opening hours: 9am - 9pm (Monday - Sundays) ', '', '', '', '', '', 170);
INSERT INTO `fields_business` VALUES(197, 'Near the main entrance', '809.523.3333 Ext. 1818', 'Open daily: 7am - 9pm&nbsp;', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(198, 'Coconut Mall, #6 & #7', ' 809-523-7088', 'Opening times/ horarios: 9am-5pm(Monday-Fridays/ lunes-viernes) /9am-2pm(Saturday/s&aacute;bado), Sunday (closed) ', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(199, 'Calle Barlovento #41', '809-523-7070 / 2364', 'Opening times/ horarios: 9am-5pm (Monday-Fridays/ lunes-viernes) /9am-1pm(Saturday/s&aacute;bado), Sunday/domingo(closed/cerrado) ', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(200, 'Casa de Campo Hotel', '809.523.8224', 'Opening hours/ horarios: 10am - 6:30pm (Monday-Saturday/lunes-s&aacute;bado), Sunday/Domingo (Closed/cerrado) ', '', '', '', '', '', 170);
INSERT INTO `fields_business` VALUES(201, 'Casa de Campo Hotel', '809.523.5185', 'One of the Caribbean&#39;s most complete facilities! Open daily/abierto diaramente: 6am - 9pm &bull; Entry/entrada: US$11 (free for hotel guests/gratis para hu&eacute;spedes) &bull; Personal training/entrenamiento personal (US$45) &bull; Kick-boxing (US$17) &bull; golf training/entrenamiento de golf (US$45) &bull; Spinning (US$35) &bull; ', '', '', '', '', '', 170);
INSERT INTO `fields_business` VALUES(202, 'Casa de Campo Hotel', '809.523.3333 Exts. 8179', 'Opening hours/ Horarios: 8am - 6pm (Monday - Friday/ Lunes - vienres) / 8am - 3pm (Saturday/S&aacute;bado) / Sundays / Domingos (closed/ cerrado) ', 'm.taylor@costasur.com.do ', '809.523.3333 Exts. 8129', '', '', '', 170);
INSERT INTO `fields_business` VALUES(203, 'Casa de Campo Hotel', '809.523.3333 Ext. 2166', 'Essentials &bull; personal items/art&iacute;culos personales &bull; Opening hours/ Horarios: 9am - 9pm (Monday - Sundays / Lunes - domingo ) ', '', '', '', '', '', 170);
INSERT INTO `fields_business` VALUES(204, 'Altos de Chavon', '809-523-2133', '&bull; supermarket/supermercado &bull; 8am - 8pm (Monday-Sunday)', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(205, 'Coconut Mall', '809-550-8436 ', '&bull; bespoke wooden furniture &bull; creaci&oacute;n de muebles de madera 8:30am-5pm (mon-sat/lun-sat) closed sun/cerado dom La Romana: Calle 4ta, Esquina Rev. Emilio Herrera, Villa Espa&ntilde;a, 22000 La Romana, Dominican Republic', 'info@rusticosymas.net', '', '', 'RusticosRD', 'https://www.facebook.com/RusticosRD', 171);
INSERT INTO `fields_business` VALUES(206, 'Calle Barlovento', '809-523-2837', 'fashion swimwear for men and boys/ trajes de ba&ntilde;os masc. 10am - 8pm (Sunday - Thursday/ domingo - jueves) / 10am - 10pm (Friday - Saturday/ viernes - s&aacute;bado) ', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(208, 'Calle Principal', '809-523-2344', '&bull; supermarket/ supermercado &bull; food/comida &bull; household items/elementos del hogar &bull; drinks/bebidas &bull; 9am - 8pm (Monday - Thursday/ lunes-jueves) / 9am - 9pm (Friday - Saturday/ viernes-s&aacute;bado) / 9am - 6pm (Sunday/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(209, 'Calle Barlovento', '809-523-2265', '&bull; homeware accessories/para el hogar &bull; gifts/regalos &bull; jewellery/joyer&iacute;a &bull; clothing/atuendos &bull; shoes/calzado &bull; fashion/moda 10am - 8pm (Sunday - Thrusday/domingo - jueves) / 10am - 10pm (Friday-Saturday/ viernes - s&aacute;bado)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(210, 'Calle Principal', '809-523-2564', '&bull; LED lighting solutions/ soluciones luces LED &bull; 10am - 6pm (Monday - Friday/ lunes-viernes) 10am - 1pm (Saturday/s&aacute;bado) / Sunday/domingo (closed/cerrado)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(211, '', '809-523- 2287', '&bull; swimwear/trajes de ba&ntilde;o &bull; beach shoes/calzado playero &bull; bags/carteras &bull; cover-ups &bull; Friday-Saturday/viernes- s&aacute;bado (10am - 10pm) / 10am - 8pm (Sunday - Thursday/ domingo - jueves)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(212, '', '809-523-2300', 'antiques/ antiguedades &bull; art/arte &bull; collectors items/ art&iacute;culos para colecci&oacute;n &bull; 10am - 6pm (Monday-Saturday / lunes -s&aacute;bbado) / (Wednesday/ mi&eacute;rcoles - closed/ cerrado) / 10am - 3pm (Sunday/domingo)', 'torrianimauro@hotmail.com ', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(213, 'Calle Barlovento', '809-523-2237', '10am - 6pm (Monday-Saturday /Wednesday (closed) / 10am - 3pm (Sunday)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(214, '', '809-523-2304 / 2305', 'Fashion wear &bull; decorative plates, bowls and housewear items &bull; jewellery &bull; purses &bull; 10am - 8pm (Monday - Sunday)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(215, '', '809-523-2691', 'Men&#39;s formal wear/ atuendos formales caballeros &bull; chacabanas &bull; 10am - 6pm (Sunday-Thrusday) / 10am - 8pm (Friday-Saturday)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(216, 'Calle Barlovento', '809-523-2275', 'Cigars/puros &bull; cigarettes/cigarros &bull; smoking accessories/accesorios para fumar &bull; magazines/revistas &bull; snacks/picadera 10am - 10pm (Monday - Sunday/ lunes - domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(217, 'Coconut Mall', '809-523-2383', '&bull; household hardware/eobjetos para el hogar &bull; electronics/electrodom&eacute;sticos &bull; BBQ&#39;s &bull; household items/elementos&bull; 9am - 6pm (Monday- Saturday/ Lunes - s&aacute;bado) / 9am - 2pm (Sunday/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(218, '', '809-523-2296', '&bull; jewellery/joyer&iacute;a &bull; watches/relojes &bull; purses/carteras &bull; 10am - 9:30pm (Monday - Saturday / lunes - s&aacute;bado) / 10am - 8pm (Sunday / domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(219, '', '809-523-2298', 'art &bull; furntiure &bull; 9am - 10pm (Sunday - Thrusday/ domingo - jueves) / 9am - 12pm (Friday - Saturday/ viernes - s&aacute;bado)', 'jean riocumayasa@yahoo.com ', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(220, '', '809-523-2301', 'Rental and sales of golf cars, bikes, pasolas/ rentas y ventas 9am - 6pm (Monday-Saturday /Lunes- s&aacute;bado 9am - 4pm', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(221, '', '809-523-2275', '&bull; jewelley/joyer&iacute;a &bull; shoes/calzados &bull; 10am - 10pm (Monday - Sunday/ lunes - domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(222, 'Calle Barlovento', '809-523-1841', '&bull; outdoor and adventure sports wear &bull; atuendos deportivos 10am - 8pm (Monday - Sunday/ lunes-domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(223, 'Coconut Mall', '809-523-2226', 'Mobile phone and internet services / servicios de internet y m&oacute;viles 10am - 6pm (Monday - Saturday/ lunes - s&aacute;bado), 10am - 2pm (Sundays/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(224, 'Calle Barlovento', '809-523-2335', 'Designer sunglasses boutique/ lentes de sol por dise&ntilde;adores 9am - 8pm (Monday - Thursday/ lunes - jueves) / 9am - 10pm (Friday - Saturday/ viernes - sabado) / 9am - 8pm (Sunday/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(225, '', '809-523-2698', 'Designer Fashion Boutique / de dise&ntilde;adores 9am - 8pm (Monday- Thursday/ lunes - jueves) / 9am - 10pm (Friday-Saturday/ viernes-s&aacute;bado) / 9am - 8pm (Sunday/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(226, 'Calle Barlovento', '809-523-2310', 'Handmade decorative boats / botes decorativos hechos a mano 10am - 6pm (Monday-Thursday/ lunes - jueves) / 1pm - 8pm (Friday-Saturday / viernes - s&aacute;bado) / 10am - 6pm (Sunday/ domingo)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(227, 'Calle Barlovento', '809-523-2235', 'Designer high-end women&#39;s fashion boutique / boutique para damas 10am - 6pm (Monday-Thursday/ lunes - jueves) / 10am - 7pm (Friday-Saturday/ viernes - s&aacute;bado)', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(228, 'Minitas Beach', '809-523-5144', '&bull; drinks &bull; cocktails &bull; bar food &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n9am &ndash; 6pm: Friday &ndash; Sunday<br />\nClosed: Monday &ndash; Thursday', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(229, 'Batey #1, Central Romana, La Romana', '809.523.8695', '', '', '', '', '', '', 168);
INSERT INTO `fields_business` VALUES(230, 'Minitas Beach', '809-523-5146', '&bull; Mediterranean food &bull; &nbsp;pizza &bull; pasta &bull; meats &bull; seafood &bull; fine wines &bull; cocktails &bull; ocean-side dining on the beach &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\nLunch, bar food: 9am &ndash; 4pm<br />\nDinner: 7pm &ndash; 11pm<br />\nBar: 9am &ndash; 11pm<br />\nRestaurant closed: Mondays', 'r.pescador@ccampo.com.do', '', '', '', 'https://www.facebook.com/pages/The-Beach-Club-by-Le-Cirque/152559590821', 169);
INSERT INTO `fields_business` VALUES(231, 'Casa de Campo', '809-523-5266', '&bull; buffet style breakfasts &bull; dinner &quot;a la carte&quot; &bull;<br />\n<br />\nOpen daily: 6:30am - 11pm ', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(232, 'Golf Pro Shop', '809-523-3162', '&bull; sandwiches &bull; snacks &bull; drinks &bull;<br />\n<br />\nOpen daily: 9am - 7pm', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(233, 'Altos de Chavon', '809-523-5476', '&bull; drinks &bull; one of the best views in Casa de Campo &ndash; over the Dye Fore and Chav&oacute;n River &bull;<br />\n<br />\nOpen daily: 8am - 5pm', '', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(234, 'Altos de Chavon', '809-523-2868 ', '&bull; bar food and drinks&nbsp;&bull; late night partying&nbsp;&bull;<br />\n<br />\nOpen daily: 5pm- late<br />\n<br />\nWebsite: <a href="http://www.onnosbar.com">www.onnosbar.com</a>', 'oficinaaltosdechavon@onnosbar.com, altosdechavon@onnosbar.com', '', '', '', 'https://www.facebook.com/pages/Onnos-BarRestaurant-Altos-De-Chavon/234823459871328', 172);
INSERT INTO `fields_business` VALUES(236, 'Altos de Chavon', '809-523-1800', '&bull; Caribbean/latin food and snacks &bull; pastelitos &bull; quipes &bull; croquetas &bull; mofongo &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n11am &ndash; 11pm: Monday &ndash; Saturday<br />\nClosed: Sundays<br />\n<br />\n<br />\n<br />\n', '', '', '', '', 'https://www.facebook.com/pages/La-Cantina-Latin-Bistro/157476107685753', 172);
INSERT INTO `fields_business` VALUES(237, 'Altos de Chavon', '809-523-5339', '&bull; fine Italian dining&nbsp;&bull; antipasti &bull; pasta &bull; meats &bull; seafood &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n7pm - 11pm: abierto: Thursdays - Sundays<br />\nClosed: Monday - Wednesday', 'r.piazzetta@ccampo.com.do', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(238, 'Altos de Chavon', ' 809-523-1825', '&bull; fine Italian dining&nbsp;&bull; pizza &bull; pasta &bull; seafood &bull; meats &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n12pm &ndash; 11:30pm: Friday &ndash; Monday<br />\n5pm &ndash; 11:30pm: Tuesdays and Thursdays<br />\nClosed: Wednesdays<br />\n<br />\n', 'ginoaltos@hotmail.com ', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(239, 'The Lighthouse, Paseo del Mar', '809-523-2348', '&bull; drinks &bull; <span style="white-space: nowrap;">theme nights &bull;&nbsp;</span><br />\n<br />\nOpen daily: 5pm &ndash; 10pm ', 'victoryclubpianobar@hotmail.com ', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(240, 'Plaza Portofino', '809-523-2266', '&bull; variety of ice creams &bull; soft drinks &bull;&nbsp;<br />\n<br />\n<strong>Opening Times</strong><br />\n2pm &ndash; 12am: Thursday &ndash; Monday<br />\nClosed: Tuesdays and Wednesdays<br />\n<br />\n', '', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(241, 'Plaza Portofino #15', '809-523-2227', '&bull; international cuisine &bull; pizza &bull; pasta &bull; sushi &bull; salads &bull;<br />\n<br />\n<strong>Opening Times</strong><br />\n12pm &ndash; 12am: Monday &ndash; Thursday<br />\n12pm &ndash; 1am: Friday and Sunday', 'peperonimarina@yahoo.com', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(242, 'Calle Principal', '809-523-2323', '&bull; Italian specialities&nbsp;&bull; pizza &bull; pasta &bull; meats&nbsp;&bull; seafood &bull;<br />\n<br />\nOpen daily: 10am &ndash; 10pm', 'talentoadomicilio@gmail.com', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(243, 'Plaza Portofino', '809-523-2299', '&bull; pizza &bull; pasta &bull; salads &bull;<br />\n<br />\nOpen daily: 11am &ndash; 11pm', 'limoncello888@hotmail.com ', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(244, 'Plaza Portofino', '809-523-2388', '&bull; Chinese food &bull;&nbsp;take-away &bull;<br />\n<br />\n<strong>Opening times</strong><br />\n&bull; 12pm - 12am: (Tuesday - Sunday)<br />\n&bull; Closed: Sunday', 'kilate01@hotmail.com ', '809-523-2387', '', '', 'http://www.facebook.com/pages/Chinois-Restaurante/183712341703761', 171);
INSERT INTO `fields_business` VALUES(245, 'Avenida de la Marina #54, at the start of the Paseo del Mar', '809-449-3321', '&bull; Nespresso coffee &bull; soft drinks &bull;&nbsp;<br />\n<br />\nOpen:&nbsp;8am &ndash; 9:30pm', 'y.genao@ibinautica.com ', '', '', '', '', 171);
INSERT INTO `fields_business` VALUES(246, 'Altos de la Piazzetta, Altos de Chavon, Casa de Campo, La Romana, Dominican Republic', '(809) 523-2045', 'Silgon, Inc. is a media company that develops incredible websites, publishes fantastic magazines and has a lot of really great ideas and options for marketing. If you want to promote your business, give us a call. ', 'info@silgon.net', '', '', 'silgoninc', 'https://www.facebook.com/silgoninc', 172);
INSERT INTO `fields_business` VALUES(247, 'Casa de Campo', '809-523-2929', 'El campo de tiro de Casa de Campo es un lugar donde se pueden dar cartuchasos.', 'cdcshootingcenter@ccampo.com.do', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(248, 'Altos de Chavon', '809.523.5380', '<span style="white-space: nowrap;">Bar and restaurant with the&nbsp;</span>&quot;Papa Jacks Disco&quot; every Friday and Saturday from 10.00pm.&nbsp;<br />\n<br />\nOpen daily: 10am &ndash; late', 'papajacks@gmail.com, papajackschavon@hotmail.com,  papajackschavon@yahoo.com', '809-737-3333', '', 'PapaJacksChavon', 'https://www.facebook.com/profile.php?id=1383526499&sk=info', 172);
INSERT INTO `fields_business` VALUES(249, 'Punta Minitas 45', '809-523-2644', '<strong>CALTAGIRONE COSTRUZIONI ITALIA</strong>, &nbsp;marca italiana conocida y de renombre a nivel Internacional, cuenta con m&aacute;s de 120 a&ntilde;os de historia y ha contribuido al crecimiento y al desarrollo sea de la gran capital de Italia, Roma, que de numerosos residenciales en toda Italia. &nbsp;Opera e interviene tambi&eacute;n en campo internacional con la realizaci&oacute;n de significativas obras de &nbsp;urbanizaci&oacute;n e infraestructuras. &nbsp;Caltagirone Costruzioni Italia, es el constructor y el administrador del proyecto, adem&aacute;s est&aacute; encargado de la direcci&oacute;n operativa de la compa&ntilde;&iacute;a, incluyendo la administraci&oacute;n de compra de materiales. Este estilo funcional abarca las visitas diarias al proyecto, por parte de la alta gerencia y es uno de los secretos de la compa&ntilde;&iacute;a para mantener un nivel de calidad excepcional.<br />\n<br />\n<strong>Informacion&nbsp;Adicional:</strong><br />\ninfo@impresecaltagirone.com<br />\nInfo@lasrosasblancascasadecampo.com<br />\ninfo@marygolfcasadecampo.com', 'info@impresecaltagirone.com', '01139-06-88522312', '809-523-2645', '', '', 144);
INSERT INTO `fields_business` VALUES(251, 'Punta Minitas 45', '809-523-2644', '<strong>CALTAGIRONE COSTRUZIONI ITALIA</strong>, &nbsp;marca italiana conocida y de renombre a nivel Internacional, cuenta con m&aacute;s de 120 a&ntilde;os de historia y ha contribuido al crecimiento y al desarrollo sea de la gran capital de Italia, Roma, que de numerosos residenciales en toda Italia. &nbsp;Opera e interviene tambi&eacute;n en campo internacional con la realizaci&oacute;n de significativas obras de &nbsp;urbanizaci&oacute;n e infraestructuras. &nbsp;Caltagirone Costruzioni Italia, es el constructor y el administrador del proyecto, adem&aacute;s est&aacute; encargado de la direcci&oacute;n operativa de la compa&ntilde;&iacute;a, incluyendo la administraci&oacute;n de compra de materiales. Este estilo funcional abarca las visitas diarias al proyecto, por parte de la alta gerencia y es uno de los secretos de la compa&ntilde;&iacute;a para mantener un nivel de calidad excepcional.<br />\n<br />\n<strong>Informacion&nbsp;Adicional:</strong><br />\ninfo@impresecaltagirone.com<br />\nInfo@lasrosasblancascasadecampo.com<br />\ninfo@marygolfcasadecampo.com', 'info@impresecaltagirone.com', '01139-06-88522312', '809-523-2645', '', '', 169);
INSERT INTO `fields_business` VALUES(252, 'Altos de Chavón', '(809) 523-8270', 'La Fundaci&oacute;n MIR es una organizaci&oacute;n sin fines de lucro que trabaja para educar a los ni&ntilde;os de escasos recursos del &aacute;rea de La Romana. La fundaci&oacute;n administra tres escuelas que velan por las necesidades de m&aacute;s de 1,000 ni&ntilde;os; MIR Esperanza (escuela vocacional de ni&ntilde;os), la Escuela T&eacute;cnico Vocacional Fundaci&oacute;n MIR (para las ni&ntilde;as) y la Primaria MIR (para los m&aacute;s peque&ntilde;os).', 'magdalena@fundacionmir.org', '', '', '', 'http://www.facebook.com/fundacion.mir', 144);
INSERT INTO `fields_business` VALUES(253, 'Avenida Libertad #5, La Romana', '(809) 523-8901', '<div>\n	El Hogar del Ni&ntilde;o es un centro educacional y de cuidado para m&aacute;s de 1,500 ni&ntilde;os, ubicado en el pueblo de La Romana, justo a las afueras de Casa de Campo. Ni&ntilde;os que van desde los pocas semanas de nacidos hasta los 18 a&ntilde;os de edad, son cuidados y educados a diario desde las 5:30am las 7pm.</div>\n<div>\n	&nbsp;</div>\n<div>\n	La organizaci&oacute;n tambi&eacute;n provee educaci&oacute;n especial para ni&ntilde;os especiales que padecen de ceguera o con limitaciones auditivas, al igual que una escuela vocacional en la que m&aacute;s de 235 estudiantes reciben educaci&oacute;n en las distintas &aacute;reas como: costura, preparaci&oacute;n industrial, mantenimiento e instalaci&oacute;n el&eacute;ctrica; manejo de programas de c&oacute;mputos.</div>\n', 'info@pbo.org.do', '(809) 556-3181', '(809) 550-9661', '', '', 6);
INSERT INTO `fields_business` VALUES(254, 'Avenida Libertad #5, La Romana', '(809) 523-8901', '<div>\n	The Hogar del Ni&ntilde;o is a children&rsquo;s daycare and educational center for over 1500 children, located in La Romana town, just outside of Casa de Campo. Children from as young as just a few weeks old up to 18 years old are cared for and educated daily, from as early as 5:30am and staying as late as 7pm.</div>\n<div>\n	&nbsp;</div>\n<div>\n	The organization also provides special schooling to over 75 hearing impaired and blind children, as well as a vocational school where over 235 students receive classes in different areas like: sewing; industrial preparation, installation and electrical maintenance; plumbing and management of computer office programs.</div>\n', 'info@pbo.org.do', '(809) 556-3181', '(809) 550-9661', '', '', 168);
INSERT INTO `fields_business` VALUES(255, 'Altos de Villa Verde, en la avenida Circunvalación No. 79, La Romana', '809-349-0022', 'Es una instituci&oacute;n sin fines de lucro, con m&aacute;s de 15 a&ntilde;os brindando asistencia m&eacute;dica y social a todo el Este del Pa&iacute;s; la organizaci&oacute;n est&aacute; centrada en el apoyo al desarrollo de programas y actividades dirigidas a los m&aacute;s necesitados, entre los cuales se puede mencionar: Control de Desnutrici&oacute;n y Alimentaci&oacute;n para Ni&ntilde;os Desnutridos y enfermos de Tuberculosis y VIH, Salud de la Mujer, Filtros Bio-Arena para Agua Potable en campos y bateyes (Colaboraci&oacute;n de Rotary Club International), Programa de Prevenci&oacute;n y Detecci&oacute;n de VIH/ SIDA (Colaboraci&oacute;n con Fundaci&oacute;n MIR), Asistencia social y Salud Integral para ni&ntilde;os. Adem&aacute;s, Operativos M&eacute;dicos o Cl&iacute;nicas ambulatorias en campos, parajes, bateyes y barrios pobres de la zona y jornadas Quir&uacute;rgicas (Salpingoscopia, Cirug&iacute;a General y Reconstructiva, Ortopedia, Ginecolog&iacute;a, Odontolog&iacute;a, Oftalmolog&iacute;a, Urolog&iacute;a pedi&aacute;trica, fistulas Arterio-venosas, Labio Leporino, entre otros).', 'e.valdez@hsamaritano.org', '', '', '', '', 6);
INSERT INTO `fields_business` VALUES(256, 'Altos de Villa Verde, en la avenida Circunvalación No. 79, La Romana', '809-349-0022', 'The &quot;Buen Samaritano&quot; General Hospital&nbsp;is a non-profit institution that has been providing assistance to the needy for more than 15 years. The organization is focused on supporting the development of programs and activities targeting the neediest in the Dominican Republic.<br />\n<br />\nThe programs include: Malnutrition and Food Control for malnourished children and patients with HIV or Tuberculosis, Women&rsquo;s Health, Bio-Sand Filters for clean drinking water in the Bateyes (in collaboration with Rotary Club International), HIV / AIDS Detection and Prevention Program (in collaboration with the MIR Foundation ) Integral Health and social care for children, Mobile Medical clinics in the Bateyes and City neighborhoods, and Medical Surgical Operations (Salpingoscopy, General and Reconstructive Surgery, Orthopedics, Gynecology, Dentistry, Ophthalmology, Pediatric Urology, Arteriovenous fistula , harelip, etc.).', 'e.valdez@hsamaritano.org', '', '', '', '', 168);
INSERT INTO `fields_business` VALUES(257, 'Plaza Portofino #13 The Marina - Casa de Campo, DR', '(809) 523-2273', 'Tina Fanjul Associates Inc. Real Estate has been matching buyers with sellers since 1977. Founded by Tina Fanjul, the firm now includes more than 18 sales associates and a full-time support staff. Whether you are selling or buying, renting or investing, our professionals will address your real estate needs with the utmost integrity and skill.', 'office@fanjulrealestate.com', '', '', '', '', 172);
INSERT INTO `fields_business` VALUES(258, 'Plaza Portofino #13 The Marina - Casa de Campo, DR', '(809) 523-2273', '<div>\n	Tina Fanjul Associates Inc. Real Estate ha sido coincidente compradores con los vendedores desde el a&ntilde;o 1977. Fundada por Tina Fanjul, la empresa ahora cuenta con m&aacute;s de 18 asociados de ventas y personal de apoyo de tiempo completo. Si usted esta vendiendo o comprando, alquilando o invertir,nuestros profesionales se ocupar&aacute; de sus necesidades de bienes ra&iacute;ces con la m&aacute;xima integridad y habilidad.&nbsp;</div>\n<div>\n	&nbsp;</div>\n', 'office@fanjulrealestate.com', '', '', '', '', 14);
INSERT INTO `fields_business` VALUES(261, 'Casa de Campo', '8095233333', '', '', '', '', '', '', 169);
INSERT INTO `fields_business` VALUES(290, '', '+1 (203) 629 5290', 'Walkabout Foundation es una organizaci&oacute;n sin fines de lucro que se centra en la financiaci&oacute;n de la investigaci&oacute;n para encontrar una cura para la par&aacute;lisis y la donaci&oacute;n de sillas de ruedas a personas necesitadas en todo el mundo. Ay&uacute;danos a hacer realidad el sue&ntilde;o de esos millones de personas que esperan a caminar de nuevo un d&iacute;a.&nbsp;', 'info@walkaboutfoundation.org', '+44 (0) 792 0124 183', '', '', '', 144);
INSERT INTO `fields_business` VALUES(291, '', '+1 (203) 629 5290', 'Walkabout Foundation is a non-profit organization that focuses on funding research to find a cure for paralysis and donating wheelchairs to people in need around the world. Help us realize the dream of those millions of individuals who hope to walk again one day soon by joining our cause today.', 'info@walkaboutfoundation.org', '+44 (0) 792 0124 183', '', '', '', 169);
INSERT INTO `fields_business` VALUES(293, 'Altos de Chavón', '(809) 523-8270', 'The Fundaci&oacute;n MIR is a non-profit organization which works to provide education to the children of the greater La Romana area, who are most in need. They run 3 schools that cater to the needs of more than 1,000 children; the MIR Esperanza (boys vocational school), the Escuela Tecnica Vocacional Fundaci&oacute;n MIR (girls vocational school) and the Primaria MIR (infants school).', 'magdalena@fundacionmir.org', '', '', '', 'http://www.facebook.com/fundacion.mir', 172);
INSERT INTO `fields_business` VALUES(302, 'Max Henríquez Ureña and Winston Churchill - Edificio In Tempo', '(809) 621-7777', '<br />\n<strong>Website:</strong> <a href="http://www.vuelos.aircaraibes.es/">www.vuelos.aircaraibes.es</a>', 'paxsales@generalairservices.com', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(303, 'Max Henríquez Ureña and Winston Churchill - Edificio In Tempo', '(809) 621-7777', '<br />\n<strong>Website:</strong> <a href="http://www.vuelos.aircaraibes.es/">www.vuelos.aircaraibes.es</a>', 'paxsales@generalairservices.com', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(307, '', '(809) 688-4400', '<span style="font-family: arial, sans-serif; font-size: 13px; ">La Fundaci&oacute;n Ferries del Caribe fue fundada en 1999, por N&eacute;stor Gonz&aacute;lez para ayudar a construir hogares en la zona de extrema pobreza de la Provincia de Batey Isabela en Barahona. Antes de que la Fundaci&oacute;n inici&oacute; un trabajo fant&aacute;stico que es la mayor&iacute;a de las personas que viven en esta zona viv&iacute;an en casas de barro, con el objetivo de la Fundaci&oacute;n Ferries del Caribe es convertir el Batey Isabela en una ciudad de al menos 500 casas de concreto.</span>', '', '', '', '', '', 7);
INSERT INTO `fields_business` VALUES(308, '', '(809) 688-4400', '<span style="font-family: arial, sans-serif; font-size: 13px; ">The Fundacion Ferries del Caribe was founded in 1999, by N&eacute;stor Gonz&aacute;lez to help build households in the extremely poor area of the Batey Isabela Province in Barahona. Before the Foundation began it&rsquo;s fantastic work most people living in this area were living in mud houses, the aim of the Fundacion Ferries del Caribe is to convert Batey Isabela into a town of at least 500 concrete houses.</span>', '', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(316, 'Calle El Vergel No. 37, Urbanización El Vergel', '(809) 338-1004', '<span style="white-space: nowrap;">The Dominican Federation of Golf&nbsp;</span>', 'administracion@fedogolfrd.com', '', '', '', '', 173);
INSERT INTO `fields_business` VALUES(317, 'Calle El Vergel No. 37, Urbanización El Vergel', '(809) 338-1004', '', 'administracion@fedogolfrd.com', '', '', '', '', 7);
INSERT INTO `fields_business` VALUES(318, 'Calle El Vergel No. 37, Urbanización El Vergel', '(809) 338-1004', '', 'administracion@fedogolfrd.com', '', '', '', '', 173);

-- --------------------------------------------------------

--
-- Table structure for table `fields_event`
--

CREATE TABLE `fields_event` (
  `node_id` int(10) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `description` text NOT NULL,
  `business` int(11) NOT NULL,
  `location` int(10) unsigned NOT NULL,
  `address` text NOT NULL,
  `cost` text NOT NULL,
  `dress_code` varchar(200) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `rsvp` varchar(250) NOT NULL,
  PRIMARY KEY  (`node_id`),
  KEY `node_id` (`node_id`,`business`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_event`
--

INSERT INTO `fields_event` VALUES(3, '2012-03-21 15:00:00', '2012-03-28 10:00:00', 'asdasdfasd', 5, 0, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(4, '2012-03-15 12:16:00', '2012-03-20 09:37:00', 'Un evento con todo y su descripción y todo lo que conlleva un evento, ve que lo que??', 5, 0, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(8, '2012-03-21 00:00:00', '2012-03-21 00:00:00', 'Un cumpleaños muy importante para todo esto', 10, 0, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(9, '2012-03-22 00:00:00', '0000-00-00 00:00:00', 'asdfasdf', 5, 0, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(12, '2012-03-21 00:00:46', '2012-03-21 23:59:00', 'Hoy es el dia que lanzamos a TODO.net.do!  Que alegria! Ha sido mucho trabajo y nos encanta poder compartirlo con todos!  \n\nEsperamos que lo disfruten!!', 11, 0, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(97, '2012-03-23 19:00:00', '2012-03-23 22:00:00', 'Un espectacular c&oacute;ctel de inauguraci&oacute;n, ambientado por m&uacute;sica, picaderas para todos los invitados en su nueva tienda y exhibici&oacute;n de muebles en el Coconut Mall de La Marina Casa de Campo. R&uacute;sticos y M&aacute;s es una empresa creadora de muebles r&uacute;sticos con dise&ntilde;os personalizados y elaborados con materiales dominicanos.', 63, 14, 'Coconut Mall', 'Gratuito', 'Elegant - casual', 'Rústicos y más: 809-550-8436, info@rusticosymas.net', '');
INSERT INTO `fields_event` VALUES(101, '2012-03-22 00:00:00', '2012-03-25 00:00:00', 'La Semana de Francia incorporar&aacute; numerosas actividades empresariales, tecnol&oacute;gicas, culturales y gastron&oacute;micas por los distintos lugares de Casa de Campo y la excepcional villa de Altos de Chav&oacute;n, que ser&aacute; convertida en un t&iacute;pico pueblo franc&eacute;s, con tiendas y stands, as&iacute; como eventos art&iacute;sticos, culturales, gastron&oacute;micos, comerciales y deportivos.', 99, 144, '', '', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(106, '2012-03-22 16:00:00', '2012-03-22 19:00:00', 'El torneo que ser&aacute; jugado entre los equipos de Casa de Campo y &quot;Domain du Barbossi&quot; (vi&ntilde;edo y lugar parecido a Casa de Campo) de Francia, ser&aacute; en honor a Claude Terrail, quien no s&oacute;lo fue una reconocida figura en la historia de la gastronom&iacute;a francesa, pero tambi&eacute;n fue un gran fan&aacute;tico de Casa de Campo y del juego de polo en el resort.<br />\n<br />\nEl final del torneo ser&aacute;&nbsp;jugado el s&aacute;bado 24 de marzo&nbsp;a las 5pm, culminando con l<span style="color: rgb(0, 0, 0); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px; ">a premiaci&oacute;n y c&oacute;ctel.&nbsp;</span>&nbsp;', 102, 13, 'campos de polo', 'Gratuito para espectadores', 'Casual', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(107, '2012-03-22 18:30:00', '0000-00-00 00:00:00', 'Inauguraci&oacute;n official de la Semana de Francia con con m&uacute;sica en vivo del coro de INTEC.<br />\n<br />\nDespu&eacute;s de la ceremonia de inauguraci&oacute;n habr&aacute; un coctel en la galer&iacute;a de arte para celebra la apertura de nueva exhibici&oacute;n de arte &quot;Soleils&quot; del artista franc&eacute;s Michel Bizet.<br />\n<br />\nM&aacute;s tarde a las 9pm las actividades de la noche terminar&aacute;n con un concierto del &quot;Gran Orchestre de Rene Coll&quot; en la Plaza Chav&oacute;n. &nbsp;', 99, 13, 'plaza principal', 'Gratuito', 'Elegant - casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(109, '2012-03-22 19:30:00', '0000-00-00 00:00:00', 'El pr&oacute;ximo jueves 22 de marzo, la Galer&iacute;a de Arte Altos de Chav&oacute;n inaugurar&aacute; la nueva exhibici&oacute;n de arte &ldquo;Soleils&rdquo; del artista franc&eacute;s Michel Bizet.<br />\n<br />\nLa nueva exhibici&oacute;n, uno de los eventos culturales ligados a la celebraci&oacute;n de la Semana de Francia, ser&aacute; celebrado con un c&oacute;ctel. Todos los residentes, turistas, familiares y amantes del arte est&aacute;n invitados a asistir en el eventos y habr&aacute; bebidas disponibles para su disfrute, mientras se deleita con cada obra de esta magn&iacute;fica exhibici&oacute;n.&nbsp;<br />\n<br />\nEsta misma&nbsp;noche habr&aacute; la ceremonia&nbsp;de inauguraci&oacute;n de la &quot;Semana de Francia&quot; en la Plaza Principal (a las 6:30pm) con m&uacute;sica en vivo.<br />\n<br />\n<strong>Sobre Michel Bizet</strong><br />\nMichel Bizet cuyo trabajo abarca la pintura, la escultura, la moda y la arquitectura, vive a plenitud su madurez art&iacute;stica. Radicado en la Rep&uacute;blica Dominicana desde 1995, hemos tenido la oportunidad de conocer su obra art&iacute;stica a trav&eacute;s de las exposiciones presentadas en el pa&iacute;s, entre ellas la m&aacute;s reciente, Suites, en el Palacio de Bellas celebrada en 2011, en 2010 estuvo en Quinta Dominica, y en el evento internacional de arte FIART 2010. Bajo el nombre de Tierra se presenta en el 2009 en la Embajada de Francia. Su primera exposici&oacute;n nacional fue Ox&iacute;geno, en el Museo de las Casas Reales en 2008.', 108, 13, 'galería de arte', 'Gratuito', 'Elegant - casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(111, '2012-03-22 21:00:00', '0000-00-00 00:00:00', 'Concierto del &quot;Gran Orchestre&quot; de Rene Coll presentado en la Plaza Chavon como parte de las celebraciones de apertura de la Semana de Francia.<br />\n<br />\n<br />\n', 99, 13, 'plaza principal', 'Gratuito', 'Elegant - casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(112, '2012-03-23 08:00:00', '2012-03-23 18:00:00', 'Prestigiosos empresarios franceses, dominicanos, y del Caribe, representantes oficiales de los gobiernos de Francia y la Rep&uacute;blica Dominicana incluyendo a su Excelencia Dr. Leonel Fernandez Reyna, Presidente de la Rep&uacute;blica Dominicana tratar&aacute;n temas de econom&iacute;a y comercio.', 99, 96, 'Centro de conferencias, Salon Flamboyan', 'US$450 miembros, US$500 no-miembros', 'Business-smart', 'Camera de comercio: 809-472-0588', '');
INSERT INTO `fields_event` VALUES(114, '2012-03-23 14:00:00', '0000-00-00 00:00:00', '', 99, 13, '"Espace André Malraux" (Genesis Disco)', 'Gratuito', 'Casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(115, '2012-03-23 15:30:00', '0000-00-00 00:00:00', 'Obra de teatro &ldquo;Le Petit Prince&rdquo; por Antoine de Saint-Exupery presentado por&nbsp;los estudiantes&nbsp;del Colegio St John en La Romana.', 99, 13, '"Espace André Malraux" (Genesis Disco)', 'Gratuito', 'Casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(116, '2012-03-23 16:00:00', '0000-00-00 00:00:00', 'Exhibici&oacute;n de la Moda Hist&oacute;rica Francesa a cargo de los estudiantes de Dise&ntilde;o de Modas de la Universidad Aut&oacute;noma de Santo Domingo (UASD)', 99, 13, 'plaza principal', 'Gratuito', 'Casual - bonito!', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(117, '2012-03-23 19:00:00', '0000-00-00 00:00:00', '<br />\n', 99, 13, ' Plaza Principal ', 'Gratuito', 'Casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(118, '2012-03-23 20:30:00', '0000-00-00 00:00:00', 'Destacando los exclusivos vinos Clarence Dillon y la famosa marca Ch&acirc;teau Haut-Brion, al igual que delicias francesas preparadas por un distinguido equipo de chefs invitados. En representaci&oacute;n de Le Cirque Las Vegas, Chef Gregory Pugin, Chef Ejecutivo y por partede Le Domaine de Barbossi: Robert Rem&iacute;, Chef de Cuisine; Eric Bonneau, Chef Patissier y Franck Thomas, Sommelier.<br />\n<br />\nM&uacute;sica en vivo del grupo franc&eacute;s de jazz &quot;Sextet Bony &amp; Co&quot;.&nbsp;', 98, 144, 'The Beach Club by Le Cirque, Minitas Beach', 'USD$300 por persona ', 'Elegant ', 'Casa de Campo Concierge: 809-523-3165', '');
INSERT INTO `fields_event` VALUES(119, '2012-03-24 00:00:00', '0000-00-00 00:00:00', 'El torneo de golf tendr&aacute; lugar en el campo de golf dise&ntilde;ado por Pete Dye, &ldquo;Teeth of the Dog&rdquo; &ndash; y USTED est&aacute; cordialmente invitado a unirse a la diversi&oacute;n y fabulosa experiencia en la ma&ntilde;ana o en la tarde con los golfistas de la Rep&uacute;blica Dominicana, Francia y el Caribe.<br />\n<br />\nAl igual que los premios para los ganadores en las divisiones masculinas y femeninas, tambi&eacute;n habr&aacute; un premio especial para el &ldquo;hoyo en uno&rdquo; y el &ldquo;close to the pin&rdquo;, con una ceremonia a celebrarse en conjunto con los torneos de tenis y polo, en la tarde del s&aacute;bado 24 de marzo a las 6pm en los campos de polo/club de polo de Casa de Campo.', 100, 144, '"Teeth of the Dog" campo de golf', 'US$225', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(120, '2012-03-24 09:00:00', '0000-00-00 00:00:00', '<br />\n', 99, 144, 'Club de Tenis La Terraza', 'US$95', '', 'Casa de Campo Tenis: 809-523-5940, teniscasa@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(121, '2012-03-24 11:00:00', '0000-00-00 00:00:00', 'Conferencia CERI: Estudia en Montepellier por Sup de Co Montepellier en el Espace Andr&eacute; Malraux (Genesis Disco) en Altos de Chav&oacute;n', 99, 13, '', '', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(122, '2012-03-24 11:30:00', '2012-03-24 00:00:00', 'Dictado Gastron&oacute;mico por Alianza Francesa, le&iacute;do por la Sra. Marie-Ange Horlaville.', 99, 13, '"Espace André Malraux" (Genesis Disco)', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(124, '2012-03-24 15:00:00', '0000-00-00 00:00:00', '<br />\n', 99, 13, 'puerta No.3 del anfiteatro ', ' RD$500', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(125, '2012-03-24 14:00:00', '0000-00-00 00:00:00', 'Obra de teatro &ldquo;Le Petit Prince&rdquo; por Antoine de Saint-Exupery a cargo del Colegio St John de La Romana en el &quot;Espace Andr&eacute; Malraux&quot; (Genesis Disco), Altos de Chav&oacute;n. ', 99, 13, '"Espace André Malraux" (Genesis Disco)', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(126, '2012-03-24 17:00:00', '0000-00-00 00:00:00', 'El final del torneo de polo &quot;Claude Terrail&quot; entre los equipos de polo del resort Casa de Campo y Le Domaine de Barbossi.<br />\n<br />\nEl torneo se realizar&aacute; en honor a Claude Terrail, quien fuera aficionado de polo en Casa de Campo y propietario del legendario restaurante&nbsp;&quot;La Tour D&#39;Argent&quot; en Paris.<br />\n<br />\nDespu&eacute;s del final un coctel y entrega de premios para los torneos de polo y golf ser&aacute;n celebrados en al club de polo. ', 102, 144, 'campos de polo', 'Gratuito', '', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(127, '2012-03-24 18:30:00', '0000-00-00 00:00:00', 'M&uacute;sica en vivo con el grupo INDESWASKA de Guadalupe', 99, 13, 'plaza prinicpal', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(129, '2012-03-24 20:00:00', '0000-00-00 00:00:00', 'En esta gran celebraci&oacute;n en el anfiteatro de Altos de Chav&oacute;n se incluyen una variedad de actuaciones musicales y la danza; la &ldquo;Gran Orquesta de Ren&eacute; Coll&rdquo;, la cantante de jazz franco-dominicana Cyrille Aimee, as&iacute; como bailarines de Can-Can! Oh la la!<br />\n<br />\nLas entradas a este gran evento son gratuitas &ndash; pero limitadas, por lo que recomendamos recoger las entradas en el Club de Due&ntilde;os de Casa de Campo lo m&aacute;s pronto posible para evitar que se acaben!&nbsp;', 99, 13, 'Anfiteatro de Altos de Chavón', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(130, '2012-03-24 23:00:00', '0000-00-00 00:00:00', 'El &ldquo;After Party&rdquo; tendr&aacute; lugar en el estacionamiento VIP detr&aacute;s del anfiteatro de Altos de Chav&oacute;n, donde los due&ntilde;os de villas, residentes y visitantes de Casa de Campo, disfrutar&aacute;n de m&uacute;sica y baile hasta el amanecer &ndash; una fiesta que ser&aacute; el rival de las legendarias fiestas en la playa que anualmente se celebran en Playa Minitas para el Fin de A&ntilde;o y S&aacute;bado Santo.', 147, 13, 'Estacionamiento VIP detrás del anfiteatro de Altos de Chavón', 'RS$2,000 (incluye open bar)', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(131, '2012-03-25 09:00:00', '0000-00-00 00:00:00', 'Caminata a beneficio del &quot;Walkabout Foundation&quot; desde la Playa Minitas hacia Altos de Chav&oacute;n en una ruta de 6km.&nbsp;', 290, 144, 'Encuentro en la Playa Minitas', 'Donación mínima: US$25 ', '', 'Casa de Campo Fitness Center: 809-523-5185, fitnesscenter@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(132, '2012-03-18 11:00:00', '0000-00-00 00:00:00', 'El "Brunch Dominical" en La Piazzetta Brasserie en Altos de Chavón será preparado por un distinguido equipo de chefs; en representación de Le Cirque Las Vegas, Chef Gregory Pugin, Chef Ejecutivo y por partede Le Domaine de Barbossi: Robert Remí, Chef de Cuisine; Eric Bonneau, Chef Patissier y Franck Thomas, Sommelier. ', 27, 13, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(133, '2012-03-25 10:30:00', '0000-00-00 00:00:00', '<br />\n', 99, 13, 'Encuentro en la tienda "Emilio Robba"', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(134, '2012-03-25 11:15:00', '0000-00-00 00:00:00', 'Por la ultima vez! M&uacute;sica en vivo por el grupo INDESWASKA de Guadalupe&nbsp;', 99, 13, 'La fuente de peces cera del anfiteatro de Altos de Chavón', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(137, '2012-03-25 15:00:00', '0000-00-00 00:00:00', 'Obra de teatro &quot;Les Fables de la Fontaine&quot;, adaptaci&oacute;n original de la senora Gabriela Maione de Atelier de Chantal.&nbsp;', 99, 13, '"Espace Malraux" (Genesis Disco)', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(138, '2012-03-25 17:00:00', '0000-00-00 00:00:00', '<br />\n', 99, 13, 'plaza principal', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(139, '2012-03-25 21:30:00', '0000-00-00 00:00:00', 'El vuelo inaugural de &quot;Air Caraibes&quot; desde Santo Domingo a Paris. ', 302, 7, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(140, '2012-03-22 00:00:00', '2012-03-25 00:00:00', 'Como parte de las celebraciones de la &ldquo;Semana de Francia&rdquo;, desde este jueves 22 al domingo 25 de marzo, la tranquila zona de Altos de Chav&oacute;n ser&aacute; convertido en un &ldquo;petit village fran&ccedil;ais&rdquo; con actividades gastron&oacute;micas, art&iacute;sticas y tecnol&oacute;gicas, animadas por artistas que recorrer&aacute;n sus calles, adem&aacute;s de la exhibici&oacute;n de la Auto Feria, 3 exhibiciones de arte y un vivo programa de eventos musicales, teatrales, gastron&oacute;micos y deportivos!<br />\n<br />\n<strong>Entretenimiento en las calles! </strong><br />\nA las calles de Altos de Chav&oacute;n llega el entretenimiento con una variedad de espect&aacute;culos realizados por artistas quienes estar&aacute;n diviertiendo a los invitados en distintas ocasiones durante el evento de cuatro d&iacute;as! El horario aprocimado para estos shows son los siguientes (por favor tome en cuenta que estos horarios pueden cambiar):&nbsp;<br />\n<br />\n&bull; Exhibici&oacute;n de Zancos: S&aacute;b. 11:45pm, 5:15pm y Dom. 2pm<br />\n<br />\n&bull; Show del Malabarista Chespi: S&aacute;b. 2:45pm y Dom. 2:15pm<br />\n<br />\n&bull; Actuaci&oacute;n Mimos a cargo del Instituto Tecnol&oacute;gico (INTEC): S&aacute;b. 4pm, 6pm<br />\n<br />\n&bull; Show de Payasos: S&aacute;b. 2:30pm, 7:30pm y Dom. 2:30pm<br />\n<br />\n&bull; Espect&aacute;culo de Traga-Fuegos con Renato:&nbsp;S&aacute;b. 7pm y Dom. 3:30pm<br />\n<br />\n&bull; Pinta-caritas y globos: Dom. 3pm', 99, 13, 'Plaza Principal', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(141, '2012-03-08 19:00:00', '0000-00-00 00:00:00', 'La muestra comprende imágenes de casi tamaño natural de un juego de polo donde la escala confrontacional del espectador promedia  2.41 metros de ancho por 1.52 metros de altura. Los trabajos expresan las acciones estrenduosas reminiscentes del origen persa del polo: el entrenamiento de la caballería.  Los imponentes caballos materializan un poder de corte aguerrido mientras comunica la intensidad física, el antiguo deporte del polo.  Hay una libertad primitiva y temeridad, sin embargo, el caballo está instintivamente consciente del juego, su mirada es tranquila.', 108, 13, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(142, '2012-03-27 00:00:00', '2012-04-07 00:00:00', 'Torneo de polo en los campos de polo de Casa de Campo. El torneo culminar&aacute;&nbsp;con el final el s&aacute;bado&nbsp;7 de abril con una fiesta y entrega de premios.&nbsp;', 102, 144, 'campos de polo', '', '', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(143, '2012-03-24 00:00:00', '0000-00-00 00:00:00', 'El campo de golf &ldquo;The Links&rdquo;, que ha estado cerrado por &nbsp;remodelaci&oacute;n desde mayo de 2011 est&aacute; programado para ser reabierto el s&aacute;bado 24 de mayo con un torneo de apertura!&nbsp;<br />\n<br />\nTODOS estan invitados a unirse a la celebraci&oacute;n de la re-apertura de este fant&aacute;stico campo de golf, en lo que ser&aacute; el &ldquo;torneo de apertura&rdquo;, saliendo a las 8am y a la 1:30pm el s&aacute;bado 24 de marzo &ndash; dando a cientos de fan&aacute;ticos del golf en Casa de Campo, la oportunidad de jugar, experimentar y enamorarse del mejorado Links de Casa de Campo!<br />\n<br />\nFormato: Individual Stableford', 100, 144, '"Links" campo de golf ', '• Huéspedes del hotel Casa de Campo: USD$70 • Dueños de villas de Casa de Campo: USD$70 • Huéspedes de villas de Casa de Campo: USD$80 • Dueño de villa de Casa de Campo registrado: USD$90', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(148, '2012-03-29 00:00:00', '2012-04-01 00:00:00', 'El &ldquo;MIR Bazaar&rdquo; se realiza cada a&ntilde;o con la ayuda de la Fundaci&oacute;n MIR, la instituci&oacute;n sin fines de lucro es una magn&iacute;fica oportunidad para que las damas de Casa de Campo realicen sus compras, mientras apoyan una noble causa!<br />\n<br />\n<strong>Horario</strong><br />\nJueves: 12pm&nbsp;- 9pm<br />\nViernes y s&aacute;bado: 9am&nbsp;- 9pm<br />\nDomingo: 9am - 2pm<br />\n<br />\n', 252, 144, 'La Romana Country Club', '', '', 'Fundación MIR: 809-523-8270', '');
INSERT INTO `fields_event` VALUES(149, '2012-03-29 00:00:00', '2012-03-31 00:00:00', 'Con el prop&oacute;sito de continuar con su gesta humanitaria en la frontera entre Rep&uacute;blica Dominicana y Hait&iacute;, el Sexto Torneo de Pesca Abierta de la Fundaci&oacute;n Ferries del Caribe, ser&aacute; celebrado en La Marina Casa de Campo, desde el jueves 29 al s&aacute;bado 31 de marzo de 2012.<br />\n<br />\nEl evento que durante cinco a&ntilde;os y gracias a sus participantes, ha podido construir en la frontera entre Rep&uacute;blica Dominicana y Hait&iacute;, 199 casitas de hormig&oacute;n, la primera escuela de la comunidad, un centro de c&oacute;mputos y un &aacute;rea recreativa para todos los miembros de estas familias, adem&aacute;s de diversas cl&iacute;nicas de salud en este Batey, este a&ntilde;o tiene la meta de construir nuevas facilidades que acoja a ni&ntilde;os participantes del Albergue Nacional para Impedidos F&iacute;sicos, un hogar para ni&ntilde;os especiales.&nbsp;', 307, 144, '', 'US$600', '', '(809) 688-4400', '');
INSERT INTO `fields_event` VALUES(151, '2012-04-01 00:00:00', '2012-04-03 00:00:00', 'Torneo de golf a beneficio de &quot;Reach for the Rainbow&quot;, organizado por Capital One y jugado en los campos de golf &quot;Teeth of the Dog&quot; y &quot;Dye Fore&quot;', 100, 144, 'Teeth of the Dog', '', '', '416-503-0088 ext.124, smackay@reachfortherainbow.ca', '');
INSERT INTO `fields_event` VALUES(152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El torneo de golf "Cajuiles" será juagdo en el campo de golf "Links"', 100, 96, 'Campo de golf "Links" ', '', '', '809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(153, '2012-04-07 16:00:00', '0000-00-00 00:00:00', 'El 7mo annual torneo de polo &quot;Copa Semana Santa&quot; en Casa de Campo terminar&aacute; en gran estilo con una fiesta y coctel despu&eacute;s del juego final. Entrada gratis y se espera tragos, cocteles, picadera y m&uacute;sica!', 102, 144, 'Los campos de polo', 'Gratuito', '', 'Casa de Campo Polo: 809-523-8951, polo@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(154, '2012-04-07 20:00:00', '0000-00-00 00:00:00', 'Luis Fonsi regresa a la República Dominicana, esta vez con "Tierra Firme", en el espectacular Anfiteatro de Altos de Chavón.\n\nEste evento forma parte de la plataforma "Presidente Live", en el que Luis Fonis, luego de realizar más de 25 conciertos en países como Ecuador, Argentina y Chile, sin duda ofrecerá un espectáculo de baile, música y alegría.', 99, 150, 'Anfiteatro de Altos de Chavón ', '• General: RD$1,800 • VIP: RD$2,500 • Special Guest: RD$5,000', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(155, '2012-04-13 17:00:00', '0000-00-00 00:00:00', 'El Caf&eacute; de la Leche es un evento ben&eacute;fico que se realiza mensualmente, acompa&ntilde;ado de un poco de t&eacute; o caf&eacute;, en donde las damas de Casa de Campo (a&uacute;n cuando se presentan caballeros de vez en cuando) por lo general se re&uacute;nen el primer viernes. Cada mes, este Caf&eacute; de la Leche es organizado por una persona distinta, en su villa privada de Casa de Campo o en alg&uacute;n restaurante o negocio.<br />\n<br />\nEl prop&oacute;sito del Caf&eacute; de la Leche es proveer leche para el Hogar del Ni&ntilde;o (un centro educacional y &ldquo;day care&rdquo; en La Romana) &ndash; que utiliza leche para alimentar a m&aacute;s de 200 beb&eacute;s que a diario son cuidados en la sala de cunas del lugar. Todos son bienvenidos a acudir a esta actividad, y es totalmente gratis! Casa persona le es solicitado colaborar con al menos una lata de leche en polvo, cereales o f&oacute;rmulas para beb&eacute;s.', 253, 144, 'Golf Villa #203', 'Gratuito. Contribución: Leche en polvo, cereales y fórmula para bebés. ', 'Casual - bonito!', '809-523-8901, info@pbo.org.do', '');
INSERT INTO `fields_event` VALUES(156, '2012-04-14 08:00:00', '0000-00-00 00:00:00', 'Torneo de golf de la C&aacute;mara Americana de Comercio que ser&aacute; jugado en el campo de golf &quot;Teeth of the Dog.&quot; Los fondos recaudados durante el torneo se utilizar&aacute; en beneficio de proyectos de desarrollo comunitario ubicados en diferentes partes del pa&iacute;s, as&iacute; como para el fortalecimiento de las iniciativas del programa de educaci&oacute;n. ', 100, 144, 'Campo de golf "Teeth of the Dog"', '', '', '809-332-7233, mlinares@amcham.org.do', '');
INSERT INTO `fields_event` VALUES(157, '2012-04-18 00:00:00', '2012-03-22 00:00:00', 'El torneo de golf &quot;2012 Spring Shootout&quot; ser&aacute; jugado en los campos de golf &quot;Links&quot;, &quot;Dye Fore&quot; y &quot;Teeth of the Dog.&quot;', 100, 144, '', '', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(158, '2012-05-05 01:00:00', '0000-00-00 00:00:00', 'Torneo de golf a beneficio del Hospital General y Fundaci&oacute;n El Buen Samaritano en La Romana. ', 100, 144, 'El campo de golf "Dye Fore"', 'US$200', '', '829-259-8037, e.valdez@hsamaritano.org', '');
INSERT INTO `fields_event` VALUES(159, '2012-05-05 00:00:00', '2012-05-06 00:00:00', '', 317, 144, '', '', '', '(809) 338-1004, administracion@fedogolfrd.com', '');
INSERT INTO `fields_event` VALUES(160, '2012-05-12 00:00:00', '2012-03-13 00:00:00', 'La &quot;Copa Orange&quot; une los mejores golfistas del pa&iacute;s durante 4 d&iacute;as en algunos de los mejores campos de golf del pa&iacute;s; el Dye Fore y Diente de Perro dise&ntilde;ado por Pete Dye', 100, 144, 'El campo de golf "Dye Fore"', '', '', '', '');
INSERT INTO `fields_event` VALUES(161, '2012-05-24 00:00:00', '2012-05-26 00:00:00', 'El torneo de golf ser&aacute; jugado en los campos de golf &quot;Links&quot;, &quot;Dye Fore&quot; y &quot;Teeth of the Dog&quot;', 100, 144, '', '', '', '809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(162, '2012-06-08 00:00:00', '2012-06-09 00:00:00', 'Un torneo de golf divertido organizado por Dewars 12 con 12 anfitrionas sexy y 2 fiestas!', 99, 144, 'El campo de golf "Teeth of the Dog"', '', '', '', '');
INSERT INTO `fields_event` VALUES(163, '2012-08-01 00:00:00', '2012-08-04 00:00:00', 'El evento se limita a los cubanos y sus invitados y será jugado en los campos de golf "Links", "Dye Fore" y "Teeth of the Dog"', 100, 144, '', '', '', '809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(164, '2012-03-10 00:00:00', '0000-00-00 00:00:00', 'A beneficio de la Fundación MIR. Incluye: torneos de tenis y golf y una cena de gala.', 99, 144, '', '', '', '809-523-8270, info@fundacionmir.org', '');
INSERT INTO `fields_event` VALUES(165, '2012-08-30 00:00:00', '2012-03-02 00:00:00', '', 99, 144, 'La Terraza Tennis Club', '', '', '809-523-5940, teniscasa@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(166, '2012-09-12 00:00:00', '2012-09-16 00:00:00', '', 100, 144, '', '', '', '809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(259, '2012-03-22 00:00:00', '2012-03-25 00:00:00', 'The &ldquo;Semana de Francia&rdquo;, 4 day event will incorporate a multitude of business, technological, cultural and gastronomic activities all over Casa de Campo with the exceptional spot of Altos de Chav&oacute;n transformed into a typical &ldquo;village Francaise&rdquo;, with gastronomic, artistic and technological fair open every day from 10am &ndash; 10pm animated with street performers and a lively program of musical and theatrical events!', 261, 169, '', '', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(260, '2012-03-22 00:00:00', '2012-03-25 00:00:00', 'As part of the &ldquo;Semana de Francia&rdquo; celebrations this Thursday the 22nd of March to Sunday the 25th of March, the quiet artistic village of Altos de Chav&oacute;n will be transformed into a &ldquo;petit village fran&ccedil;ais&rdquo; &nbsp;with a gastronomic, artistic and technological fair, street performers, an Autoferia (car show), 3 art exhibits and a lively program of musical, theatrical, gastronomical and sporting events!&nbsp;<br />\n<br />\n<strong>Street entertainment! </strong><br />\nBringing life and entertainment to the cobbled streets, will be a varied and exciting schedule of street artists, who will &nbsp;perform at various times throughout the 4-day event, within the main Altos de Chav&oacute;n area.<br />\nThe approximate timetable for performances is as follows (please note this schedule is subject to change): &nbsp;<br />\n<br />\nStilt walking exhibition:<br />\n&bull; Saturday &ndash; 11:45pm, 5:15pm<br />\n&bull; Sunday &ndash; 2pm &nbsp;<br />\n<br />\nShow by the juggler &ldquo;Chespi&rdquo;:<br />\n&bull; Saturday &ndash; 2:45pm<br />\n&bull; Sunday &ndash; 2:15pm &nbsp;<br />\n<br />\nMimes by the Instituto Tecnol&oacute;gico (INTEC):<br />\n&bull; Saturday &ndash; 4pm, 6pm &nbsp;<br />\n<br />\nClown show:<br />\n&bull; Saturday &ndash; 2:30pm, 7:30pm<br />\n&bull; Sunday &ndash; 2:30pm &nbsp;<br />\n<br />\nFire-eating with Renato<br />\n&bull; Saturday &ndash; 7pm<br />\n&bull; Sunday &ndash; 3:30pm &nbsp;<br />\n<br />\nFacepainting and balloon animals<br />\n&bull; Sunday &ndash; 3pm', 261, 172, 'main plaza', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(262, '2012-03-27 00:00:00', '2012-04-07 00:00:00', 'The 7th annual &quot;Semana Santa&quot; Polo tournament to be played on the Casa de Campo polo fields.<br />\n<br />\nThe tournament will end on Saturday April the 7th with the finals, prize-giving ceremony and party!&nbsp;<br />\n', 177, 169, 'polo fields', '', '', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(263, '2012-03-22 16:00:00', '2012-03-22 19:00:00', 'The tournament which will be played between the Casa de Campo polo team and the guest polo team from the &quot;Domaine du Barbossi&quot; (vineyard and estate similar to Casa de Campo) in France is being played in honor of the late Claude Terrail, who is not only an iconic figure in gastronomic French history, but was also a huge fan of Casa de Campo as well as playing polo in Casa de Campo.<br />\n<br />\nThe final of this polo tournament will be played on Saturday March 24th&nbsp;at 5pm, following which there will be a prize-giving ceremony and cocktail celebration.&nbsp;', 177, 169, 'polo fields', 'Free for spectators', 'Casual', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(264, '2012-03-22 18:30:00', '0000-00-00 00:00:00', 'Official inauguration ceremony of the &quot;Semana&nbsp;de Francia&quot; (French Festival) with live music by the INTEC Choir.&nbsp;<br />\n<br />\nAfter the ceremony there will be a cocktail at the Altos de Chav&oacute;n art gallery to celebrate the opening of the &quot;Semana de Francia&quot; as well as the opening of new art exhibit &quot;Soleils&quot; by Michel Bizet.&nbsp;<br />\n<br />\nLater the evening&#39;s entertainment will end with a performance by Rene Coll&#39;s &quot;Big Band&quot; on the Altos de Chav&oacute;n main plaza.&nbsp;', 261, 172, 'main plaza', 'FREE!', 'Elegant - casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(265, '2012-03-22 19:30:00', '0000-00-00 00:00:00', 'On Thursday the 22nd of March, the Altos de Chav&oacute;n art gallery will be inaugurating yet another art gallery exhibition; &ldquo;Soleils&rdquo; presented by French artist Michel Bizet. The new exhibit, taking place as part of the &quot;Semana de Francia&quot; will be officially opened with a cocktail reception &ndash; and you are cordially invited to enjoy the celebration!<br />\n<br />\n<strong>About Michel Bizet &nbsp; </strong><br />\nFrench artist, Michel Bizet whose work includes painting, sculpture, fashion and architecture has been based in the Dominican Republic since 1995 and has exhibited in various galleries across the country, most recently &quot;Suites&quot;, which was presented at the Palacio de Bellas Artes in 2011. &nbsp;Michel Bizet is an abstract impressionist artist.', 176, 172, 'Art Gallery', 'FREE!', 'Elegant - casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(266, '2012-03-22 21:00:00', '0000-00-00 00:00:00', '<span style="white-space: nowrap;">Following the official inauguration ceremony at 6:30pm and the cocktail celebration for the opening of the new art exhibit &quot;Soleils&quot; at 7:30pm, the evening&#39;s entertianment will end with a live music concert presented by the&nbsp;</span>&nbsp;&ldquo;Gran Orchestre&quot; of Rene Coll.<br />\n<br />\n<br />\n', 261, 172, 'main plaza', 'FREE!', 'Elegant - casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(267, '2012-03-23 08:00:00', '2012-03-23 18:00:00', 'Prestigious Caribbean, French and Dominican entrepreneurs and top executives, as well as official representatives from the French and Dominican governments including his Excellency Dr. Leonel Fernandez Reyna, President of the Dominican Republic will discuss economic and commercial topics.', 261, 170, 'Casa de Campo Conference centre, "Salon Flamboyan"', 'US$450 members, US$500 non-members', 'Business-smart', 'The Chamber of Commerce: 809-472-0588', '');
INSERT INTO `fields_event` VALUES(268, '2012-03-23 14:00:00', '0000-00-00 00:00:00', '', 261, 172, '"Espace André Malraux" (Genesis Disco)', 'FREE!', 'Casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(269, '2012-03-23 00:00:00', '0000-00-00 00:00:00', 'Los visitantes son bienvenidos a bordo del &ldquo;Dumont Durville&rdquo;, que estar&aacute; en la Marina Casa de Campo durante toda la Semana de Francia.<br />\n<br />\n<div>\n	<strong>Cu&aacute;ndo:</strong> 1:30pm &ndash; 2:30pm, 2:30pm &ndash; 3:30pm and 3:30pm &ndash; 4:30pm<br />\n	&nbsp;</div>\n<div>\n	<strong>Donde: </strong>La Marina Casa de Campo &ndash; busca el barco grande y gris!<br />\n	&nbsp;</div>\n<div>\n	<strong>Registro: </strong>En la carpa de la camera de comercio en Altos de Chav&oacute;n (dentro de la Feria)<br />\n	&nbsp;</div>\n<div>\n	<strong>Nota: </strong>Se permiten s&oacute;lo 15 persona &nbsp;a bordo en un momento as&iacute; que llegue temprano para evitar desilusiones</div>\n', 99, 14, '', 'Gratuito', 'Casual', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(270, '2012-03-23 00:00:00', '0000-00-00 00:00:00', '<div>\n	<div>\n		Visitors are welcome to board the &ldquo;Dumont Durville&rdquo; navy ship which will be stationed at the Marina Casa de Campo throughout the Semana de Francia.<br />\n		&nbsp;</div>\n	<div>\n		<strong>When: </strong>1:30pm &ndash; 2:30pm, 2:30pm &ndash; 3:30pm and 3:30pm &ndash; 4:30pm<br />\n		&nbsp;</div>\n	<div>\n		<strong>Where: </strong>The Marina Casa de Campo &ndash; look out for the big grey navy boat!<br />\n		&nbsp;</div>\n	<div>\n		<strong>Registration: </strong>At the French Chamber of Commerce tent in Altos de Chav&oacute;n (part of the Feria)<br />\n		&nbsp;</div>\n	<div>\n		<strong>Note: </strong>Only 15 people are allowed on board at a time so arrive early to avoid disappointment!</div>\n</div>\n<br />\n', 261, 171, '', 'FREE!', 'Casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(271, '2012-03-23 15:30:00', '0000-00-00 00:00:00', 'Theatrical production of &ldquo;Le Petit Prince&rdquo; by Antoine de Saint-Exupery presented by St John&rsquo;s School in La Romana', 261, 172, '"Espace André Malraux" (Genesis Disco)', 'FREE!', 'Casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(272, '2012-03-23 16:00:00', '0000-00-00 00:00:00', 'Exhibition/fashion show of historical French fashion, presented by the fashion design students of the of the UASD university in Santo Domingo.&nbsp;', 261, 172, 'main plaza', 'FREE!', 'Casual - pretty!', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(273, '2012-03-23 19:00:00', '2012-03-23 22:00:00', '<br />\n&ldquo;R&uacute;sticos y M&aacute;s&rdquo;, hand-made Dominican furniture designers and creators will be celebrating the opening of their&nbsp;new showroom in the Marina Casa de Campo with a cocktail party celebration &ndash; and you are cordially invited!', 205, 171, 'Coconut Mall', 'FREE!', 'Elegant - casual', 'Rústicos y más: 809-550-8436, info@rusticosymas.net', '');
INSERT INTO `fields_event` VALUES(274, '2012-03-23 19:00:00', '0000-00-00 00:00:00', '<br />\n', 261, 172, 'main plaza', 'FREE!', 'Casual', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(275, '2012-03-23 20:30:00', '0000-00-00 00:00:00', 'Featuring Clarence Dillon Wines including the famous Ch&acirc;teau Haut-Brion, as well as fine French cuisine prepared by distinguished invited chefs; Gregory Pugin, executive chef of Le Cirque Las Vegas and on behalf of Le Domaine de Barbossi Robert Remi chef de cuisine, Eric Bonneau chef patissire and sommelier Franck Thomas.<br />\n<br />\nLive music by the French jazz group &ldquo;Sextet Bony &amp; Co.&rdquo;', 261, 169, 'The Beach Club by Le Cirque, Minitas Beach', 'USD$300 per person', 'Elegant ', 'Casa de Campo Concierge: 809-523-3165', '');
INSERT INTO `fields_event` VALUES(276, '2012-03-24 08:00:00', '0000-00-00 00:00:00', 'The golf tournament is taking place on the Pete Dye designed Teeth of the Dog tournament &ndash; and YOU are cordially invited to join the fun and experience a morning or afternoon shared with fellow golfers from the Dominican Republic, France and across the Caribbean.<br />\n<br />\nAs well as prizes for the male and female net and gross winners, there will also be special prizes for &ldquo;hole in one&rdquo; and &ldquo;closest to the pin&rdquo;, with the prize-giving celebration being held jointly with those for the tennis and polo tournaments on Saturday afternoon the 24th of March at 6pm at the Casa de Campo polo fields/Casa de Campo polo club.', 178, 169, '"Teeth of the Dog" golf course', 'US$225', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(277, '2012-03-24 08:00:00', '0000-00-00 00:00:00', 'Casa de Campo&rsquo;s &ldquo;The Links&rdquo; golf course, which has been closed for refurbishment since May 2011 is scheduled to reopen on Saturday March the 24th with a celebratory &ldquo;Opening Day Tournament&rdquo;!&nbsp;<br />\n<br />\nEVERYONE is welcome to join in celebrating the reopening of this fantastic course with the &ldquo;Opening Day Tournament&rdquo; teeing off at 8am and 1:30pm on Saturday March the 24th &ndash; giving hundreds of Casa de Campo golf fanatics the opportunity to play, experience and fall in love with the new and improved Links golf course!<br />\n<br />\nFormat: Individual Stableford', 178, 169, '"Links" golf course', '• Casa de Campo hotel guests: USD$70 • Casa de Campo villa owners: USD$70 • Guest of a Casa de Campo villa owner: USD$80 • Registered private Casa de Campo villa guests: USD$90', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(278, '2012-03-24 09:00:00', '0000-00-00 00:00:00', '<br />\n', 261, 169, 'La Terraza Tennis Club', 'US$95', '', 'Casa de Campo Tennis: 809-523-5940, teniscasa@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(279, '2012-03-30 19:30:00', '2012-03-30 21:30:00', 'El restaurante Chinois les invita a disfrutar de una exquisita experiencia gastron&oacute;mica, ofreciendo a los due&ntilde;os de villas, residentes y hu&eacute;spedes de Casa de Campo una amplia variedad de comida china, desde egg rolls de vegetales, de pollo, dumplings de camarones, de cerdo, y mucho m&aacute;s, s&oacute;lo por RD$1,000!', 18, 14, 'Chinois Restaurante, Plaza Portofino', 'RD$1,000 - todo lo que te puedas comer', '', 'Chinois: 809-523-2388, kilate01@hotmail.com ', '');
INSERT INTO `fields_event` VALUES(280, '2012-03-30 19:30:00', '2012-03-30 21:30:00', 'Chinois, the Marina Casa de Campo&#39;s famous Chinese restaurant invites all Casa de Campo residents, visitors and villa owners to enjoy an exquisite dining experience, offering a wide variety of Chinese food from vegetable and chicken egg rolls, shrimp and pork dumplings, and much more for only RD$ 1,000!', 244, 171, 'Chinois Restaurant, Plaza Portofino', 'RD$1,000 - all you can eat', '', 'Chinois: 809-523-2388, kilate01@hotmail.com ', '');
INSERT INTO `fields_event` VALUES(282, '2012-03-24 11:00:00', '2012-03-21 00:00:00', 'CERI Conference: Study in Montepellier by Sup de Co Montepellier', 261, 172, '"Espace André Malraux" (Genesis Disco) ', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(283, '2012-03-24 11:30:00', '2012-03-21 00:00:00', 'Gastronomic Dictation by French Alliance, read by Marie-Ange Horlaville', 195, 172, '"Espace André Malraux" (Genesis Disco)', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(284, '2012-03-24 15:00:00', '0000-00-00 00:00:00', '<br />\n', 261, 172, 'door #3 of the Altos de Chavón amphitheater', ' RD$500', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(285, '2012-03-24 14:00:00', '0000-00-00 00:00:00', 'Theatrical presentation of &ldquo;Le Petit Prince&rdquo; by Antoine de Saint-Exupery presented by the students of the St John School in La Romana', 261, 172, '"Espace André Malraux" (Genesis Disco)', 'Gratuito', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(286, '2012-03-24 17:00:00', '0000-00-00 00:00:00', 'The tournament which will be played between the Casa de Campo polo team and the guest polo team from the &ldquo;Domaine du Barbossi&rdquo; (vineyard and estate similar to Casa de Campo) in France is being played in honor of the late Claude Terrail, who is not only an iconic figure in gastronomic French history, but was also a huge fan of Casa de Campo as well as playing polo in Casa de Campo.<br />\n<br />\nFollowing the final game a prize-giving celebration will take place which&nbsp;will also include the prize-giving for the &ldquo;Copa Foro Empresarial Franco-Dominicano&rdquo; golf tournament, also being played on Saturday on the Teeth of the Dog golf course.', 261, 172, 'polo fields ', 'FREE!', '', 'Casa de Campo Polo: 809-523-8951', '');
INSERT INTO `fields_event` VALUES(287, '2012-03-24 18:30:00', '0000-00-00 00:00:00', '<br />\n', 261, 172, 'main plaza', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(288, '2012-03-24 20:00:00', '0000-00-00 00:00:00', 'Don&#39;t miss this extravaganza celebration of French music and dancing at the Altos de Chav&oacute;n amphitheater - with the &quot;Gran Orchestre de Rene Coll&quot;, the Dominican-French jazz singer, Cyrille Aimee and CAN-CAN dancers! &nbsp;<br />\n<br />\nEntrance to this event is free and a LIMITED number of tickets are available in the Casa de Campo villa owners club - get yours NOW before it&#39;s too late!', 261, 172, 'Altos de Chavón amphitheater', 'Free', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(289, '2012-03-24 23:00:00', '0000-00-00 00:00:00', 'Taking place in the VIP parking lot behind the Altos de Chav&oacute;n amphitheater, the party and celebration on Saturday the 24th of March, beginning at the amphitheater with the &rdquo;Gran Gala de la Canci&oacute;n Francesa&rdquo; will naturally overflow into the After Party where Casa de Campo party animals and visitors will enjoy non-stop music and dancing until sunrise &ndash; a party which will rival the legendary beach parties celebrated annually at Minitas Beach for New Years Eve and &ldquo;S&aacute;bado Santa&rdquo; (Easter Saturday).', 175, 172, 'VIP parking lot behind the Altos de Chavón amphitheater', 'RS$2,000 (includes open bar)', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(292, '2012-03-25 09:00:00', '0000-00-00 00:00:00', 'Mini-marathon in aid of the Walkabout Foundation. Route is from &nbsp;Minitas&nbsp;Beach to Altos de Chav&oacute;n (6km.)&nbsp;', 291, 169, 'Meet at Minitas beach', 'Minimum donation: US$25 ', '', 'Casa de Campo Fitness Center: 809-523-5185, fitnesscenter@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(294, '2012-03-25 10:30:00', '0000-00-00 00:00:00', '<br />\n', 195, 172, 'Meet at the "Emilio Robba" store', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(295, '2012-03-25 11:15:00', '0000-00-00 00:00:00', '<br />\n', 261, 172, 'The fish fountain near the Altos de Chavón amphitheater', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(296, '2012-03-25 15:00:00', '0000-00-00 00:00:00', 'Theatrical presentation of &ldquo;Les Fables de la Fontaine&rdquo; by Atelier de Chantal, the original adaptation by Gabriela Maione.', 261, 172, '"Espace Malraux" (Genesis Disco)', 'FREE!', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(297, '2012-03-25 11:00:00', '2012-03-25 15:00:00', 'Preparado por un distinguido equipo de chefs invitados. En representaci&oacute;n de Le Cirque Las Vegas, Chef Gregory Pugin, Chef Ejecutivo y por partede Le Domaine de Barbossi: Robert Rem&iacute;, Chef de Cuisine; Eric Bonneau, Chef Patissier y Franck Thomas, Sommelier.', 99, 13, 'La Piazzetta restaurant', 'US$55 más impuestos', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(298, '2012-03-25 11:00:00', '2012-03-25 15:00:00', 'Prepared &nbsp;prepared by distinguished invited chefs; Gregory Pugin, executive chef of Le Cirque Las Vegas and on behalf of Le Domaine de Barbossi Robert Remi chef de cuisine, Eric Bonneau chef patissire and sommelier Franck Thomas.', 261, 172, 'La Piazzetta restaurant', 'US$55 plus tax', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(299, '2012-03-25 14:00:00', '0000-00-00 00:00:00', '', 99, 13, 'puerta #3 del anfiteatro de Altos de Chavón', 'RD$500 ', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(300, '2012-03-25 14:00:00', '0000-00-00 00:00:00', '', 261, 172, 'door #3 of the Altos de Chavón amphitheater ', 'RD$500 ', '', 'Casa de Campo Club de Dueños: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(301, '2012-03-25 17:00:00', '0000-00-00 00:00:00', '<br />\n', 261, 172, 'main plaza', 'FREE! ', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(304, '2012-03-25 21:30:00', '0000-00-00 00:00:00', 'The inaugural &quot;Air Caraibes&quot;&nbsp;flight from Santo Domingo to Paris-Orly&nbsp;', 303, 172, '', '', '', '', '');
INSERT INTO `fields_event` VALUES(305, '2012-04-13 17:00:00', '0000-00-00 00:00:00', '<div>\n	The Cafe de la Leche is a monthly charitable event, a little like a coffee or a tea party held for the ladies of Casa de Campo (although men are occasionally invited) and usually takes place on the first Friday of the month, hosted by a member of the Casa de Campo villa at her Casa de Campo villa or occasionally restaurant/business.</div>\n<div>\n	&nbsp;</div>\n<div>\n	The aim of the Caf&eacute; de la Leche gatherings are to boost the milk supplies of the Hogar del Ni&ntilde;o (a daycare and educational facility in La Romana) &ndash; which uses the milk to feed more than 200 babies cared for daily in it&rsquo;s crib room.</div>\n<div>\n	&nbsp;</div>\n<div>\n	Everyone is welcome to attend these great events and it&rsquo;s totally free &ndash; you are just requested to bring some dried/powdered milk, cereals or baby formula to contribute.</div>\n', 254, 169, 'Golf Villa #203 ', 'Free. Contribution: dried/powdered milk, cereals or baby formula', '', '809-523-8901, info@pbo.org.do', '');
INSERT INTO `fields_event` VALUES(306, '2012-03-29 00:00:00', '2012-03-31 00:00:00', '<div>\n	The tournament taking place in the waters outside the Marina Casa de Campo, will not only bring together the best fishing boats and fishermen from both the Dominican Republic and Puerto Rico but will also raise money to benefit the &quot;Ferries del Caribe Foundation&quot;, who over the last 6 years have used the monies raised with this event to build concrete houses for more than 1,500 people living in extreme poverty at Batey Isabela in the province of Barahona (near to the Dominican-Haitian border).</div>\n<div>\n	&nbsp;</div>\n<div>\n	In fact, over the last five years, this event has enabled the construction of 199 concrete houses in Batey Isabela, the first community school, a computer center and a recreational area for all members of these families, as well as various health clinics - and this year&#39;s goal is to build new facilities and a specialist home for disabled children who need physical therapies.</div>\n', 308, 172, '', 'US$600', '', '(809) 688-4400', '');
INSERT INTO `fields_event` VALUES(309, '2012-03-29 00:00:00', '2012-04-01 00:00:00', 'MIR Bazaar The &ldquo;MIR Bazaar&rdquo; is held every year in aid of the Fundaci&oacute;n MIR, non-profit organization and is a wonderful opportunity for Casa de Campo ladies to do a little shopping whilst also supporting a great cause!<br />\n<br />\n<strong>Opening Times</strong><br />\nThursday: 12pm&nbsp;- 9pm<br />\n<span style="white-space: nowrap;">Friday and Saturday</span>: 9am&nbsp;- 9pm<br />\nSunday: 9am - 2pm<br />\n<br />\n', 293, 169, 'La Romana Country Club', '', '', 'Fundación MIR: 809-523-8270', '');
INSERT INTO `fields_event` VALUES(310, '2012-04-01 00:00:00', '2012-04-03 00:00:00', 'Golf tournament to benefit &quot;Reach for the Rainbow&quot;, organized by Capital One and played on the Teeth of the Dog and Dye Fore golf courses in Casa de Campo<br />\n<br />\n', 178, 172, 'Teeth of the Dog', '', '', '416-503-0088 ext.124, smackay@reachfortherainbow.ca', '');
INSERT INTO `fields_event` VALUES(311, '2012-04-07 16:00:00', '0000-00-00 00:00:00', 'The final of the 7th annual &quot;Copa Semana Santa&quot; polo tournament, which will be celebrated in grand style with a party and cocktail with drinks, food, music and possibly even dancing!<br />\n<br />\n', 177, 169, 'polo fields', 'FREE!', '', 'Casa de Campo Polo: 809-523-8951, polo@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(312, '2012-04-07 20:00:00', '0000-00-00 00:00:00', 'This coming &ldquo;S&aacute;bado Santo&rdquo; (Saturday Aril the 7th), Luis Fonsi returns to the Dominican Republic, this time with his &ldquo;Terra Firma Tour&rdquo; at will perform at our gorgeous Altos de Chavon amphitheater! &nbsp;<br />\n<br />\nAs part of a series of concerts to be held this year by &ldquo;Presidente Live&rdquo; (from the Dominican Republic&rsquo;s most famous beer &ldquo;Presidente&rdquo;) Luis Fonsi , after 25 succesful concerts in countries such as Argentina and Chile, will finally make his stop in the Dominican Republic with his &ldquo;Tierra Firme Tour&rdquo;, an occasion which will see thousands of &nbsp;fans from all over the Dominican Republic flock to this historic outdoor music venue (this year celebrating it&rsquo;s 30th anniversary) to dance and sing to his great music!<br />\n<br />\n<br />\n', 195, 172, 'Altos de Chavón amphitheater', '• General: RD$1,800 • VIP: RD$2,500 • Special Guest: RD$5,000 ', '', 'Casa de Campo Villa Owners Club: 809-523-2161', '');
INSERT INTO `fields_event` VALUES(313, '2012-04-14 08:00:00', '0000-00-00 00:00:00', 'Golf tournament organized by the American Chamber of Commerce in the Dominican Republic to be played on the Teeth of the Dog golf course. Funds raised will be donated to various community projects &nbsp;across different areas of the Dominican Republic.&nbsp;', 178, 172, 'Campo de golf "Teeth of the Dog"', '', '', '809-332-7233, mlinares@amcham.org.do', '');
INSERT INTO `fields_event` VALUES(314, '2012-04-18 00:00:00', '2012-03-22 00:00:00', 'The &quot;2012 Spring Shootout&quot;&nbsp;golf tournament will be played on the Links, Dye Fore and the Teeth of the Dog.', 178, 169, '', '', '', 'Casa de Campo Golf: 809-523-8115, golf@ccampo.com.do', '');
INSERT INTO `fields_event` VALUES(319, '2012-05-05 00:00:00', '2012-05-06 00:00:00', '', 72, 13, '', '', '', '(809) 338-1004, administracion@fedogolfrd.com', '');
INSERT INTO `fields_event` VALUES(322, '2012-05-05 13:00:00', '0000-00-00 00:00:00', 'Golf tournament to benefit the &quot;Buen Samaritano&quot; hospital in La Romana.&nbsp;', 256, 174, '"Dye Fore" golf course', 'US$200', '', '829-259-8037, e.valdez@hsamaritano.org', '');

-- --------------------------------------------------------

--
-- Table structure for table `fields_location`
--

CREATE TABLE `fields_location` (
  `node_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_location`
--

INSERT INTO `fields_location` VALUES(6, '');
INSERT INTO `fields_location` VALUES(7, '');
INSERT INTO `fields_location` VALUES(13, '');
INSERT INTO `fields_location` VALUES(14, '');
INSERT INTO `fields_location` VALUES(96, '');
INSERT INTO `fields_location` VALUES(144, '');
INSERT INTO `fields_location` VALUES(150, '');
INSERT INTO `fields_location` VALUES(168, '');
INSERT INTO `fields_location` VALUES(169, '');
INSERT INTO `fields_location` VALUES(170, '');
INSERT INTO `fields_location` VALUES(171, '');
INSERT INTO `fields_location` VALUES(172, '');
INSERT INTO `fields_location` VALUES(173, '');
INSERT INTO `fields_location` VALUES(174, '');
INSERT INTO `fields_location` VALUES(320, '');
INSERT INTO `fields_location` VALUES(321, '');

-- --------------------------------------------------------

--
-- Table structure for table `fields_special`
--

CREATE TABLE `fields_special` (
  `node_id` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `description` text NOT NULL,
  `business` int(11) NOT NULL,
  `original_price` varchar(20) NOT NULL,
  `special_price` varchar(20) NOT NULL,
  PRIMARY KEY  (`node_id`),
  KEY `node_id` (`node_id`,`startdate`,`enddate`,`business`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_special`
--


-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_name` varchar(100) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  PRIMARY KEY  (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` VALUES('English', 'en');
INSERT INTO `languages` VALUES('Español', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `node_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `node_id` (`node_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` VALUES(122, 1);
INSERT INTO `likes` VALUES(140, 1);

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(250) NOT NULL,
  `type` varchar(100) NOT NULL,
  `language` varchar(2) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `node`
--

INSERT INTO `node` VALUES(5, 'Papa Jack''s', 'business', 'es', 0, 1332339988, 0, 0);
INSERT INTO `node` VALUES(6, 'La Romana', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(7, 'Santo Domingo', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(10, 'Casa de Campo Shooting Center', 'business', 'es', 0, 1332201787, 0, 0);
INSERT INTO `node` VALUES(11, 'Silgon, Inc.', 'business', 'es', 0, 1332288805, 0, 0);
INSERT INTO `node` VALUES(12, 'Lanzamiento de TODO!', 'event', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(13, 'Altos de Chavon', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(14, 'Marina Casa de Campo', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(15, 'Azimut Café', 'business', 'es', 0, 1332340134, 0, 0);
INSERT INTO `node` VALUES(16, 'Block & Barrel', 'business', 'en', 0, 1332389143, 0, 0);
INSERT INTO `node` VALUES(17, 'Café Juanita Gastropub', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(18, 'Chinois Restaurant', 'business', 'es', 0, 1332342960, 0, 0);
INSERT INTO `node` VALUES(19, 'La Enoteca', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(20, 'Il Limoncello', 'business', 'es', 0, 1332341969, 0, 0);
INSERT INTO `node` VALUES(21, 'La Casita', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(22, 'Mistral Bar, Lounge & Restaurant', 'business', 'es', 0, 1332343514, 0, 0);
INSERT INTO `node` VALUES(23, 'Peperoni', 'business', 'es', 0, 1332343412, 0, 0);
INSERT INTO `node` VALUES(24, 'Pistakio', 'business', 'es', 0, 1332343615, 0, 0);
INSERT INTO `node` VALUES(25, 'Victory Club', 'business', 'es', 0, 1332343746, 0, 0);
INSERT INTO `node` VALUES(26, 'Gino in Trastevere', 'business', 'es', 0, 1332343988, 0, 0);
INSERT INTO `node` VALUES(27, 'La Piazzetta', 'business', 'es', 0, 1332344435, 0, 0);
INSERT INTO `node` VALUES(28, 'La Cantina', 'business', 'es', 0, 1332344789, 0, 0);
INSERT INTO `node` VALUES(29, 'Papa Jacks', 'business', 'es', 0, 1332344923, 0, 0);
INSERT INTO `node` VALUES(30, 'Onno''s Bar', 'business', 'es', 0, 1332345574, 0, 0);
INSERT INTO `node` VALUES(31, 'Dye Fore Bar', 'business', 'es', 0, 1332345671, 0, 0);
INSERT INTO `node` VALUES(32, 'La Caña Restaurant and Lounge by Il Circo ', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(33, '19th Hole', 'business', 'es', 0, 1332346120, 0, 0);
INSERT INTO `node` VALUES(34, 'Lago Grill', 'business', 'es', 0, 1332346478, 0, 0);
INSERT INTO `node` VALUES(35, 'Beach Club by Le Cirque', 'business', 'es', 0, 1332346672, 0, 0);
INSERT INTO `node` VALUES(36, 'Coco Mar Bar', 'business', 'es', 0, 1332348288, 0, 0);
INSERT INTO `node` VALUES(37, 'Art '' Arena ', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(39, 'Azzurro', 'business', 'es', 0, 1332288235, 0, 0);
INSERT INTO `node` VALUES(40, 'Bleu Marine', 'business', 'es', 0, 1332199300, 0, 0);
INSERT INTO `node` VALUES(41, 'Carmen Sol New York', 'business', 'es', 0, 1332199335, 0, 0);
INSERT INTO `node` VALUES(42, 'Carmen Sol New York - Sun', 'business', 'es', 0, 1332199357, 0, 0);
INSERT INTO `node` VALUES(43, 'Claro', 'business', 'es', 0, 1332288148, 0, 0);
INSERT INTO `node` VALUES(44, 'Columbia Sportswear', 'business', 'es', 0, 1332199436, 0, 0);
INSERT INTO `node` VALUES(45, 'Cosi''e', 'business', 'es', 0, 1332288126, 0, 0);
INSERT INTO `node` VALUES(46, 'Dedon - Villa Collection', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(47, 'Ecoplaneta Caribe', 'business', 'es', 0, 1332199879, 0, 0);
INSERT INTO `node` VALUES(48, 'Elementos', 'business', 'es', 0, 1332200081, 0, 0);
INSERT INTO `node` VALUES(49, 'Enoteca Peperoni', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(50, 'Everett Designs', 'business', 'es', 0, 1332200151, 0, 0);
INSERT INTO `node` VALUES(51, 'Ferreteria Americana', 'business', 'es', 0, 1332200193, 0, 0);
INSERT INTO `node` VALUES(52, 'Fumo', 'business', 'es', 0, 1332200237, 0, 0);
INSERT INTO `node` VALUES(53, 'Hippolito', 'business', 'es', 0, 1332200261, 0, 0);
INSERT INTO `node` VALUES(54, 'Jenny Polanco & Bibi León', 'business', 'es', 0, 1332200285, 0, 0);
INSERT INTO `node` VALUES(55, 'La Pharmacie & Parfums', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(56, 'Murphy & Nye', 'business', 'es', 0, 1332200326, 0, 0);
INSERT INTO `node` VALUES(57, 'Nuovo Rinascimento', 'business', 'es', 0, 1332200339, 0, 0);
INSERT INTO `node` VALUES(58, 'Kiwi St. Tropez Swimwear', 'business', 'es', 0, 1332200355, 0, 0);
INSERT INTO `node` VALUES(59, 'Rayoled', 'business', 'es', 0, 1332200371, 0, 0);
INSERT INTO `node` VALUES(60, 'Rubiluna Collection', 'business', 'es', 0, 1332200385, 0, 0);
INSERT INTO `node` VALUES(61, 'Supermercado Nacional', 'business', 'es', 0, 1332200402, 0, 0);
INSERT INTO `node` VALUES(62, 'Vilebrequin', 'business', 'es', 0, 1332200460, 0, 0);
INSERT INTO `node` VALUES(63, 'Rusticos y Mas', 'business', 'es', 0, 1332200480, 0, 0);
INSERT INTO `node` VALUES(64, 'El Mercadito', 'business', 'es', 0, 1332200542, 0, 0);
INSERT INTO `node` VALUES(65, 'Jenny Polanco ', 'business', 'es', 0, 1332348487, 0, 0);
INSERT INTO `node` VALUES(66, 'Everett Designs ', 'business', 'es', 0, 1332434633, 0, 0);
INSERT INTO `node` VALUES(67, 'Museo de Amber & Larimar ', 'business', 'es', 0, 1332200693, 0, 0);
INSERT INTO `node` VALUES(69, 'Casa Montecristo ', 'business', 'es', 0, 1332279765, 0, 0);
INSERT INTO `node` VALUES(70, 'Atelier by Emilio Robba ', 'business', 'es', 0, 1332279883, 0, 0);
INSERT INTO `node` VALUES(71, 'Dye Fore Pro Shop', 'business', 'es', 0, 1332348548, 0, 0);
INSERT INTO `node` VALUES(72, ' Tienda Batey', 'business', 'es', 0, 1332280021, 0, 0);
INSERT INTO `node` VALUES(73, 'Carmen Sol New York', 'business', 'es', 0, 1332200940, 0, 0);
INSERT INTO `node` VALUES(74, 'Tienda Il Negozio ', 'business', 'es', 0, 1332200966, 0, 0);
INSERT INTO `node` VALUES(75, 'Costasur Real Estate & Sales', 'business', 'es', 0, 1332287598, 0, 0);
INSERT INTO `node` VALUES(76, 'Casa de Campo Gym', 'business', 'es', 0, 1332201031, 0, 0);
INSERT INTO `node` VALUES(77, 'Casa de Campo Beauty Salon', 'business', 'es', 0, 1332201044, 0, 0);
INSERT INTO `node` VALUES(78, 'Amadeus Beauty Salon', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(79, 'Scotiabank', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(80, 'Scotiabank', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(81, 'Banco Progreso', 'business', 'es', 0, 1332201062, 0, 0);
INSERT INTO `node` VALUES(82, 'Banco BDI	', 'business', 'es', 0, 1332201132, 0, 0);
INSERT INTO `node` VALUES(83, 'SUNIX Gas Station', 'business', 'es', 0, 1332339156, 0, 0);
INSERT INTO `node` VALUES(84, 'Central Romana Hospital', 'business', 'es', 0, 1332288324, 0, 0);
INSERT INTO `node` VALUES(85, 'Casa de Campo Enfermería', 'business', 'es', 0, 1332348695, 0, 0);
INSERT INTO `node` VALUES(86, 'Casa de Campo Concierge', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(87, 'Costasur Security', 'business', 'es', 0, 1332201961, 0, 0);
INSERT INTO `node` VALUES(88, 'Negocio', 'business', 'en', 0, 1332110353, 0, 0);
INSERT INTO `node` VALUES(89, 'Club de Dueños de Villas', 'business', 'en', 0, 0, 0, 0);
INSERT INTO `node` VALUES(90, 'Lavanderia La Marina', 'business', 'es', 0, 1332201410, 0, 0);
INSERT INTO `node` VALUES(91, 'Servicio de Lavandería Casa de Campo', 'business', 'es', 0, 1332201429, 0, 0);
INSERT INTO `node` VALUES(92, 'Studio Fini Arquitectura', 'business', 'es', 0, 1332202085, 0, 0);
INSERT INTO `node` VALUES(93, 'Avis Rent-A-Car', 'business', 'es', 0, 1332201455, 0, 0);
INSERT INTO `node` VALUES(94, 'Cáceres & Asociados S. A', 'business', 'es', 0, 1332202071, 0, 0);
INSERT INTO `node` VALUES(95, 'Escuela de Vela', 'business', 'es', 0, 1332278512, 0, 0);
INSERT INTO `node` VALUES(96, 'Casa de Campo Hotel', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(97, 'Apertura de "Rústicos y Más"', 'event', 'es', 0, 1332302994, 0, 0);
INSERT INTO `node` VALUES(98, 'Casa de Campo Hotel', 'business', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(99, 'Casa de Campo ', 'business', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(100, 'Casa de Campo Golf', 'business', 'es', 0, 1332278485, 0, 0);
INSERT INTO `node` VALUES(101, 'Semana de Francia', 'event', 'es', 0, 1332303747, 0, 0);
INSERT INTO `node` VALUES(102, 'Casa de Campo Polo', 'business', 'es', 0, 1332278417, 0, 0);
INSERT INTO `node` VALUES(106, 'Semana de Francia: Torneo de Polo "Claude Terrail" - Juego 1', 'event', 'es', 0, 1332303923, 0, 0);
INSERT INTO `node` VALUES(107, 'Semana de Francia: Ceremonia Inaugural', 'event', 'es', 0, 1332304015, 0, 0);
INSERT INTO `node` VALUES(108, 'Galeria de Arte Altos de Chavon', 'business', 'es', 0, 1332278026, 0, 0);
INSERT INTO `node` VALUES(109, 'Semana de Francia: "Soleils" coctel de apertura  ', 'event', 'es', 0, 1332304125, 0, 0);
INSERT INTO `node` VALUES(111, 'Semana de Francia: Música en vivo por la “Gran Orchestre" de Rene Coll', 'event', 'es', 0, 1332304181, 0, 0);
INSERT INTO `node` VALUES(112, 'Semana de Francia: Foro Empresarial Franco Dominicano', 'event', 'es', 0, 1332301458, 0, 0);
INSERT INTO `node` VALUES(114, 'Semana de Francia: Conferencia Proyectos Científicos por la Escuela New Horizons', 'event', 'es', 0, 1332301735, 0, 0);
INSERT INTO `node` VALUES(115, 'Semana de Francia: Obra de teatro “Le Petit Prince” ', 'event', 'es', 0, 1332302387, 0, 0);
INSERT INTO `node` VALUES(116, 'Semana de Francia: Exhibición/desfile de la Moda Histórica Francesa', 'event', 'es', 0, 1332304348, 0, 0);
INSERT INTO `node` VALUES(117, 'Semana de Francia: Música en vivo por el grupo INDESWASKA de Guadalupe', 'event', 'es', 0, 1332304419, 0, 0);
INSERT INTO `node` VALUES(118, 'Semana de Francia: Cena-Gala "Sabores Exquisitos de Francia" ', 'event', 'es', 0, 1332303428, 0, 0);
INSERT INTO `node` VALUES(119, 'Semana de Francia: Torneo de Golf  "Copa Foro Empresarial Franco-Dominicano"', 'event', 'es', 0, 1332304741, 0, 0);
INSERT INTO `node` VALUES(120, 'Semana de Francia: Torneo de Tenis "Copa de las Cámaras de Comercio"', 'event', 'es', 0, 1332305243, 0, 0);
INSERT INTO `node` VALUES(121, 'Semana de Francia: Conferencia CERI', 'event', 'es', 0, 1332359101, 0, 0);
INSERT INTO `node` VALUES(122, 'Semana de Francia: Dictado Gastronómico', 'event', 'es', 0, 1332359510, 0, 0);
INSERT INTO `node` VALUES(124, 'Semana de Francia: Torneo de Petanque ', 'event', 'es', 0, 1332359568, 0, 0);
INSERT INTO `node` VALUES(125, 'Semana de Francia: Obra de teatro “Le Petit Prince” ', 'event', 'es', 1332112231, 1332360084, 1, 1);
INSERT INTO `node` VALUES(126, 'Final del Torneo de Polo "Claude Terrail" ', 'event', 'es', 1332112457, 1332360215, 1, 1);
INSERT INTO `node` VALUES(127, 'Semana de Francia: Música en vivo con el grupo INDESWASKA', 'event', 'es', 1332112751, 1332360780, 1, 1);
INSERT INTO `node` VALUES(129, 'Semana de Francia: Gran Gala de la Canción Francesa', 'event', 'es', 1332113255, 1332360940, 1, 1);
INSERT INTO `node` VALUES(130, 'After Party por Praia con DJ Stéphane Pompougnac', 'event', 'es', 1332113941, 1332361170, 1, 1);
INSERT INTO `node` VALUES(131, 'Semana de Francia: Caminata Walkabout Foundation (8km)', 'event', 'es', 1332114366, 1332375622, 1, 1);
INSERT INTO `node` VALUES(132, 'Semana de Francia: Brunch "Dominical"', 'event', 'es', 1332114685, 1332195284, 1, 1);
INSERT INTO `node` VALUES(133, 'Semana de Francia: Tour Emilio Robba Art Studios Altos de Chavon y Museo Arqueológico', 'event', 'es', 1332114875, 1332363557, 1, 1);
INSERT INTO `node` VALUES(134, 'Semana de Francia: Música en vivo por el grupo INDESWASKA', 'event', 'es', 1332115201, 1332363747, 1, 1);
INSERT INTO `node` VALUES(137, 'Semana de Francia: Obra de teatro “Les Fables de la Fontaine”', 'event', 'es', 1332115769, 1332363815, 1, 1);
INSERT INTO `node` VALUES(138, 'Semana de Francia: Concierto de Percusión por el grupo "La Gran Mawon"', 'event', 'es', 1332116452, 1332366902, 1, 1);
INSERT INTO `node` VALUES(139, 'Semana de Francia: Vuelo Inaugural Air Caraibes', 'event', 'es', 1332117170, 1332367875, 1, 1);
INSERT INTO `node` VALUES(140, 'Semana de Francia: Feria y Animaciones en la Plaza Chavón', 'event', 'es', 1332117403, 1332303685, 1, 1);
INSERT INTO `node` VALUES(141, 'Exhibición de arte: “La acción del caballo de polo”', 'event', 'es', 1332123353, 1332194968, 1, 1);
INSERT INTO `node` VALUES(142, 'Torneo de Polo "Copa Semana Santa"', 'event', 'es', 1332123588, 1332340518, 1, 1);
INSERT INTO `node` VALUES(143, 'Links “Torneo de apertura”', 'event', 'es', 1332193616, 1332360642, 1, 1);
INSERT INTO `node` VALUES(144, 'Casa de Campo', 'location', 'es', 1332194561, 1332194561, 1, 1);
INSERT INTO `node` VALUES(147, 'Praia', 'business', 'es', 1332195585, 1332348800, 1, 1);
INSERT INTO `node` VALUES(148, 'MIR Bazaar ', 'event', 'es', 1332197094, 1332372534, 1, 1);
INSERT INTO `node` VALUES(149, 'Torneo de Pesca "Fundación Ferries del Caribe" ', 'event', 'es', 1332197505, 1332372172, 1, 1);
INSERT INTO `node` VALUES(150, 'Central Romana', 'location', 'es', 1332201238, 1332287746, 1, 1);
INSERT INTO `node` VALUES(151, 'Torneo de golf "The Capital One Ultimate Charity Golf Challenge in aid of Reach for the Rainbow" ', 'event', 'es', 1332201510, 1332372764, 1, 1);
INSERT INTO `node` VALUES(152, 'Torneo de Golf "Cajuiles"', 'event', 'es', 1332201849, 1332201849, 1, 1);
INSERT INTO `node` VALUES(153, 'El final del torneo de polo "Copa Semana Santa"', 'event', 'es', 1332202411, 1332373007, 1, 1);
INSERT INTO `node` VALUES(154, 'Luis Fonsi en concierto', 'event', 'es', 1332202962, 1332210351, 1, 1);
INSERT INTO `node` VALUES(155, 'Café de la Leche', 'event', 'es', 1332203420, 1332373712, 1, 1);
INSERT INTO `node` VALUES(156, 'Torneo de golf "AMCHAMDR Ambassadors Cup"', 'event', 'es', 1332204003, 1332374122, 1, 1);
INSERT INTO `node` VALUES(157, 'Torneo de golf "2012 Spring Shootout"', 'event', 'es', 1332208771, 1332374357, 1, 1);
INSERT INTO `node` VALUES(158, 'Torneo de golf "Buen Samaritano"', 'event', 'es', 1332209179, 1332390791, 1, 1);
INSERT INTO `node` VALUES(159, 'Torneo de Golf "FEDOGOLF National Juniors"', 'event', 'es', 1332211088, 1332381629, 1, 1);
INSERT INTO `node` VALUES(160, '"Copa Orange" Torneo Nacional de Golf', 'event', 'es', 1332211372, 1332381642, 1, 1);
INSERT INTO `node` VALUES(161, 'Torneo de golf "17th Caribbean Golf Classic', 'event', 'es', 1332211704, 1332381651, 1, 1);
INSERT INTO `node` VALUES(162, 'Torneo de golf "Dewars 12 Invitational"', 'event', 'es', 1332211876, 1332211876, 1, 1);
INSERT INTO `node` VALUES(163, 'Torneo de golf: 1er anual "Cuban Invitational"', 'event', 'es', 1332212224, 1332212224, 1, 1);
INSERT INTO `node` VALUES(164, 'Fundación MIR Fin de Semana Familiar', 'event', 'es', 1332212639, 1332212639, 1, 1);
INSERT INTO `node` VALUES(165, 'Copa de Tenis Proseguros-Casa de Campo', 'event', 'es', 1332213019, 1332213019, 1, 1);
INSERT INTO `node` VALUES(166, 'Torneo de golf "Casa de Campo Open"', 'event', 'es', 1332213148, 1332213148, 1, 1);
INSERT INTO `node` VALUES(168, 'Central Romana', 'location', 'en', 1332272433, 1332272433, 1, 1);
INSERT INTO `node` VALUES(169, 'Casa de Campo', 'location', 'en', 1332272443, 1332272443, 1, 1);
INSERT INTO `node` VALUES(170, 'Casa de Campo Hotel', 'location', 'en', 1332272451, 1332272451, 1, 1);
INSERT INTO `node` VALUES(171, 'Marina Casa de Campo', 'location', 'en', 1332272461, 1332272461, 1, 1);
INSERT INTO `node` VALUES(172, 'Altos de Chavon', 'location', 'en', 1332272475, 1332272483, 1, 1);
INSERT INTO `node` VALUES(173, 'Santo Domingo', 'location', 'en', 1332272491, 1332272491, 1, 1);
INSERT INTO `node` VALUES(174, 'La Romana', 'location', 'en', 1332272498, 1332272498, 1, 1);
INSERT INTO `node` VALUES(175, 'Praia', 'business', 'en', 1332277944, 1332377741, 1, 1);
INSERT INTO `node` VALUES(176, 'Galeria de Arte Altos de Chavon', 'business', 'en', 1332278060, 1332278391, 1, 1);
INSERT INTO `node` VALUES(177, 'Casa de Campo Polo', 'business', 'en', 1332278170, 1332278473, 1, 1);
INSERT INTO `node` VALUES(178, 'Casa de Campo Golf', 'business', 'en', 1332278241, 1332278241, 1, 1);
INSERT INTO `node` VALUES(179, 'Escuela de Vela', 'business', 'en', 1332278593, 1332278593, 1, 1);
INSERT INTO `node` VALUES(180, 'Cáceres & Asociados S. A', 'business', 'en', 1332278637, 1332278637, 1, 1);
INSERT INTO `node` VALUES(181, 'Avis Rent-A-Car', 'business', 'en', 1332278752, 1332434554, 1, 1);
INSERT INTO `node` VALUES(182, 'Studio Fini Arquitectura', 'business', 'en', 1332278769, 1332278769, 1, 1);
INSERT INTO `node` VALUES(183, 'Servicio de Lavandería Casa de Campo', 'business', 'en', 1332279020, 1332279020, 1, 1);
INSERT INTO `node` VALUES(184, 'Lavanderia La Marina', 'business', 'en', 1332279063, 1332279063, 1, 1);
INSERT INTO `node` VALUES(185, 'Costasur Security', 'business', 'en', 1332279085, 1332279085, 1, 1);
INSERT INTO `node` VALUES(186, 'Costasur Security', 'business', 'en', 1332279086, 1332279169, 1, 1);
INSERT INTO `node` VALUES(187, 'First Aid / Nurses Station ', 'business', 'en', 1332279221, 1332348652, 1, 1);
INSERT INTO `node` VALUES(188, 'Jenny Polanco ', 'business', 'en', 1332279438, 1332279438, 1, 1);
INSERT INTO `node` VALUES(189, 'Jenny Polanco ', 'business', 'en', 1332279454, 1332348477, 1, 1);
INSERT INTO `node` VALUES(190, 'Everett Designs ', 'business', 'en', 1332279658, 1332434621, 1, 1);
INSERT INTO `node` VALUES(191, 'Museo de Amber & Larimar ', 'business', 'en', 1332279753, 1332279753, 1, 1);
INSERT INTO `node` VALUES(192, 'Casa Montecristo ', 'business', 'en', 1332279797, 1332279797, 1, 1);
INSERT INTO `node` VALUES(193, 'Atelier by Emilio Robba ', 'business', 'en', 1332279898, 1332279898, 1, 1);
INSERT INTO `node` VALUES(194, 'Dye Fore Pro Shop', 'business', 'en', 1332279989, 1332348565, 1, 1);
INSERT INTO `node` VALUES(195, 'Tienda Batey', 'business', 'en', 1332280044, 1332434586, 1, 1);
INSERT INTO `node` VALUES(196, 'Carmen Sol New York', 'business', 'en', 1332287353, 1332287393, 1, 1);
INSERT INTO `node` VALUES(197, 'SUNIX Gas Station', 'business', 'en', 1332287490, 1332339193, 1, 1);
INSERT INTO `node` VALUES(198, 'Banco BDI	', 'business', 'en', 1332287532, 1332287532, 1, 1);
INSERT INTO `node` VALUES(199, 'Banco Progreso', 'business', 'en', 1332287549, 1332287549, 1, 1);
INSERT INTO `node` VALUES(200, 'Casa de Campo Beauty Salon', 'business', 'en', 1332287568, 1332287568, 1, 1);
INSERT INTO `node` VALUES(201, 'Casa de Campo Gym', 'business', 'en', 1332287581, 1332287581, 1, 1);
INSERT INTO `node` VALUES(202, 'Costasur Real Estate & Sales', 'business', 'en', 1332287637, 1332287637, 1, 1);
INSERT INTO `node` VALUES(203, 'Tienda Il Negozio ', 'business', 'en', 1332287666, 1332287666, 1, 1);
INSERT INTO `node` VALUES(204, 'El Mercadito', 'business', 'en', 1332287716, 1332287716, 1, 1);
INSERT INTO `node` VALUES(205, 'Rusticos y Mas', 'business', 'en', 1332287735, 1332287735, 1, 1);
INSERT INTO `node` VALUES(206, 'Vilebrequin', 'business', 'en', 1332287766, 1332287766, 1, 1);
INSERT INTO `node` VALUES(208, 'Supermercado Nacional', 'business', 'en', 1332287786, 1332287786, 1, 1);
INSERT INTO `node` VALUES(209, 'Rubiluna Collection', 'business', 'en', 1332287803, 1332287803, 1, 1);
INSERT INTO `node` VALUES(210, 'Rayoled', 'business', 'en', 1332287878, 1332287878, 1, 1);
INSERT INTO `node` VALUES(211, 'Kiwi St. Tropez Swimwear', 'business', 'en', 1332287899, 1332287899, 1, 1);
INSERT INTO `node` VALUES(212, 'Nuovo Rinascimento', 'business', 'en', 1332287940, 1332287940, 1, 1);
INSERT INTO `node` VALUES(213, 'Murphy & Nye', 'business', 'en', 1332287957, 1332287957, 1, 1);
INSERT INTO `node` VALUES(214, 'Jenny Polanco & Bibi León', 'business', 'en', 1332287983, 1332287983, 1, 1);
INSERT INTO `node` VALUES(215, 'Hippolito', 'business', 'en', 1332288022, 1332288022, 1, 1);
INSERT INTO `node` VALUES(216, 'Fumo', 'business', 'en', 1332288038, 1332288038, 1, 1);
INSERT INTO `node` VALUES(217, 'Ferreteria Americana', 'business', 'en', 1332288060, 1332288060, 1, 1);
INSERT INTO `node` VALUES(218, 'Everett Designs', 'business', 'en', 1332288081, 1332288081, 1, 1);
INSERT INTO `node` VALUES(219, 'Elementos', 'business', 'en', 1332288093, 1332288093, 1, 1);
INSERT INTO `node` VALUES(220, 'Ecoplaneta Caribe', 'business', 'en', 1332288105, 1332288105, 1, 1);
INSERT INTO `node` VALUES(221, 'Cosi''e', 'business', 'en', 1332288117, 1332288117, 1, 1);
INSERT INTO `node` VALUES(222, 'Columbia Sportswear', 'business', 'en', 1332288140, 1332288140, 1, 1);
INSERT INTO `node` VALUES(223, 'Claro', 'business', 'en', 1332288158, 1332288158, 1, 1);
INSERT INTO `node` VALUES(224, 'Carmen Sol New York - Sun', 'business', 'en', 1332288175, 1332288175, 1, 1);
INSERT INTO `node` VALUES(225, 'Carmen Sol New York', 'business', 'en', 1332288215, 1332288215, 1, 1);
INSERT INTO `node` VALUES(226, 'Bleu Marine', 'business', 'en', 1332288226, 1332288226, 1, 1);
INSERT INTO `node` VALUES(227, 'Azzurro', 'business', 'en', 1332288284, 1332288284, 1, 1);
INSERT INTO `node` VALUES(228, 'Coco Mar Bar', 'business', 'en', 1332288305, 1332348343, 1, 1);
INSERT INTO `node` VALUES(229, 'Central Romana Hospital', 'business', 'en', 1332288337, 1332288337, 1, 1);
INSERT INTO `node` VALUES(230, 'Beach Club by Le Cirque', 'business', 'en', 1332288373, 1332347810, 1, 1);
INSERT INTO `node` VALUES(231, 'Lago Grill', 'business', 'en', 1332288384, 1332346528, 1, 1);
INSERT INTO `node` VALUES(232, '19th Hole', 'business', 'en', 1332288406, 1332346424, 1, 1);
INSERT INTO `node` VALUES(233, 'Dye Fore Bar', 'business', 'en', 1332288419, 1332345693, 1, 1);
INSERT INTO `node` VALUES(234, 'Onno''s Bar', 'business', 'en', 1332288430, 1332345540, 1, 1);
INSERT INTO `node` VALUES(236, 'La Cantina', 'business', 'en', 1332288455, 1332344861, 1, 1);
INSERT INTO `node` VALUES(237, 'La Piazzetta', 'business', 'en', 1332288475, 1332344681, 1, 1);
INSERT INTO `node` VALUES(238, 'Gino in Trastevere', 'business', 'en', 1332288490, 1332344309, 1, 1);
INSERT INTO `node` VALUES(239, 'Victory Club', 'business', 'en', 1332288554, 1332343780, 1, 1);
INSERT INTO `node` VALUES(240, 'Pistakio', 'business', 'en', 1332288572, 1332343663, 1, 1);
INSERT INTO `node` VALUES(241, 'Peperoni', 'business', 'en', 1332288592, 1332343451, 1, 1);
INSERT INTO `node` VALUES(242, 'Mistral Bar, Lounge & Restaurant', 'business', 'en', 1332288613, 1332342233, 1, 1);
INSERT INTO `node` VALUES(243, 'Il Limoncello', 'business', 'en', 1332288650, 1332342028, 1, 1);
INSERT INTO `node` VALUES(244, 'Chinois Restaurant', 'business', 'en', 1332288678, 1332341059, 1, 1);
INSERT INTO `node` VALUES(245, 'Azimut Café', 'business', 'en', 1332288745, 1332340197, 1, 1);
INSERT INTO `node` VALUES(246, 'Silgon, Inc.', 'business', 'en', 1332288820, 1332288820, 1, 1);
INSERT INTO `node` VALUES(247, 'Casa de Campo Shooting Center', 'business', 'en', 1332288838, 1332288838, 1, 1);
INSERT INTO `node` VALUES(248, 'Papa Jack''s', 'business', 'en', 1332288850, 1332339930, 1, 1);
INSERT INTO `node` VALUES(249, 'Caltagirone Construzioni Italia', 'business', 'es', 1332290611, 1332290611, 1, 1);
INSERT INTO `node` VALUES(251, 'Caltagirone Construzioni Italia', 'business', 'en', 1332290702, 1332290716, 1, 1);
INSERT INTO `node` VALUES(252, 'Fundación MIR', 'business', 'es', 1332290961, 1332362566, 1, 1);
INSERT INTO `node` VALUES(253, 'Hogar del Niño', 'business', 'es', 1332291685, 1332291946, 1, 1);
INSERT INTO `node` VALUES(254, 'Hogar del Niño', 'business', 'en', 1332291871, 1332363404, 1, 1);
INSERT INTO `node` VALUES(255, 'Hospital General y Fundación El Buen Samaritano', 'business', 'es', 1332292325, 1332293089, 1, 1);
INSERT INTO `node` VALUES(256, 'Buen Samaritano General Hospital ', 'business', 'en', 1332293039, 1332434693, 1, 1);
INSERT INTO `node` VALUES(257, 'Tina Fanjul Associates', 'business', 'en', 1332296741, 1332390029, 1, 1);
INSERT INTO `node` VALUES(258, 'Tina Fanjul Associates', 'business', 'es', 1332297127, 1332297311, 1, 1);
INSERT INTO `node` VALUES(259, 'Semana de Francia', 'event', 'en', 1332297782, 1332298852, 1, 1);
INSERT INTO `node` VALUES(260, 'Semana de Francia: Gastronomic, artistic and technological fair with street entertainers!', 'event', 'en', 1332298232, 1332303703, 1, 1);
INSERT INTO `node` VALUES(261, 'Casa de Campo ', 'business', 'en', 1332298736, 1332298736, 1, 1);
INSERT INTO `node` VALUES(262, 'Polo Tournament "Copa Semana Santa"', 'event', 'en', 1332298793, 1332368047, 1, 1);
INSERT INTO `node` VALUES(263, 'Semana de Francia: "Claude Terrail" Polo Tournament - Game 1', 'event', 'en', 1332299429, 1332303965, 1, 1);
INSERT INTO `node` VALUES(264, 'Semana de Francia: Inauguration ceremony', 'event', 'en', 1332300254, 1332434236, 1, 1);
INSERT INTO `node` VALUES(265, 'Semana de Francia: Inauguration cocktail of new art exhibit "Soleils" ', 'event', 'en', 1332300866, 1332440991, 1, 1);
INSERT INTO `node` VALUES(266, 'Semana de Francia: Live music by the “Gran Orchestre" of Rene Coll', 'event', 'en', 1332301304, 1332304198, 1, 1);
INSERT INTO `node` VALUES(267, 'Semana de Francia: French-Dominican Business Forum', 'event', 'en', 1332301561, 1332301561, 1, 1);
INSERT INTO `node` VALUES(268, 'Semana de Francia: Scientific Projects Conference by the New Horizons School', 'event', 'en', 1332301774, 1332301774, 1, 1);
INSERT INTO `node` VALUES(269, 'Semana de Francia: Tour a bordo el “Dumont Durville” el barco de batalla frances', 'event', 'es', 1332301906, 1332301906, 1, 1);
INSERT INTO `node` VALUES(270, 'Semana de Francia: Tours aboard the “Dumont Durville” French Navy Ship', 'event', 'en', 1332301984, 1332301984, 1, 1);
INSERT INTO `node` VALUES(271, 'Semana de Francia: Theatrical production of “Le Petit Prince”', 'event', 'en', 1332302348, 1332302363, 1, 1);
INSERT INTO `node` VALUES(272, 'Semana de Francia: Exhibition/fashion show of historical French fashion', 'event', 'en', 1332302618, 1332304362, 1, 1);
INSERT INTO `node` VALUES(273, 'Cocktail to celebrate the opening of the new Rústicos y Más furniture showroom', 'event', 'en', 1332302922, 1332302922, 1, 1);
INSERT INTO `node` VALUES(274, 'Semana de Francia: Live music by the INDESWASKA group from Guadalupe', 'event', 'en', 1332303196, 1332304432, 1, 1);
INSERT INTO `node` VALUES(275, 'Semana de Francia: “Exquisite Flavors of France” Dinner-Gala', 'event', 'en', 1332303501, 1332303501, 1, 1);
INSERT INTO `node` VALUES(276, 'Semana de Francia: Golf Tournament “Copa Foro Empresarial Franco-Dominicano”', 'event', 'en', 1332304810, 1332388907, 1, 1);
INSERT INTO `node` VALUES(277, 'Links Opening Day Golf Tournament', 'event', 'en', 1332305099, 1332389002, 1, 1);
INSERT INTO `node` VALUES(278, 'Semana de Francia: Tennis Tournament “Copa de las Cámaras de Comercio”', 'event', 'en', 1332305290, 1332305290, 1, 1);
INSERT INTO `node` VALUES(279, 'Chinois "Todo lo que te puedas comer" ', 'event', 'es', 1332340742, 1332346056, 1, 1);
INSERT INTO `node` VALUES(280, 'Chinois "All you can eat" ', 'event', 'en', 1332340818, 1332345792, 1, 1);
INSERT INTO `node` VALUES(282, 'Semana de Francia: Conferencia CERI', 'event', 'en', 1332359303, 1332359303, 1, 1);
INSERT INTO `node` VALUES(283, 'Semana de Francia: Gastronomic Dictation', 'event', 'en', 1332359452, 1332359452, 1, 1);
INSERT INTO `node` VALUES(284, 'Semana de Francia: Petanque Tournament', 'event', 'en', 1332359619, 1332359619, 1, 1);
INSERT INTO `node` VALUES(285, 'Semana de Francia: Theatrical presentation of “Le Petit Prince” ', 'event', 'en', 1332360068, 1332360068, 1, 1);
INSERT INTO `node` VALUES(286, 'Semana de Francia Final of the Polo Tournament "Claude Terrail" ', 'event', 'en', 1332360402, 1332360402, 1, 1);
INSERT INTO `node` VALUES(287, 'Semana de Francia: Live music by the INDESWASKA group from Guadalupe', 'event', 'en', 1332360828, 1332360828, 1, 1);
INSERT INTO `node` VALUES(288, 'Semana de Francia: Grand Gala Celebration of French Music ', 'event', 'en', 1332361028, 1332361028, 1, 1);
INSERT INTO `node` VALUES(289, 'After Party by Praia with DJ Stéphane Pompougnac ', 'event', 'en', 1332361234, 1332361411, 1, 1);
INSERT INTO `node` VALUES(290, 'Walkabout Foundation', 'business', 'es', 1332361903, 1332362039, 1, 1);
INSERT INTO `node` VALUES(291, 'Walkabout Foundation', 'business', 'en', 1332362071, 1332362071, 1, 1);
INSERT INTO `node` VALUES(292, 'Semana de Francia: Walkabout Foundation marathon (6km)', 'event', 'en', 1332362654, 1332375641, 1, 1);
INSERT INTO `node` VALUES(293, 'Fundación MIR', 'business', 'en', 1332363370, 1332363370, 1, 1);
INSERT INTO `node` VALUES(294, 'Semana de Francia: Guided tour of the Emilio Robba art studios and archaeological museum', 'event', 'en', 1332363587, 1332363606, 1, 1);
INSERT INTO `node` VALUES(295, 'Semana de Francia: Live music by INDESWASKA group from Guadalupe', 'event', 'en', 1332363709, 1332363709, 1, 1);
INSERT INTO `node` VALUES(296, 'Semana de Francia: Theatrical presentation of “Les Fables de la Fontaine” ', 'event', 'en', 1332363889, 1332363889, 1, 1);
INSERT INTO `node` VALUES(297, 'Semana de Francia: Brunch "Dominical"', 'event', 'es', 1332364081, 1332364466, 1, 1);
INSERT INTO `node` VALUES(298, 'Semana de Francia: Brunch "Dominical" ', 'event', 'en', 1332364514, 1332364514, 1, 1);
INSERT INTO `node` VALUES(299, 'Semana de Francia: Continuación y final del torneo de Petanque ', 'event', 'es', 1332364699, 1332364699, 1, 1);
INSERT INTO `node` VALUES(300, 'Semana de Francia: Continuation and final of the Petanque tournament ', 'event', 'en', 1332364783, 1332364783, 1, 1);
INSERT INTO `node` VALUES(301, 'Semana de Francia: Percusion concert by "La Gran Mawon" group', 'event', 'en', 1332366979, 1332366979, 1, 1);
INSERT INTO `node` VALUES(302, 'Air Caraibes', 'business', 'es', 1332367301, 1332367301, 1, 1);
INSERT INTO `node` VALUES(303, 'Air Caraibes', 'business', 'en', 1332367759, 1332367759, 1, 1);
INSERT INTO `node` VALUES(304, 'Semana de Francia: Inaugural Air Caraibes flight', 'event', 'en', 1332367769, 1332367782, 1, 1);
INSERT INTO `node` VALUES(305, 'Café de la Leche', 'event', 'en', 1332368896, 1332368896, 1, 1);
INSERT INTO `node` VALUES(306, 'Fishing Tournament "Fundación Ferries del Caribe" ', 'event', 'en', 1332371243, 1332372150, 1, 1);
INSERT INTO `node` VALUES(307, 'Fundación Ferries del Caribe', 'business', 'es', 1332371357, 1332371932, 1, 1);
INSERT INTO `node` VALUES(308, 'Fundación Ferries del Caribe', 'business', 'en', 1332371989, 1332371989, 1, 1);
INSERT INTO `node` VALUES(309, 'The MIR Bazaar', 'event', 'en', 1332372634, 1332372634, 1, 1);
INSERT INTO `node` VALUES(310, 'Golf Tournament "The Capital One Ultimate Charity Golf Challenge in aid of Reach for the Rainbow" ', 'event', 'en', 1332372887, 1332372887, 1, 1);
INSERT INTO `node` VALUES(311, 'The final of the "Copa Semana Santa" polo tournament and party!', 'event', 'en', 1332373109, 1332373109, 1, 1);
INSERT INTO `node` VALUES(312, 'Luis Fonsi concert', 'event', 'en', 1332373621, 1332373621, 1, 1);
INSERT INTO `node` VALUES(313, 'Golf Tournament "AMCHAMDR Ambassadors Cup"', 'event', 'en', 1332374268, 1332374268, 1, 1);
INSERT INTO `node` VALUES(314, 'Golf Tournament: "2012 Spring Shootout"', 'event', 'en', 1332374410, 1332374410, 1, 1);
INSERT INTO `node` VALUES(317, 'FEDOGOLF', 'business', 'es', 1332380501, 1332380501, 1, 1);
INSERT INTO `node` VALUES(318, 'FEDOGOLF', 'business', 'en', 1332380536, 1332389599, 1, 1);
INSERT INTO `node` VALUES(319, 'Golf Tournament "FEDOGOLF National Juniors"', 'event', 'en', 1332380592, 1332381661, 1, 1);
INSERT INTO `node` VALUES(320, 'Other', 'location', 'en', 1332387678, 1332387678, 1, 1);
INSERT INTO `node` VALUES(321, 'Otro', 'location', 'es', 1332387685, 1332387685, 1, 1);
INSERT INTO `node` VALUES(322, 'Golf Tournament "Buen Samaritano"', 'event', 'en', 1332390698, 1332390753, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `node_category`
--

CREATE TABLE `node_category` (
  `node_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vocabulary` varchar(40) NOT NULL,
  KEY `node_id` (`node_id`,`category_id`),
  KEY `vocabulary` (`vocabulary`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node_category`
--

INSERT INTO `node_category` VALUES(40, 6, 'business-type');
INSERT INTO `node_category` VALUES(41, 6, 'business-type');
INSERT INTO `node_category` VALUES(42, 6, 'business-type');
INSERT INTO `node_category` VALUES(44, 6, 'business-type');
INSERT INTO `node_category` VALUES(47, 10, 'business-type');
INSERT INTO `node_category` VALUES(48, 6, 'business-type');
INSERT INTO `node_category` VALUES(50, 6, 'business-type');
INSERT INTO `node_category` VALUES(51, 6, 'business-type');
INSERT INTO `node_category` VALUES(52, 6, 'business-type');
INSERT INTO `node_category` VALUES(53, 6, 'business-type');
INSERT INTO `node_category` VALUES(54, 6, 'business-type');
INSERT INTO `node_category` VALUES(56, 6, 'business-type');
INSERT INTO `node_category` VALUES(57, 6, 'business-type');
INSERT INTO `node_category` VALUES(58, 6, 'business-type');
INSERT INTO `node_category` VALUES(59, 6, 'business-type');
INSERT INTO `node_category` VALUES(60, 6, 'business-type');
INSERT INTO `node_category` VALUES(61, 9, 'business-type');
INSERT INTO `node_category` VALUES(62, 6, 'business-type');
INSERT INTO `node_category` VALUES(63, 6, 'business-type');
INSERT INTO `node_category` VALUES(64, 9, 'business-type');
INSERT INTO `node_category` VALUES(67, 6, 'business-type');
INSERT INTO `node_category` VALUES(73, 6, 'business-type');
INSERT INTO `node_category` VALUES(74, 6, 'business-type');
INSERT INTO `node_category` VALUES(76, 7, 'business-type');
INSERT INTO `node_category` VALUES(77, 7, 'business-type');
INSERT INTO `node_category` VALUES(81, 5, 'business-type');
INSERT INTO `node_category` VALUES(82, 5, 'business-type');
INSERT INTO `node_category` VALUES(90, 12, 'business-type');
INSERT INTO `node_category` VALUES(91, 12, 'business-type');
INSERT INTO `node_category` VALUES(93, 10, 'business-type');
INSERT INTO `node_category` VALUES(10, 4, 'business-type');
INSERT INTO `node_category` VALUES(152, 14, 'event-type');
INSERT INTO `node_category` VALUES(87, 12, 'business-type');
INSERT INTO `node_category` VALUES(94, 3, 'business-type');
INSERT INTO `node_category` VALUES(92, 3, 'business-type');
INSERT INTO `node_category` VALUES(154, 19, 'event-type');
INSERT INTO `node_category` VALUES(162, 1, 'event-type');
INSERT INTO `node_category` VALUES(162, 14, 'event-type');
INSERT INTO `node_category` VALUES(163, 14, 'event-type');
INSERT INTO `node_category` VALUES(164, 1, 'event-type');
INSERT INTO `node_category` VALUES(164, 16, 'event-type');
INSERT INTO `node_category` VALUES(164, 20, 'event-type');
INSERT INTO `node_category` VALUES(164, 21, 'event-type');
INSERT INTO `node_category` VALUES(165, 20, 'event-type');
INSERT INTO `node_category` VALUES(166, 14, 'event-type');
INSERT INTO `node_category` VALUES(108, 12, 'business-type');
INSERT INTO `node_category` VALUES(178, 28, 'business-type');
INSERT INTO `node_category` VALUES(176, 36, 'business-type');
INSERT INTO `node_category` VALUES(102, 4, 'business-type');
INSERT INTO `node_category` VALUES(177, 28, 'business-type');
INSERT INTO `node_category` VALUES(100, 4, 'business-type');
INSERT INTO `node_category` VALUES(95, 4, 'business-type');
INSERT INTO `node_category` VALUES(179, 28, 'business-type');
INSERT INTO `node_category` VALUES(180, 27, 'business-type');
INSERT INTO `node_category` VALUES(182, 27, 'business-type');
INSERT INTO `node_category` VALUES(183, 27, 'business-type');
INSERT INTO `node_category` VALUES(184, 27, 'business-type');
INSERT INTO `node_category` VALUES(185, 27, 'business-type');
INSERT INTO `node_category` VALUES(186, 26, 'business-type');
INSERT INTO `node_category` VALUES(188, 30, 'business-type');
INSERT INTO `node_category` VALUES(191, 30, 'business-type');
INSERT INTO `node_category` VALUES(69, 6, 'business-type');
INSERT INTO `node_category` VALUES(192, 30, 'business-type');
INSERT INTO `node_category` VALUES(70, 6, 'business-type');
INSERT INTO `node_category` VALUES(193, 30, 'business-type');
INSERT INTO `node_category` VALUES(72, 6, 'business-type');
INSERT INTO `node_category` VALUES(196, 30, 'business-type');
INSERT INTO `node_category` VALUES(198, 29, 'business-type');
INSERT INTO `node_category` VALUES(199, 29, 'business-type');
INSERT INTO `node_category` VALUES(200, 31, 'business-type');
INSERT INTO `node_category` VALUES(201, 31, 'business-type');
INSERT INTO `node_category` VALUES(75, 8, 'business-type');
INSERT INTO `node_category` VALUES(202, 32, 'business-type');
INSERT INTO `node_category` VALUES(203, 30, 'business-type');
INSERT INTO `node_category` VALUES(204, 33, 'business-type');
INSERT INTO `node_category` VALUES(205, 30, 'business-type');
INSERT INTO `node_category` VALUES(206, 30, 'business-type');
INSERT INTO `node_category` VALUES(208, 33, 'business-type');
INSERT INTO `node_category` VALUES(209, 30, 'business-type');
INSERT INTO `node_category` VALUES(210, 30, 'business-type');
INSERT INTO `node_category` VALUES(211, 30, 'business-type');
INSERT INTO `node_category` VALUES(212, 30, 'business-type');
INSERT INTO `node_category` VALUES(213, 30, 'business-type');
INSERT INTO `node_category` VALUES(214, 30, 'business-type');
INSERT INTO `node_category` VALUES(215, 30, 'business-type');
INSERT INTO `node_category` VALUES(216, 30, 'business-type');
INSERT INTO `node_category` VALUES(217, 30, 'business-type');
INSERT INTO `node_category` VALUES(218, 30, 'business-type');
INSERT INTO `node_category` VALUES(219, 30, 'business-type');
INSERT INTO `node_category` VALUES(220, 34, 'business-type');
INSERT INTO `node_category` VALUES(221, 30, 'business-type');
INSERT INTO `node_category` VALUES(45, 6, 'business-type');
INSERT INTO `node_category` VALUES(222, 30, 'business-type');
INSERT INTO `node_category` VALUES(43, 6, 'business-type');
INSERT INTO `node_category` VALUES(223, 30, 'business-type');
INSERT INTO `node_category` VALUES(224, 30, 'business-type');
INSERT INTO `node_category` VALUES(225, 30, 'business-type');
INSERT INTO `node_category` VALUES(226, 30, 'business-type');
INSERT INTO `node_category` VALUES(39, 6, 'business-type');
INSERT INTO `node_category` VALUES(227, 30, 'business-type');
INSERT INTO `node_category` VALUES(84, 11, 'business-type');
INSERT INTO `node_category` VALUES(229, 35, 'business-type');
INSERT INTO `node_category` VALUES(11, 3, 'business-type');
INSERT INTO `node_category` VALUES(246, 27, 'business-type');
INSERT INTO `node_category` VALUES(247, 28, 'business-type');
INSERT INTO `node_category` VALUES(167, 14, 'event-type');
INSERT INTO `node_category` VALUES(249, 8, 'business-type');
INSERT INTO `node_category` VALUES(251, 32, 'business-type');
INSERT INTO `node_category` VALUES(253, 13, 'business-type');
INSERT INTO `node_category` VALUES(255, 13, 'business-type');
INSERT INTO `node_category` VALUES(258, 8, 'business-type');
INSERT INTO `node_category` VALUES(261, 26, 'business-type');
INSERT INTO `node_category` VALUES(259, 44, 'event-type');
INSERT INTO `node_category` VALUES(112, 25, 'event-type');
INSERT INTO `node_category` VALUES(267, 44, 'event-type');
INSERT INTO `node_category` VALUES(114, 25, 'event-type');
INSERT INTO `node_category` VALUES(268, 44, 'event-type');
INSERT INTO `node_category` VALUES(269, 25, 'event-type');
INSERT INTO `node_category` VALUES(270, 44, 'event-type');
INSERT INTO `node_category` VALUES(271, 44, 'event-type');
INSERT INTO `node_category` VALUES(115, 25, 'event-type');
INSERT INTO `node_category` VALUES(273, 43, 'event-type');
INSERT INTO `node_category` VALUES(97, 24, 'event-type');
INSERT INTO `node_category` VALUES(118, 23, 'event-type');
INSERT INTO `node_category` VALUES(275, 42, 'event-type');
INSERT INTO `node_category` VALUES(140, 1, 'event-type');
INSERT INTO `node_category` VALUES(260, 44, 'event-type');
INSERT INTO `node_category` VALUES(101, 25, 'event-type');
INSERT INTO `node_category` VALUES(106, 20, 'event-type');
INSERT INTO `node_category` VALUES(263, 39, 'event-type');
INSERT INTO `node_category` VALUES(107, 24, 'event-type');
INSERT INTO `node_category` VALUES(109, 24, 'event-type');
INSERT INTO `node_category` VALUES(111, 19, 'event-type');
INSERT INTO `node_category` VALUES(266, 40, 'event-type');
INSERT INTO `node_category` VALUES(116, 25, 'event-type');
INSERT INTO `node_category` VALUES(272, 44, 'event-type');
INSERT INTO `node_category` VALUES(117, 19, 'event-type');
INSERT INTO `node_category` VALUES(274, 40, 'event-type');
INSERT INTO `node_category` VALUES(119, 1, 'event-type');
INSERT INTO `node_category` VALUES(120, 20, 'event-type');
INSERT INTO `node_category` VALUES(278, 39, 'event-type');
INSERT INTO `node_category` VALUES(83, 12, 'business-type');
INSERT INTO `node_category` VALUES(197, 36, 'business-type');
INSERT INTO `node_category` VALUES(248, 26, 'business-type');
INSERT INTO `node_category` VALUES(5, 2, 'business-type');
INSERT INTO `node_category` VALUES(15, 2, 'business-type');
INSERT INTO `node_category` VALUES(245, 26, 'business-type');
INSERT INTO `node_category` VALUES(142, 20, 'event-type');
INSERT INTO `node_category` VALUES(244, 26, 'business-type');
INSERT INTO `node_category` VALUES(20, 2, 'business-type');
INSERT INTO `node_category` VALUES(243, 26, 'business-type');
INSERT INTO `node_category` VALUES(242, 26, 'business-type');
INSERT INTO `node_category` VALUES(18, 2, 'business-type');
INSERT INTO `node_category` VALUES(23, 2, 'business-type');
INSERT INTO `node_category` VALUES(241, 26, 'business-type');
INSERT INTO `node_category` VALUES(22, 2, 'business-type');
INSERT INTO `node_category` VALUES(24, 2, 'business-type');
INSERT INTO `node_category` VALUES(240, 26, 'business-type');
INSERT INTO `node_category` VALUES(25, 2, 'business-type');
INSERT INTO `node_category` VALUES(239, 26, 'business-type');
INSERT INTO `node_category` VALUES(26, 2, 'business-type');
INSERT INTO `node_category` VALUES(238, 26, 'business-type');
INSERT INTO `node_category` VALUES(27, 2, 'business-type');
INSERT INTO `node_category` VALUES(237, 26, 'business-type');
INSERT INTO `node_category` VALUES(28, 2, 'business-type');
INSERT INTO `node_category` VALUES(236, 26, 'business-type');
INSERT INTO `node_category` VALUES(29, 2, 'business-type');
INSERT INTO `node_category` VALUES(234, 26, 'business-type');
INSERT INTO `node_category` VALUES(30, 2, 'business-type');
INSERT INTO `node_category` VALUES(31, 2, 'business-type');
INSERT INTO `node_category` VALUES(233, 26, 'business-type');
INSERT INTO `node_category` VALUES(280, 42, 'event-type');
INSERT INTO `node_category` VALUES(279, 23, 'event-type');
INSERT INTO `node_category` VALUES(33, 2, 'business-type');
INSERT INTO `node_category` VALUES(232, 26, 'business-type');
INSERT INTO `node_category` VALUES(34, 2, 'business-type');
INSERT INTO `node_category` VALUES(231, 26, 'business-type');
INSERT INTO `node_category` VALUES(35, 2, 'business-type');
INSERT INTO `node_category` VALUES(230, 26, 'business-type');
INSERT INTO `node_category` VALUES(36, 2, 'business-type');
INSERT INTO `node_category` VALUES(228, 26, 'business-type');
INSERT INTO `node_category` VALUES(189, 30, 'business-type');
INSERT INTO `node_category` VALUES(65, 6, 'business-type');
INSERT INTO `node_category` VALUES(71, 6, 'business-type');
INSERT INTO `node_category` VALUES(194, 30, 'business-type');
INSERT INTO `node_category` VALUES(187, 35, 'business-type');
INSERT INTO `node_category` VALUES(85, 11, 'business-type');
INSERT INTO `node_category` VALUES(147, 2, 'business-type');
INSERT INTO `node_category` VALUES(121, 1, 'event-type');
INSERT INTO `node_category` VALUES(281, 44, 'event-type');
INSERT INTO `node_category` VALUES(282, 44, 'event-type');
INSERT INTO `node_category` VALUES(283, 37, 'event-type');
INSERT INTO `node_category` VALUES(122, 23, 'event-type');
INSERT INTO `node_category` VALUES(124, 20, 'event-type');
INSERT INTO `node_category` VALUES(284, 39, 'event-type');
INSERT INTO `node_category` VALUES(285, 44, 'event-type');
INSERT INTO `node_category` VALUES(125, 1, 'event-type');
INSERT INTO `node_category` VALUES(126, 1, 'event-type');
INSERT INTO `node_category` VALUES(286, 39, 'event-type');
INSERT INTO `node_category` VALUES(143, 14, 'event-type');
INSERT INTO `node_category` VALUES(127, 19, 'event-type');
INSERT INTO `node_category` VALUES(287, 40, 'event-type');
INSERT INTO `node_category` VALUES(129, 19, 'event-type');
INSERT INTO `node_category` VALUES(288, 40, 'event-type');
INSERT INTO `node_category` VALUES(130, 1, 'event-type');
INSERT INTO `node_category` VALUES(289, 48, 'event-type');
INSERT INTO `node_category` VALUES(290, 13, 'business-type');
INSERT INTO `node_category` VALUES(291, 47, 'business-type');
INSERT INTO `node_category` VALUES(252, 13, 'business-type');
INSERT INTO `node_category` VALUES(293, 47, 'business-type');
INSERT INTO `node_category` VALUES(254, 47, 'business-type');
INSERT INTO `node_category` VALUES(133, 25, 'event-type');
INSERT INTO `node_category` VALUES(294, 44, 'event-type');
INSERT INTO `node_category` VALUES(295, 40, 'event-type');
INSERT INTO `node_category` VALUES(134, 19, 'event-type');
INSERT INTO `node_category` VALUES(137, 1, 'event-type');
INSERT INTO `node_category` VALUES(296, 37, 'event-type');
INSERT INTO `node_category` VALUES(297, 23, 'event-type');
INSERT INTO `node_category` VALUES(298, 37, 'event-type');
INSERT INTO `node_category` VALUES(299, 20, 'event-type');
INSERT INTO `node_category` VALUES(300, 39, 'event-type');
INSERT INTO `node_category` VALUES(138, 19, 'event-type');
INSERT INTO `node_category` VALUES(301, 40, 'event-type');
INSERT INTO `node_category` VALUES(302, 34, 'business-type');
INSERT INTO `node_category` VALUES(303, 34, 'business-type');
INSERT INTO `node_category` VALUES(304, 44, 'event-type');
INSERT INTO `node_category` VALUES(139, 25, 'event-type');
INSERT INTO `node_category` VALUES(262, 39, 'event-type');
INSERT INTO `node_category` VALUES(305, 38, 'event-type');
INSERT INTO `node_category` VALUES(307, 13, 'business-type');
INSERT INTO `node_category` VALUES(308, 47, 'business-type');
INSERT INTO `node_category` VALUES(306, 39, 'event-type');
INSERT INTO `node_category` VALUES(149, 20, 'event-type');
INSERT INTO `node_category` VALUES(148, 16, 'event-type');
INSERT INTO `node_category` VALUES(309, 38, 'event-type');
INSERT INTO `node_category` VALUES(151, 14, 'event-type');
INSERT INTO `node_category` VALUES(310, 37, 'event-type');
INSERT INTO `node_category` VALUES(153, 20, 'event-type');
INSERT INTO `node_category` VALUES(311, 39, 'event-type');
INSERT INTO `node_category` VALUES(312, 40, 'event-type');
INSERT INTO `node_category` VALUES(155, 16, 'event-type');
INSERT INTO `node_category` VALUES(156, 14, 'event-type');
INSERT INTO `node_category` VALUES(313, 37, 'event-type');
INSERT INTO `node_category` VALUES(157, 14, 'event-type');
INSERT INTO `node_category` VALUES(314, 37, 'event-type');
INSERT INTO `node_category` VALUES(131, 16, 'event-type');
INSERT INTO `node_category` VALUES(292, 37, 'event-type');
INSERT INTO `node_category` VALUES(175, 26, 'business-type');
INSERT INTO `node_category` VALUES(317, 4, 'business-type');
INSERT INTO `node_category` VALUES(159, 14, 'event-type');
INSERT INTO `node_category` VALUES(160, 14, 'event-type');
INSERT INTO `node_category` VALUES(161, 14, 'event-type');
INSERT INTO `node_category` VALUES(319, 1, 'event-type');
INSERT INTO `node_category` VALUES(250, 37, 'event-type');
INSERT INTO `node_category` VALUES(276, 37, 'event-type');
INSERT INTO `node_category` VALUES(277, 37, 'event-type');
INSERT INTO `node_category` VALUES(16, 26, 'business-type');
INSERT INTO `node_category` VALUES(318, 28, 'business-type');
INSERT INTO `node_category` VALUES(257, 32, 'business-type');
INSERT INTO `node_category` VALUES(322, 38, 'event-type');
INSERT INTO `node_category` VALUES(158, 14, 'event-type');
INSERT INTO `node_category` VALUES(264, 43, 'event-type');
INSERT INTO `node_category` VALUES(181, 34, 'business-type');
INSERT INTO `node_category` VALUES(195, 30, 'business-type');
INSERT INTO `node_category` VALUES(190, 30, 'business-type');
INSERT INTO `node_category` VALUES(66, 6, 'business-type');
INSERT INTO `node_category` VALUES(256, 47, 'business-type');
INSERT INTO `node_category` VALUES(265, 43, 'event-type');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `entity_type` varchar(45) NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `cover` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=267 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` VALUES(4, 'event-logo', 9, 'Screen_shot_2012-03-09_at_2.38.18_PM1.png', '0', 1331925970, 1, 0);
INSERT INTO `pictures` VALUES(5, 'event-logo', 9, 'Untitled3.png', '0', 1331926374, 1, 0);
INSERT INTO `pictures` VALUES(6, 'event-logo', 9, 'Untitled2.png', '0', 1331926568, 1, 0);
INSERT INTO `pictures` VALUES(7, 'event-logo', 8, 'Untitled1.png', '0', 1331926606, 1, 0);
INSERT INTO `pictures` VALUES(8, 'event-logo', 9, 'AdvanceRewards-Banner-ESP.jpg', '0', 1331926744, 1, 0);
INSERT INTO `pictures` VALUES(9, 'event-logo', 8, 'Casalife1.jpg', '0', 1331930094, 1, 0);
INSERT INTO `pictures` VALUES(10, 'event-logo', 4, 'home2.jpg', '0', 1331930156, 1, 0);
INSERT INTO `pictures` VALUES(11, 'event-logo', 3, 'casa_de_campo_villa_10_48.jpg', '0', 1331930697, 1, 0);
INSERT INTO `pictures` VALUES(12, 'event-logo', 8, 'casa_de_campo_villa_8_57.jpg', '0', 1331930729, 1, 0);
INSERT INTO `pictures` VALUES(13, 'business-logo', 5, 'ALTOS-symbol.gif', '0', 1331931071, 1, 0);
INSERT INTO `pictures` VALUES(14, 'business-logo', 10, 'CDC-Logo.gif', '0', 1331932096, 1, 0);
INSERT INTO `pictures` VALUES(15, 'event-logo', 9, 'Laguna-Mar-06.jpg', '0', 1332008893, 1, 0);
INSERT INTO `pictures` VALUES(16, 'event-logo', 4, 'Laguna-Mar-09.jpg', '0', 1332008973, 1, 0);
INSERT INTO `pictures` VALUES(17, 'event-logo', 12, 'event-cover---todo.jpg', '0', 1332085030, 1, 0);
INSERT INTO `pictures` VALUES(18, 'business-logo', 11, 'Screen_shot_2012-03-18_at_11.45.19_AM.png', '0', 1332098037, 1, 0);
INSERT INTO `pictures` VALUES(19, 'business-logo', 11, 'business-icon-silgoninc.jpg', '0', 1332098947, 1, 0);
INSERT INTO `pictures` VALUES(20, 'business-logo', 95, 'business-icon-scoladevela.jpg', '0', 1332099201, 1, 0);
INSERT INTO `pictures` VALUES(21, 'event-logo', 97, 'rusticos.jpg', '0', 1332099278, 1, 0);
INSERT INTO `pictures` VALUES(22, 'business-logo', 94, 'business-icon-caceresyassociados.jpg', '0', 1332099395, 1, 0);
INSERT INTO `pictures` VALUES(23, 'business-logo', 93, '174_1.jpg', '0', 1332099969, 1, 0);
INSERT INTO `pictures` VALUES(24, 'business-logo', 92, 'Screen_shot_2012-03-18_at_3.47.02_PM.png', '0', 1332100036, 1, 0);
INSERT INTO `pictures` VALUES(25, 'business-logo', 87, 'Screen_shot_2012-03-18_at_3.47.50_PM.png', '0', 1332100086, 1, 0);
INSERT INTO `pictures` VALUES(26, 'business-logo', 83, 'fbddef05c2.gif', '0', 1332100137, 1, 0);
INSERT INTO `pictures` VALUES(27, 'business-logo', 82, 'logo0bdi_Principal.jpg', '0', 1332100173, 1, 0);
INSERT INTO `pictures` VALUES(28, 'business-logo', 81, 'Banco_del_ProgresoLogoSq.jpg', '0', 1332100211, 1, 0);
INSERT INTO `pictures` VALUES(29, 'business-logo', 75, 'Screen_shot_2012-03-18_at_3.47.50_PM.png', '0', 1332100372, 1, 0);
INSERT INTO `pictures` VALUES(30, 'event-logo', 101, 'francia.jpg', '0', 1332100388, 1, 0);
INSERT INTO `pictures` VALUES(31, 'business-logo', 73, 'carmen_sol.jpg', '0', 1332100459, 1, 0);
INSERT INTO `pictures` VALUES(32, 'business-logo', 70, 'Emilio_Robba.jpg', '0', 1332100651, 1, 0);
INSERT INTO `pictures` VALUES(33, 'business-logo', 69, 'logo-montecristo.jpg', '0', 1332100697, 1, 0);
INSERT INTO `pictures` VALUES(34, 'business-logo', 68, 'logo-montecristo.jpg', '0', 1332100748, 1, 0);
INSERT INTO `pictures` VALUES(35, 'business-logo', 67, '50225_124545758039_72459234_n.jpg', '0', 1332100804, 1, 0);
INSERT INTO `pictures` VALUES(36, 'business-logo', 66, 'Screen_shot_2012-03-18_at_4.00.29_PM.png', '0', 1332100850, 1, 0);
INSERT INTO `pictures` VALUES(37, 'business-logo', 65, 'Screen_shot_2012-03-18_at_4.01.49_PM.png', '0', 1332100919, 1, 0);
INSERT INTO `pictures` VALUES(38, 'business-logo', 63, 'Screen_shot_2012-03-18_at_4.02.36_PM.png', '0', 1332100972, 1, 0);
INSERT INTO `pictures` VALUES(39, 'business-logo', 62, 'vilebrequin-logo.jpeg', '0', 1332101065, 1, 0);
INSERT INTO `pictures` VALUES(40, 'business-logo', 61, 'brand.gif', '0', 1332101104, 1, 0);
INSERT INTO `pictures` VALUES(41, 'business-logo', 60, 'Logo_Rubiluna__Karenjpg.325100701_logo.jpg', '0', 1332101151, 1, 0);
INSERT INTO `pictures` VALUES(42, 'business-logo', 58, 'LOGO_KIWI(2).jpg', '0', 1332101244, 1, 0);
INSERT INTO `pictures` VALUES(43, 'event-logo', 106, 'polo.jpg', '0', 1332101256, 1, 0);
INSERT INTO `pictures` VALUES(44, 'business-logo', 56, 'logo_murphynye.jpg', '0', 1332101321, 1, 0);
INSERT INTO `pictures` VALUES(45, 'business-logo', 54, 'Screen_shot_2012-03-18_at_4.01.49_PM.png', '0', 1332101343, 1, 0);
INSERT INTO `pictures` VALUES(46, 'business-logo', 53, 'logo-hippolito.jpg', '0', 1332101394, 1, 0);
INSERT INTO `pictures` VALUES(47, 'business-logo', 52, 'fumo.jpg', '0', 1332101528, 1, 0);
INSERT INTO `pictures` VALUES(48, 'business-logo', 51, 'chiqui-14.png', '0', 1332101594, 1, 0);
INSERT INTO `pictures` VALUES(49, 'business-logo', 50, 'Screen_shot_2012-03-18_at_4.00.29_PM.png', '0', 1332101624, 1, 0);
INSERT INTO `pictures` VALUES(50, 'business-logo', 48, 'Screen_shot_2012-03-18_at_4.16.00_PM.png', '0', 1332101779, 1, 0);
INSERT INTO `pictures` VALUES(51, 'business-logo', 44, 'ColumbiaSportwear_Logo.jpg', '0', 1332101873, 1, 0);
INSERT INTO `pictures` VALUES(52, 'business-logo', 43, 'Claro.gif', '0', 1332101905, 1, 0);
INSERT INTO `pictures` VALUES(53, 'business-logo', 42, 'carmen_sol.jpg', '0', 1332101938, 1, 0);
INSERT INTO `pictures` VALUES(54, 'business-logo', 41, 'carmen_sol.jpg', '0', 1332101954, 1, 0);
INSERT INTO `pictures` VALUES(55, 'business-logo', 40, 'Screen_shot_2012-03-18_at_4.20.13_PM_1.png', '0', 1332102029, 1, 0);
INSERT INTO `pictures` VALUES(56, 'business-logo', 35, 'Screen_shot_2012-03-18_at_4.23.07_PM.png', '0', 1332102200, 1, 0);
INSERT INTO `pictures` VALUES(57, 'event-logo', 107, 'plaza_chavon.jpg', '0', 1332102201, 1, 0);
INSERT INTO `pictures` VALUES(58, 'business-logo', 30, 'a20110603-105828-ont.jpg', '0', 1332102273, 1, 0);
INSERT INTO `pictures` VALUES(59, 'business-logo', 29, 'papa_jacks_altos_de_chavon_casa_de_campo.jpg', '0', 1332102382, 1, 0);
INSERT INTO `pictures` VALUES(60, 'business-logo', 28, 'la_cantina.jpg', '0', 1332102568, 1, 0);
INSERT INTO `pictures` VALUES(61, 'event-logo', 109, 'michel_bizet_art.jpg', '0', 1332102580, 1, 0);
INSERT INTO `pictures` VALUES(62, 'business-logo', 27, 'Screen_shot_2012-03-18_at_4.31.44_PM.png', '0', 1332102723, 1, 0);
INSERT INTO `pictures` VALUES(63, 'business-logo', 26, 'Ginos_altos_de_chavon_casa_de_campo.jpg', '0', 1332102739, 1, 0);
INSERT INTO `pictures` VALUES(64, 'business-logo', 25, 'Screen_shot_2012-03-18_at_4.33.05_PM.png', '0', 1332102804, 1, 0);
INSERT INTO `pictures` VALUES(65, 'business-logo', 24, 'pistakio_marina_casa_de_campo.jpg', '0', 1332102846, 1, 0);
INSERT INTO `pictures` VALUES(66, 'business-logo', 22, 'Screen_shot_2012-03-18_at_4.37.38_PM.png', '0', 1332103089, 1, 0);
INSERT INTO `pictures` VALUES(67, 'event-logo', 111, 'musica.jpg', '0', 1332103136, 1, 0);
INSERT INTO `pictures` VALUES(68, 'business-logo', 18, 'Screen_shot_2012-03-18_at_4.38.57_PM.png', '0', 1332103169, 1, 0);
INSERT INTO `pictures` VALUES(69, 'business-logo', 15, 'Screen_shot_2012-03-18_at_4.39.58_PM.png', '0', 1332103229, 1, 0);
INSERT INTO `pictures` VALUES(70, 'business-logo', 11, 'silgon_logo_(black_background).jpg', '0', 1332103253, 1, 0);
INSERT INTO `pictures` VALUES(71, 'business-logo', 5, 'papa_jacks_altos_de_chavon_casa_de_campo.jpg', '0', 1332103286, 1, 0);
INSERT INTO `pictures` VALUES(72, 'event-logo', 112, 'Semana-de-Francia-Altos-de-Chavon-La-Romana-Republica-Dominicana-Blandine-Kreiss-Manuel-A.-Grullón-C', '0', 1332103373, 1, 0);
INSERT INTO `pictures` VALUES(73, 'event-logo', 112, 'Semana-de-Francia-Altos-de-Chavon-La-Romana-Republica-Dominicana-Blandine-Kreiss-Manuel-A.jpg', '0', 1332103416, 1, 0);
INSERT INTO `pictures` VALUES(74, 'business-logo', 25, 'Screen_shot_2012-03-18_at_4.40.08_PM.png', '0', 1332103429, 1, 0);
INSERT INTO `pictures` VALUES(75, 'event-logo', 114, 'periodic_table.png', '0', 1332103717, 1, 0);
INSERT INTO `pictures` VALUES(76, 'event-logo', 115, 'the-little-prince.jpg', '0', 1332104078, 1, 0);
INSERT INTO `pictures` VALUES(77, 'event-logo', 116, 'estilo_altos_de_chavon1.jpg', '0', 1332104519, 1, 0);
INSERT INTO `pictures` VALUES(78, 'event-logo', 117, 'plaza_chavon.jpg', '0', 1332104722, 1, 0);
INSERT INTO `pictures` VALUES(79, 'event-logo', 118, 'gregory_pugin_le_cirque.jpg', '0', 1332105049, 1, 0);
INSERT INTO `pictures` VALUES(80, 'event-logo', 119, 'semana_de_francia2.jpg', '0', 1332105279, 1, 0);
INSERT INTO `pictures` VALUES(81, 'event-logo', 120, 'tennis_casa_de_campo3.jpg', '0', 1332105515, 1, 0);
INSERT INTO `pictures` VALUES(82, 'event-logo', 121, 'sup.jpg', '0', 1332105734, 1, 0);
INSERT INTO `pictures` VALUES(83, 'event-logo', 122, 'Langoustine_Med_Res.jpg', '0', 1332105858, 1, 0);
INSERT INTO `pictures` VALUES(84, 'event-logo', 124, 'Petanque_casa_de_campo.jpg', '0', 1332106048, 1, 0);
INSERT INTO `pictures` VALUES(85, 'business-logo', 99, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332108100, 1, 0);
INSERT INTO `pictures` VALUES(86, 'event-logo', 125, 'the-little-prince.jpg', '0', 1332112259, 1, 0);
INSERT INTO `pictures` VALUES(87, 'event-logo', 126, 'polo.jpg', '0', 1332112527, 1, 0);
INSERT INTO `pictures` VALUES(88, 'event-logo', 127, 'indeswaska.jpg', '0', 1332112775, 1, 0);
INSERT INTO `pictures` VALUES(89, 'event-logo', 129, 'semana_de_francia_anfiteatro.jpg', '0', 1332113280, 1, 0);
INSERT INTO `pictures` VALUES(90, 'event-logo', 129, 'orchestre_rene_coll.jpg', '0', 1332113614, 1, 0);
INSERT INTO `pictures` VALUES(91, 'event-logo', 130, 'dj_pompougnac.jpg', '0', 1332114027, 1, 0);
INSERT INTO `pictures` VALUES(92, 'event-logo', 131, 'walkabout_foundation.jpg', '0', 1332114548, 1, 0);
INSERT INTO `pictures` VALUES(93, 'event-logo', 132, 'La_piazetta_altos_de_chavon1.jpg', '0', 1332114747, 1, 0);
INSERT INTO `pictures` VALUES(94, 'event-logo', 133, 'emilio_robba.jpg', '0', 1332115007, 1, 0);
INSERT INTO `pictures` VALUES(95, 'event-logo', 134, 'indeswaska.jpg', '0', 1332115226, 1, 0);
INSERT INTO `pictures` VALUES(96, 'event-logo', 137, 'hare_rabbit.jpg', '0', 1332116306, 1, 0);
INSERT INTO `pictures` VALUES(97, 'event-logo', 138, 'drumming.jpg', '0', 1332117094, 1, 0);
INSERT INTO `pictures` VALUES(98, 'event-logo', 139, 'air_caraibes.jpg', '0', 1332117209, 1, 0);
INSERT INTO `pictures` VALUES(99, 'event-logo', 140, 'juggler.jpg', '0', 1332123112, 1, 0);
INSERT INTO `pictures` VALUES(100, 'event-logo', 141, 'rachel_white_arte.jpg', '0', 1332123435, 1, 0);
INSERT INTO `pictures` VALUES(101, 'event-logo', 142, 'polo.jpg', '0', 1332123870, 1, 0);
INSERT INTO `pictures` VALUES(102, 'business-logo', 11, 'silgon-facebook-logov2.jpg', '0', 1332185055, 1, 0);
INSERT INTO `pictures` VALUES(103, 'business-cover', 11, 'TODO-Business-Covers-silgon.jpg', '0', 1332185397, 1, 0);
INSERT INTO `pictures` VALUES(104, 'business-cover', 28, 'TODO-Business-Covers-lacantina.jpg', '0', 1332185734, 1, 0);
INSERT INTO `pictures` VALUES(105, 'business-cover', 5, 'TODO-Business-Covers-papajacks.jpg', '0', 1332185845, 1, 0);
INSERT INTO `pictures` VALUES(106, 'business-cover', 5, 'TODO-Business-Covers-papajacks2.jpg', '0', 1332185939, 1, 0);
INSERT INTO `pictures` VALUES(107, 'business-cover', 10, 'TODO-Business-Covers-shooting.jpg', '0', 1332186048, 1, 0);
INSERT INTO `pictures` VALUES(108, 'business-cover', 15, 'TODO-Business-Covers-azimut.jpg', '0', 1332186144, 1, 0);
INSERT INTO `pictures` VALUES(109, 'business-cover', 18, 'TODO-Business-Covers-chinois.jpg', '0', 1332186318, 1, 0);
INSERT INTO `pictures` VALUES(110, 'business-cover', 45, 'TODO-Business-Covers-cosie.jpg', '0', 1332186444, 1, 0);
INSERT INTO `pictures` VALUES(111, 'business-cover', 48, 'TODO-Business-Covers-elementos.jpg', '0', 1332186778, 1, 0);
INSERT INTO `pictures` VALUES(112, 'business-cover', 50, 'TODO-Business-Covers-everret.jpg', '0', 1332186900, 1, 0);
INSERT INTO `pictures` VALUES(113, 'business-cover', 51, 'TODO-Business-Covers-fereteriaamericana.jpg', '0', 1332187004, 1, 0);
INSERT INTO `pictures` VALUES(114, 'business-cover', 52, 'TODO-Business-Covers-fumo2.jpg', '0', 1332187158, 1, 0);
INSERT INTO `pictures` VALUES(115, 'business-cover', 60, 'TODO-Business-Covers-rubiluna.jpg', '0', 1332187255, 1, 0);
INSERT INTO `pictures` VALUES(116, 'business-cover', 61, 'TODO-Business-Covers-supermercadonacional.jpg', '0', 1332187341, 1, 0);
INSERT INTO `pictures` VALUES(117, 'business-cover', 62, 'TODO-Business-Covers-vilebrequin.jpg', '0', 1332187480, 1, 0);
INSERT INTO `pictures` VALUES(118, 'business-cover', 63, 'TODO-Business-Covers-rusticosymas.jpg', '0', 1332187548, 1, 0);
INSERT INTO `pictures` VALUES(119, 'business-cover', 67, 'TODO-Business-Covers-museoambarylarimar.jpg', '0', 1332187619, 1, 0);
INSERT INTO `pictures` VALUES(120, 'business-cover', 66, 'TODO-Business-Covers-everret.jpg', '0', 1332187635, 1, 0);
INSERT INTO `pictures` VALUES(121, 'business-cover', 65, 'TODO-Business-Covers-jennypolanco.jpg', '0', 1332187917, 1, 0);
INSERT INTO `pictures` VALUES(122, 'business-cover', 70, 'TODO-Business-Covers-emiliorobba.jpg', '0', 1332188546, 1, 0);
INSERT INTO `pictures` VALUES(123, 'business-cover', 72, 'TODO-Business-Covers-tiendabatey.jpg', '0', 1332188608, 1, 0);
INSERT INTO `pictures` VALUES(124, 'business-cover', 75, 'TODO-Business-Covers-costasur.jpg', '0', 1332188796, 1, 0);
INSERT INTO `pictures` VALUES(125, 'business-cover', 76, 'TODO-Business-Covers-cdcgym.jpg', '0', 1332188853, 1, 0);
INSERT INTO `pictures` VALUES(126, 'business-cover', 77, 'TODO-Business-Covers-beautysalon.jpg', '0', 1332188935, 1, 0);
INSERT INTO `pictures` VALUES(127, 'business-cover', 84, 'TODO-Business-Covers-crhospital.jpg', '0', 1332189014, 1, 0);
INSERT INTO `pictures` VALUES(128, 'business-cover', 92, 'TODO-Business-Covers-fini.jpg', '0', 1332189201, 1, 0);
INSERT INTO `pictures` VALUES(129, 'business-cover', 93, 'TODO-Business-Covers-avis.jpg', '0', 1332189292, 1, 0);
INSERT INTO `pictures` VALUES(130, 'business-cover', 94, 'TODO-Business-Covers-caceresyassociados.jpg', '0', 1332189384, 1, 0);
INSERT INTO `pictures` VALUES(131, 'business-cover', 95, 'TODO-Business-Covers-sculadevela.jpg', '0', 1332189440, 1, 0);
INSERT INTO `pictures` VALUES(132, 'business-cover', 98, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332189636, 1, 0);
INSERT INTO `pictures` VALUES(133, 'business-logo', 98, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332189659, 1, 0);
INSERT INTO `pictures` VALUES(134, 'business-cover', 99, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332189675, 1, 0);
INSERT INTO `pictures` VALUES(135, 'business-cover', 100, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332189689, 1, 0);
INSERT INTO `pictures` VALUES(136, 'business-logo', 100, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332189718, 1, 0);
INSERT INTO `pictures` VALUES(137, 'business-logo', 102, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332189728, 1, 0);
INSERT INTO `pictures` VALUES(138, 'business-cover', 102, 'TODO-Business-Covers-cdcpolo.jpg', '0', 1332189819, 1, 0);
INSERT INTO `pictures` VALUES(139, 'business-cover', 20, 'TODO-Business-Covers-illimoncello.jpg', '0', 1332189927, 1, 0);
INSERT INTO `pictures` VALUES(140, 'business-cover', 23, 'TODO-Business-Covers-PEPPERONI.jpg', '0', 1332190061, 1, 0);
INSERT INTO `pictures` VALUES(141, 'business-cover', 24, 'TODO-Business-Covers-pistakio.jpg', '0', 1332190215, 1, 0);
INSERT INTO `pictures` VALUES(142, 'business-cover', 25, 'TODO-Business-Covers-victory.jpg', '0', 1332190339, 1, 0);
INSERT INTO `pictures` VALUES(143, 'business-cover', 26, 'TODO-Business-Covers-ginoditrastevere.jpg', '0', 1332190408, 1, 0);
INSERT INTO `pictures` VALUES(144, 'business-cover', 26, 'TODO-Business-Covers-ginoditrastevere2.jpg', '0', 1332190457, 1, 0);
INSERT INTO `pictures` VALUES(145, 'business-cover', 27, 'TODO-Business-Covers-lapiazzetta.jpg', '0', 1332190532, 1, 0);
INSERT INTO `pictures` VALUES(146, 'business-cover', 27, 'TODO-Business-Covers-lapiazzetta2.jpg', '0', 1332190570, 1, 0);
INSERT INTO `pictures` VALUES(147, 'business-cover', 29, 'TODO-Business-Covers-papajacks2.jpg', '0', 1332190602, 1, 0);
INSERT INTO `pictures` VALUES(148, 'business-cover', 30, 'TODO-Business-Covers-onnos.jpg', '0', 1332190685, 1, 0);
INSERT INTO `pictures` VALUES(149, 'business-cover', 31, 'TODO-Business-Covers-dyefore.jpg', '0', 1332190750, 1, 0);
INSERT INTO `pictures` VALUES(150, 'business-logo', 31, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332190762, 1, 0);
INSERT INTO `pictures` VALUES(151, 'business-logo', 33, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332190775, 1, 0);
INSERT INTO `pictures` VALUES(152, 'business-cover', 33, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332190849, 1, 0);
INSERT INTO `pictures` VALUES(153, 'business-logo', 34, 'logo-lagogrill.jpg', '0', 1332190998, 1, 0);
INSERT INTO `pictures` VALUES(154, 'business-cover', 34, 'TODO-Business-Covers-lagogrill.jpg', '0', 1332191007, 1, 0);
INSERT INTO `pictures` VALUES(155, 'business-cover', 35, 'TODO-Business-Covers-beachclubbylecrique.jpg', '0', 1332191132, 1, 0);
INSERT INTO `pictures` VALUES(156, 'business-logo', 36, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332191166, 1, 0);
INSERT INTO `pictures` VALUES(157, 'business-cover', 40, 'TODO-Business-Covers-bluemarine.jpg', '0', 1332191292, 1, 0);
INSERT INTO `pictures` VALUES(158, 'business-cover', 41, 'TODO-Business-Covers-carmensol.jpg', '0', 1332191368, 1, 0);
INSERT INTO `pictures` VALUES(159, 'business-cover', 73, 'TODO-Business-Covers-carmensolcdc.jpg', '0', 1332191443, 1, 0);
INSERT INTO `pictures` VALUES(160, 'business-cover', 82, 'TODO-Business-Covers-coconutmall.jpg', '0', 1332191535, 1, 0);
INSERT INTO `pictures` VALUES(161, 'business-logo', 85, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332191612, 1, 0);
INSERT INTO `pictures` VALUES(162, 'business-cover', 87, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332191628, 1, 0);
INSERT INTO `pictures` VALUES(163, 'business-logo', 91, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332191645, 1, 0);
INSERT INTO `pictures` VALUES(164, 'business-cover', 90, 'TODO-Business-Covers-fini.jpg', '0', 1332191668, 1, 0);
INSERT INTO `pictures` VALUES(165, 'business-cover', 71, 'TODO-Business-Covers-dyefore.jpg', '0', 1332191691, 1, 0);
INSERT INTO `pictures` VALUES(166, 'business-logo', 71, '2004-cdc-327logo_(2)kh_copy.jpg', '0', 1332191699, 1, 0);
INSERT INTO `pictures` VALUES(167, 'business-cover', 64, 'TODO-Business-Covers-elmercadito.jpg', '0', 1332191808, 1, 0);
INSERT INTO `pictures` VALUES(168, 'business-logo', 59, 'logo-rayoled.jpg', '0', 1332191877, 1, 0);
INSERT INTO `pictures` VALUES(169, 'business-cover', 59, 'TODO-Business-Covers-rayoled.jpg', '0', 1332191884, 1, 0);
INSERT INTO `pictures` VALUES(170, 'business-cover', 58, 'TODO-Business-Covers-kiwi.jpg', '0', 1332192190, 1, 0);
INSERT INTO `pictures` VALUES(171, 'business-cover', 56, 'TODO-Business-Covers-murphyandnye.jpg', '0', 1332192262, 1, 0);
INSERT INTO `pictures` VALUES(172, 'business-cover', 54, 'TODO-Business-Covers-jennypolancobibileon.jpg', '0', 1332192383, 1, 0);
INSERT INTO `pictures` VALUES(173, 'business-cover', 53, 'TODO-Business-Covers-hipolito.jpg', '0', 1332192454, 1, 0);
INSERT INTO `pictures` VALUES(174, 'business-cover', 44, 'TODO-Business-Covers-columbia.jpg', '0', 1332192768, 1, 0);
INSERT INTO `pictures` VALUES(175, 'business-cover', 43, 'TODO-Business-Covers-claro.jpg', '0', 1332192826, 1, 0);
INSERT INTO `pictures` VALUES(176, 'business-cover', 42, 'TODO-Business-Covers-carmensolsun.jpg', '0', 1332192897, 1, 0);
INSERT INTO `pictures` VALUES(177, 'business-logo', 23, 'todo-facebook-logo-peperoni.jpg', '0', 1332193001, 1, 0);
INSERT INTO `pictures` VALUES(178, 'business-cover', 22, 'TODO-Business-Covers-mistral.jpg', '0', 1332193012, 1, 0);
INSERT INTO `pictures` VALUES(179, 'business-logo', 57, 'todo-facebook-logo-nuevorenacimiento.jpg', '0', 1332193183, 1, 0);
INSERT INTO `pictures` VALUES(180, 'business-cover', 57, 'TODO-Business-Covers-nuevorenacimiento.jpg', '0', 1332193191, 1, 0);
INSERT INTO `pictures` VALUES(181, 'business-cover', 81, 'TODO-Business-Covers-fini.jpg', '0', 1332193317, 1, 0);
INSERT INTO `pictures` VALUES(182, 'business-cover', 85, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332193335, 1, 0);
INSERT INTO `pictures` VALUES(183, 'business-logo', 90, 'todo-facebook-logo-lavenderialamarina.jpg', '0', 1332193431, 1, 0);
INSERT INTO `pictures` VALUES(184, 'business-cover', 91, 'TODO-Business-Covers-casadecampo.jpg', '0', 1332193447, 1, 0);
INSERT INTO `pictures` VALUES(185, 'business-logo', 64, 'todo-facebook-logo.jpg-elmercadito', '0', 1332193502, 1, 0);
INSERT INTO `pictures` VALUES(186, 'event-logo', 143, 'links_casa_de_campo.jpg', '0', 1332193698, 1, 0);
INSERT INTO `pictures` VALUES(187, 'business-logo', 39, 'todo-facebook-logo-zzuro.jpg', '0', 1332193893, 1, 0);
INSERT INTO `pictures` VALUES(188, 'business-logo', 45, 'todo-facebook-logo-cosie.jpg', '0', 1332193932, 1, 0);
INSERT INTO `pictures` VALUES(189, 'business-logo', 108, 'todo-facebook-logo-GaleriadeArteAltosdeChavon.jpg', '0', 1332194124, 1, 0);
INSERT INTO `pictures` VALUES(190, 'business-cover', 69, 'Casa_Montecristo.jpg', '0', 1332194206, 1, 0);
INSERT INTO `pictures` VALUES(191, 'business-cover', 47, 'ecoplaneta.jpg', '0', 1332195003, 1, 0);
INSERT INTO `pictures` VALUES(192, 'business-logo', 47, 'ecoplaneta.jpg', '0', 1332195064, 1, 0);
INSERT INTO `pictures` VALUES(193, 'business-cover', 108, 'art_gallery.jpg', '0', 1332195279, 1, 0);
INSERT INTO `pictures` VALUES(194, 'business-cover', 39, 'azzuro.jpg', '0', 1332195579, 1, 0);
INSERT INTO `pictures` VALUES(195, 'business-logo', 39, 'azzuro.jpg', '0', 1332195644, 1, 0);
INSERT INTO `pictures` VALUES(196, 'business-cover', 36, 'coco_mar_bar_casa_de_campo.jpg', '0', 1332196139, 1, 0);
INSERT INTO `pictures` VALUES(197, 'business-logo', 45, 'cosi_e.jpg', '0', 1332196626, 1, 0);
INSERT INTO `pictures` VALUES(198, 'event-logo', 148, 'MIR_Bazaar.jpg', '0', 1332197107, 1, 0);
INSERT INTO `pictures` VALUES(199, 'event-logo', 149, 'fishing_tournament.jpg', '0', 1332197522, 1, 0);
INSERT INTO `pictures` VALUES(200, 'event-logo', 151, 'golf_challenge.jpg', '0', 1332201749, 1, 0);
INSERT INTO `pictures` VALUES(201, 'event-logo', 152, 'casa-de-campo-shoot-out-golf-tournament-casa-de-campo-living.jpg', '0', 1332201925, 1, 0);
INSERT INTO `pictures` VALUES(202, 'event-logo', 153, 'polo_top.jpg', '0', 1332202711, 1, 0);
INSERT INTO `pictures` VALUES(203, 'event-logo', 154, 'luis_fonsi.jpg', '0', 1332203066, 1, 0);
INSERT INTO `pictures` VALUES(204, 'event-logo', 155, 'cafedelaleche_casadecampo_hogardelnino2.jpg', '0', 1332203566, 1, 0);
INSERT INTO `pictures` VALUES(205, 'event-logo', 156, 'golf.jpg', '0', 1332204042, 1, 0);
INSERT INTO `pictures` VALUES(206, 'event-logo', 157, 'casa_de_campo_teeth_of_the_dog1.jpg', '0', 1332209022, 1, 0);
INSERT INTO `pictures` VALUES(207, 'event-logo', 158, 'golf_torneo_casa_de_campo1.jpg', '0', 1332209424, 1, 0);
INSERT INTO `pictures` VALUES(208, 'event-logo', 159, 'golf_teeth_of_the_dog_casa_de_campo1.jpg', '0', 1332211150, 1, 0);
INSERT INTO `pictures` VALUES(209, 'event-logo', 160, 'dye_fore.jpg', '0', 1332211477, 1, 0);
INSERT INTO `pictures` VALUES(210, 'event-logo', 161, 'casa_de_campo_teeth_of_the_dog1.jpg', '0', 1332211743, 1, 0);
INSERT INTO `pictures` VALUES(211, 'event-logo', 162, 'Dewars_12_golf_invitational_casa_de_campo1.jpg', '0', 1332211925, 1, 0);
INSERT INTO `pictures` VALUES(212, 'event-logo', 163, 'links_casa_de_campo_(1).jpg', '0', 1332212297, 1, 0);
INSERT INTO `pictures` VALUES(213, 'event-logo', 164, 'fundacion_MIR_la_romana.jpg', '0', 1332212784, 1, 0);
INSERT INTO `pictures` VALUES(214, 'event-logo', 165, 'casa_de_campo_tennis1.jpg', '0', 1332213053, 1, 0);
INSERT INTO `pictures` VALUES(215, 'event-logo', 166, 'golf_photo.jpg', '0', 1332215149, 1, 0);
INSERT INTO `pictures` VALUES(216, 'business-cover', 65, '419389_10150639803914585_311735254584_9343950_331007201_n.jpg', '0', 1332279524, 1, 0);
INSERT INTO `pictures` VALUES(217, 'business-gallery', 20, 'casa_de_campo_villa_1.jpg', '0', 1332288955, 1, 0);
INSERT INTO `pictures` VALUES(218, 'business-gallery', 20, 'casa_de_campo_villa_11.jpg', '0', 1332289041, 1, 0);
INSERT INTO `pictures` VALUES(219, 'business-logo', 252, 'fundacion_MIR.jpg', '0', 1332290981, 1, 0);
INSERT INTO `pictures` VALUES(220, 'business-cover', 252, 'fundacion_MIR1.jpg', '0', 1332291031, 1, 0);
INSERT INTO `pictures` VALUES(221, 'business-logo', 253, 'hogar_del_nino.png', '0', 1332291714, 1, 0);
INSERT INTO `pictures` VALUES(222, 'business-cover', 253, 'hogar_del_nino.jpg', '0', 1332291799, 1, 0);
INSERT INTO `pictures` VALUES(223, 'business-cover', 251, 'Screen_shot_2012-03-20_at_8.41.18_PM.png', '0', 1332292090, 1, 0);
INSERT INTO `pictures` VALUES(224, 'business-logo', 251, 'Screen_shot_2012-03-20_at_8.41.18_PM.png', '0', 1332292103, 1, 0);
INSERT INTO `pictures` VALUES(225, 'business-logo', 251, 'log_prov.png', '0', 1332292161, 1, 0);
INSERT INTO `pictures` VALUES(226, 'business-logo', 249, 'log_prov.png', '0', 1332292193, 1, 0);
INSERT INTO `pictures` VALUES(227, 'business-cover', 249, 'Screen_shot_2012-03-20_at_8.41.18_PM.png', '0', 1332292204, 1, 0);
INSERT INTO `pictures` VALUES(228, 'business-logo', 255, 'hospital_buen_samaritano.jpg', '0', 1332292418, 1, 0);
INSERT INTO `pictures` VALUES(229, 'business-cover', 255, 'Operativo_de_urologia_pediatrica.jpg', '0', 1332292779, 1, 0);
INSERT INTO `pictures` VALUES(230, 'business-cover', 257, 'punta_aguila.jpg', '0', 1332296966, 1, 0);
INSERT INTO `pictures` VALUES(231, 'business-logo', 257, 'tina_fanjul.jpg', '0', 1332297001, 1, 0);
INSERT INTO `pictures` VALUES(232, 'business-logo', 258, 'tina_fanjul.jpg', '0', 1332297198, 1, 0);
INSERT INTO `pictures` VALUES(233, 'business-cover', 258, 'punta_aguila.jpg', '0', 1332297207, 1, 0);
INSERT INTO `pictures` VALUES(234, 'event-logo', 111, 'Rene_Coll_Big_Band.jpg', '0', 1332301082, 1, 0);
INSERT INTO `pictures` VALUES(235, 'event-logo', 269, 'french_navy_ship.jpg', '0', 1332302182, 1, 0);
INSERT INTO `pictures` VALUES(236, 'business-cover', 83, 'sunix_gas_.jpg', '0', 1332339096, 1, 0);
INSERT INTO `pictures` VALUES(237, 'event-logo', 279, 'chinois.jpg', '0', 1332340762, 1, 0);
INSERT INTO `pictures` VALUES(238, 'business-gallery', 18, 'Chinois_menu_1.jpg', '0', 1332342920, 1, 0);
INSERT INTO `pictures` VALUES(239, 'business-gallery', 18, 'Chinois_menu_2.jpg', '0', 1332342920, 1, 0);
INSERT INTO `pictures` VALUES(240, 'business-gallery', 18, 'Chinois_menu_3.jpg', '0', 1332342921, 1, 0);
INSERT INTO `pictures` VALUES(241, 'business-gallery', 18, 'Chinois_menu_4.jpg', '0', 1332342921, 1, 0);
INSERT INTO `pictures` VALUES(242, 'event-logo', 279, 'chinois1.jpg', '0', 1332342972, 1, 0);
INSERT INTO `pictures` VALUES(243, 'event-logo', 279, 'chinois2.jpg', '0', 1332343119, 1, 0);
INSERT INTO `pictures` VALUES(244, 'business-gallery', 26, 'gino_menu_1.jpg', '0', 1332344111, 1, 0);
INSERT INTO `pictures` VALUES(245, 'business-gallery', 26, 'gino_menu_2.jpg', '0', 1332344111, 1, 0);
INSERT INTO `pictures` VALUES(246, 'business-gallery', 26, 'gino_menu_3.jpg', '0', 1332344111, 1, 0);
INSERT INTO `pictures` VALUES(247, 'business-gallery', 26, 'gino_menu_4.jpg', '0', 1332344111, 1, 0);
INSERT INTO `pictures` VALUES(248, 'business-gallery', 26, 'gino_menu_5.jpg', '0', 1332344111, 1, 0);
INSERT INTO `pictures` VALUES(249, 'business-gallery', 27, 'MENU_PIAZZETTA_1.jpg', '0', 1332344597, 1, 0);
INSERT INTO `pictures` VALUES(250, 'business-gallery', 27, 'MENU_PIAZZETTA_2.jpg', '0', 1332344597, 1, 0);
INSERT INTO `pictures` VALUES(251, 'event-logo', 131, 'walkabout_foundation1.jpg', '0', 1332361569, 1, 0);
INSERT INTO `pictures` VALUES(252, 'business-logo', 290, 'walkabout_foundation.jpg', '0', 1332361983, 1, 0);
INSERT INTO `pictures` VALUES(253, 'business-cover', 290, 'walkabout_foundation.jpg', '0', 1332362035, 1, 0);
INSERT INTO `pictures` VALUES(254, 'event-logo', 297, 'La_piazetta_altos_de_chavon1.jpg', '0', 1332364311, 1, 0);
INSERT INTO `pictures` VALUES(255, 'event-logo', 299, 'petanque-tournament-july-14-2007-lg.jpg', '0', 1332364849, 1, 0);
INSERT INTO `pictures` VALUES(256, 'business-cover', 302, 'air_caraibes.jpg', '0', 1332367597, 1, 0);
INSERT INTO `pictures` VALUES(257, 'business-logo', 302, 'air-caraibes.jpg', '0', 1332367716, 1, 0);
INSERT INTO `pictures` VALUES(258, 'business-cover', 307, 'batey.jpg', '0', 1332371837, 1, 0);
INSERT INTO `pictures` VALUES(259, 'business-logo', 307, 'ferries-del_caribe.jpg', '0', 1332371883, 1, 0);
INSERT INTO `pictures` VALUES(260, 'business-logo', 147, 'praia.jpg', '0', 1332374041, 1, 0);
INSERT INTO `pictures` VALUES(261, 'business-cover', 147, 'praia.jpg', '0', 1332374155, 1, 0);
INSERT INTO `pictures` VALUES(262, 'event-logo', 250, 'links_casa_de_campo.jpg', '0', 1332378433, 1, 0);
INSERT INTO `pictures` VALUES(263, 'business-logo', 315, 'fedogolf.jpg', '0', 1332379216, 1, 0);
INSERT INTO `pictures` VALUES(264, 'business-cover', 315, 'casa-de-campo-shoot-out-golf-tournament-casa-de-campo-living.jpg', '0', 1332379316, 1, 0);
INSERT INTO `pictures` VALUES(265, 'business-logo', 317, 'fedogolf.jpg', '0', 1332380508, 1, 0);
INSERT INTO `pictures` VALUES(266, 'business-cover', 317, 'casa-de-campo-shoot-out-golf-tournament-casa-de-campo-living.jpg', '0', 1332380515, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `node_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  UNIQUE KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` VALUES(106, 'es');
INSERT INTO `slides` VALUES(124, 'es');
INSERT INTO `slides` VALUES(130, 'es');
INSERT INTO `slides` VALUES(140, 'es');
INSERT INTO `slides` VALUES(260, 'en');
INSERT INTO `slides` VALUES(263, 'en');
INSERT INTO `slides` VALUES(284, 'en');
INSERT INTO `slides` VALUES(289, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `original_id` int(11) unsigned NOT NULL,
  `translation_id` int(11) NOT NULL,
  `translation_language` varchar(12) NOT NULL,
  PRIMARY KEY  (`original_id`,`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` VALUES(1, 2, 'en');
INSERT INTO `translations` VALUES(5, 248, 'en');
INSERT INTO `translations` VALUES(6, 174, 'en');
INSERT INTO `translations` VALUES(7, 173, 'en');
INSERT INTO `translations` VALUES(10, 247, 'en');
INSERT INTO `translations` VALUES(11, 246, 'en');
INSERT INTO `translations` VALUES(13, 172, 'en');
INSERT INTO `translations` VALUES(14, 171, 'en');
INSERT INTO `translations` VALUES(15, 245, 'en');
INSERT INTO `translations` VALUES(18, 244, 'en');
INSERT INTO `translations` VALUES(20, 243, 'en');
INSERT INTO `translations` VALUES(22, 242, 'en');
INSERT INTO `translations` VALUES(23, 241, 'en');
INSERT INTO `translations` VALUES(24, 240, 'en');
INSERT INTO `translations` VALUES(25, 239, 'en');
INSERT INTO `translations` VALUES(26, 238, 'en');
INSERT INTO `translations` VALUES(27, 237, 'en');
INSERT INTO `translations` VALUES(28, 236, 'en');
INSERT INTO `translations` VALUES(29, 235, 'en');
INSERT INTO `translations` VALUES(30, 234, 'en');
INSERT INTO `translations` VALUES(31, 233, 'en');
INSERT INTO `translations` VALUES(33, 232, 'en');
INSERT INTO `translations` VALUES(34, 231, 'en');
INSERT INTO `translations` VALUES(35, 230, 'en');
INSERT INTO `translations` VALUES(36, 228, 'en');
INSERT INTO `translations` VALUES(39, 227, 'en');
INSERT INTO `translations` VALUES(40, 226, 'en');
INSERT INTO `translations` VALUES(41, 225, 'en');
INSERT INTO `translations` VALUES(42, 224, 'en');
INSERT INTO `translations` VALUES(43, 223, 'en');
INSERT INTO `translations` VALUES(44, 222, 'en');
INSERT INTO `translations` VALUES(45, 221, 'en');
INSERT INTO `translations` VALUES(47, 220, 'en');
INSERT INTO `translations` VALUES(48, 219, 'en');
INSERT INTO `translations` VALUES(50, 218, 'en');
INSERT INTO `translations` VALUES(51, 217, 'en');
INSERT INTO `translations` VALUES(52, 216, 'en');
INSERT INTO `translations` VALUES(53, 215, 'en');
INSERT INTO `translations` VALUES(54, 214, 'en');
INSERT INTO `translations` VALUES(56, 213, 'en');
INSERT INTO `translations` VALUES(57, 212, 'en');
INSERT INTO `translations` VALUES(58, 211, 'en');
INSERT INTO `translations` VALUES(59, 210, 'en');
INSERT INTO `translations` VALUES(60, 209, 'en');
INSERT INTO `translations` VALUES(61, 208, 'en');
INSERT INTO `translations` VALUES(62, 206, 'en');
INSERT INTO `translations` VALUES(63, 205, 'en');
INSERT INTO `translations` VALUES(64, 204, 'en');
INSERT INTO `translations` VALUES(65, 188, 'en');
INSERT INTO `translations` VALUES(65, 189, 'en');
INSERT INTO `translations` VALUES(66, 190, 'en');
INSERT INTO `translations` VALUES(67, 191, 'en');
INSERT INTO `translations` VALUES(69, 192, 'en');
INSERT INTO `translations` VALUES(70, 193, 'en');
INSERT INTO `translations` VALUES(71, 194, 'en');
INSERT INTO `translations` VALUES(72, 195, 'en');
INSERT INTO `translations` VALUES(73, 196, 'en');
INSERT INTO `translations` VALUES(74, 203, 'en');
INSERT INTO `translations` VALUES(75, 202, 'en');
INSERT INTO `translations` VALUES(76, 201, 'en');
INSERT INTO `translations` VALUES(77, 200, 'en');
INSERT INTO `translations` VALUES(81, 199, 'en');
INSERT INTO `translations` VALUES(82, 198, 'en');
INSERT INTO `translations` VALUES(83, 197, 'en');
INSERT INTO `translations` VALUES(84, 229, 'en');
INSERT INTO `translations` VALUES(85, 187, 'en');
INSERT INTO `translations` VALUES(87, 185, 'en');
INSERT INTO `translations` VALUES(87, 186, 'en');
INSERT INTO `translations` VALUES(90, 184, 'en');
INSERT INTO `translations` VALUES(91, 183, 'en');
INSERT INTO `translations` VALUES(92, 182, 'en');
INSERT INTO `translations` VALUES(93, 181, 'en');
INSERT INTO `translations` VALUES(94, 180, 'en');
INSERT INTO `translations` VALUES(95, 179, 'en');
INSERT INTO `translations` VALUES(96, 170, 'en');
INSERT INTO `translations` VALUES(97, 273, 'en');
INSERT INTO `translations` VALUES(99, 261, 'en');
INSERT INTO `translations` VALUES(100, 178, 'en');
INSERT INTO `translations` VALUES(101, 259, 'en');
INSERT INTO `translations` VALUES(102, 177, 'en');
INSERT INTO `translations` VALUES(106, 263, 'en');
INSERT INTO `translations` VALUES(107, 264, 'en');
INSERT INTO `translations` VALUES(108, 176, 'en');
INSERT INTO `translations` VALUES(109, 265, 'en');
INSERT INTO `translations` VALUES(111, 266, 'en');
INSERT INTO `translations` VALUES(112, 267, 'en');
INSERT INTO `translations` VALUES(114, 268, 'en');
INSERT INTO `translations` VALUES(115, 271, 'en');
INSERT INTO `translations` VALUES(116, 272, 'en');
INSERT INTO `translations` VALUES(117, 274, 'en');
INSERT INTO `translations` VALUES(118, 275, 'en');
INSERT INTO `translations` VALUES(119, 276, 'en');
INSERT INTO `translations` VALUES(120, 278, 'en');
INSERT INTO `translations` VALUES(121, 281, 'en');
INSERT INTO `translations` VALUES(121, 282, 'en');
INSERT INTO `translations` VALUES(122, 283, 'en');
INSERT INTO `translations` VALUES(124, 284, 'en');
INSERT INTO `translations` VALUES(125, 285, 'en');
INSERT INTO `translations` VALUES(126, 286, 'en');
INSERT INTO `translations` VALUES(127, 287, 'en');
INSERT INTO `translations` VALUES(129, 288, 'en');
INSERT INTO `translations` VALUES(130, 289, 'en');
INSERT INTO `translations` VALUES(131, 292, 'en');
INSERT INTO `translations` VALUES(133, 294, 'en');
INSERT INTO `translations` VALUES(134, 295, 'en');
INSERT INTO `translations` VALUES(137, 296, 'en');
INSERT INTO `translations` VALUES(138, 301, 'en');
INSERT INTO `translations` VALUES(139, 304, 'en');
INSERT INTO `translations` VALUES(140, 260, 'en');
INSERT INTO `translations` VALUES(142, 262, 'en');
INSERT INTO `translations` VALUES(143, 277, 'en');
INSERT INTO `translations` VALUES(144, 169, 'en');
INSERT INTO `translations` VALUES(147, 175, 'en');
INSERT INTO `translations` VALUES(148, 309, 'en');
INSERT INTO `translations` VALUES(149, 306, 'en');
INSERT INTO `translations` VALUES(150, 168, 'en');
INSERT INTO `translations` VALUES(151, 310, 'en');
INSERT INTO `translations` VALUES(153, 311, 'en');
INSERT INTO `translations` VALUES(154, 312, 'en');
INSERT INTO `translations` VALUES(155, 305, 'en');
INSERT INTO `translations` VALUES(156, 313, 'en');
INSERT INTO `translations` VALUES(157, 314, 'en');
INSERT INTO `translations` VALUES(158, 322, 'en');
INSERT INTO `translations` VALUES(159, 319, 'en');
INSERT INTO `translations` VALUES(167, 250, 'en');
INSERT INTO `translations` VALUES(249, 251, 'en');
INSERT INTO `translations` VALUES(252, 293, 'en');
INSERT INTO `translations` VALUES(253, 254, 'en');
INSERT INTO `translations` VALUES(255, 256, 'en');
INSERT INTO `translations` VALUES(257, 258, 'es');
INSERT INTO `translations` VALUES(269, 270, 'en');
INSERT INTO `translations` VALUES(279, 280, 'en');
INSERT INTO `translations` VALUES(290, 291, 'en');
INSERT INTO `translations` VALUES(297, 298, 'en');
INSERT INTO `translations` VALUES(299, 300, 'en');
INSERT INTO `translations` VALUES(302, 303, 'en');
INSERT INTO `translations` VALUES(307, 308, 'en');
INSERT INTO `translations` VALUES(315, 316, 'en');
INSERT INTO `translations` VALUES(317, 318, 'en');
INSERT INTO `translations` VALUES(320, 321, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `passw` varchar(45) default NULL,
  `email` varchar(75) default NULL,
  `display_name` varchar(100) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'wilbur', '2a9aa6d77bbd5f3b02b6b196a17782d874db591f', 'wsuero@silgon.net', 'Wilbur Suero', 1);
