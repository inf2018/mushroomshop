-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 22 2019 г., 03:32
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mushroomshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `rus_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cats`
--

INSERT INTO `cats` (`id`, `cat_name`, `rus_name`) VALUES
(1, 'edible', 'Сьедобные грибы'),
(2, 'poisonous', 'Ядовитые грибы'),
(3, 'others', 'Другие');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`) VALUES
(16, 'asd', 'asdasd', 'asd'),
(17, 'sadasd', 'sadasdasdasd', 'zamokkeybot@yandex.ru'),
(18, 'Андрей', '787654579846', 'zamokkeybot@yandex.ru'),
(19, 'Андрей', '45646542132', 'zamokkeybot@yandex.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `rus_name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `cat_name`, `price`, `rus_name`, `img`, `descr`) VALUES
(1, 'amanita', 'poisonous', 100, 'Мухомор красный', 'amanita.jpg', 'Плодовое тело гриба содержит ряд токсичных соединений, некоторые из которых обладают психотропным эффектом. Токсические и психоактивные вещества хорошо растворяются в горячей воде, и употребление грибов, отваренных в нескольких водах, приводит к менее сильному отравлению. Однако, содержание ядов в плодовых телах может сильно варьировать, что делает употребление мухоморов в пищу опасным\r\n'),
(2, 'panther', 'poisonous', 200, 'Мухомор пантерный', 'panther.jpg', 'Сильно ядовит. Образует микоризу со многими деревьями, встречается в хвойных, смешанных и широколиственных лесах, часто под сосной, дубом, буком, предпочитает щелочные почвы. Широко распространён в умеренном климате Северного полушария\r\n'),
(3, 'kingbolete', 'edible', 300, 'Белый гриб', 'kingbolete.jpg', 'Классический вид, который в народе прозвали «полковником» – чествуя самым главным и лучшим из сородичей. Каштаново-коричневая шляпка выпуклая, затем плоско-выпуклая, подушковидная, редко распростертая, достигает диаметра 25–30 см. Известны гигантские представители – с диаметром шляпки до 45 см и весом до 2–3 кг. Поверхность гладкая, иногда неровная, бороздчатая ил\r\n'),
(4, 'leccinum', 'edible', 400, 'Подосиновик', 'leccinum.jpg', 'Плодоносит чаще поодиночке. Обычный гриб в северной умеренной зоне, в России наиболее известен в Европейской части и на Дальнем Востоке, где встречается под берёзой маньчжурской и каменной. Сезон июнь — сентябрь, иногда до поздней осени. Съедобен\r\n'),
(5, 'chanterelle', 'edible', 500, 'Лисичка', 'chanterelle.jpg', 'Хорошо известный съедобный гриб, высоко ценится, годится для употребления в любом виде. Образует микоризу с различными деревьями, наиболее часто с елью, сосной, дубом, буком\r\n'),
(6, 'pax', 'poisonous', 600, 'Свинушка ', 'pax.jpg', 'До 1981 года этот гриб считался условно съедобным и относился к 4-й категории по пищевым качествам. В настоящее время отнесён к ядовитым, хотя симптомы отравления проявляются не всегда и/или не сразу. Содержит токсины (лектины), не разрушающиеся даже при многократном отваривании'),
(7, 'amanita-edible', 'others', 700, 'Мухомор съедобный', 'amanita-edible.jpg', 'Нарядный гриб имеет красную, оранжево-красную шляпку (диаметром до 20 см) с ослепительно-белыми или желтоватыми пятнышками-бородавками. У молодых грибов ее форма шаровидная («красное яйцо»).Ножка (высотой до 25 см) крепкая, белая, украшена белым или желтоватым повисающим кольцом. На ней хорошо видны ряды белых или желтоватых бородавок. В нижней части ножки утолщение-клубень с хлопьями.'),
(8, 'russula', 'others', 800, 'Сыроежка', 'russula.jpg', 'Шляпка сначала шаровидная, полушаровидная или колокольчатая, позднее распростёртая, плоская или воронковидная, реже выпуклая; край завёрнутый или прямой, часто полосатый или рубчатый. Кожица разнообразной окраски, сухая, реже влажная, блестящая или матовая, иногда растрескивающаяся, легко отделяющаяся от мякоти или приросшая.'),
(9, 'toadstool', 'others', 900, 'Бледная поганка', 'toadstool.jpg', 'Шляпка 5—15 см, оливковая, зеленоватая или сероватая, от полушаровидной до плоской формы, с гладким краем и волокнистой поверхностью.\r\n\r\nМякоть белая, мясистая, не меняет цвет при повреждении, со слабовыраженным вкусом и запахом.\r\n\r\nНожка 8—16 × 1—2,5 см, цилиндрическая, с утолщением («мешочек») в основании. Цвет — как у шляпки или беловатый, часто покрыта муаровым рисунком.\r\n\r\nПластинки белые, мягкие, свободные. Кольцо сначала широкое, бахромчатое, снаружи — полосатое, с возрастом часто исчезает. ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_name` (`cat_name`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_name` (`cat_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_name`) REFERENCES `cats` (`cat_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
