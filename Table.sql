-- Создание таблицы
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Вставка данных
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
VALUES 
    (1, 'John', 'Doe', 'Manager', 50000.00),
    (2, 'Jane', 'Smith', 'Developer', 60000.00),
    (3, 'Mike', 'Johnson', 'Analyst', 55000.00),
    (4, 'Emily', 'Davis', 'Designer', 48000.00);
