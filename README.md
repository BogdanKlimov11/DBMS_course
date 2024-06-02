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

Нормализация — это процесс эффективной организации данных в БД. Существует две 
главных причины, обуславливающих необходимость нормализации:

* предотвращение записи в БД лишних данных, например, хранения одинаковых данных
  в разных таблицах

* обеспечение "оправданной" связи между данными

Нормализация предполагает соблюдение нескольких форм. Форма — это формат 
структурирования БД. Существует три главных формы: первая, вторая и, соответственно, 
третья. Я не буду вдаваться в подробности об этих формах, при желании, вы без труда 
найдете необходимую информацию.

---

<!-- Синтаксис SQL -->
<h4 id="раздел-13">Синтаксис SQL <a href="#top">↑top↑</a></h4>

Синтаксис — это уникальный набор правил и рекомендаций. Все инструкции SQL должны 
начинаться с ключевого слова, такого как `SELECT`, `INSERT`, `UPDATE`, `DELETE`, 
`ALTER`, `DROP`, `CREATE`, `USE`, `SHOW` и т.п. и заканчиваться точкой с запятой 
(`;`) (точка с запятой не входит в синтаксис `SQL`, но ее наличия, как правило, 
требуют консольные клиенты СУБД для обозначения окончания ввода команды). `SQL` 
не чувствителен к регистру, т.е. `SELECT`, `select` и `SeLeCt` являются 
идентичными инструкицями. Исключением из этого правила является `MySQL`, где 
учитывается регистр в названии таблицы.

**Примеры синтаксиса**

```sql
-- выборка
SELECT col1, col2, ...colN
FROM tableName;

SELECT DISTINCT col1, col2, ...colN
FROM tableName;

SELECT col1, col2, ...colN
FROM tableName
WHERE condition;

SELECT col1, col2, ...colN
FROM tableName
WHERE condition1 AND|OR condition2;

SELECT col2, col2, ...colN
FROM tableName
WHERE colName IN (val1, val2, ...valN);

SELECT col1, col2, ...colN
FROM tableName
WHERE colName BETWEEN val1 AND val2;

SELECT col1, col2, ...colN
FROM tableName
WHERE colName LIKE pattern;

SELECT col1, col2, ...colN
FROM tableName
WHERE condition
ORDER BY colName [ASC|DESC];

SELECT SUM(colName)
FROM tableName
WHERE condition
GROUP BY colName;

SELECT COUNT(colName)
FROM tableName
WHERE condition;

SELECT SUM(colName)
FROM tableName
WHERE condition
GROUP BY colName
HAVING (function condition);

-- создание таблицы
CREATE TABLE tableName (
  col1 datatype,
  col2 datatype,
  ...
  colN datatype,
  PRIMARY KEY (одна или более колонка)
);

-- удаление таблицы
DROP TABLE tableName;

-- создание индекса
CREATE UNIQUE INDEX indexName
ON tableName (col1, col2, ...colN);

-- удаление индекса
ALTER TABLE tableName
DROP INDEX indexName;

-- получение описания структуры таблицы
DESC tableName;

-- очистка таблицы
TRUNCATE TABLE tableName;

-- добавление/удаление/модификация колонок
ALTER TABLE tableName ADD|DROP|MODIFY colName [datatype];

-- переименование таблицы
ALTER TABLE tableName RENAME TO newTableName;

-- вставка значений
INSERT INTO tableName (col1, col2, ...colN)
VALUES (val1, val2, ...valN)

-- обновление записей
UPDATE tableName
SET col1 = val1, col2 = val2, ...colN = valN
[WHERE condition];

-- удаление записей
DELETE FROM tableName
WHERE condition;

-- создание БД
CREATE DATABASE [IF NOT EXISTS] dbName;

-- удаление БД
DROP DATABASE [IF EXISTS] dbName;

-- выбор БД
USE dbName;

-- завершения транзакции
COMMIT;

-- отмена изменений
ROLLBACK;
```

---

<!-- Типы данных -->
<h4 id="раздел-14">Типы данных <a href="#top">↑top↑</a></h4>

Каждая колонка, переменная и выражение в SQL имеют определенный тип данных (data 
type). Основные категории типов данных:

