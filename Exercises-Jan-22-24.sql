-- CREATE TABLE Products (
--     ProductID int,
--     ProductName varchar(100),
--     Price float,
--     Category text
-- );
-- INSERT INTO Products(ProductID, ProductName, Price, Category) 
-- VALUES (1, 'Laptop', 1200.00, 'Electronics'),
--     (2, 'Desk Chair', 250.50, 'Furniture');
-- SELECT * FROM Products 
-- CREATE TABLE Employees (
--     EmployeeID int,
--     Firstname text,
--     LastName text,
--     Department text
-- );
-- INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
-- VALUES (1, 'Alice', 'Johnson', 'HR'),
--     (2, 'Bob', 'Smith', 'IT');
-- SELECT FirstName, LastName FROM Employees
CREATE TABLE Books (
    BookID int,
    Title text,
    Aughtor text,
    Price float
);

INSERT INTO
    Books (BookID, Title, Aughtor, Price)
VALUES
    (
        1,
        'The Great Gatsby',
        'F. Scott Fitzgerald',
        10.99
    ),
    (2, '1984', 'George Orwell', 8.99),
    (
        3,
        'The Catcher in the Rye',
        'J. D. Salinger',
        7.99
    );

-- SELECT * FROM Books
CREATE TABLE Courses (
    CourseID int,
    CourseName text,
    Department text,
    Credits int
);

INSERT INTO
    Courses (CourseID, CourseName, Department, Credits)
VALUES
    (
        101,
        'Introduction to Psychology',
        'Psychology',
        3
    ),
    (102, 'Principles of Economics', 'Economics', 4),
    (
        103,
        'Introduction to Computer Science',
        'Computer Science',
        3
    );

-- SELECT CourseName, Department FROM Courses;
CREATE TABLE RestaurantReviews (
    ReviewID int,
    RestaurantName text,
    Rating text,
    Reviewer text,
    ReviewDate date
);

INSERT INTO
    RestaurantReviews (
        ReviewID,
        RestaurantName,
        Rating,
        Reviewer,
        ReviewDate
    )
VALUES
    (
        1,
        'Cafe Mocha',
        'Excellent',
        'John Doe',
        '2022-01-15'
    ),
    (
        2,
        'Burger Corner',
        'Good',
        'Jane Smith',
        '2022-02-20'
    ),
    (
        3,
        'Pasta Place',
        'Excellent',
        'Alice Jones',
        '2022-02-22'
    );

-- SELECT RestaurantName FROM RestaurantReviews WHERE Rating = 'Excellent';
-- CREATE TABLE Products (
--     ProductID int,
--     ProductName text,
--     Price float,
--     Category int
-- );
-- INSERT INTO
--     Products
-- VALUES
--     (1, 'Apple', 0.50, 'Fruit'),
--     (2, 'Bread', 1.50, 'Bakery');
-- SELECT
--     AVG(Price)
-- FROM
--     Products;
CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    QuantitySold int,
    SaleDate date
);

INSERT INTO
    Sales
VALUES
    (101, 1, 50, '2022-01-01'),
    (102, 2, 30, '2022-01-02'),
    (103, 1, 20, '2022-01-03');

-- SELECT SUM(QuantitySold) FROM Sales WHERE ProductID = 1;
CREATE TABLE WeatherData (
    RecordID int,
    Date date,
    Temperature float,
    City text
);

INSERT INTO
    WeatherData
VALUES
    (1, '2022-01-01', 35.2, 'Springfield'),
    (2, '2022-01-01', 28.4, 'Shelbyville');

-- SELECT MAX(Temperature), MIN(Temperature) FROM WeatherData;
CREATE TABLE Orders (
    OrderID int,
    ProductID int,
    OrderDate date
);

CREATE TABLE Products (
    ProductID int,
    ProductName varchar(255)
);

INSERT INTO
    Orders (OrderID, ProductID, OrderDate)
VALUES
    (1, 1, '2023-01-01'),
    (2, 2, '2023-01-02');

INSERT INTO
    Products (ProductID, ProductName)
VALUES
    (1, 'Laptop'),
    (2, 'Desk Chair');

-- SELECT ProductName, OrderDate FROM Orders INNER JOIN Products ON Orders.ProductID = Products.ProductID;
CREATE TABLE Employees (
    EmployeeID int,
    FirstName text,
    LastName text,
    DepartmentID int
);

CREATE TABLE Departments (DepartmentID int, DepartmentName text);

INSERT INTO
    Employees
VALUES
    (1, 'Alice', 'Johnson', 1),
    (2, 'Bob', 'Smith', 2);

INSERT INTO
    Departments
VALUES
    (1, 'HR'),
    (2, 'IT');

SELECT
    FirstName,
    LastName,
    DepartmentName
FROM
    Employees
    INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;