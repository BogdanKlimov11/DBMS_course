<h1 id="top">Справочник по языку программирования SQL</h1>

<img src="https://github.com/BogdanKlimov11/DBMS_course/assets/136115919/8318a9fd-1873-4e2c-bbe0-b018a7dc27e7" alt="SQL logo" title="SQL" width="100%" height="auto">

---

<!-- Оглавление -->
<h3>Оглавление</h3>
<nav>
    <ol>
        <li><a href="#раздел-1">Что такое SQL?</a></li>
        <li><a href="#раздел-2">Почему SQL?</a></li>
    	<li><a href="#раздел-3">Процесс SQL</a></li>
        <li><a href="#раздел-4">Команды SQL</a></li>
        <li><a href="#раздел-5">Что такое таблица?</a></li>
        <li><a href="#раздел-6">Что такое поле?</a></li>
        <li><a href="#раздел-7">Что такое запись или строка?</a></li>
        <li><a href="#раздел-8">Что такое колонка?</a></li>
        <li><a href="#раздел-9">Что такое NULL?</a></li>
        <li><a href="#раздел-10">Ограничения</a></li>
        <li><a href="#раздел-11">Целостность данных</a></li>
        <li><a href="#раздел-12">Нормализация БД</a></li>
        <li><a href="#раздел-13">Синтаксис SQL</a></li>
        <li><a href="#раздел-14">Типы данных</a></li>
        <li><a href="#раздел-15">Операторы</a></li>
        <li><a href="#раздел-16">Выражения</a></li>
        <li><a href="#раздел-17">Создание БД</a></li>
        <li><a href="#раздел-18">Удаление БД</a></li>
        <li><a href="#раздел-19">Выбор БД</a></li>
        <li><a href="#раздел-20">Создание таблицы</a></li>
        <li><a href="#раздел-21">Удаление таблицы</a></li>
        <li><a href="#раздел-22">Добавление колонок</a></li>
        <li><a href="#раздел-23">Выборка полей</a></li>
        <li><a href="#раздел-24">Предложение WHERE</a></li>
        <li><a href="#раздел-25">Операторы AND и OR</a></li>
        <li><a href="#раздел-26">Обновление полей</a></li>
        <li><a href="#раздел-27">Удаление записей</a></li>
        <li><a href="#раздел-28">Предложения LIKE и REGEX</a></li>
        <li><a href="#раздел-29">Предложение TOP/LIMIT/ROWNUM</a></li>
        <li><a href="#раздел-30">Предложения ORDER BY и GROUP BY</a></li>
        <li><a href="#раздел-31">Ключевое слово DISTINCT</a></li>
        <li><a href="#раздел-32">Соединения</a></li>
        <li><a href="#раздел-33">Предложение UNION</a></li>
        <li><a href="#раздел-34">Предложение UNION ALL</a></li>
        <li><a href="#раздел-35">Синонимы</a></li>
        <li><a href="#раздел-36">Индексы</a></li>
        <li><a href="#раздел-37">Обновление таблицы</a></li>
        <li><a href="#раздел-38">Очистка таблицы</a></li>
        <li><a href="#раздел-39">Представления</a></li>
        <li><a href="#раздел-40">HAVING</a></li>
        <li><a href="#раздел-41">Транзакции</a></li>
        <li><a href="#раздел-42">Временные таблицы</a></li>
        <li><a href="#раздел-43">Клонирование таблицы</a></li>
        <li><a href="#раздел-44">Подзапросы</a></li>
        <li><a href="#раздел-45">Последовательности</a></li>
    </ol>
</nav>

---

<!-- Что такое SQL? -->
<h4 id="раздел-1">Что такое SQL? <a href="#top">↑top↑</a></h4>

SQL — это язык структурированных запросов (Structured Query Language), позволяющий хранить, 
манипулировать и извлекать данные из реляционных баз данных (далее — РБД, БД).

---

<!-- Почему SQL? -->
<h4 id="раздел-2">Почему SQL? <a href="#top">↑top↑</a></h4>

---

<!-- Процесс SQL -->
<h4 id="раздел-3">Процесс SQL <a href="#top">↑top↑</a></h4>

---

<!-- Команды SQL -->
<h4 id="раздел-4">Команды SQL <a href="#top">↑top↑</a></h4>

---

<!-- Что такое таблица? -->
<h4 id="раздел-5">Что такое таблица? <a href="#top">↑top↑</a></h4>

---

<!-- Что такое поле? -->
<h4 id="раздел-6">Что такое поле? <a href="#top">↑top↑</a></h4>

---

<!-- Что такое запись или строка? -->
<h4 id="раздел-7">Что такое запись или строка? <a href="#top">↑top↑</a></h4>

---

<!-- Что такое колонка? -->
<h4 id="раздел-8">Что такое колонка? <a href="#top">↑top↑</a></h4>

---

<!-- Что такое NULL? -->
<h4 id="раздел-9">Что такое NULL? <a href="#top">↑top↑</a></h4>

---

<!-- Ограничения -->
<h4 id="раздел-10">Ограничения <a href="#top">↑top↑</a></h4>

---

