-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 23 2020 г., 00:57
-- Версия сервера: 5.5.60-MariaDB-cll-lve
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user973336_istore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `type`, `brand`) VALUES
(1, 'notebook', 'Acer'),
(2, 'notebook', 'Apple'),
(3, 'notebook', 'Asus'),
(4, 'notebook', 'Dell'),
(5, 'notebook', 'HP'),
(6, 'notebook', 'Lenovo'),
(7, 'notebook', 'MSI'),
(8, 'phone', 'Samsung'),
(9, 'phone', 'Apple'),
(10, 'phone', 'Xiaomi'),
(11, 'phone', 'Huawei'),
(12, 'phone', 'Nokia'),
(13, 'phone', 'Meizu'),
(14, 'phone', 'Lenovo'),
(15, 'phone', 'Blackview'),
(16, 'monitor', 'Acer'),
(17, 'monitor', 'Asus'),
(18, 'monitor', 'Dell'),
(19, 'monitor', 'LG'),
(20, 'monitor', 'Samsung'),
(21, 'processor', 'AMD'),
(22, 'processor', 'Intel'),
(23, 'videocard', 'ASUS'),
(24, 'videocard', 'MSI'),
(25, 'videocard', 'Gigabyte'),
(26, 'keyboard', 'Asus'),
(27, 'keyboard', 'Defender'),
(28, 'keyboard', 'Genius'),
(29, 'keyboard', 'Logitech'),
(30, 'keyboard', 'Microsoft'),
(31, 'keyboard', 'Razer'),
(32, 'earphone', 'A4Tech'),
(33, 'earphone', 'Apple'),
(34, 'earphone', 'Panasonic'),
(35, 'earphone', 'Razer'),
(36, 'earphone', 'Samsung'),
(37, 'earphone', 'Sven'),
(38, 'earphone', 'Xiaomi'),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, 'webcam', 'A4Tech'),
(43, 'webcam', 'Defender'),
(44, 'webcam', 'Logitech'),
(45, 'webcam', 'Microsoft');

-- --------------------------------------------------------

--
-- Структура таблицы `table_products`
--

