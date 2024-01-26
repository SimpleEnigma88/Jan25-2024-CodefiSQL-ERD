-- CREATE TABLE Customers (
--     CustomerID int,
--     Name text,
--     Email text
-- );
-- INSERT INTO
--     Customers (CustomerID, Name, Email)
-- VALUES
--     (1, 'Alice Johnson', 'alice.johnson@email.com'),
--     (2, 'Bob Smith', 'bob.smith@email.com'),
--     (3, 'Charlie Brown', 'charlie.brown@email.com');
-- UPDATE
--     Customers
-- SET
--     Email = 'bob.smith@newdomain.com'
-- WHERE
--     CustomerID = 2;
-- DELETE FROM
--     Customers
-- WHERE
--     CustomerID = 3;
-- SELECT
--     *
-- FROM
--     Customers;
-- Exercise 4
-- SELECT
--     Customers.Name,
--     Books.Title,
--     Orders.Quantity
-- FROM
--     Orders
--     JOIN Customers ON Orders.CustomerID = Customers.CustomerID
--     JOIN Books ON Orders.BookID = Books.BookID;
-- Exercise
-- CREATE TABLE Students (
--     StudentID int,
--     Name text
-- );
-- CREATE TABLE Grades (
--     StudentID int,
--     Subject text,
--     Grade int
-- );