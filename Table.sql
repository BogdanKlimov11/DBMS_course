-- Создание таблицы
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Position NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Вставка данных
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
VALUES 
    (1, N'John', N'Doe', N'Manager', 50000.00),
    (2, N'Jane', N'Smith', N'Developer', 60000.00),
    (3, N'Mike', N'Johnson', N'Analyst', 55000.00),
    (4, N'Emily', N'Davis', N'Designer', 48000.00);