CREATE TABLE IF NOT EXISTS `table_products` (
  `products_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `type_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mini_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `features` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `table_products`
--

INSERT INTO `table_products` (`products_id`, `title`, `brand`, `brand_id`, `type_category`, `price`, `image`, `mini_description`, `description`, `features`, `datetime`, `visible`) VALUES
(1, 'AMD FX-6300 sAM3+ BOX', 'AMD', 0, 'processor', 1929, '//istore.pp.ua/uploads_images/img1.jpg', 'Сімейство процесора: AMD FX-Series\r\nТип роз''єму: Socket AM3+\r\nКількість ядер: 6\r\nІнтегрована графіка: Немає\r\nВнутрішня тактова частота: 3500 МГц\r\nОбсяг кеш пам''яті 3 рівня: 8 МБ', 'AMD FX-6300 — це процесор, який ґрунтується на мікроархітектурі Piledriver і виготовлений за 32-нм техпроцесом. Частота процесора, обладнаного ядрами Vishera, — 3.5 ГГц. Є підтримка режиму Turbo, що підвищує частоту до 4.1 ГГц. Процесор має 6 МБ кешу другого рівня і 8 МБ кешу третього рівня й обладнаний новими енергоощадними технологіями. Тепловиділення процесора становить 95 Вт.', 'Сімейство процесора AMD FX-Series<br />\r\nТип роз''єму Socket AM3+<br />\r\nКількість ядер 6<br />\r\nІнтегрована графіка Немає<br />\r\nВнутрішня тактова частота 3500 МГц<br />\r\nРозблокований помножувач Так<br />\r\nЧастота шини даних 5200 МГц<br />\r\nТип упаковки BOX<br />\r\nКількість контактів 938<br />\r\nОбсяг кеш пам''яті 1 рівня 3 x 64 КБ<br />\r\nОбсяг кеш пам''яті 2 рівня  МБ<br />\r\nОбсяг кеш пам''яті 3 рівня 8 МБ<br />\r\nПотужність TDP 95 Вт<br />\r\nНапруга живлення 0.9 - 1.425 В<br />\r\nНайменування ядра Vishera<br />\r\nТехнології забезпечення 64-розрядної роботи AMD64<br />\r\nЕнергоощадні технології PowerNow!<br />\r\nТехнології антивірусного захисту Enhanced Virus Protection<br />\r\nГарантія 36 місяців<br />', '2018-05-28 21:23:25', 1),
(2, 'Asus Radeon R9 270X', 'Asus', 1, 'videocard', 4750, '//istore.pp.ua/uploads_images/img2.jpg', 'Asus PCI-Ex Radeon R9 270X DC II 2048MB GDDR5 (256bit) (1120/5600) (2xDVI, HDMI, DisplayPort) (R9270X-DC2T-2GD5)', 'Radeon R9 270X (R9270X-DC2T-2GD5) - це представник нового покоління відеокарт AMD від Asus, який виводить цифрові розваги на якісно новий рівень.', 'Графічний чип R9 270X<br />\r\nЧастота пам''яті 5600 МГц<br />\r\nОбсяг пам''яті 4 ГБ<br />\r\nЧастота ядра 1120 МГц<br />\r\nСистема охолодження DirectCU II SSU<br />\r\nРозрядність шини пам''яті 256 біт<br />\r\nВиходи DVI 2<br />\r\nМаксимально підтримувана роздільна здатність 4096x2160<br />\r\nПідтримувані 3D API DirectX 11.2, OpenGL 4.3<br />\r\nТип пам''яті GDDR5<br />\r\nМінімально необхідна потужність БЖ 600 Вт<br />\r\nІнтерфейс PCI-Express x16 3.0<br />\r\nРозміри 271.7 x 133 x 40 мм<br />\r\nРоз''єми DVI<br />\r\nDisplayPort HDMI<br />\r\nДодаткове живлення 6 + 6 pin<br />\r\nФорм-фактор Стандартна<br />\r\nТип системи охолодження Активна<br />\r\nПід''єднання моста Nvidia SLI Немає<br />\r\nПідтримка AMD CrossFireX Немає<br />\r\nГарантія 36 місяців<br />', '2018-05-28 21:24:25', 1),
(4, 'Acer Aspire 3 A315-21', 'Acer', 3, 'notebook', 6199, '//istore.pp.ua/uploads_images/img3.jpg', 'Екран 15.6" (1366x768) WXGA HD, матовий / AMD Dual-Core E2-9000 (1.8 - 2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.1 кг / чорний', 'Екран 15.6" (1366x768) WXGA HD, матовий / AMD Dual-Core E2-9000 (1.8 - 2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.1 кг / чорний', '\r\nПроцесор Докладніше\r\nДвухъядерный AMD Dual-Core E2-9000 (1.8 - 2.2 ГГц)\r\nДіагональ екрана Докладніше\r\n15.6" (1366x768) WXGA HD\r\nОбсяг оперативної пам''яті Докладніше\r\n4 ГБ\r\nОпераційна система Докладніше\r\nLinux\r\nКороткі характеристики\r\nЕкран 15.6" (1366x768) WXGA HD, матовий/AMD Dual-Core E2-9000 (1.8 - 2.2 ГГц)/RAM 4 ГБ/HDD 500 ГБ/AMD Radeon R2/без ОД/LAN/Wi-Fi/Bluetooth/веб-камера/Linux/2.1 кг/чорний\r\nКолір Докладніше\r\nЧорний\r\nОптичний привод Докладніше\r\nНемає\r\nОб''єм накопичувача Докладніше\r\n500 ГБ\r\nКлавіатура\r\nБез підсвітки\r\nКількість слотів для оперативної пам''яті\r\nНемає\r\nУкраїнська розкладка клавіатури\r\nЗ\r\nБатарея\r\nНезнімна\r\nВага\r\n2.1 кг\r\nТип оперативної пам''яті Докладніше\r\nDDR4-2133 МГц\r\nДодаткові можливості Докладніше\r\nВеб-камера\r\nВбудований мікрофон\r\nВбудовані динаміки\r\nГрафічний адаптер Докладніше\r\nІнтегрована, AMD Radeon R2\r\nМережеві адаптери Докладніше\r\nWi-Fi	802.11ac/a/b/g/n\r\nBluetooth 4.0\r\nGigabit Ethernet\r\nРоз''єми та порти введення-виведення Докладніше\r\n1 x USB 3.0/2 x USB 2.0/HDMI/LAN (RJ-45)/комбінований аудіороз''єм для навушників/мікрофона/кардридер\r\nХарактеристики батареї Докладніше\r\nЛітій-полімерна, 2-осередкова\r\n4810 мА·год\r\nГабарити (Ш х Г х В) Докладніше\r\n381.6 x 259 x 20.95 мм\r\nКомплект постачання Докладніше\r\nНоутбук\r\nАдаптер живлення\r\nДокументація\r\nГарантійний талон\r\nГарантія\r\n12 місяців', '2018-05-31 03:15:31', 1),
(5, 'HP 255 G6', 'HP', 3, 'notebook', 7199, '//istore.pp.ua/uploads_images/img4.jpg', 'Екран 15.6" (1366x768) WXGA HD, матовий / AMD Dual-Core A6-9220 (2.5 - 2.9 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R4 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / чорний', 'Ноутбук HP 255 G6 вирізняється вигідною ціною й дає змогу завжди залишатися на зв''язку. Він поєднує технології AMD і все необхідне для спільної роботи. Міцний корпус ноутбука надійно захищає його від пошкоджень під час перенесення.', 'Процесор\r\nДвоядерний AMD Dual-Core A6-9220 (2.5 - 2.9 ГГц)\r\nДіагональ екрана\r\n15.6" (1366x768) WXGA HD\r\nОбсяг оперативної пам''яті\r\n4 ГБ\r\nОпераційна система\r\nDOS\r\nКороткі характеристики\r\nЕкран 15.6" (1366x768) WXGA HD, матовий/AMD Dual-Core A6-9220 (2.5 - 2.9 ГГц)/RAM 4 ГБ/HDD 500 ГБ/AMD Radeon R4/без ОД/LAN/Wi-Fi/Bluetooth/веб-камера/DOS/1.86 кг/чорний\r\nКолір Докладніше\r\nЧорний\r\nОптичний привод Докладніше\r\nНемає\r\nОб''єм накопичувача\r\n500 ГБ\r\nКлавіатура\r\nБез підсвітки\r\nКількість слотів для оперативної пам''яті\r\n2\r\nУкраїнська розкладка клавіатури\r\nБез\r\nБатарея\r\nНезнімна\r\nВага\r\n1.86 кг\r\nТип оперативної пам''яті\r\nDDR4-1866 МГц\r\nДодаткові можливості\r\nВеб-камера\r\nВбудований мікрофон\r\nВбудовані стереодинаміки\r\nПідтримка технології HP придушення шуму\r\nСенсорна панель з підтримкою жестів керування\r\nГрафічний адаптер\r\nІнтегрований, AMD Radeon R4\r\nМережеві адаптери\r\nWi-Fi 802.11 a/b/g/n/ac\r\nBluetooth 4.2\r\nGigabit Ethernet\r\nРоз''єми та порти введення-виведення \r\n2 x USB 3.1 (5 Гб/сек)/1 x USB 2.0/VGA/HDMI/LAN (RJ-45)/комбінований аудіороз''єм для навушників/мікрофона/кардридер\r\nХарактеристики батареї\r\n3-елементний літій-іонний акумулятор, 31 Вт*год\r\nГабарити (Ш х Г х В)\r\n380 x 253.8 x 23.8 мм\r\nКомплект постачання\r\nНоутбук\r\nАдаптер живлення\r\nДокументація\r\nГарантійний талон\r\nГарантія\r\n12 місяців', '2018-05-23 04:29:17', 1),
(6, 'Lenovo IdeaPad 320-15IKB', 'Lenovo', 4, 'notebook', 11999, '//istore.pp.ua/uploads_images/img5.jpg', 'Екран 15.6" (1920x1080) Full HD, матовий / Intel Pentium 4415U (2.3 ГГц) / RAM 8 ГБ / HDD 1 ТБ / nVidia GeForce GT 940MX, 2 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.2 кг / сірий', 'Lenovo Ideapad 320 — це 15-дюймовий високопродуктивний ноутбук, який прекрасно підійде для роботи та розваг. Ноутбук обладнаний продуктивним процесором, високошвидкісним модулем Wi-Fi та акустичною системою високої якості.', 'Процесор Двоядерний Intel Pentium 4415U (2.3 ГГц)\r\nДіагональ екрана 15.6" (1920x1080) Full HD\r\nОбсяг оперативної пам''яті 8 ГБ\r\nОпераційна система DOS\r\nКороткі характеристики\r\nЕкран 15.6" (1920x1080) Full HD, матовий/Intel Pentium 4415U (2.3 ГГц)/RAM 8 ГБ/HDD 1 ТБ/nVidia GeForce GT 940MX, 2 ГБ/без ОД/LAN/Wi-Fi/Bluetooth/веб-камера/DOS/2.2 кг/сірий\r\nПокоління процесора Intel 7-е Kaby Lake\r\nКолір Сірий\r\nОптичний привод Немає\r\nОб''єм накопичувача 1 ТБ\r\nКлавіатура Без підсвітки\r\nКількість слотів для оперативної пам''яті 1\r\nУкраїнська розкладка клавіатури З\r\nБатарея Незнімна\r\nВага 2.2 кг\r\nТип оперативної пам''яті Докладніше DDR4-2133 МГц\r\nДодаткові можливості Докладніше Веб-камера\r\nВбудований мікрофон\r\nСтереодинаміки Dolby Audio\r\nГрафічний адаптер Докладніше\r\nДискретний, nVidia GeForce GT 940MX, 2 ГБ виділеної відеопам''яті GDDR5\r\nМережеві адаптери Wi-Fi 802.11ac Bluetooth 4.1 Gigabit Ethernet\r\nРоз''єми та порти введення-виведення 2 x USB 3.0/1 x USB Type-C/HDMI/LAN (RJ-45)/комбінований аудіороз''єм для навушників/мікрофона/кардридер\r\nХарактеристики батареї 2-осередкова, 30 Вт*год\r\nГабарити (Ш х Г х В) Докладніше 378 x 260 x 22.9 мм\r\nКомплект постачання Докладніше Ноутбук\r\nАдаптер живлення Документація\r\nГарантія 12 місяців', '2018-05-21 15:24:00', 1),
(7, 'HP 250 G6', 'HP', 4, 'notebook', 10499, '//istore.pp.ua/uploads_images/img6.jpg', 'Екран 15.6" (1366x768) HD, матовий / Intel Core i3-6006U (2.0 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 520 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Pro 64bit / 1.86 кг / чорний', 'HP 250 G6 — доступный среднеформатный ноутбук, ориентированный на тех, кто ищет неплохой рабочий или мультимедийный инструмент. В нем есть все для комфортной офисной работы, а также отдыха за любимым фильмом или чтением. HP 250 G6 выполнен в духе бизнес-линейки компании, благодаря чему элегантно выглядит на любом рабочем столе. Экран ноутбука имеет разрешение 1920х1080 точек, что позволяет достичь высокой четкости картинки. Среди конфигураций пользователю придется выбрать используемый процессор нижнего сегмента от компании Intel: Celeron, Pentium, Core i3. В любом случае производительности HP 250 G6 будет хватать для максимально комфортного использования и решения большинства ежедневных задач.', 'Процессор: Intel Celeron  Intel Core i3-6xxx (Skylake)  Intel Pentium  Intel Core i5-7xxx (Kaby Lake) Intel Core i7-7xxx (Kaby Lake)  Intel Core i3-5xxx (Broadwell)  AMD A4/A6/A8/A10  Intel Core i3-7xxx (Kaby Lake)\r\nРазрешение экрана: 1920x1080 FullHD  1366x768 HD\r\nТип матрицы: *VA  TN+film  IPS\r\nОбъем оперативной памяти, ГБ: 8 - 12  4\r\nМодельный год: 2017  2018\r\nВидеоадаптер, чипсет: Intel HD Graphics  другой\r\nВидеоадаптер, производитель: Intel  AMD\r\nВидеоадаптер, тип: интегрированный  дискретный (начального уровня)\r\nКоличество ядер процессора: 2  4\r\nНоминальная тактовая частота, ГГц: 1,5-1,99  2,0-2,25  2,26-2,5  2,53-3,0  менее 1,5\r\nМаксимальный объем оперативной памяти, ГБ: 8 и менее  12\r\nТип оперативной памяти: DDR4  DDR3L (DDR3)\r\nТип покрытия экрана: матовое  глянцевое\r\nПредустановленная ОС: без ОС/FreeDOS  Windows 10\r\nОбъем SSD, ГБ: 256  128  512\r\nОбъем жесткого диска, ГБ: 1000  500\r\nОптический привод: нет  DVD\r\nВес, кг: 1,51 - 2  2,01 - 2,3\r\nКорпус: пластиковый  металлический\r\nРазъемы: USB Type-C\r\nЦвет крышки: Черный  Серый, серебристый, темно-серый', '2018-05-10 17:22:41', 1),
(8, 'Apple iPhone X 64GB Space Gray', 'Apple', 5, 'phone', 28899, '//istore.pp.ua/uploads_images/img7.jpg', 'iOS/3gb/64gb/Nano-SIM/Apple A11 Bionic/6 ядер/5,8"/2436х1125/174г/сталь/скло', '"Це майбутнє на найближчі 10 років" - так представив ювілейну, десяту версію iPhone, Тім Кук, керівник Apple. iPhone X увібрав в себе найцікавіші і незвичайні напрацювання компанії. В першу чергу це стосується зовнішнього вигляду смартфона. Безрамковий дисплей з округленими кутами, яким оснащений смартфон, - це не унікальна особливість, але тепер ми побачимо багато таких смартфонів в найближчому майбутньому.', 'Виробник: Apple<br />\r\nЛінійка: iPhone X<br />\r\nТип: Смартфон<br />\r\nПопередньо встановлена ОС: iOS<br />\r\nОперативна пам''ять, ГБ: 3<br />\r\nВбудована пам''ять, ГБ: 64<br />\r\nСлот розширення: немає<br />\r\nТип SIM-карти: Nano-SIM<br />\r\nКількість SIM-карт: 1<br />\r\nПроцесор: Apple A11 Bionic<br />\r\nКількість ядер: 6<br />\r\nЧастота, ГГц: немає даних<br />\r\nАкумуляторна батарея: немає даних<br />\r\nДіагональ, дюйми: 5,8<br />\r\nРоздільна здатність: 2436х1125<br />\r\nОсновна камера, Мп: 12 (f / 1.8) + 12 (f / 2.4)<br />\r\nФронтальна камера, Мп: 7 (f / 2.2)<br />\r\nРозміри, мм: 143.6x70.9x7.7<br />\r\nВага, г: 174<br />\r\nМатеріал корпусу: сталь/скло', '2018-04-11 10:42:00', 1),
(12, 'Apple iPhone 6s 64GB Space Gray', 'Apple', 0, 'phone', 9999, 'https://hotline.ua/img/tx/157/1579950405.jpg', 'Екран (4.7 ", IPS, 1334x750) / Apple A9 (1.8 ГГц) / основна камера: 12 Мп, фронтальна камера: 5 Мп / RAM 2 ГБ / 64 ГБ вбудованої памяті / 3G / LTE / GPS / Nano-SIM / iOS', 'Apple iPhone 6s – оновлена версія моделі iPhone 6. У даному випадку можна сказати, що зміни не тільки еволюційні, але і цілком інноваційні. Крім стандартних поліпшень якості камери і швидкості роботи, компанія розробила і впровадила в iPhone 6s нову технологію сенсорного екрану, яка розширює можливості керування пристроєм. У дисплеї реалізований додатковий сенсорний шар 3D Touch, який тепер сприймає силу торкання в залежності від сили натискання. Також користувачеві стають доступними додаткові функції і контекстні меню і нові жести. На додаток до цього, у корпусі пристрою передбачений модуль Taptic Engine, що відповідає за зворотний звязок при натисканні на екран. Серцем смартфона тепер служить фірмовий процесор Apple A9, що дозволяє не тільки зробити швидкість роботи інтерфейсу блискавичною, а й демонструвати відмінну продуктивність в іграх при збільшеній якості графіки. Традиційна сильна сторона лінійки Apple iPhone – фотокамера, яка також була перероблена, і тепер основна iSight-камера представлена 12-мегапіксельним сенсором, з можливістю запису 4К-відео. Корпус Apple iPhone 6s виконаний з міцного алюмінію 7000-марки.', 'Виробник: Apple\r\n<br />\r\nЛінійка: iPhone 6s\r\n<br />\r\nТип: Смартфон\r\n<br />\r\nПопередньо встановлена ОС: iOS\r\n<br />\r\nОперативна память, ГБ: 2\r\n<br />\r\nВбудована память, ГБ: 64\r\n<br />\r\nСлот розширення: немає\r\n<br />\r\nТип SIM-карти: Nano-SIM\r\n<br />\r\nКількість SIM-карт: 1\r\n<br />\r\nПроцесор: Apple A9 (64-bit)\r\n<br />\r\nКількість ядер: 2\r\n<br />\r\nЧастота, ГГц: 1,8\r\n<br />\r\nАкумуляторна батарея: Li-Ion 1 715 мАг (незмінна)\r\n<br />\r\nДіагональ, дюйми: 4,7\r\n<br />\r\nРоздільна здатність: 1334х750\r\n<br />\r\nОсновна камера, Мп: 12 (f / 2.2)\r\n<br />\r\nФронтальна камера, Мп: 5\r\n<br />\r\nРозміри, мм: 138,3x67,1x7,1\r\n\r\nВага, г: 143<br />\r\n\r\nМатеріал корпусу: алюміній<br />', '2018-06-02 15:30:18', 1),
(13, 'Samsung Galaxy S9 SM-G960 64GB Black', 'Samsung', 0, 'phone', 27999, 'https://hotline.ua/img/tx/164/1646057295.jpg', 'Екран (5.8", Super AMOLED, 2960х1440) / Samsung Exynos 9810 (4 x 2.7 ГГц + 4 x 1.7 ГГц) / основна камера 12 Мп + фронтальна 8 Мп / RAM 4 ГБ / 64 ГБ вбудованої памяті + microSD (до 400 ГБ) / 3G / LTE / GPS / підтримання 2 SIM-карток (Nano-SIM) / Android 8.0 (Oreo) / 3000 мА·год', 'Samsung Galaxy S9 можна назвати абсолютно новим смартфоном, скоріше це поліпшена версія моделі S8. Візуальних змін мінімум: злегка змінилися габарити і вага, але в цілому все так, як і було раніше, хіба що сканер відбитку пальців переїхав під камеру і тепер він розташований у більш зручному місці. З інших зовнішніх відмінностей - нові кольори корпусу. Але головне - усередині. Смартфон оснащений 8-ядереним процесором Exynos 9810 з максимальною частотою 2,8 ГГц. Оперативної памяті - 4 ГБ. На вибір три обсягу памяті: 64, 128 і 256 ГБ. Одне з головних нововведень - основна камера з механічно змінною діафрагмою. Вона може змінюватися від f / 1,5 до f / 2,4. У першому випадку ви зможете створювати знімки з красивим розмиванням фону або при слабкому освітленні, а в другому - різкі кадри з хорошою чіткістю. Зміни є і в запису відео. Тепер ви можете записувати 4К на частоті в 60 кадрів в секунду або 720р на... 960 кадрах в секунду! Це дозволить отримувати ролики в ультра-сповільненій зйомці. В іншому - це як і раніше відмінно оснащений смартфон, в якому є все краще, що може запропонувати індустрія на момент випуску.', 'Виробник: Samsung\r\n<br />\r\nЛінійка: Galaxy S9\r\n<br />\r\nТип: Смартфон\r\n<br />\r\nПопередньо встановлена ОС: Android 8 (Oreo)\r\n<br />\r\nОперативна память, ГБ: 4\r\n<br />\r\nВбудована память, ГБ: 64\r\n<br />\r\nСлот розширення: є\r\n<br />\r\nТип SIM-карти: Nano-SIM\r\n<br />\r\nКількість SIM-карт: 2 (або 1 SIM-карта + карта памяті)\r\n<br />\r\nПроцесор: Samsung Exynos 9810 + GPU Mali-G72 MP18\r\n<br />\r\nКількість ядер: 8\r\n<br />\r\nЧастота, ГГц: 2.8\r\n<br />\r\nАкумуляторна батарея: 3000 мАг (незнімна)\r\n<br />\r\nДіагональ, дюйми: 5.8\r\n<br />\r\nРоздільна здатність: 1440x2960\r\n<br />\r\nОсновна камера, Мп: 12 (f / 1.5-2.4)\r\n<br />\r\nФронтальна камера, Мп: 8 (f / 1.7)\r\n<br />\r\nРозміри, мм: 147.7x68.7x8.5\r\n<br />\r\nВага, г: 163\r\n<br />\r\nМатеріал корпусу: алюміній/скло', '2018-06-03 13:28:35', 1),
(18, 'Samsung C27F591F', 'Samsung', 0, 'monitor', 8549, 'https://hotline.ua/img/tx/901/901664085.jpg', 'Тип матриці: VA<br />\r\nІнтерфейси: VGA,  HDMI,  DisplayPort<br />\r\nЧас реакції матриці: 4 мс<br />\r\nЯскравість дисплея: 250 кд/м²<br />\r\nКонтрастність дисплея: 3000:1<br />\r\nОсобливості: Вигнутий екран', 'Samsung C27F591F (LC27F591FDIXCI) - яскравий представник моніторів в лінійці компанії. Модель виділяється вигнутою формою, що робить експлуатацію більш комфортною, з огляду на велику діагональ в 27 дюймів. Подібний підхід також підсилює ефект занурення в іграх і фільмах. Samsung C27F591F (LC27F591FDIXCI) підтримує FullHD, завдяки чому картинки виглядає вельми чіткою. Монітор підтримує цілий ряд технологій покращення зображення. Відзначити можна також наявність підтримки технології AMD FreeSync. Samsung C27F591F (LC27F591FDIXCI) виконаний в Безрамковий корпусі, завдяки чому створюється враження, що зображення ширяє над підставкою.', 'Виробник:\r\nSamsung\r\n<br />\r\nТип: \r\nРК монітор\r\n<br />\r\nДіагональ екрану, дюймів: \r\n27\r\n<br />\r\nТип РК-матриці: \r\nVA\r\n<br />\r\nФормат зображення:\r\n16:9\r\n<br />\r\nРоздільна здатність, точок:\r\n1920x1080\r\n<br />\r\nЧас реакції, мс: \r\n4\r\n<br />\r\nТип системи підсвітки:\r\nWLED\r\n<br />\r\nМаксимальна яскравість, кд / м2:\r\n250\r\n<br />\r\nКонтрастність (динамічна контрастність):\r\n3000: 1 (Mega)\r\n<br />\r\nЧастота оновлення, Гц: \r\nнемає даних\r\n<br />\r\nDisplayPort: \r\nє\r\n<br />\r\nHDMI: \r\nє\r\n<br />\r\nDVI: \r\nнемає\r\n<br />\r\nЗасоби мультимедіа: \r\nвихід на навушники, аудіовхід', '2018-06-04 21:40:01', 1),
(17, 'Meizu M6s 3/32GB Black', 'Meizu', 0, 'phone', 4899, 'https://hotline.ua/img/tx/167/1670229815.jpg', 'Екран (5.2 ", IPS, 1280x720) / MediaTek MT6750N (4x1.5 ГГц + 4x1 ГГц) / основна камера: 13 Мп, фронтальна камера: 8 Мп / RAM 3 ГБ / 32 ГБ вбудованої памяті + microSD / SDHC (до 128 ГБ ) / 3G / LTE / GPS / A-GPS / ГЛОНАСС / підтримка 2х SIM-карт (Nano-SIM) / Android 7.0 (Nougat) / 3070 мА * ч', 'Meizu M6 Note - смартфон для тих, хто звик мати якісний і збалансований девайс за розумну ціну. Модель порадує не тільки приємними колірними схемами, але при цьому і хорошим оснащенням. Meizu M6 Note поставляється в декількох конфігураціях, які різняться обсягом не тільки вбудованої памяті, але також і оперативної. Тому кожен може трохи скорегувати вибір і підібрати найбільш відповідну вимогам. За достатній для комфортної та безпроблемної роботи рівень продуктивності відповідає 8-ядерна платформа Qualcomm Snapdragon 625. Він дозволяє не тільки переглядати фільми з високою роздільною здатністю, але і скоротати час в сучасних іграх, не кажучи вже про більш тривіальних завданнях. Екран смартфона виконаний за технологією IPS і отримав дозвіл 1920х1080 пікселів, завдяки чому досягається відмінна якість картинки і чіткість. Meizu M6 Note також отримав подвійну камеру, що в свою чергу відкриває додаткові можливості для любителів фотозйомки.', 'Виробник: Meizu\r\n<br />\r\nЛінійка: M6s\r\n<br />\r\nТип: Смартфон\r\n<br />\r\nОперативна память, ГБ: 3\r\n<br />\r\nВбудована память, ГБ: 32\r\n<br />\r\nСлот розширення: є\r\n<br />\r\nТип SIM-карти: Nano-SIM\r\n<br />\r\nКількість SIM-карт: 2 (або 1 SIM-карта + карта памяті)\r\n<br />\r\nПроцесор:Samsung Exynos 7872 + Mali G71\r\n<br />\r\nКількість ядер: 6\r\n<br />\r\nЧастота, ГГц: 2\r\n<br />\r\nАкумуляторна батарея: 3000 (незнімна)\r\n<br />\r\nДіагональ, дюйми: 5,7\r\n<br />\r\nРоздільна здатність: 1440х720\r\n<br />\r\nОсновна камера, Мп: 16 (f / 2.0)\r\n<br />\r\nФронтальна камера, Мп: 8 (f / 2.0)\r\n<br />\r\nРозміри, мм: 152x72.5x8\r\n<br />\r\nВага, г: 160\r\n<br />\r\nМатеріал корпусу: метал', '2018-06-04 21:17:42', 1),
(19, 'Dell U2718Q Black', 'Dell', 0, 'monitor', 23099, '//hotline.ua/img/tx/155/1558524825.jpg', 'Тип матриці: IPS IPS<br />\r\nІнтерфейси: HDMI,  miniDisplayPort,  USB,  2 x DisplayPort<br />\r\nЧас реакції матриці: 5 мс (від сірого до сірого)<br />\r\nЯскравість дисплея: 350 кд/м²<br />\r\nКонтрастність дисплея: 1300:1 (номінал)', 'Dell U2718Q Black (210-AMRZ) - монітор, здатний відображати ультраякісну картинку з високою чіткістю і природною передачею кольору. Модель виконана в корпусі з мінімальними рамками, завдяки чому створюється відчуття повної їх відсутності. Дисплей має діагональ 27-дюймів і виконаний за технологією IPS, яка порадує широким колірним охопленням. Роздільна здатність Dell U2718Q Black (210-AMRZ) становить 3840х2160 точок, що дозволяє досягти найвищого рівня чіткості. Монітор відмінно підходить для роботи з графікою, перегляду фільмів і компютерних ігор. Матове покриття екрану позбавить від відблисків при потраплянні світла. З інтерфейсних розємів для підключення передбачені DisplayPort і HDMI. Також Dell U2718Q Black (210-AMRZ) оснащується USB концентратором для підключення периферії.', 'Виробник :\r\nDell\r\n<br />\r\nТип: \r\nРК монітор\r\n<br />\r\nДіагональ екрану, дюймів: \r\n27\r\n<br />\r\nТип РК-матриці: \r\nIPS\r\n<br />\r\nФормат зображення:\r\n16:9\r\n<br />\r\nРоздільна здатність, точок:\r\n3840x2160\r\n<br />\r\nЧас реакції, мс:\r\n5\r\n<br />\r\nТип системи підсвітки:\r\nWLED\r\n<br />\r\nМаксимальна яскравість, кд / м2:\r\n350\r\n<br />\r\nКонтрастність (динамічна контрастність):\r\n1300:1\r\n<br />\r\nЧастота оновлення, Гц: \r\n60\r\n<br />\r\nDisplayPort: \r\n+ (2х)\r\n<br />\r\nHDMI: \r\nє\r\n<br />\r\nDVI: \r\nнемає\r\n<br />\r\nЗасоби мультимедіа: \r\nаудіовихід', '2018-06-04 22:23:35', 1),
(20, 'LG 29UM59-P', 'LG', 0, 'monitor', 6307, '//hotline.ua/img/tx/153/1534484465.jpg', 'Тип матриці: IPS IPS<br />\r\nІнтерфейси: DVI,  HDMI,  DisplayPort<br />\r\nЧас реакції матриці: 14 мс / 5 мс (GtG)<br />\r\nЯскравість дисплея: 300 кд/м²<br />\r\nКонтрастність дисплея: 1000:1<br />\r\n5000000:1 (динамічна)<br />', 'LG 29UM59-P - 29-ти дюймовий монітор, виконаний з все більш набирає популярність кінематографічним співвідношенням сторін 21: 9. Він не тільки відмінно підходить для перегляду відео, але також дозволяє більш комфортно розмістити робочі інструменти, якщо ви займаєтеся монтажем або обробкою графіки, а також розмістити два документа на одному екрані паралельно. LG 29UM59-P оснащується якісною IPS-матрицею з роздільною здатністю 2560х1080 точок, яка порадує широким колірним охопленням і високою чіткістю. З ним ви по-новому поглянете на улюблені фільми, ігри, а також роботу з документами. LG 29UM59-P - стильний і універсальний монітор, здатний подарувати нові емоції і зручність у використанні.', 'Виробник :\r\nLG\r\n<br />\r\nТип: \r\nРК монітор\r\n<br />\r\nДіагональ екрану, дюймів: \r\n29\r\n<br />\r\nТип РК-матриці: \r\nIPS\r\n<br />\r\nФормат зображення:\r\n21:9\r\n<br />\r\nРоздільна здатність, точок:\r\n2560x1080\r\n<br />\r\nЧас реакції, мс: \r\n5\r\n<br />\r\nТип системи підсвітки:\r\nWLED\r\n<br />\r\nМаксимальна яскравість, кд / м2:\r\n250\r\n<br />\r\nКонтрастність (динамічна контрастність):\r\n1000: 1 (1000000: 1)\r\n<br />\r\nЧастота оновлення, Гц: \r\n56-75\r\n<br />\r\nDisplayPort: \r\nнемає\r\n<br />\r\nHDMI: \r\n+ (2x)\r\n<br />\r\nDVI: \r\nнемає\r\n<br />\r\nЗасоби мультимедіа: \r\nаудіовихід', '2018-06-04 22:34:09', 1),
(21, 'Apple MacBook Air 13', 'Apple', 0, 'notebook', 26999, '//hotline.ua/img/tx/158/1582399075.jpg', 'Екран 13.3" (1440x900) WXGA + LED, глянсовий / Intel Core i5 (1.8 - 2.9 ГГц) / RAM 8 ГБ / SSD 128 ГБ / Intel HD Graphics 6000 / без ОД / Wi-Fi / Bluetooth / веб-камера / macOS Sierra / 1.35 кг\r\nДокладніше: https://rozetka.com.ua/ua/apple_mqd32ua_a/p17929266/', 'Apple MacBook Air 13 "2017 - оновлена версія популярного ультрабука від компанії Apple. Дизайн пристрою залишився незмінним, це все той же тонкий алюмінієвий корпус із загостреними гранями, і фірмовим логотипом на кришці. Зміни в Apple MacBook Air 13" 2017 торкнулися оснащення, тепер він отримав в своє розпорядження стартову конфігурацію з 8 ГБ оперативної памяті. В якості центрального процесора використовується 2-ядерний процесор Intel Core i5, продуктивності якого досить для швидкого та комфортного щоденної роботи. Як і раніше Apple MacBook Air 13 "2017 порадує користувачів тривалим часом автономної роботи, а наявність підсвічування спростить набір тексту при поганому освітленні.', 'Виробник:\r\nApple\r\n<br />\r\nЛінійка:\r\nMacBook Air 13" 2017\r\n<br />\r\nТип: \r\nНоутбук\r\n<br />\r\nКонструкція: \r\nКласичний\r\n<br />\r\nОпераційна система:\r\nmacOS Sierra\r\n<br />\r\nДіагональ, дюймів: \r\n13,3\r\n<br />\r\nРоздільна здатність: \r\n1400x900\r\n<br />\r\nПроцесор:\r\nIntel Core i5-5350U\r\n<br />\r\nЧастота, GHz: \r\n1,8-2,9\r\n<br />\r\nКількість ядер процесора:\r\n2\r\n<br />\r\nОбсяг оперативної памяті, ГБ: \r\n8\r\n<br />\r\nМаксимальний обсяг оперативної памяті, ГБ:\r\n8\r\n<br />\r\nЖорсткий диск, ГБ: \r\nнемає\r\n<br />\r\nSSD, ГБ: \r\n128\r\n<br />\r\nОптичний привід: \r\nнемає\r\n<br />\r\nГрафічний адаптер, обєм памяті:\r\nIntel HD Graphics 6000\r\n<br />\r\nWi-Fi: \r\n802.11 a / b / g / n / ac\r\n<br />\r\nBluetooth: \r\n4.0\r\n<br />\r\nВага, кг:\r\n1,35', '2018-06-04 22:41:47', 1),
(22, 'ASUS ZenBook Pro UX550VE', 'ASUS', 0, 'notebook', 35899, '//hotline.ua/img/tx/159/1597635575.jpg', 'Екран 15.6 "(1920x1080) Full HD, матовий / Intel Core i5-7200U (2.5 - 3.1 ГГц) / RAM 8 ГБ / SSD 256 ГБ / nVidia GeForce GTX 950M, 2 ГБ / без ОД / Wi-Fi / Bluetooth / веб камера / Windows 10 / 1.63 кг / сірий', 'ASUS ZenBook Pro UX550VE - пристрій, якому вдалося поєднати в собі неперевершений іміджевий дизайн і високопродуктивне обладнання. У компанії створили максимально тонкий ноутбук, виконаний в алюмінієвому корпусі і незвичайних для ринку кольорах, які виділяють його серед конкурентів і приковують погляд кожного. ASUS ZenBook Pro UX550VE не просто оснащується яскравим і чітким IPS-екраном, він має Безрамковий виконання що дозволило зменшити габарити і створити ще один wow-ефект. Ноутбук здатний впоратися з будь-яким завданням, завдяки використанню сучасних процесорів 7-го покоління компанії Intel: i5 і i7. Працюють вони в парі з графічним адаптером NVIDIA GeForce GTX 1050Ti. В ASUS ZenBook Pro UX550VE може бути встановлений як SSD, так і HDD накопичувач. Крім підсвічування клавіатури користувачам доступний сканер відбитків пальців, який підвищить безпеку персональних даних.', 'Виробник:\r\nASUS\r\n<br />\r\nЛінійка:\r\nZenBook Pro UX550VE\r\n<br />\r\nТип: \r\nУльтрабук\r\n<br />\r\nКонструкція:\r\nКласичний\r\n<br />\r\nОпераційна система:\r\nWindows 10 Home\r\n<br />\r\nДіагональ, дюймів:\r\n15,6\r\n<br />\r\nРоздільна здатність: \r\n1920x1080\r\n<br />\r\nПроцесор:\r\nIntel Core i5-7300HQ\r\n<br />\r\nЧастота, GHz: \r\n2,5-3,5\r\n<br />\r\nКількість ядер процесора:\r\n4\r\n<br />\r\nОбсяг оперативної памяті, ГБ: \r\n8\r\n<br />\r\nМаксимальний обсяг оперативної памяті, ГБ:\r\n16\r\n<br />\r\nЖорсткий диск, ГБ:\r\nнемає\r\n<br />\r\nSSD, ГБ: \r\n256\r\n<br />\r\nОптичний привід: \r\nнемає\r\n<br />\r\nГрафічний адаптер, обєм памяті:\r\nNVIDIA GeForce GTX 1050Ti, 4 ГБ\r\n<br />\r\nWi-Fi: \r\n802.11 a / b / g / n / ac\r\n<br />\r\nBluetooth: \r\n4.2\r\n<br />\r\nВага, кг:\r\n1,8', '2018-06-04 22:47:54', 1),
(23, 'Razer BlackWidow Ultimate 2016', 'Razer', 0, 'keyboard', 699, '//hotline.ua/img/tx/163/1631489585.jpg', 'Розроблені спеціально для ігор, перемикачі Razer Mechanical мають кращий хід, швидкість спрацьовування і відгук. <br />\r\nЛедве зійшовши з конвеєра, вони стали новим стандартом для киберспортсменов. ', 'Клавіатура; для ігор; дротове підключення; USB; тип клавіш: механічний (Razer Green Switch). Клавіатура Razer BlackWidow 2016 Ultimate оснащена новими механічними перемикачами Razer Green Switch. \r\nВони були розроблені з нуля для підвищення швидкості і реакції ігровий клавіатури Razer BlackWidow до значень, істотно перевищують можливості попередніх поколінь механічних перемикачів. ', 'Виробник :\r\nRazer\r\n<br />\r\nТип:\r\nКлавіатура\r\n<br />\r\nПризначення:\r\nдля ігор\r\n<br />\r\nПідключення:\r\nдротове\r\n<br />\r\nІнтерфейс комунікації з ПК:\r\nUSB\r\n<br />\r\nТип клавіатури:\r\nмультимедійна\r\n<br />\r\nКількість додаткових клавіш:\r\nнемає даних\r\n<br />\r\nМаніпулятор прокрутки:\r\nнемає', '2018-06-04 22:49:23', 1),
(24, 'Logitech K280e', 'Logitech', 0, 'keyboard', 545, '//hotline.ua/img/tx/157/1572496565.jpg', 'Клавіатура / для настільних ПК / дротове підключення / USB / тип клавіш: мембранний / 09.2016', 'Logitech K280e - клавіатура середнього рівня, створена для тих, кому потрібен робочий інструмент для набору тексту і комфортного використання в будь-яких завданнях. Компанія відома своїм ретельним підходом до ергономіки кожного пристрою, тому не дивно, що у неї так багато шанувальників. Logitech K280e має відточену і пророблена розміщення кожної клавіші, завдяки чому працювати за клавіатурою одне задоволення, особливо з огляду на тихий хід. Вона вологостійка, тому можна не турбуватися про пролиту на неї рідини. Logitech K280e оснащується поруч функціональних кнопок, доступних завдяки комбінації з "Fn".', 'Виробник :\r\nLogitech\r\n<br />\r\nТип:\r\nКлавіатура\r\n<br />\r\nПризначення:\r\nдля настільних ПК\r\n<br />\r\nПідключення:\r\nдротове\r\n<br />\r\nІнтерфейс комунікації з ПК:\r\nUSB\r\n<br />\r\nТип клавіатури:\r\nстандартна\r\n<br />\r\nКількість додаткових клавіш:\r\nнемає\r\n<br />\r\nМаніпулятор прокрутки:\r\nнемає', '2018-06-04 22:54:00', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_products`
--
ALTER TABLE `table_products`
  ADD PRIMARY KEY (`products_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблицы `table_products`
--
ALTER TABLE `table_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