**Точные числовые**

<table>
    <tr>
        <th>Тип данных</th>
        <th>От</th>
        <th>До</th>
    </tr>
    <tr>
        <td>bigint</td>
        <td>-9,223,372,036,854,775,808</td>
        <td>9,223,372,036,854,775,807</td>
    </tr>
    <tr>
        <td>int</td>
        <td>-2,147,483,648</td>
        <td>2,147,483,647</td>
    </tr>
    <tr>
        <td>smallint</td>
        <td>-32,768</td>
        <td>32,767</td>
    </tr>
    <tr>
        <td>tinyint</td>
        <td>0</td>
        <td>1</td>
    </tr>
    <tr>
        <td>decimal</td>
        <td>$-10^{38}+1$</td>
        <td>$10^{38}-1$</td>
    </tr>
    <tr>
        <td>numeric</td>
        <td>$-10^{38}+1$</td>
        <td>$10^{38}-1$</td>
    </tr>
    <tr>
        <td>money</td>
        <td>-922,337,203,685,477.5808</td>
        <td>922,337,203,685,477.5807</td>
    </tr>
    <tr>
        <td>smallmoney</td>
        <td>-214,748.3648</td>
        <td>214,748.3647</td>
    </tr>
</table>

**Приблизительные числовые**

<table>
    <tr>
        <th>Тип данных</th>
        <th>От</th>
        <th>До</th>
    </tr>
    <tr>
        <td>float</td>
        <td>-1.79E + 308</td>
        <td>1.79E + 308</td>
    </tr>
    <tr>
        <td>real</td>
        <td>-3.40E + 38</td>
        <td>3.40E + 38</td>
    </tr>
</table>

**Дата и время**

<table>
    <tr>
        <th>Тип данных</th>
        <th>От</th>
        <th>До</th>
    </tr>
    <tr>
        <td>datetime</td>
        <td>Jan 1, 1753</td>
        <td>Dec 31, 9999</td>
    </tr>
    <tr>
        <td>smalldatetime</td>
        <td>Jan 1, 1900</td>
        <td>Jun 6, 2079</td>
    </tr>
    <tr>
        <td>date</td>
        <td>Дата сохраняется в виде June 30, 1991</td>
        <td></td>
    </tr>
    <tr>
        <td>time</td>
        <td>Время сохраняется в виде 12:30 P.M.</td>
        <td></td>
    </tr>
</table>

**Строковые символьные**

<table>
    <tr>
        <th>№</th>
        <th>Тип данных</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>char</td>
        <td>Строка длиной до 8,000 символов (не-юникод символы, фиксированной длины)</td>
    </tr>
    <tr>
        <td>2</td>
        <td>varchar</td>
        <td>Строка длиной до 8,000 символов (не-юникод символы, переменной длины)</td>
    </tr>
    <tr>
        <td>3</td>
        <td>text</td>
        <td>Строка длиной до 8,000 символов (не-юникод символы, переменной длины)</td>
    </tr>
</table>

**Строковые символьные (юникод)**

<table>
    <tr>
        <th>№</th>
        <th>Тип данных</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>nchar</td>
        <td>Строка длиной до 4,000 символов (юникод символы, фиксированной длины)</td>
    </tr>
    <tr>
        <td>2</td>
        <td>nvarchar</td>
        <td>Строка длиной до 4,000 символов (юникод символы, переменной длины)</td>
    </tr>
    <tr>
        <td>3</td>
        <td>ntext</td>
        <td>Юникод данные переменной длины, длиной до 1,073,741,823 символов</td>
    </tr>
</table>

**Бинарные**

<table>
    <tr>
        <th>№</th>
        <th>Тип данных</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>binary</td>
        <td>Данные размером до 8,000 байт (фиксированной длины)</td>
    </tr>
    <tr>
        <td>2</td>
        <td>varbinary</td>
        <td>Данные размером до 8,000 байт (переменной длины)</td>
    </tr>
    <tr>
        <td>3</td>
        <td>image</td>
        <td>Данные размером до 2,147,483,647 байт (переменной длины)</td>
    </tr>
</table>

**Смешанные**

