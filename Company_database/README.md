1. SQL-запрос для выбора всех студентов, чьи оценки выше средней.
```sql
SELECT * FROM students WHERE grade > (SELECT AVG(grade) FROM students);
```
2. SQL-запрос для подсчета количества заказов для каждого клиента.
```sql
SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id;
```
3. SQL-запрос для выбора среднего возраста пользователей в базе данных.
```sql
SELECT AVG(age) AS average_age FROM users;
```
4. SQL-запрос для обновления информации о товаре с определенным идентификатором.
```sql
UPDATE products SET price = 50 WHERE id = 123;
```
5. SQL-запрос для добавления нового сотрудника в базу данных.
```sql
INSERT INTO employees (name, position, salary) VALUES ('John Doe', 'Manager', 50000);
```
6. SQL-запрос для удаления всех заказов, которые были размещены более года назад.
```sql
DELETE FROM orders WHERE order_date < DATE_SUB(NOW(), INTERVAL 1 YEAR);
```
