-- Создание таблицы Departments для примера
CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(50) NOT NULL
);

-- Вставка данных в таблицу Departments
INSERT INTO Departments (DepartmentName) VALUES ('HR');
INSERT INTO Departments (DepartmentName) VALUES ('IT');

-- Добавление столбца DepartmentID в таблицу Employees и установка внешнего ключа
ALTER TABLE Employees
ADD DepartmentID INT;

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- Пример JOIN
SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