<table>
    <tr>
        <th>№</th>
        <th>Тип данных</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>timestamp</td>
        <td>Уникальные числа, обновляющиеся при каждом изменении строки</td>
    </tr>
    <tr>
        <td>2</td>
        <td>uniqueidentifier</td>
        <td>Глобально-уникальный идентификатор (GUID)</td>
    </tr>
    <tr>
        <td>3</td>
        <td>cursor</td>
        <td>Объект курсора</td>
    </tr>
    <tr>
        <td>4</td>
        <td>table</td>
        <td>Промежуточный результат, предназначенный для дальнейшей обработки</td>
    </tr>
</table>

---

<!-- Операторы -->
<h4 id="раздел-15">Операторы <a href="#top">↑top↑</a></h4>

Оператор (operators) — это ключевое слово или символ, которые, в основном, используются 
в инструкциях `WHERE` для выполнения каких-либо операций. Они используются как для 
определения условий, так и для объединения нескольких условий в инструкции.


В дальнейших примерах мы будем исходить из предположения, что переменная a имеет значение 
`10`, а `b` — `20`.

**Арифметические**

<table>
    <tr>
        <th>Оператор</th>
        <th>Описание</th>
        <th>Пример</th>
    </tr>
    <tr>
        <td>+ (сложение)</td>
        <td>Сложение значений</td>
        <td>a + b = 30</td>
    </tr>
    <tr>
        <td>- (вычитание)</td>
        <td>Вычитание правого операнда из левого</td>
        <td>b - a = 10</td>
    </tr>
    <tr>
        <td>* (умножение)</td>
        <td>Умножение значений</td>
        <td>a * b = 200</td>
    </tr>
    <tr>
        <td>/ (деление)</td>
        <td>Деление левого операнда на правый</td>
        <td>b / a = 2</td>
    </tr>
    <tr>
        <td>% (деление с остатком/по модулю)</td>
        <td>Деление левого операнда на правый с остатком (возвращается остаток)</td>
        <td>b % a = 0</td>
    </tr>
</table>

**Операторы сравнения**

<table>
    <tr>
        <th>Оператор</th>
        <th>Описание</th>
        <th>Пример</th>
    </tr>
    <tr>
        <td>=</td>
        <td>Определяет равенство значений</td>
        <td>a = b -> false</td>
    </tr>
    <tr>
        <td>!=</td>
        <td>Определяет НЕравенство значений</td>
        <td>a != b -> true</td>
    </tr>
    <tr>
        <td><></td>
        <td>Определяет НЕравенство значений</td>
        <td>a <> b -> true</td>
    </tr>
    <tr>
        <td>></td>
        <td>Значение левого операнда больше значения правого операнда?</td>
        <td>a > b -> false</td>
    </tr>
    <tr>
        <td><</td>
        <td>Значение левого операнда меньше значения правого операнда?</td>
        <td>a < b -> true</td>
    </tr>
    <tr>
        <td>>=</td>
        <td>Значение левого операнда больше или равно значению правого операнда?</td>
        <td>a >= b -> false</td>
    </tr>
    <tr>
        <td><=</td>
        <td>Значение левого операнда меньше или равно значению правого операнда?</td>
        <td>a <= b -> true</td>
    </tr>
    <tr>
        <td>!<</td>
        <td>Значение левого операнда НЕ меньше значения правого операнда?</td>
        <td>a !< b -> false</td>
    </tr>
    <tr>
        <td>!></td>
        <td>Значение левого операнда НЕ больше значения правого операнда?</td>
        <td>a !> b -> true</td>
    </tr>
</table>

**Логические операторы**

