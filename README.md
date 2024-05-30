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

SQL позволяет:

* получать доступ к данным в системах управления РБД

* описывать данные (их структуру)

* определять данные в БД и управлять ими

* взаимодействовать с другими языками через модули SQL, библиотеки и предваритальные
  компиляторы

* создавать и удалять БД и таблицы

* создавать представления, хранимые процедуры (stored procedures) и функции в БД

* устанавливать разрешения на доступ к таблицам, процедурам и представлениям

---

<!-- Процесс SQL -->
<h4 id="раздел-3">Процесс SQL <a href="#top">↑top↑</a></h4>

При выполнении любой SQL-команды в любой RDBMS (Relational Database Management 
System — система управления РБД, СУБД, например, PostgreSQL, MySQL, MSSQL, SQLite 
и др.) система определяет наилучший способ выполнения запроса, а движок SQL 
определяет способ интерпретации задачи.

В данном процессе участвует несколького компонентов:

* диспетчер запросов (Query Dispatcher)

* движок оптимизации (Optimization Engines)

* классический движок запросов (Classic Query Engine)

* движок запросов SQL (SQL Query Engine) и т.д.

Классический движок обрабатывает все не-SQL-запросы, а движок SQL-запросов не 
обрабатывает логические файлы.

---

<!-- Команды SQL -->
<h4 id="раздел-4">Команды SQL <a href="#top">↑top↑</a></h4>

Стандартными командами для взаимодействия с РБД являются `CREATE`, `SELECT`, 
`INSERT`, `UPDATE`, `DELETE` и `DROP`. Эти команды могут быть классифицированы 
следующим образом:


* `DDL` — язык определения данных (Data Definition Language)

<table>
    <tr>
        <th>№</th>
        <th>Команда</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>CREATE</td>
        <td>Создает новую таблицу, представление таблицы или другой объект в БД</td>
    </tr>
    <tr>
        <td>2</td>
        <td>ALTER</td>
        <td>Модифицирует существующий в БД объект, такой как таблица</td>
    </tr>
    <tr>
        <td>3</td>
        <td>DROP</td>
        <td>Удаляет существующую таблицу, представление таблицы или другой объект в БД</td>
    </tr>
</table>

* `DML` — язык изменения данных (Data Manipulation Language)

<table>
    <tr>
        <th>№</th>
        <th>Команда</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>SELECT</td>
        <td>Извлекает записи из одной или нескольких таблиц</td>
    </tr>
    <tr>
        <td>2</td>
        <td>INSERT</td>
        <td>Создает записи</td>
    </tr>
    <tr>
        <td>3</td>
        <td>UPDATE</td>
        <td>Модифицирует записи</td>
    </tr>
    <tr>
        <td>4</td>
        <td>DELETE</td>
        <td>Удаляет записи</td>
    </tr>
</table>

* `DCL` — язык управления данными (Data Control Language)

<table>
    <tr>
        <th>№</th>
        <th>Команда</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>GRANT</td>
        <td>Наделяет пользователя правамиД</td>
    </tr>
    <tr>
        <td>2</td>
        <td>REVOKE</td>
        <td>Отменяет права пользователя</td>
    </tr>
</table>

*Обратите внимание*: использование верхнего регистра в названиях команд SQL — это 
всего лишь соглашение, большинство СУБД нечувствительны к регистру. Тем не менее, 
форма записи инструкций, когда названия команд пишутся большими буквами, а названия 
таблиц, колонок и др. — маленькими, позволяет быстро определять назначение производимой 
с данными операции.

---

<!-- Что такое таблица? -->
<h4 id="раздел-5">Что такое таблица? <a href="#top">↑top↑</a></h4>

Данные в СУБД хранятся в объектах БД, называемых таблицами (tables). Таблица, как 
правило, представляет собой коллекцию связанных между собой данных и состоит из 
определенного количества колонок и строк.

Таблица — это самая распространенная и простая форма хранения данных в РБД. Вот 
пример таблицы с пользователями (users):

<table>
    <tr>
        <th>userId</th>
        <th>userName</th>
        <th>age</th>
        <th>city</th>
        <th>status</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Igor</td>
        <td>25</td>
        <td>Moscow</td>
        <td>active</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Vika</td>
        <td>26</td>
        <td>Ekaterinburg</td>
        <td>inactive</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Elena</td>
        <td>27</td>
        <td>Ekaterinburg</td>
        <td>active</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Oleg</td>
        <td>28</td>
        <td>Moscow</td>
        <td>inactive</td>
    </tr>
