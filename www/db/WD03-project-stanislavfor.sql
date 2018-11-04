-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 18 2018 г., 23:27
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-stanislavfor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Станислав Скородумов', '<p>Я обучаюсь вёрстке и программированию в школе <strong>Wecademy.ru</strong> на Курсе Веб-разработка:&nbsp;Frontend и Backend.</p>\r\n\r\n<p>Хочу найти работу&nbsp;в сфере разработки и вёрстки сайтов. Хотел бы работать&nbsp;в веб-студии, а также рассматриваю возможность получать задания&nbsp;на фриланс-бирже.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Меня интересует целеноправленно изучить&nbsp;<strong>PHP</strong> и <strong>MySQL</strong> для того, чтобы разрабатывать готовые сайты. Умею&nbsp;верстать&nbsp;лендинги, сайты-визитки, так как считаю, что этот вид веб продукции затребован, и необходимо внедрять в практику различные варианты этих проектов.&quot;</p>\r\n', '-221790832.JPG');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествия'),
(2, 'Покупки'),
(14, 'new'),
(15, 'Образовательная тема');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 24, 6, 'Одни плюсы...			\r\n			', '2018-07-25 02:27:18'),
(2, 24, 6, 'Текст для комментария: Скоростная внеуличная транспортная система Санкт-Петербурга и Ленинградской области. Второй по старшинству и величине в СССР метрополитен после Московского - открылся 15 ноября 1955 года. Википедия			\r\n					\r\n			', '2018-07-25 02:27:20'),
(4, 24, 6, 'Хороший пример!			\r\n			', '2018-07-25 02:32:00'),
(6, 23, 6, '	автомобили :  Топ-5 самых экономичных автомобилей 2018 года			\r\n			', '2018-07-25 04:04:03'),
(10, 21, 6, 'Напомним, почти треть посетителей VK Fest приезжают из других городов. Уже сейчас раскуплены почти все билеты на поезда и самолёты из Москвы в Петербург на 27 и 28 июля .				\r\n			', '2018-07-28 02:53:39'),
(11, 18, 8, 'Биржа копирайтинга Text.ru &mdash; это достойный заработок для копирайтеров и возможность заказать текст у профессиональных авторов. Здесь вы можете реализовать свой творческий потенциал или приобрести уникальные статьи для нужд своего сайта. Рейтинг копирайтеров наглядно демонстрирует опыт и востребованность исполнителя на сервисе Text.ru и позволяет заказчику быстро выбрать исполнителя на свой заказ. Простота в работе.', '2018-08-17 02:38:51'),
(12, 17, 8, 'Что такое Тема? Тема &ndash; это круг явлений и событий, образующих основу произведения; объект художественного изображения; то, о чем повествует автор и к чему хочет привлечь основное внимание читателей. Смотрите также в словаре литературоведческих терминов: Ирония. - это троп, состоящий в употреблении слова или выражения ... подробнее. Цикл. - это объединение нескольких художественных произведений ... подробнее. Народность литературы. ', '2018-08-17 02:40:15'),
(16, 15, 8, 'Текст &mdash; это произведение речетворческого процесса ... (например, газетная заметка, отвечает на вопросы: что? где? и когда...', '2018-08-17 02:42:53'),
(17, 13, 8, 'Если сделать Яндекс основным поиском в браузере, то можно быстрее получать ответы.', '2018-08-17 02:43:32'),
(26, 24, 8, 'Комментарий в посте о Метро - нужно обновить карту метрополитена.', '2018-08-18 20:46:57'),
(27, 18, 6, 'Положительный пост!', '2018-08-18 22:01:50');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'admin@yandex.ru', '84991234567', 'Москва, Новинский б-р', 'Станислав', 'Скородумов', '', 'https://vk.com/club165382911', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(2, '30 апреля - 4 августа', 'Учёба в Школе WebDev', 'Курс веб-разработки'),
(4, '30 апреля - 4 августа', 'Учёба в Школе WebDev', 'Курс веб-разработки');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `date_time`, `message_file_name_original`, `message_file`) VALUES
(1, 'admin@yandex.ru', 'Станислав', 'У абсолютного большинства живущих в XXI веке людей слово &laquo;хипстер&raquo; ассоциируется исключительно с бородами, очками в черной оправе, клетчатыми рубашками и подвернутыми штанами. Между тем первые хипстеры появились в те времена, когда не то что продукция Apple еще не покинула пределы гаража, но и Стив Джобс еще не родился. Оригинальные хипстеры появились благодаря джазу. Музыка черных, возникшая в Новом Орлеане на рубеже веков, быстро завоевала всеамериканскую популярность. &laquo;Ревущие двадцатые&raquo; &mdash; время беззаботного богатства &mdash; невозможно представить без джаз-бендов.', '2018-07-27 04:16:23', 'hipster2.jpg', '894822284.jpg'),
(3, 'mail', 'Станислав', 'eeeeee eeeeee', '2018-08-18 19:21:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ports`
--

CREATE TABLE `ports` (
  `id` int(11) UNSIGNED NOT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `port_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technology` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ports`
--

INSERT INTO `ports` (`id`, `author_id`, `date_time`, `port_img`, `port_img_small`, `result`, `technology`, `project_link`, `github_link`, `port_title`, `description`, `date_update`) VALUES
(43, 6, '2018-08-18 05:18:00', '869975715.png', '360-869975715.png', 'Можно загружать список понравившихся кинофильмов с описанием.', 'Применяется программирование с JavaScript', '', 'https://github.com/stanislavfor/WD03-stanislavfor-filmoteka', 'Фильмотека', 'Приложение Фильмотека', '2018-08-18 21:30:02'),
(44, 6, '2018-08-18 21:18:02', '1140560189.png', '360-1140560189.png', 'Можно загружать описание и фотографии для фильмотеки.', 'JavaScript', '', 'https://github.com/stanislavfor/WD03-stanislavfor-filmoteka', 'Фильмотека', 'Фильмотека для составления Списка фильмов', '2018-08-18 21:30:31'),
(45, 6, '2018-08-18 21:21:04', '517201874.png', '360-517201874.png', ' В приложении можно записывать посты для блога.', 'HTML, CSS, JS, PHP, git, gulp', '', 'https://github.com/stanislavfor/html-for-switter', 'Twtter - приложение для блога', ' В приложении можно записывать посты для блога.', '2018-08-18 21:24:32'),
(46, 6, '2018-08-18 21:23:46', '667526582.png', '360-667526582.png', '', '', '', 'Ссылка отсутствует', 'Приложение ToDo', 'Приложение - планировщик дел', '2018-08-18 21:32:00'),
(47, 6, '2018-08-18 21:36:49', '89769726.png', '360-89769726.png', '', 'HTML, CSS, PHP', 'http://side.zzz.com.ua/', '', 'Сайт-визитка', 'Сайт', '2018-08-18 21:40:27'),
(48, 6, '2018-08-18 21:42:08', '533272089.png', '360-533272089.png', 'Можно разместить ссылки на контакты.', '', 'http://side.zzz.com.ua/', '', 'Сайт-визитка', 'Пример личного сайта-визитки', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(13, 'Пост 1', '<p>Пост 1</p>\r\n', 6, '2018-07-21 02:41:01', '221652231.jpg', '320-221652231.jpg', 1, '2018-08-18 04:38:37'),
(14, 'Пост 2', 'Пост 2', 6, '2018-07-21 02:41:23', '-472391311.jpg', '320--472391311.jpg', 2, NULL),
(15, 'Пост 3', '<p><u><em>Существуют две основные трактовки понятия &laquo;текст&raquo;: имманентная (расширенная, философски нагруженная) и репрезентативная (более частная).</em></u></p>\r\n', 6, '2018-07-21 03:30:13', '-495399590.jpg', '320--495399590.jpg', 15, '2018-08-14 07:24:52'),
(17, 'Тема', 'Единство предмета речи — это тема высказывания. Тема — это смысловое ядро текста, конденсированное и обобщённое содержание текста.', 6, '2018-07-21 04:19:30', '265949098.jpg', '320-265949098.jpg', 14, NULL),
(18, 'Текст', '<p>Текст это - письменная или печатная фиксация речевого высказывания или сообщения в противоположность устной реализации. Источник: https://www.litdic.ru/tekst/</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Текст это - письменная или печатная фиксация речевого высказывания или сообщения в противоположность устной реализации.</h1>\r\n\r\n<p><s>(test)</s></p>\r\n\r\n<p>Источник: https://www.litdic.ru/tekst/</p>\r\n', 6, '2018-07-21 04:34:30', '1185983749.jpg', '320-1185983749.jpg', 14, '2018-07-25 00:20:03'),
(21, 'Стала известна окончательная программа музыкального фестиваля VK Fest', '<p>ВКонтакте и Радио Рекорд объявили финальную программу VK Fest. Как сообщили организаторы, гостей ждёт несколько музыкальных сцен.</p>\r\n\r\n<p>В этом году к традиционной синей сцене с поп-музыкой, белой с альтернативой и электронной Record Stage от Радио Рекорд добавится зелёная. Её оценят любители академической музыки, каверов и джаза. Артисты VK Fest 2018: Баста, Элджей, Feduk, Little big, Елена Темникова, Noize MС, Хлеб, Хаски, Пошлая Молли, АИГЕЛ, Зомб, LOBODA, Jay Jay Jonanson, Гречка, Мы, Монеточка, The Hatters, Tequilajazzz, Диана Арбенина.Ночные снайперы, Don Diablo, Arty, Чайф, Ногу свело!, Слава КПСС (Гнойный), Мари Краймбрери, Джиган, Manizha, HammAli &amp; Navai, Жак Энтони, Михаил Боярский, Face, Tequilajazzz и другие.</p>\r\n\r\n<p>С собственной программой приедет на VK Fest телеканал ТНТ. На фестивале выступят резиденты Comedy Club Павел Воля и Марина Кравец, комики шоу Stand Up, ведущие шоу &laquo;Студия СОЮЗ&raquo;, участники шоу &laquo;ТАНЦЫ&raquo; и &laquo;ПЕСНИ&raquo;, Ольга Бузова &mdash; всего более 30 звёзд ТНТ.</p>\r\n', 6, '2018-07-21 05:37:39', '729672654.jpg', '320-729672654.jpg', 14, '2018-07-28 02:52:33'),
(23, 'Названа пятерка самых экономичных авто в 2018 году', '<p>Топ-5 самых экономичных автомобилей 2018 года опубликовали эксперты американского портала Slash Gear.</p>\r\n\r\n<p>Составляя рейтинг, специалисты учитывали не только показатели расхода топлива модели, но и ее начальную стоимость. Эксперты рассматривали только автомобили с бензиновыми двигателями. На первом месте списка расположилась Toyota Yaris iA, фактически представляющая собой трансформированную версию седана Mazda2. Модель укомплектована 1,5-литровым двигателем в 107 лошадиных сил, на 100 километров расходуется 6,7 литра горючего. <strong>Стоимость авто начинается от 16 тысяч долларов.</strong> Второе место в рейтинге заняла Honda Fit, цена которой также начинается от 16 тысяч долларов. У нее тоже 1,5-литровый двигатель, а на 100 километров дороги ей требуется 5,5 литра бензина. На третьем месте оказалась Hyundai Elantra Eco, начальная стоимость которой составляет 20 тысяч долларов. Автомобиль оснащен 1,4-литровым мотором, потребляющим 6,72 литра топлива на 100 километров. Четвертое и пятое места рейтинга самых экономичных автомобилей заняли Mitsubishi Mirage (6,1 литра на 100 км) и Citroen C-Elysee (около 5 литров на 100 км) соответственно. Топ-5 самых экономичных авто года:</p>\r\n\r\n<p>1. Toyota Yaris iA,</p>\r\n\r\n<p>2. Honda Fit</p>\r\n\r\n<p>3. Hyundai Elantra Eco</p>\r\n\r\n<p>4. Mitsubishi Mirage</p>\r\n\r\n<p>5. Citroen C-Elysee</p>\r\n\r\n<h3><u>Взято с ресурса&nbsp;https://www.ridus.ru/news/280530</u></h3>\r\n', 6, '2018-07-24 03:55:27', '70022930.jpg', '320-70022930.jpg', 2, '2018-08-18 23:03:33'),
(24, 'Петербург. Линии городского метро.', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Построены еще две станции метро после станции &quot;Волковская&quot;. Это на линии городского метро 5.</strong></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>Метрополитен</strong></u> &mdash; важнейшая часть городской транспортной системы Санкт-Петербурга. В Петербурге живет свыше пяти миллионов человек и еще шесть миллионов ежегодно приезжает сюда на отдых. Чтобы петербуржцы и гости города легко и быстро ориентировались в метро, в студии разработана понятная и простая для восприятия схема.</p>\r\n', 6, '2018-07-25 02:10:34', '-17266210.gif', '320--17266210.gif', 1, '2018-08-14 12:27:32'),
(25, 'Пентагон США собрался развернуть систему ПРО в космосе', '<p>Утвержденный Палатой представителей проект бюджета Пентагона на 2019 год включает выделение средств на развертывание элементов американской системы ПРО в космосе, которые должны войти в строй не позднее конца 2022 года. Развертывание элементов американской системы ПРО в космосе и &laquo;стремительная разработка и внедрение стойкой сенсорной космической архитектуры&raquo; в проекте бюджета объясняется необходимостью &laquo;обеспечить эффективную противоракетную оборону&raquo; в связи &laquo;с новой растущей угрозой гиперзвуковых и крылатых ракет.</p>\r\n', 6, '2018-07-27 04:10:30', '90599922.jpg', '320-90599922.jpg', 15, '2018-07-27 04:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `js` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mysql` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gulp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bower` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `bower`) VALUES
(1, '80', '60', '33', 33, '40', '35', '75', '50', '50', '20');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `role`, `password`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(6, 'admin@yandex.ru', 'admin', '$2y$10$ZfI38rwFMuyICH9yPS29j.b9dmQVkmdRlXiU5sOZawc9C.0Hw9gF.', 'Станислав', 'Скородумов', 'Москва', 'Россия', '-412854425.png', '48--412854425.png', 'q0Kc5JRIWOdrTyi', 3),
(8, 'zero@yandex.ru', 'user', '$2y$10$hTjqvYeAnUD3tGPjfj4VRuArjntGHI9.DmKZ0jLeJf9cEsUNtOjo6', 'В.', 'Тополь', 'Москва', 'Россия', '-218292150.jpg', '48--218292150.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_ports_author` (`author_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ports`
--
ALTER TABLE `ports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