<table>
    <tr>
        <th>№</th>
        <th>Оператор</th>
        <th>Описание</th>
    </tr>
    <tr>
        <td>1</td>
        <td>ALL</td>
        <td>Сравнивает все значения</td>
    </tr>
    <tr>
        <td>2</td>
        <td>AND</td>
        <td>Объединяет условия (все условия должны совпадать)</td>
    </tr>
    <tr>
        <td>3</td>
        <td>ANY</td>
        <td>Сравнивает одно значение с другим, если последнее совпадает с условием</td>
    </tr>
    <tr>
        <td>4</td>
        <td>BETWEEN</td>
        <td>Проверяет вхождение значения в диапазон от минимального до максимального</td>
    </tr>
    <tr>
        <td>5</td>
        <td>EXISTS</td>
        <td>Определяет наличие строки, соответствующей определенному критерию</td>
    </tr>
    <tr>
        <td>6</td>
        <td>IN</td>
        <td>Выполняет поиск значения в списке значений</td>
    </tr>
    <tr>
        <td>7</td>
        <td>LIKE</td>
        <td>Сравнивает значение с похожими с помощью операторов подстановки</td>
    </tr>
    <tr>
        <td>8</td>
        <td>NOT</td>
        <td>Инвертирует (меняет на противоположное) смысл других логических операторов, например, NOT EXISTS, NOT IN и т.д.</td>
    </tr>
    <tr>
        <td>9</td>
        <td>OR</td>
        <td>Комбинирует условия (одно из условий должно совпадать)</td>
    </tr>
    <tr>
        <td>10</td>
        <td>IS NULL</td>
        <td>Определяет, является ли значение нулевым</td>
    </tr>
    <tr>
        <td>11</td>
        <td>UNIQUE</td>
        <td>Определяет уникальность строки</td>
    </tr>
</table>

---

<!-- Выражения -->
<h4 id="раздел-16">Выражения <a href="#top">↑top↑</a></h4>

Выражение (expression) — это комбинация значений, операторов и функций для оценки 
(вычисления) значения. Выражения похожи на формулы, написанные на языке запросов. 
Они могут использоваться для извлечения из БД определенного набора данных.

Базовый синтаксис выражения выглядит так:

```sql
SELECT col1, col2, ...colN
FROM tableName
WHERE [condition|expression];
```

Существуют различные типы выражений: логические, числовые и выражения для работы с 
датами.

**Логические**

Логические выражения извлекают данные на основе совпадения с единичным значением.

```sql
SELECT col1, col2, ...colN
FROM tableName
WHERE выражение для поиска совпадения с единичным значением;
```

Предположим, что в таблице `users` имеются следующие записи:

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

Выполняем поиск активных пользователей:

```sql
SELECT * FROM users WHERE status = active;
```

Результат:

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
        <td>3</td>
        <td>Elena</td>
        <td>27</td>
        <td>Ekaterinburg</td>
        <td>active</td>
    </tr>
</table>

**Числовые**

Используются для выполнения арифметических операций в запросе.

```sql
SELECT numericalExpression as operationName
[FROM tableName
WHERE condition];
```

Простой пример использования числового выражения:

```sql
SELECT (10 + 5) AS addition;
```

Результат:

<table>
    <tr>
        <th>addition</th>
    </tr>
    <tr>
        <td>15</td>
    </tr>
</table>

Существует несколько встроенных функций, таких как `count()`, `sum()`, `avg()`, 
`min()`, `max()` и др. для выполнения так называемых агрегирующих вычислений данных 
таблицы или колонки.

```sql
SELECT COUNT(*) AS records FROM users;
```

Результат:

<table>
    <tr>
        <th>records</th>
    </tr>
    <tr>
        <td>4</td>
    </tr>
</table>

* `AVG` — вычисляет среднее значение

* `SUM` — вычисляет сумму значений

* `MIN` — вычисляет наименьшее значение

* `MAX` — вычисляет наибольшее значение

* `COUNT` — вычисляет количество записей в таблице

Также существует несколько встроенных функций для работы со строками:

* `CONCAT` — объединение строк

* `LENGTH` — возвращает количество символов в строке

* `TRIM` — удаляет пробелы в начале и конце строки

* `SUBSTRING` — извлекает подстроку из строки

* `REPLACE` — заменяет подстроку в строке

* `LOWER` — переводит символы строки в нижний регистр

* `UPPER` — переводит символы строки в верхний регистр и т.д.

с числами:

* `ROUND` — округляет число

* `TRUNCATE` — обрезает дробное число до указанного количества знаков после запятой

* `CEILING` — возвращает наименьшее целое число, которое больше или равно текущему
  значению

* `FLOOR` — возвращает наибольшее целое число, которое меньше или равно текущему
  значению

* `POWER` — возводит число в указанную степень

* `SQRT` — возвращает квадратный корень числа