</table>

---

<!-- Что такое поле? -->
<h4 id="раздел-6">Что такое поле? <a href="#top">↑top↑</a></h4>

Каждая таблица состоит из небольших частей — полей (fields). Полями в таблице 
users являются userId, userName, age, city и status. Поле — это колонка таблицы, 
предназначенная для хранения определенной информации о каждой записи в таблице.


Обратите внимание: вместо `userId` и `userName` можно было бы использовать `id` 
и `name`, соответственно. Но при работе с несколькими объектами, содержащими 
свойство `id`, бывает сложно понять, какому объекту принадлежит идентификатор, 
особенно, если вы, как и я, часто прибегаете к деструктуризации. Что касается 
слова `name`, то оно часто оказывается зарезервизованным, т.е. уже используется в 
среде, в которой выполняется код, поэтому я стараюсь его не использовать.

---

<!-- Что такое запись или строка? -->
<h4 id="раздел-7">Что такое запись или строка? <a href="#top">↑top↑</a></h4>

Запись или строка (record/row) — это любое единичное вхождение (entry), существующее 
в таблице. В таблице `users` 5 записей. Проще говоря, запись — это горизонтальное 
вхождение в таблице.

---

<!-- Что такое колонка? -->
<h4 id="раздел-8">Что такое колонка? <a href="#top">↑top↑</a></h4>

Колонка (column) — это вертикальное вхождение в таблице, содержащее всю информацию, 
связанную с определенным полем. В таблице `users` одной из колонок является `city`, 
которая содержит названия городов, в которых проживают пользователи.

---

<!-- Что такое NULL? -->
<h4 id="раздел-9">Что такое NULL? <a href="#top">↑top↑</a></h4>

Нулевое значение (NULL) — это значение поля, которое является пустым, т.е. нулевое 
значение — это значение поля, не имеющего значения. Важно понимать, что нулевое 
значение отличается от значения `0` и от значения поля, содержащего пробелы. Поле 
с нулевым значением - это такое поля, которое осталось пустым при создании записи. 
Также, следует учитывать, что в некоторых СУБД пустая строка (' ') — это `NULL`, а 
в некоторых — это разные значения.

---

<!-- Ограничения -->
<h4 id="раздел-10">Ограничения <a href="#top">↑top↑</a></h4>

Ограничения (constraints) — это правила, применяемые к данным. Они используются для 
ограничения данных, которые могут быть записаны в таблицу. Это обеспечивает точность 
и достоверность данных в БД.

Ограничения могут устанавливаться как на уровне колонки, так и на уровне таблицы.

Среди наиболее распространенных ограничений можно назвать следующие:

* `NOT NULL` — колонка не может иметь нулевое значение

* `DEFAULT` — значение колонки по умолчанию

* `UNIQUE` — все значения колонки должны быть уникальными

* `PRIMARY KEY` — первичный или основной ключ, уникальный идентификатор записи в
  текущей таблице

* `FOREIGN KEY` — внешний ключ, уникальный идентификатор записи в другой таблице
  (таблице, связанной с текущей)

* `CHECK` — все значения в колонке должны удовлетворять определенному условию

* `INDEX` — быстрая запись и извлечение данных

Любое ограничение может быть удалено с помощью команды `ALTER TABLE` и `DROP 
CONSTRAINT` + название ограничения. Некоторые реализации предоставляют сокращения 
для удаления ограничений и возможность отключать ограничения вместо их удаления.

---

<!-- Целостность данных -->
<h4 id="раздел-11">Целостность данных <a href="#top">↑top↑</a></h4>

В каждой СУБД существуют следующие категории целостности данных:

* целостность объекта (Entity Integrity) — в таблице не должно быть дубликатов
  (двух и более строк с одинаковыми значениями)

* целостность домена (Domain Integrity) — фильтрация значений по типу, формату
  или диапазону

* целостность ссылок (Referential integrity) — строки, используемые другими
  записями (строки, на которые в других записях имеются ссылки), не могут быть
  удалены

* целостность, определенная пользователем (User-Defined Integrity) —
  дополнительные правила

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
