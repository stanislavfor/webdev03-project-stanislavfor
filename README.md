WEB DEV - ПОТОК 03

УРОК: ЧАСТЬ 3. ПРОЕКТ. 01. НАСТРОЙКА

Сделать основу и базовую настройку проекта:
1)  Настройка проекта
2)  Переменные HOST и ROOT
3)  Обработка входящего запроса
4)  Создание Роутера
5)  Создание системы модулей
6)  Создание системы шаблонов
7)  Создать БД, подключиться и вывести из нее данные


УРОК: ЧАСТЬ 3. ПРОЕКТ. 02. СИСТЕМА РЕГИСТРАЦИИ ПОЛЬЗОВАТЕЛЕЙ

Сделать систему регистрации и входа пользователей:
1)  Роутер и модули для системы Регистрации
2)  Система регистрации, запись данных пользователя в БД
3)  Вход на сайт
4)  Отображение шапки пользователя и шапки администратора, профиль пользователя в шапке
5)  Редактирование профиля пользователя
6)  Загрузка аватарки пользователя
7)  Система восстановления (сброса) пароля


УРОК: ЧАСТЬ 3. ПРОЕКТ. 03. БЛОГ

Сделать добавление и вывод постов в блог:
1) Проставить в шапке и подвале сайты ссылки на разделы сайта
2) Сделать заготовку под модули и шаблоны для блога
3) Сделать создание нового поста и загрузку изображения для него
4) Вывести посты карточками на странице Блога
5) Вывести картинку-заглушку если у поста не загружена фотография
6) Работа со строками. Обрезка заголовка поста
7) Страница вывода отдельного поста


УРОК: ЧАСТЬ 3. ПРОЕКТ. 04. КАТЕГОРИИ

Сделать CRUD систему для категорий на сайте:
1) Создание заготовки под модули и шаблоны
2) Создание Категорий
3) Нотификации о создании категории
4) Вывод всех категорий в виде таблицы
5) Возможность редактирования названия категорий
6) Удаление категорий


УРОК: ЧАСТЬ 3. ПРОЕКТ. 05. СОЗДАНИЕ ПОСТА

Прорабатываем страницу с отдельным постом:
1) Выбор Категории при создании Поста в Блоге
2) Делаем вывод Категории и Автора на странице Поста
3) Редактирование поста в Блоге
4) Замена картинки при редактировании Поста
5) Подключить визуальный редактор ckEditor
6) Сделать удаление поста
7) Уровни доступа к страницам сайта. Небольшие косметические правки.


УРОК: ЧАСТЬ 3. ПРОЕКТ. 06. КОММЕНТАРИИ

Создаем функционал с добавлением комментариев к постам в блоге:
1) Делаем форму добавление комментария. Комментарии хранятся в БД. Каждый комментарий имеет следующие поля: пост к которому он оставлен, id автора который написал комментарий, дата написания комментария, текст комментария.
2) Делаем вывод комментариев на странице поста.
3) Выводим количество комментариев в заголовке поста.


УРОК: ЧАСТЬ 3. ПРОЕКТ. 07. КОНТАКТЫ

Создаем функционал для раздела Контакты:
1) Создаем маршруты, и шаблон для страницы контактов.
2) Создаем страницу для редактирования контактных данных. Все контакты храним в БД.
3) Отображаем в шаблоне все контакты и БД.
P.S. Форма отправки сообщений → в следующем ДЗ.


УРОК: ЧАСТЬ 3. ПРОЕКТ. 08. СООБЩЕНИЯ

Создаем функционал для отправки сообщений администратору сайта:
1) Настраиваем форму сообщений - чтобы данные из нее записывались в БД.
2) Создаем страницу для отображения всех сообщений пользователей из БД.


УРОК: ЧАСТЬ 3. ПРОЕКТ. 09. СТРАНИЦА "ОБО МНЕ"

Создаем функционал для отправки сообщений администратору сайта:
1) Создаем роутер, модули и шаблоны
2) Заполняем шаблоны для страниц редактирования
3) Редактирование текста - Обо мне, и вывод его на страницу из БД
4) Редактирование Технологий (навыков)
5) Добавление мест работы, и вывод их из БД
6) Создание SVG индикаторов для Технологий
7) Вывод Технологий из БД
8) Страницы редактирования, и кнопки Редактирования должны быть доступны только администратору


УРОК: ЧАСТЬ 3. ПРОЕКТ. 10. ГЛАВНАЯ

Выводим на главную страницу информацию "О авторе" а также "Новые записи из блога":
1) Вывести на главную "О авторе"
2) Вывести на главную "Новые записи из блога"
3) Пройтись по всем ссылкам в навигации в шапке, в панели админа, в подвале - проверить работу всех ссылок, нерабочие скрыть.
4) Проект готов! Но, рекомендуется самостоятельно создать страницу с Портфолио для ссылки навигации "Работы".


______________________________________________________
СДАЧА ДЗ:
1)  Создаем проект на GitHub. 
2)  Добавляем коллаборатора.
3)  Для сдачи ДЗ делаем Pull Request с запросом ревью.
4)  В репозиторий с проектом положить дамп базы данных.

ВАЖНО! 
Имя репозитория и имя БД называем в формате:
WD03-project--[ваша-фамилия]
То есть у вас будет одинаковое имя для репозитория и имени БД.
Это нужно для упрощения и ускорения проверки ДЗ. Спасибо за понимание.
Например, если ваша фамилия Смирнов:
Имя репозитория на GitHub: WD03-project-smirnov
Имя БД: WD03-project-smirnov


______________________________________________________
ТРЕБОВАНИЕ! 
Сертификат “Прошел курс с Отличием” - это всё, что указано для сертификата “Курс прошел”. Плюс следующие моменты:

JS скрипты - Карта в разделе Контакты. 
Подключить и отобразить карту в разделе Контакты. Это может быть Google Maps или Яндекс Карты. У карты сделать свой значок для маркера (указателя) адреса.

PHP часть - Раздел Работы. 
Есть добавление новой работы. Каждая работа обязательно имеет поля для Названия, описания, фотографии, даты публдикации работы. Остальные поля по вашему усмотрению. Вывод всех работ которые добавлены на сайт на общей странице с Работами. Страницы для отдельных работ.