* `RAND` — генерирует случайное число с плавающей точкой в диапазоне от 0 до 1

**Выражения для работы с датами**

Эти выражения, как правило, возвращают текущую дату и время.

```sql
SELECT CURRENT_TIMESTAMP;
```

Результат:

<table>
    <tr>
        <th>Current_Timestamp</th>
    </tr>
    <tr>
        <td>2021-06-20 12:45:00</td>
    </tr>
</table>

`CURRENT_TIMESTAMP` — это и выражение, и функция (`CURRENT_TIMESTAMP()`). Другая 
функция для получения текущей даты и времени — `NOW()`.

Другие функции для получения текущей даты и времени:

* `CURDATE`/`CURRENT_DATE` — возвращает текущую дату

* `CURTIME`/`CURRENT_TIME` — возвращает текущее время и т.д.

Функции для разбора даты и времени:

* `DAYOFMONTH(date)` — возвращает день месяца в виде числа

* `DAYOFWEEK(date)` — возвращает день недели в виде числа

* `DAYOFYEAR(date)` — возвращает номер дня в году

* `MONTH(date)` — возвращает месяц

* `YEAR(date)` — возвращает год

* `LAST_DAY(date)` — возвращает последний день месяца в виде даты

* `HOUR(time)` — возвращает час

* `MINUTE(time)` — возвращает минуты

* `SECOND(time)` — возвращает секунды и др.

Функции для манипулирования датами:

* `DATE_ADD(date, interval)` — выполняет сложение даты и определенного временного
  интервала

* `DATE_SUB(date, interval)` — выполняет вычитание из даты определенного временного
  интервала

* `DATEDIFF(date1, date2)` — возвращает разницу в днях между двумя датами

* `TO_DAYS(date)` — возвращает количество дней с 0-го дня года

* `TIME_TO_SEC(time)` — возвращает количество секунд с полуночи и др.

Для форматирования даты и времени используются функции `DATE_FORMAT(date, format)` и 
`TIME_FORMAT(date, format)`, соответственно.

---

<!-- Создание БД -->
<h4 id="раздел-17">Создание БД <a href="#top">↑top↑</a></h4>

Для создания БД используется инструкция `CREATE DATABASE`.

```sql
CREATE DATABASE dbName;
-- или
CREATE DATABASE IF NOT EXISTS dbName;
```

Условие `IF NOT EXISTS` позволяет избежать получения ошибки при попытке создания БД, 
которая уже существует.

Название БД должно быть уникальным в пределах СУБД.

Создаем БД `testDB`:

```sql
CREATE DATABASE testDB;
```

Получаем список БД:

```sql
SHOW DATABASES;
```

Результат:

<table>
    <tr>
        <th>Database</th>
    </tr>
    <tr>
        <td>information_schema</td>
    </tr>
    <tr>
        <td>postgres</td>
    </tr>
    <tr>
        <td>testDB</td>
    </tr>
</table>

---

<!-- Удаление БД -->
<h4 id="раздел-18">Удаление БД <a href="#top">↑top↑</a></h4>

Для удаления БД используется инструкция `DROP DATABASE`.

```sql
DROP DATABASE dbName;
-- или
DROP DATABASE IF EXISTS dbName;
```

Условие `IF EXISTS` позволяет избежать получения ошибки при попытке удаления несуществующей 
БД.

Удаляем `testDB`:

```sql
DROP DATABASE testDB;
```

*Обратите внимание*: при удалении БД уничтожаются все данные, которые в ней хранятся, так 
что будьте предельно внимательны при использовании данной команды.

Проверяем, что БД удалена:

```sql
SHOW DATABASES;
```

Для получения списка таблиц используется инструкция `SHOW TABLES`.

Результат:

<table>
    <tr>
        <th>Database</th>
    </tr>
    <tr>
        <td>information_schema</td>
    </tr>
    <tr>
        <td>postgres</td>
    </tr>
</table>

---

<!-- Выбор БД -->
<h4 id="раздел-19">Выбор БД <a href="#top">↑top↑</a></h4>

При наличии нескольких БД, перед выполнением каких-либо операций, необходимо выбрать БД. 
Для этого используется инструкция `USE`.

```sql
USE dbName;
```

