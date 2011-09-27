-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 27 2011 г., 15:05
-- Версия сервера: 5.1.54
-- Версия PHP: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `hudo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `c_id` int(4) NOT NULL AUTO_INCREMENT,
  `type_id` int(3) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`c_id`, `type_id`, `category_name`) VALUES
(1, 1, 'большая'),
(2, 1, 'пузатая'),
(3, 2, 'большая'),
(4, 2, 'пузатая'),
(5, 3, 'большая'),
(6, 3, 'пузатая'),
(7, 4, 'большая'),
(8, 4, '23 см'),
(9, 4, '19 см'),
(10, 4, '17 см'),
(11, 4, '14 см'),
(12, 5, 'картинка'),
(13, 5, 'оформление'),
(14, 5, 'оформление+лицо'),
(15, 5, 'лицо'),
(16, 5, 'сарафан'),
(17, 5, 'сарафан+лицо'),
(18, 6, '18 см'),
(19, 6, '14 см'),
(20, 6, '14 см пузатая'),
(21, 6, '9 см'),
(22, 7, '14 см'),
(23, 7, '9 см'),
(24, 8, 'большая'),
(25, 8, 'малая'),
(26, 9, '0.5'),
(27, 9, '0.05'),
(28, 10, 'ангел '),
(29, 11, 'сарафан'),
(30, 11, 'Жостово'),
(31, 11, 'Чёрная рябина'),
(32, 11, 'Хохлома'),
(33, 11, 'Санта простой'),
(34, 11, 'Санта сложный'),
(35, 11, 'Цветы'),
(36, 12, 'Хохлома'),
(37, 12, 'Сюжет зима'),
(38, 12, 'Ангел'),
(39, 12, 'Ангел с лицом'),
(40, 12, 'Гжель'),
(41, 12, 'Жостово'),
(42, 12, 'Санта в ассортименте'),
(43, 12, 'Снегурочка'),
(44, 12, 'Бабочки'),
(45, 12, 'кот '),
(46, 12, 'Спас голубой'),
(47, 12, 'Спас золотой'),
(48, 12, 'Федоскино'),
(49, 12, 'Чёрная рябина'),
(50, 12, 'Малевич'),
(51, 12, 'Русский север'),
(52, 12, 'Фаберже'),
(53, 12, 'Девушка в медальоне '),
(54, 12, 'Девушка в медальоне -лицо'),
(55, 12, 'Девушка в медальоне -оформлени'),
(56, 13, 'малый'),
(57, 13, 'большой'),
(58, 14, 'малый'),
(59, 14, 'большой'),
(60, 15, 'матрешка'),
(61, 15, 'круглый'),
(62, 16, 'широкий'),
(63, 16, 'средний шир.'),
(64, 16, 'средний узкий'),
(65, 16, 'узкий');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `i_id` int(5) NOT NULL AUTO_INCREMENT,
  `type_id` int(3) NOT NULL,
  `category_id` int(4) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`i_id`, `type_id`, `category_id`, `item_name`) VALUES
(1, 1, 1, 'картинка'),
(2, 1, 1, 'оформление'),
(3, 1, 1, 'лицо'),
(4, 1, 2, 'картинка'),
(5, 1, 2, 'оформление'),
(6, 1, 2, 'лицо'),
(7, 2, 3, 'картинка'),
(8, 2, 3, 'оформление'),
(9, 2, 3, 'лицо'),
(10, 2, 4, 'картинка'),
(11, 2, 4, 'оформление'),
(12, 2, 4, 'лицо'),
(13, 3, 5, 'картинка'),
(14, 3, 5, 'оформление'),
(15, 3, 5, 'лицо'),
(16, 3, 6, 'картинка'),
(17, 3, 6, 'оформление'),
(18, 3, 6, 'лицо'),
(19, 4, 7, 'картинка'),
(20, 4, 7, 'оформление'),
(21, 4, 7, 'лицо'),
(22, 4, 8, 'картинка'),
(23, 4, 8, 'оформление'),
(24, 4, 9, 'картинка'),
(25, 4, 9, 'оформление'),
(26, 4, 10, 'картинка'),
(27, 4, 10, 'оформление'),
(28, 4, 10, 'Жостово'),
(29, 4, 11, 'картинка'),
(30, 4, 11, 'оформление'),
(31, 4, 11, 'Жостово'),
(32, 5, 12, 'картинка'),
(33, 5, 13, 'оформление'),
(34, 5, 14, 'оформление+лицо'),
(35, 5, 15, 'лицо'),
(36, 5, 16, 'сарафан'),
(37, 5, 17, 'сарафан+лицо'),
(38, 6, 18, 'картинка Лена'),
(39, 6, 18, 'картинка Спас'),
(40, 6, 18, 'картинка Юрьева, Галузина'),
(41, 6, 18, 'картинка тройка'),
(42, 6, 18, 'оформление'),
(43, 6, 18, 'оформление+лицо'),
(44, 6, 18, 'лицо'),
(45, 6, 18, 'сарафан'),
(46, 6, 18, 'сарафан+лицо'),
(47, 6, 18, 'Хохлома целиковая'),
(48, 6, 18, 'Хохлома платок часть'),
(49, 6, 18, 'Хохлома платок доделка'),
(50, 6, 18, 'Малевич'),
(51, 6, 18, 'Сердце простое'),
(52, 6, 18, 'Сердце Вика'),
(53, 6, 18, 'Хохлома модерн'),
(54, 6, 18, 'Карнавал'),
(55, 6, 18, 'Шанель'),
(56, 6, 18, 'Климт'),
(57, 6, 18, 'Моне'),
(58, 6, 18, 'Жостово'),
(59, 6, 18, 'Чёрная рябина'),
(60, 6, 18, 'кот'),
(61, 6, 18, 'балет'),
(62, 6, 19, 'картинка'),
(63, 6, 19, 'оформление'),
(64, 6, 19, 'оформление+лицо'),
(65, 6, 19, 'лицо'),
(66, 6, 19, 'сарафан'),
(67, 6, 19, 'сарафан+лицо'),
(68, 6, 19, 'Хохлома'),
(69, 6, 19, 'Малевич'),
(70, 6, 19, 'Сердце простое'),
(71, 6, 19, 'Сердце сложное'),
(72, 6, 19, 'Хохлома модерн'),
(73, 6, 19, 'Карнавал'),
(74, 6, 19, 'Шанель'),
(75, 6, 19, 'Климт'),
(76, 6, 19, 'Моне'),
(77, 6, 19, 'Жостово'),
(78, 6, 19, 'Жостово сложная'),
(79, 6, 19, 'Чёрная рябина'),
(80, 6, 19, 'балет'),
(81, 6, 19, 'кот'),
(82, 6, 19, 'Круговая сказка'),
(83, 6, 20, 'картинка'),
(84, 6, 20, 'оформление'),
(85, 6, 20, 'оформление+лицо'),
(86, 6, 20, 'лицо'),
(87, 6, 20, 'сарафан'),
(88, 6, 20, 'сарафан+лицо'),
(89, 6, 20, 'Хохлома'),
(90, 6, 20, 'Малевич'),
(91, 6, 20, 'Сердце простое'),
(92, 6, 20, 'Сердце сложное'),
(93, 6, 20, 'Хохлома модерн'),
(94, 6, 20, 'Карнавал'),
(95, 6, 20, 'Шанель'),
(96, 6, 20, 'Жостово'),
(97, 6, 21, 'картинка'),
(98, 6, 21, 'оформление'),
(99, 6, 21, 'оформление+лицо'),
(100, 6, 21, 'лицо'),
(101, 6, 21, 'сарафан'),
(102, 6, 21, 'сарафан+лицо'),
(103, 6, 21, 'Хохлома'),
(104, 6, 21, 'Малевич'),
(105, 6, 21, 'Сердце простое'),
(106, 6, 21, 'Сердце сложное'),
(107, 6, 21, 'Хохлома модерн'),
(108, 6, 21, 'Карнавал'),
(109, 6, 21, 'Шанель'),
(110, 6, 21, 'Жостово'),
(111, 6, 21, 'Жостово сложная'),
(112, 6, 21, 'кот'),
(113, 7, 22, 'картинка'),
(114, 7, 22, 'оформление'),
(115, 7, 22, 'оформление+лицо'),
(116, 7, 22, 'лицо'),
(117, 7, 22, 'сарафан'),
(118, 7, 22, 'сарафан+лицо'),
(119, 7, 22, 'Жостово '),
(120, 7, 22, 'Жостово сложная'),
(121, 7, 22, 'Хохлома'),
(122, 7, 22, 'Малевич'),
(123, 7, 22, 'Чёрная рябина'),
(124, 7, 22, 'Сердце простое'),
(125, 7, 23, 'картинка'),
(126, 7, 23, 'оформление'),
(127, 7, 23, 'оформление+лицо'),
(128, 7, 23, 'лицо'),
(129, 7, 23, 'сарафан'),
(130, 7, 23, 'сарафан+лицо'),
(131, 7, 23, 'Жостово '),
(132, 7, 23, 'Жостово сложная'),
(133, 7, 23, 'Хохлома'),
(134, 7, 23, 'Малевич'),
(135, 7, 23, 'Чёрная рябина'),
(136, 7, 23, 'Сердце простое'),
(137, 8, 24, 'картинка'),
(138, 8, 24, 'картинка+лицо'),
(139, 8, 24, 'оформление'),
(140, 8, 24, 'оформление+лицо'),
(141, 8, 24, 'сарафан+лицо'),
(142, 8, 24, 'лицо'),
(143, 8, 25, 'картинка'),
(144, 8, 25, 'оформление'),
(145, 8, 25, 'оформление+лицо'),
(146, 8, 25, 'сарафан+лицо'),
(147, 8, 25, 'лицо'),
(148, 8, 25, 'Жостово'),
(149, 8, 25, 'Чёрная рябина'),
(150, 8, 25, 'Малевич'),
(151, 8, 25, 'Хохлома'),
(152, 8, 25, 'Жар-птица'),
(153, 8, 25, 'Санта простой'),
(154, 8, 25, 'Санта сложный'),
(155, 8, 25, 'балет'),
(156, 9, 26, 'картинка'),
(157, 9, 26, 'оформление'),
(158, 9, 26, 'оформление+лицо'),
(159, 9, 26, 'сарафан+лицо'),
(160, 9, 26, 'лицо'),
(161, 9, 27, 'сарафан'),
(162, 9, 27, 'сарафан+лицо'),
(163, 9, 27, 'лицо'),
(164, 9, 27, 'Жостово'),
(165, 9, 27, 'Жостово сложный'),
(166, 9, 27, 'Чёрная рябина'),
(167, 9, 27, 'Малевич'),
(168, 9, 27, 'Хохлома'),
(169, 9, 27, 'кот'),
(170, 9, 27, 'Жар-птица'),
(171, 10, 28, 'ангел '),
(172, 11, 29, 'сарафан'),
(173, 11, 30, 'Жостово'),
(174, 11, 31, 'Чёрная рябина'),
(175, 11, 32, 'Хохлома'),
(176, 11, 33, 'Санта простой'),
(177, 11, 34, 'Санта сложный'),
(178, 11, 35, 'Цветы'),
(179, 12, 36, 'Хохлома'),
(180, 12, 37, 'Сюжет зима'),
(181, 12, 38, 'Ангел'),
(182, 12, 39, 'Ангел с лицом'),
(183, 12, 40, 'Гжель'),
(184, 12, 41, 'Жостово'),
(185, 12, 42, 'Санта в ассортименте'),
(186, 12, 43, 'Снегурочка'),
(187, 12, 44, 'Бабочки'),
(188, 12, 45, 'кот '),
(189, 12, 46, 'Спас голубой'),
(190, 12, 47, 'Спас золотой'),
(191, 12, 48, 'Федоскино'),
(192, 12, 49, 'Чёрная рябина'),
(193, 12, 50, 'Малевич'),
(194, 12, 51, 'Русский север'),
(195, 12, 52, 'Фаберже'),
(196, 12, 53, 'Девушка в медальоне '),
(197, 12, 54, 'Девушка в медальоне -лицо'),
(198, 12, 55, 'Девушка в медальоне -оформлени'),
(199, 13, 56, 'Хохлома'),
(200, 13, 56, 'Сюжет зима'),
(201, 13, 56, 'Гжель'),
(202, 13, 56, 'Жостово'),
(203, 13, 56, 'Санта в ассортименте'),
(204, 13, 56, 'Спас'),
(205, 13, 56, 'Федоскино'),
(206, 13, 56, 'Чёрная рябина'),
(207, 13, 56, 'Малевич'),
(208, 13, 56, 'Русский север'),
(209, 13, 56, 'Фаберже'),
(210, 13, 56, 'Бабочки'),
(211, 13, 57, 'Хохлома'),
(212, 13, 57, 'Сюжет зима'),
(213, 13, 57, 'Гжель'),
(214, 13, 57, 'Жостово'),
(215, 13, 57, 'Санта в ассортименте'),
(216, 13, 57, 'Спас'),
(217, 13, 57, 'Федоскино'),
(218, 13, 57, 'Чёрная рябина'),
(219, 13, 57, 'Малевич'),
(220, 13, 57, 'Русский север'),
(221, 13, 57, 'Фаберже'),
(222, 13, 57, 'Бабочки'),
(223, 14, 58, 'Хохлома'),
(224, 14, 58, 'Сюжет зима'),
(225, 14, 58, 'Гжель'),
(226, 14, 58, 'Жостово'),
(227, 14, 58, 'Чёрная рябина'),
(228, 14, 58, 'Фаберже'),
(229, 14, 58, 'Спас'),
(230, 14, 58, 'Федоскино'),
(231, 14, 59, 'Хохлома'),
(232, 14, 59, 'Сюжет зима'),
(233, 14, 59, 'Гжель'),
(234, 14, 59, 'Жостово'),
(235, 14, 59, 'Чёрная рябина'),
(236, 14, 59, 'Фаберже'),
(237, 14, 59, 'Спас'),
(238, 14, 59, 'Федоскино'),
(239, 15, 60, 'сарафан'),
(240, 15, 60, 'сарафан+лицо'),
(241, 15, 60, 'лицо'),
(242, 15, 60, 'цветы'),
(243, 15, 60, 'хохлома '),
(244, 15, 60, 'Спас золотой'),
(245, 15, 60, 'Малевич'),
(246, 15, 60, 'Климт'),
(247, 15, 60, 'Полоски'),
(248, 15, 60, 'Спас золотой'),
(249, 15, 60, 'Питер Вадима'),
(250, 15, 60, 'Модерн'),
(251, 15, 60, 'Питер Анны'),
(252, 15, 60, 'Жостово'),
(253, 15, 61, 'Хохлома'),
(254, 15, 61, 'Жостово'),
(255, 15, 61, 'Питер Анны'),
(256, 16, 62, 'Хохлома'),
(257, 16, 62, 'Жостово'),
(258, 16, 62, 'Чёрная рябина'),
(259, 16, 62, 'Кракилюр'),
(260, 16, 62, 'Полоски'),
(261, 16, 62, 'Климт'),
(262, 16, 62, 'Малевич'),
(263, 16, 62, 'Огурцы'),
(264, 16, 62, 'Сердце'),
(265, 16, 62, 'Зебра'),
(266, 16, 62, 'узор, поталь'),
(267, 16, 63, 'Хохлома'),
(268, 16, 63, 'Жостово'),
(269, 16, 63, 'Чёрная рябина'),
(270, 16, 63, 'Кракилюр'),
(271, 16, 63, 'Полоски'),
(272, 16, 63, 'Климт'),
(273, 16, 63, 'Малевич'),
(274, 16, 63, 'Огурцы'),
(275, 16, 63, 'Сердце'),
(276, 16, 63, 'Зебра'),
(277, 16, 63, 'узор, поталь'),
(278, 16, 64, 'Хохлома'),
(279, 16, 64, 'Жостово'),
(280, 16, 64, 'Чёрная рябина'),
(281, 16, 64, 'Кракилюр'),
(282, 16, 64, 'Полоски'),
(283, 16, 64, 'Климт'),
(284, 16, 64, 'Малевич'),
(285, 16, 64, 'Огурцы'),
(286, 16, 64, 'Сердце'),
(287, 16, 64, 'Зебра'),
(288, 16, 64, 'узор, поталь'),
(289, 16, 65, 'Хохлома'),
(290, 16, 65, 'Жостово'),
(291, 16, 65, 'Чёрная рябина'),
(292, 16, 65, 'Кракилюр'),
(293, 16, 65, 'Полоски'),
(294, 16, 65, 'Климт'),
(295, 16, 65, 'Малевич'),
(296, 16, 65, 'Огурцы'),
(297, 16, 65, 'Сердце'),
(298, 16, 65, 'Зебра'),
(299, 16, 65, 'узор, поталь');

-- --------------------------------------------------------

--
-- Структура таблицы `masters`
--

CREATE TABLE IF NOT EXISTS `masters` (
  `m_id` int(3) NOT NULL AUTO_INCREMENT,
  `master_fio` varchar(255) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Дамп данных таблицы `masters`
--

INSERT INTO `masters` (`m_id`, `master_fio`, `phone`) VALUES
(1, 'Чистякова Татьяна Александровна', '952-206-05-93'),
(2, 'Зайцева Ирина', '911-027-90-32'),
(3, 'Галузина Наталья', '952-364-57-97'),
(4, 'Бушейкина Елена', '981-826-32-56'),
(5, 'Гарина Ирина', '905-266-35-07'),
(6, 'Юрьева Ольга', ''),
(7, 'Морозова Татьяна', '921-188-03-45'),
(8, 'Буршина Светлана', '558-56-10'),
(9, 'Ольга Жостово', '921-970-84-55'),
(10, 'Ивашина Жанна', '965-020-02-67'),
(11, 'Еловкова Марина', '911-73-00-969'),
(12, 'Лида', '911-250-09-71'),
(13, 'Соколова Наталья Никитична', '952-238-66-21'),
(14, 'Винтер Катерина', '921-416-01-89'),
(15, 'Татьяна Петровна', '905-252-72-44'),
(16, 'Юдина Лена', '911-946-07-24'),
(17, 'Бабушкина', '911-752-63-74'),
(18, 'Овсяникова', ''),
(19, 'Езовитова Лиза', '951-640-82-38'),
(20, 'Анна Викторовна ', '951-640-99-20'),
(21, 'Луга Татьяна', ''),
(22, 'Виноградова Ольга', '921-305-18-77'),
(23, 'Ломоносовская Наталья', '960-236-82-18'),
(24, 'Дубровина Татьяна', ''),
(25, 'Хирург Ирина', '905-270-48-05'),
(26, 'Хрусталева Нина Васильевна', ''),
(27, 'Грудова Марина', '911-732-28-37'),
(28, 'Алексеева Вера', ''),
(29, 'Иванова Света', ''),
(30, 'Слотина Ольга', ''),
(31, 'Дина Абрамовна', '697-49-78'),
(32, 'Марианна', '911-764-14-42'),
(33, 'Ушакова Валентина', ''),
(34, 'Смирнова', ''),
(35, 'Минина Ольга', ''),
(36, 'Пупкевич', ''),
(37, 'Вадим карнавал', '960-234-88-08'),
(38, 'Вадик', '952-224-01-03'),
(39, 'Гуля', '965-047-41-36'),
(40, 'Эдита', '905-259-52-54'),
(41, 'Домосевич Наталья ', '921-38-38-885'),
(42, 'Ольга каскадер', '981-701-82-98'),
(43, 'Катерина Горелово', '921-928-29-30'),
(44, 'Любивая Надежда', '952-355-66-16'),
(45, 'Подлесная Зоя', '921-570-77-49'),
(46, 'Евланова Елена', '904-511-78-66'),
(47, 'Станкевич Ольга', '906-267-08-35'),
(48, 'Куратова Людмила', '911-239-53-51'),
(49, 'Наталья Петровна коленки', '921-09-44-693'),
(50, 'Альбина Николаевна', '442-55-27'),
(51, 'Ровенко Марина (из Лавры)', '911-939-00-20'),
(52, 'Мильберг Вероника', '921-387-83-79'),
(53, 'Крисанова Ольга с Ленэкспо', '911-277-87-49'),
(54, 'Приколотина Галина Николаевна', '911-264-86-92'),
(55, 'Сергей Юрьевич (яйца сюжет)', '905-217-37-89'),
(56, 'Лариса Валентиновна болтушка', '952-376-04-17'),
(57, 'Савина Наталья Юрьевна', '911-262-11-03'),
(58, 'Косикова Ксения', '911-932-55-00'),
(59, 'Горбачёв Андрей Николаевич', '981-795-33-74'),
(60, 'Поликова Елена Евгеньевна', '921-794-25-53'),
(61, 'Мурашко Анна', '911-294-14-29'),
(62, 'Обидова Ирина', '904-640-33-52'),
(63, 'Пузырева Галина часы', '981-737-91-97'),
(64, 'Виктор Жанны', '906-275-71-94'),
(65, 'Ковалева Ольга', '753-45-98'),
(66, 'Наталья коты', '921-426-65-75'),
(67, 'Морозова Лиза', '950-026-65-06'),
(68, 'Катя с тоненьким голосом', '964-324-89-65'),
(69, 'Головина Вика', '952-237-64-64'),
(70, 'Филипова Ольга', '911-742-29-74'),
(71, 'Андреева Анна', '921-424-57-83'),
(72, 'Эстер', '911-180-92-07'),
(73, 'Тетерина Антонина  Дмитриевна', '709-66-84'),
(74, 'Меккер Юлия', '904-60-90-724'),
(75, 'Сероклин Лена', ''),
(76, 'Кривенко Алиса', '921-770-55-60'),
(77, 'Шаклеина Оксана', '911-827-95-44'),
(78, 'Безрукова  Нина Леонидовна', '952-38-94-780'),
(79, 'Дудяева Ася', '906-22-66-517'),
(80, 'Попова Наталья', '325-47-34'),
(81, 'Фаденкова Мария', '952-342-75-16'),
(82, 'Васюкова Светлана Викторовна', '904-637-52-61'),
(83, 'Марковский Андрей', '911-738-68-13'),
(84, 'Заморская Юлия', '921-591-34-05'),
(85, 'Ремезова Женя', '952-360-65-28'),
(86, 'Олег, лак', ''),
(87, 'Саша, лак', ''),
(88, 'Игорь, лак', ''),
(89, 'Володя, лак', ''),
(90, 'Пропастенко, лак', ''),
(91, 'Ефименко Юлия', '583-10-80'),
(92, 'Фроолова Мария Игоревна', '950-028-46-52'),
(93, 'Янковская Любовь Алексеевна', '909-577-19-97'),
(94, 'Алексеева Анастасия', '952-353-09-31'),
(95, 'Ермакова Наталья Анатольевна', '921-652-27-77'),
(96, 'Муравьева Алена Геннадьевна', '951-671-86-91'),
(97, 'Васюкова Юлия', '904-637-52-61'),
(98, 'Фёдорова Елена Михайловна', '794-79-07'),
(99, 'Гилемханова Венера Дамировна', '921-648-42-35'),
(100, 'Степанова Ольга Алексеевна', ''),
(101, 'Андреева Юлия Александровна', '904-550-03-89'),
(102, 'Алексеева Астра Владимировна', '921-186-09-44'),
(103, 'Головина Наталия Владимировна', '950-024-47-11'),
(104, 'Черлова Екатерина', '921-39-50-136'),
(105, 'Гамзова Ирина Владимировна', '921-387-09-74'),
(106, 'Доброедова Ольга Петровна', '921-970-84-55'),
(107, 'Алексеева Астра Владимировна', '953-366-30-29');

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`material_id`, `material_name`) VALUES
(1, 'М-30 большая'),
(2, 'М-30 пузатая'),
(3, 'М-20 большая'),
(4, 'М-20 пузатая'),
(5, 'М-15 большая'),
(6, 'М-15 пузатая'),
(7, 'М-10 большая'),
(8, 'М-10 пузатая'),
(9, 'М-5 18 см'),
(10, 'М-5 14 см'),
(11, 'М-5 12 см'),
(12, 'М-5 9см'),
(13, 'М-3 14 см'),
(14, ' М-3 9 см'),
(15, 'Колокольчик малый'),
(16, 'Колокольчик большой'),
(17, 'Яйцо'),
(18, 'Шар малый'),
(19, 'Шар большой'),
(20, 'Ангел'),
(21, 'Неваляшка'),
(22, 'Футляр 0,05'),
(23, 'куколка сарафан'),
(24, 'Яблоко'),
(25, 'Груша'),
(26, 'Браслет 1'),
(27, 'Браслет 2'),
(28, 'Браслет 3'),
(29, 'Браслет 4'),
(30, 'Браслет 5'),
(31, 'Браслет 6'),
(32, 'М-30 большая'),
(33, 'М-30 пузатая'),
(34, 'М-20 большая'),
(35, 'М-20 пузатая'),
(36, 'М-15 большая'),
(37, 'М-15 пузатая'),
(38, 'М-10 большая'),
(39, 'М-10 пузатая'),
(40, 'М-5 18 см'),
(41, 'М-5 14 см'),
(42, 'М-5 12 см'),
(43, 'М-5 9см'),
(44, 'М-3 14 см'),
(45, ' М-3 9 см'),
(46, 'Колокольчик малый'),
(47, 'Колокольчик большой'),
(48, 'Яйцо'),
(49, 'Шар малый'),
(50, 'Шар большой'),
(51, 'Ангел'),
(52, 'Неваляшка'),
(53, 'Футляр 0,05'),
(54, 'куколка сарафан'),
(55, 'Яблоко'),
(56, 'Груша'),
(57, 'Браслет 1'),
(58, 'Браслет 2'),
(59, 'Браслет 3'),
(60, 'Браслет 4'),
(61, 'Браслет 5'),
(62, 'Браслет 6'),
(63, 'М-30 большая'),
(64, 'М-30 пузатая'),
(65, 'М-20 большая'),
(66, 'М-20 пузатая'),
(67, 'М-15 большая'),
(68, 'М-15 пузатая'),
(69, 'М-10 большая'),
(70, 'М-10 пузатая'),
(71, 'М-5 18 см'),
(72, 'М-5 14 см'),
(73, 'М-5 12 см'),
(74, 'М-5 9см'),
(75, 'М-3 14 см'),
(76, ' М-3 9 см'),
(77, 'Колокольчик малый'),
(78, 'Колокольчик большой'),
(79, 'Яйцо'),
(80, 'Шар малый'),
(81, 'Шар большой'),
(82, 'Ангел'),
(83, 'Неваляшка'),
(84, 'Футляр 0,05'),
(85, 'куколка сарафан'),
(86, 'Яблоко'),
(87, 'Груша'),
(88, 'Браслет 1'),
(89, 'Браслет 2'),
(90, 'Браслет 3'),
(91, 'Браслет 4'),
(92, 'Браслет 5'),
(93, 'Браслет 6');

-- --------------------------------------------------------

--
-- Структура таблицы `materials_out`
--

CREATE TABLE IF NOT EXISTS `materials_out` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `master_id` int(5) NOT NULL,
  `material_id` int(5) NOT NULL,
  `amount` int(5) NOT NULL,
  `date` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `materials_out`
--

INSERT INTO `materials_out` (`id`, `master_id`, `material_id`, `amount`, `date`, `status`) VALUES
(1, 1, 2, 3, 0, 0),
(2, 2, 3, 4, 5, 0),
(3, 1, 5, 6, 1, 0),
(4, 3, 12, 2, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `payments_history`
--

CREATE TABLE IF NOT EXISTS `payments_history` (
  `h_id` int(5) NOT NULL AUTO_INCREMENT,
  `master_id` int(5) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `amount` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_author` int(11) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `payments_history`