<!-- Целостность данных -->
<h4 id="раздел-11">Целостность данных <a href="#top">↑top↑</a></h4>

---

<!-- Нормализация БД -->
<h4 id="раздел-12">Нормализация БД <a href="#top">↑top↑</a></h4>

---

<!-- Синтаксис SQL -->
<h4 id="раздел-13">Синтаксис SQL <a href="#top">↑top↑</a></h4>

---

<!-- Типы данных -->
<h4 id="раздел-14">Типы данных <a href="#top">↑top↑</a></h4>

---

<!-- Операторы -->
<h4 id="раздел-15">Операторы <a href="#top">↑top↑</a></h4>

---

<!-- Выражения -->
<h4 id="раздел-16">Выражения <a href="#top">↑top↑</a></h4>

---

<!-- Создание БД -->
<h4 id="раздел-17">Создание БД <a href="#top">↑top↑</a></h4>

---

<!-- Удаление БД -->
<h4 id="раздел-18">Удаление БД <a href="#top">↑top↑</a></h4>

---

<!-- Выбор БД -->
<h4 id="раздел-19">Выбор БД <a href="#top">↑top↑</a></h4>

---

<!-- Создание таблицы -->
<h4 id="раздел-20">Создание таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Удаление таблицы -->
<h4 id="раздел-21">Удаление таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Добавление колонок -->
<h4 id="раздел-22">Добавление колонок <a href="#top">↑top↑</a></h4>

---

<!-- Выборка полей -->
<h4 id="раздел-23">Выборка полей <a href="#top">↑top↑</a></h4>

---

<!-- Предложение WHERE -->
<h4 id="раздел-24">Предложение WHERE <a href="#top">↑top↑</a></h4>

---

<!-- Операторы AND и OR -->
<h4 id="раздел-25">Операторы AND и OR <a href="#top">↑top↑</a></h4>

---

<!-- Обновление полей -->
<h4 id="раздел-26">Обновление полей <a href="#top">↑top↑</a></h4>

---

<!-- Удаление записей -->
<h4 id="раздел-27">Удаление записей <a href="#top">↑top↑</a></h4>

---

<!-- Предложения LIKE и REGEX -->
<h4 id="раздел-28">Предложения LIKE и REGEX <a href="#top">↑top↑</a></h4>

---

<!-- Предложение TOP/LIMIT/ROWNUM -->
<h4 id="раздел-29">Предложение TOP/LIMIT/ROWNUM <a href="#top">↑top↑</a></h4>

---

<!-- Предложения ORDER BY и GROUP BY -->
<h4 id="раздел-30">Предложения ORDER BY и GROUP BY <a href="#top">↑top↑</a></h4>

---

<!-- Ключевое слово DISTINCT -->
<h4 id="раздел-31">Ключевое слово DISTINCT <a href="#top">↑top↑</a></h4>

---

<!-- Соединения -->
<h4 id="раздел-32">Соединения <a href="#top">↑top↑</a></h4>

---

<!-- Предложение UNION -->
<h4 id="раздел-33">Предложение UNION <a href="#top">↑top↑</a></h4>

---

<!-- Предложение UNION ALL -->
<h4 id="раздел-34">Предложение UNION ALL <a href="#top">↑top↑</a></h4>

---

<!-- Синонимы -->
<h4 id="раздел-35">Синонимы <a href="#top">↑top↑</a></h4>

---

<!-- Индексы -->
<h4 id="раздел-36">Индексы <a href="#top">↑top↑</a></h4>

---

<!-- Обновление таблицы -->
<h4 id="раздел-37">Обновление таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Очистка таблицы -->
<h4 id="раздел-38">Очистка таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Представления -->
<h4 id="раздел-39">Представления <a href="#top">↑top↑</a></h4>

---

<!-- HAVING -->
<h4 id="раздел-40">HAVING <a href="#top">↑top↑</a></h4>

---

<!-- Транзакции -->
<h4 id="раздел-41">Транзакции <a href="#top">↑top↑</a></h4>

---

<!-- Временные таблицы -->
<h4 id="раздел-42">Временные таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Клонирование таблицы -->
<h4 id="раздел-43">Клонирование таблицы <a href="#top">↑top↑</a></h4>

---

<!-- Подзапросы -->
<h4 id="раздел-44">Подзапросы <a href="#top">↑top↑</a></h4>

---

<!-- Последовательности -->
<h4 id="раздел-45">Последовательности <a href="#top">↑top↑</a></h4>

---

<!-- Contacts -->
<h2>📡 Контакты автора:</h2>
<div id="badges" align="center">
    <a href="https://vk.com/bogdan_klimov">
        <img src="https://img.shields.io/badge/VK-blue?style=for-the-badge&logo=vk&logoColor=white&size=30" alt="VK Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://t.me/bogdanklimov">
        <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/ghost_777_24?igsh=aHdwa2s1cTIzbmhw&utm_source=qr">
        <img src="https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white" alt="Instagram Badge"/>
    </a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.facebook.com/profile.php?id=100033935590093&mibextid=LQQJ4d">
        <img src="https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white" alt="Facebook Badge"/>
    </a>
</div>