Предположим, что мы не удаляли `testDB`. Тогда мы можем выбрать ее так:

```sql
USE testDB;
```

---

<!-- Создание таблицы -->
<h4 id="раздел-20">Создание таблицы <a href="#top">↑top↑</a></h4>

Создание таблицы предполагает указание названия таблицы и определение колонок таблицы и их 
типов данных. Для создания таблицы используется инструкция `CREATE TABLE`.

```sql
CREATE TABLE tableName (
  col1 datatype,
  col2 datatype,
  ...
  colN datatype,
  PRIMARY KEY (хотя бы одна колонка)
);
```

Для создания таблицы путем копирования другой таблицы используется сочетание `CREATE TABLE` и 
`SELECT`.

Пример создания таблицы `users`, где первичным ключом являются идентификаторы пользователей, 
а поля для имени и возраста пользователя не могут быть нулевыми:

```sql
CREATE TABLE users (
  userId INT,
  userName VARCHAR(20)  NOT NULL,
  age INT           NOT NULL,
  city VARCHAR(20),
  status VARCHAR(8),
  PRIMARY KEY (id)
);
```

Проверяем, что таблица была создана:

```sql
DESC users;
```

Результат:

<table>
    <tr>
        <th>Field</th>
        <th>Type</th>
        <th>Null</th>
        <th>Key</th>
        <th>Default</th>
        <th>Extra</th>
    </tr>
    <tr>
        <td>userId</td>
        <td>int(11)</td>
        <td>NO</td>
        <td>PRI</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>userName</td>
        <td>varchar(20)</td>
        <td>NO</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>age</td>
        <td>int(11)</td>
        <td>NO</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>city</td>
        <td>varchar(20)</td>
        <td>NO</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>status</td>
        <td>varchar(8)</td>
        <td>YES</td>
        <td></td>
        <td>NULL</td>
        <td></td>
    </tr>
</table>

---

<!-- Удаление таблицы -->
<h4 id="раздел-21">Удаление таблицы <a href="#top">↑top↑</a></h4>

Для удаления таблицы используется инструкция `DROP TABLE`.

*Обратите внимание*: при удалении таблицы, навсегда удаляются все хранящиеся в ней данные, 
индексы, триггеры, ограничения и разрешения, так что будьте предельно внимательны при 
использовании данной команды.

Удаляем таблицу `users`:

```sql
DROP TABLE users;
```

Теперь, если мы попытаемся получить описание `users`, то получим ошибку:

```sql
DESC users;
-- ERROR 1146 (42S02): Table 'testDB.users' doesn't exist
```

---

<!-- Добавление колонок -->
<h4 id="раздел-22">Добавление колонок <a href="#top">↑top↑</a></h4>

Для добавления в таблицу колонок используется инструкция `INSERT INTO`.

```sql
INSERT INTO tableName (col1, col2, ...colN)
VALUES (val1, val2, ...valN);
```

Названия колонок можно не указывать, однако, в этом случае значения должны перечисляться в 
правильном порядке.

```sql
INSERT INTO tableName VALUES (val1, val2, ...valN);
```

Во избежание ошибок, рекомендуется всегда перечислять названия колонок.

Предположим, что мы не удаляли таблицу `users`. Заполним ее пользователями:

```sql
INSERT INTO users (userId, userName, age, city, status)
VALUES (1, 'Igor', 25, 'Moscow', 'active');

INSERT INTO users (userId, userName, age, city, status)
VALUES (2, 'Vika', 26, 'Ekaterinburg', 'inactive');

INSERT INTO users (userId, userName, age, city, status)
VALUES (3, 'Elena', 27, 'Ekaterinburg', 'active');
```

В таблицу можно добавлять несколько строк за один раз.

```sql
INSERT INTO users (userId, userName, age, city, status)
VALUES
(1, 'Igor', 25, 'Moscow', 'active'),
(2, 'Vika', 26, 'Ekaterinburg', 'inactive'),
(3, 'Elena', 27, 'Ekaterinburg', 'active');
```

Также, как было отмечено, при добавлении строки названия полей можно опускать:

```sql
INSERT INTO users
VALUES (4, 'Oleg', 28, 'Moscow', 'inactive');
```

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