--

INSERT INTO `payments_history` (`h_id`, `master_id`, `type_name`, `category_name`, `item_name`, `amount`, `price`, `comment_text`, `comment_author`, `date`) VALUES
(1, 28, '20', 'большая', 'картинка', 3, 6300, '2', 0, 1316695086),
(2, 28, '5', '14 см пузатая', 'Карнавал', 2, 12, '3', 0, 1316695729),
(3, 28, '5', '14 см пузатая', 'Карнавал', 2, 12, '3', 0, 1316695775),
(4, 102, '10', '17 см', 'картинка', 2, 1400, '', 0, 1316696592),
(5, 102, '10', '17 см', 'картинка', 2, 1400, 'as', 0, 1316696595),
(6, 50, '7', 'оформление', 'оформление', 2, 1560, 'as', 0, 1316696709),
(7, 94, '15', 'пузатая', 'лицо', 2, 600, 'фы', 0, 1316766370);

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `plan_id` int(10) NOT NULL,
  `item_id` int(5) NOT NULL,
  `amount_to_make` int(4) NOT NULL,
  `amount_remain` int(4) NOT NULL,
  `date` int(12) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `p_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_id` int(4) NOT NULL,
  `type_id` int(3) NOT NULL,
  `item_id` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=304 ;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`p_id`, `category_id`, `type_id`, `item_id`, `price`) VALUES
(1, 1, 1, 1, 5000),
(2, 1, 1, 2, 8800),
(3, 1, 1, 3, 900),
(4, 2, 1, 4, 3500),
(5, 2, 1, 5, 5000),
(6, 2, 1, 6, 750),
(7, 3, 2, 7, 2100),
(8, 3, 2, 8, 2800),
(9, 3, 2, 9, 500),
(10, 4, 2, 10, 1800),
(11, 4, 2, 11, 1800),
(12, 4, 2, 12, 400),
(13, 5, 3, 13, 1750),
(14, 5, 3, 14, 2500),
(15, 5, 3, 15, 350),
(16, 6, 3, 16, 1400),
(17, 6, 3, 17, 1800),
(18, 6, 3, 18, 300),
(19, 7, 4, 19, 900),
(20, 7, 4, 20, 1900),
(21, 7, 4, 21, 200),
(22, 8, 4, 22, 900),
(23, 8, 4, 23, 1500),
(24, 9, 4, 24, 700),
(25, 9, 4, 25, 900),
(26, 10, 4, 26, 700),
(27, 10, 4, 27, 750),
(28, 10, 4, 28, 650),
(29, 11, 4, 29, 450),
(30, 11, 4, 30, 0),
(31, 11, 4, 31, 450),
(32, 12, 5, 32, 450),
(33, 13, 5, 33, 780),
(34, 14, 5, 34, 900),
(35, 15, 5, 35, 120),
(36, 16, 5, 36, 1180),
(37, 17, 5, 37, 1300),
(38, 18, 6, 38, 320),
(39, 18, 6, 39, 320),
(40, 18, 6, 40, 300),
(41, 18, 6, 41, 350),
(42, 18, 6, 42, 360),
(43, 18, 6, 43, 440),
(44, 18, 6, 44, 80),
(45, 18, 6, 45, 660),
(46, 18, 6, 46, 740),
(47, 18, 6, 47, 500),
(48, 18, 6, 48, 0),
(49, 18, 6, 49, 0),
(50, 18, 6, 50, 0),
(51, 18, 6, 51, 0),
(52, 18, 6, 52, 0),
(53, 18, 6, 53, 0),
(54, 18, 6, 54, 400),
(55, 18, 6, 55, 0),
(56, 18, 6, 56, 600),
(57, 18, 6, 57, 0),
(58, 18, 6, 58, 0),
(59, 18, 6, 59, 0),
(60, 18, 6, 60, 0),
(61, 18, 6, 61, 0),
(62, 19, 6, 62, 0),
(63, 19, 6, 63, 0),
(64, 19, 6, 64, 0),
(65, 19, 6, 65, 0),
(66, 19, 6, 66, 0),
(67, 19, 6, 67, 0),
(68, 19, 6, 68, 0),
(69, 19, 6, 69, 0),
(70, 19, 6, 70, 0),
(71, 19, 6, 71, 0),
(72, 19, 6, 72, 0),
(73, 19, 6, 73, 0),
(74, 19, 6, 74, 0),
(75, 19, 6, 75, 0),
(76, 19, 6, 76, 0),
(77, 19, 6, 77, 0),
(78, 19, 6, 78, 0),
(79, 19, 6, 79, 0),
(80, 19, 6, 80, 0),
(81, 19, 6, 81, 0),
(82, 19, 6, 82, 0),
(83, 20, 6, 83, 0),
(84, 20, 6, 84, 0),
(85, 20, 6, 85, 0),
(86, 20, 6, 86, 0),
(87, 20, 6, 87, 0),
(88, 20, 6, 88, 0),
(89, 20, 6, 89, 0),
(90, 20, 6, 90, 0),
(91, 20, 6, 91, 0),
(92, 20, 6, 92, 0),
(93, 20, 6, 93, 0),
(94, 20, 6, 94, 0),
(95, 20, 6, 95, 0),
(96, 20, 6, 96, 0),
(97, 21, 6, 97, 0),
(98, 21, 6, 98, 0),
(99, 21, 6, 99, 0),
(100, 21, 6, 100, 0),
(101, 21, 6, 101, 0),
(102, 21, 6, 102, 0),
(103, 21, 6, 103, 0),
(104, 21, 6, 104, 0),
(105, 21, 6, 105, 0),
(106, 21, 6, 106, 0),
(107, 21, 6, 107, 0),
(108, 21, 6, 108, 0),
(109, 21, 6, 109, 0),
(110, 21, 6, 110, 0),
(111, 21, 6, 111, 0),
(112, 21, 6, 112, 0),
(113, 22, 7, 113, 0),
(114, 22, 7, 114, 0),
(115, 22, 7, 115, 0),
(116, 22, 7, 116, 0),
(117, 22, 7, 117, 0),
(118, 22, 7, 118, 0),
(119, 22, 7, 119, 0),
(120, 22, 7, 120, 0),
(121, 22, 7, 121, 0),
(122, 22, 7, 122, 0),
(123, 22, 7, 123, 0),
(124, 22, 7, 124, 0),
(125, 23, 7, 125, 0),
(126, 23, 7, 126, 0),
(127, 23, 7, 127, 0),
(128, 23, 7, 128, 0),
(129, 23, 7, 129, 0),
(130, 23, 7, 130, 0),
(131, 23, 7, 131, 0),
(132, 23, 7, 132, 0),
(133, 23, 7, 133, 0),
(134, 23, 7, 134, 0),
(135, 23, 7, 135, 0),
(136, 23, 7, 136, 0),
(137, 24, 8, 137, 0),
(138, 24, 8, 138, 0),
(139, 24, 8, 139, 0),
(140, 24, 8, 140, 0),
(141, 24, 8, 141, 0),
(142, 24, 8, 142, 0),
(143, 25, 8, 143, 0),
(144, 25, 8, 144, 0),
(145, 25, 8, 145, 0),
(146, 25, 8, 146, 0),
(147, 25, 8, 147, 0),
(148, 25, 8, 148, 0),
(149, 25, 8, 149, 0),
(150, 25, 8, 150, 0),
(151, 25, 8, 151, 0),
(152, 25, 8, 152, 0),
(153, 25, 8, 153, 0),
(154, 25, 8, 154, 0),
(155, 25, 8, 155, 0),
(156, 26, 9, 156, 0),
(157, 26, 9, 157, 0),
(158, 26, 9, 158, 0),
(159, 26, 9, 159, 0),
(160, 26, 9, 160, 0),
(161, 27, 9, 161, 0),
(162, 27, 9, 162, 0),
(163, 27, 9, 163, 0),
(164, 27, 9, 164, 0),
(165, 27, 9, 165, 0),
(166, 27, 9, 166, 0),
(167, 27, 9, 167, 0),
(168, 27, 9, 168, 0),
(169, 27, 9, 169, 0),
(170, 27, 9, 170, 0),
(171, 28, 10, 171, 100),
(172, 29, 11, 172, 90),
(173, 30, 11, 173, 60),
(174, 31, 11, 174, 60),
(175, 32, 11, 175, 60),
(176, 33, 11, 176, 0),
(177, 34, 11, 177, 0),
(178, 35, 11, 178, 60),
(179, 36, 12, 179, 50),
(180, 37, 12, 180, 50),
(181, 38, 12, 181, 50),
(182, 39, 12, 182, 60),
(183, 40, 12, 183, 50),
(184, 41, 12, 184, 50),
(185, 42, 12, 185, 55),
(186, 43, 12, 186, 80),
(187, 44, 12, 187, 50),
(188, 45, 12, 188, 70),
(189, 46, 12, 189, 55),
(190, 47, 12, 190, 70),
(191, 48, 12, 191, 70),
(192, 49, 12, 192, 50),
(193, 50, 12, 193, 60),
(194, 51, 12, 194, 50),
(195, 52, 12, 195, 50),
(196, 53, 12, 196, 0),
(197, 54, 12, 197, 0),
(198, 55, 12, 198, 0),
(199, 56, 13, 199, 45),
(200, 56, 13, 200, 45),
(201, 56, 13, 201, 45),
(202, 56, 13, 202, 45),
(203, 56, 13, 203, 50),
(204, 56, 13, 204, 0),
(205, 56, 13, 205, 55),
(206, 56, 13, 206, 45),
(207, 56, 13, 207, 0),
(208, 56, 13, 208, 45),
(209, 56, 13, 209, 45),
(210, 56, 13, 210, 45),
(211, 57, 13, 211, 55),
(212, 57, 13, 212, 55),
(213, 57, 13, 213, 55),
(214, 57, 13, 214, 55),
(215, 57, 13, 215, 0),
(216, 57, 13, 216, 0),
(217, 57, 13, 217, 70),
(218, 57, 13, 218, 55),
(219, 57, 13, 219, 0),
(220, 57, 13, 220, 55),
(221, 57, 13, 221, 55),
(222, 57, 13, 222, 55),
(223, 58, 14, 223, 0),
(224, 58, 14, 224, 0),
(225, 58, 14, 225, 0),
(226, 58, 14, 226, 0),
(227, 58, 14, 227, 0),
(228, 58, 14, 228, 0),
(229, 58, 14, 229, 0),
(230, 58, 14, 230, 0),
(231, 59, 14, 231, 0),
(232, 59, 14, 232, 0),
(233, 59, 14, 233, 0),
(234, 59, 14, 234, 0),
(235, 59, 14, 235, 0),
(236, 59, 14, 236, 0),
(237, 59, 14, 237, 0),
(238, 59, 14, 238, 0),
(239, 60, 15, 239, 0),
(240, 60, 15, 240, 0),
(241, 60, 15, 241, 0),
(242, 60, 15, 242, 0),
(243, 60, 15, 243, 0),
(244, 60, 15, 244, 0),
(245, 60, 15, 245, 0),
(246, 60, 15, 246, 0),
(247, 60, 15, 247, 0),
(248, 60, 15, 248, 0),
(249, 60, 15, 249, 0),
(250, 60, 15, 250, 0),
(251, 60, 15, 251, 0),
(252, 60, 15, 252, 0),
(253, 61, 15, 253, 0),
(254, 61, 15, 254, 0),
(255, 61, 15, 255, 0),
(256, 62, 16, 256, 0),
(257, 62, 16, 257, 0),
(258, 62, 16, 258, 0),
(259, 62, 16, 259, 0),
(260, 62, 16, 260, 0),
(261, 62, 16, 261, 0),
(262, 62, 16, 262, 0),
(263, 62, 16, 263, 0),
(264, 62, 16, 264, 65),
(265, 62, 16, 265, 65),
(266, 62, 16, 266, 0),
(267, 62, 16, 266, 0),
(268, 63, 16, 267, 0),
(269, 63, 16, 268, 0),
(270, 63, 16, 269, 0),
(271, 63, 16, 270, 0),
(272, 63, 16, 271, 0),
(273, 63, 16, 272, 0),
(274, 63, 16, 273, 0),
(275, 63, 16, 274, 0),
(276, 63, 16, 275, 60),
(277, 63, 16, 276, 60),
(278, 63, 16, 277, 0),
(279, 63, 16, 277, 0),
(280, 64, 16, 278, 0),
(281, 64, 16, 279, 0),
(282, 64, 16, 280, 0),
(283, 64, 16, 281, 0),
(284, 64, 16, 282, 0),
(285, 64, 16, 283, 0),
(286, 64, 16, 284, 0),
(287, 64, 16, 285, 0),
(288, 64, 16, 286, 0),
(289, 64, 16, 287, 0),
(290, 64, 16, 288, 0),
(291, 64, 16, 288, 0),
(292, 64, 16, 288, 0),
(293, 65, 16, 289, 0),
(294, 65, 16, 290, 0),
(295, 65, 16, 291, 0),
(296, 65, 16, 292, 0),
(297, 65, 16, 293, 0),
(298, 65, 16, 294, 0),
(299, 65, 16, 295, 0),
(300, 65, 16, 296, 0),
(301, 65, 16, 297, 50),
(302, 65, 16, 298, 50),
(303, 65, 16, 299, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `t_id` int(3) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`t_id`, `type_name`) VALUES
(1, '30'),
(2, '20'),
(3, '15'),
(4, '10'),
(5, '7'),
(6, '5'),
(7, '3'),
(8, 'неваляшка'),
(9, 'футляр'),
(10, 'ангел '),
(11, 'куколка'),
(12, 'яйцо'),
(13, 'колокольчик'),
(14, 'Шар'),
(15, 'магнит'),
(16, 'браслет');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(3) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `upass` varchar(255) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
