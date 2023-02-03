DROP DATABASE IF EXISTS FruitMarket;
-- 1.1
CREATE DATABASE FruitMarket;
USE FruitMarket;

-- 1.2
CREATE TABLE Suppliers(SupplierID VARCHAR(10) NOT NULL PRIMARY KEY,
CompanyName VARCHAR(30) NOT NULL, 
ContactPerson VARCHAR(30) NOT NULL,
ContactNo VARCHAR(13) NOT NULL DEFAULT '000-000-0000',
ProductCategory VARCHAR(55) NOT NULL
);

-- 1.3
CREATE TABLE Products(ProductID INT NOT NULL PRIMARY KEY, 
ProductName VARCHAR(30), 
Price DECIMAL(10, 2),
Weight VARCHAR(10),
Stock INT,
SupplierID VARCHAR(10), FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierID)
);

-- 1.6
INSERT INTO Suppliers VALUES('SUPP0001', 'Fruit City', 'Themba', '0115062089', 'Fruit'), 
('SUPP0002', 'Vegan Veggie Xpress', 'Chinyere', '0137228936', 'Vegetables'),
('SUPP0003', 'The Nut House', 'Sam', '0216965133', 'Nuts'),
('SUPP0004', 'The Lazy Cow', 'Angelo', '0216964157', 'Dairy')
;

-- 1.7
INSERT INTO Products(ProductID, ProductName, Price, Weight, Stock, SupplierID)
VALUES
-- Fruit City
(1001, 'Lady Finger Bananas', 17.95, '750 g', 45, 'SUPP0001'),
(1002, 'Pink Lady Apples', 18.95, '1,5 kg', 15, 'SUPP0001'),
(1003, 'Red Anjou Pears', 22.99, '1 kg', 24, 'SUPP0001'),
(1004, 'Cavendish Bananas', 12.65, '900 kg', 18, 'SUPP0001'),
-- Vegan Veggie Xpress
(2001, 'Tenderstem Broccoli', 35.90, '400 g', 8, 'SUPP0002'),
(2002, 'Portabellini Mushrooms', 18.99, '250 g', 16, 'SUPP0002'),
-- The Nut House
(3001, 'Raw Almonds', 99, '1 kg', 6, 'SUPP0003'),
(3002, 'Macaroon Butter', 32.95, '410 g', 9, 'SUPP0003'),
(3003, 'Organic Coconut Oil', 89.95, '500 ml', 15, 'SUPP0003'),
-- The Lazy Cow
(4001, 'Ayshire Milk', 33.95, '3 l', 23, 'SUPP0004'),
(4002, 'Simonzola Blue Cheese', 27.65, '270 g', 4, 'SUPP0004')
;

SELECT * FROM Products;

SELECT ProductID, ProductName, CONCAT('R', Price) AS Price, Weight, Stock FROM Products;

-- 1.8

SELECT p.ProductID, p.ProductName, p.Price, p.Weight, p.Stock,
s.ProductCategory
FROM Products p
INNER JOIN Suppliers s
USING(SupplierID)
WHERE p.Stock < 20
ORDER BY p.Price DESC;

-- 1.9

CREATE VIEW Q9 AS
SELECT p.ProductID, p.ProductName, p.Price, p.Weight, p.Stock,
s.ProductCategory, round((p.Price * p.Stock * 1.15), 4) AS TotalPrice
FROM Products p
INNER JOIN Suppliers s
USING(SupplierID)
WHERE p.Stock < 20
ORDER BY p.Price DESC;
SELECT * FROM Q9;

-- 1.10

-- CREATE USER 'Deno_r'@'localhost' IDENTIFIED BY '12345';
-- GRANT INSERT, CREATE, SELECT, UPDATE ON FruitMarket.Suppliers TO 'Deno_r'@'localhost';
-- FLUSH PRIVILEGES;

-- 1.11
-- mysql -u deno_r -p 
-- USE FruitMarket;
-- SHOW TABLES;

-- 1.12
INSERT INTO Suppliers VALUES('SUPP006', 'Fruit&Veg', 'Abdu', '0216965111', 'Nuts'); 

-- 1.14

CREATE VIEW Q14 AS
SELECT User, Host
FROM mysql.user
WHERE User IN ('Deno_R', 'root');
SELECT * FROM Q14;

-- 1.15
-- DROP VIEW IF EXISTS Qproducts;
CREATE VIEW Qproducts AS
SELECT ProductID, ProductName, Price, Weight, Stock, SupplierID 
FROM Products
WHERE ProductID IN (1002, 3003, 2002, 1004)
ORDER BY Stock ASC;
SELECT * 
FROM Qproducts;

-- 1.16

-- DROP VIEW IF EXISTS Q1_16;

CREATE VIEW Q1_16 AS
SELECT s.CompanyName, s.ContactNo, p.ProductName, p.Price
FROM Suppliers s
RIGHT JOIN Products p
USING(SupplierID);
SELECT * FROM Q1_16;

-- 1.17
DROP TABLE IF EXISTS Q1_17;
CREATE VIEW Q1_17 AS 
SELECT SUM(Price) AS Total_unit_price,
ROUND(AVG(Price),2) AS  Average_price,
COUNT(ProductID) AS NumbeR_of_products
FROM Products;
SELECT * FROM Q1_17;

-- 1.18
DROP VIEW IF EXISTS Q1_18;
CREATE VIEW Q1_18 AS
SELECT DISTINCT SupplierID
FROM Products;
SELECT * FROM Q1_18;

-- 1.19
DROP VIEW IF EXISTS Q1_19;
CREATE VIEW Q1_19 AS
SELECT COUNT(ProductID) AS 'Count(ProductID)', SupplierID
FROM Products
GROUP BY SupplierID;
SELECT * FROM Q1_19;

-- 1.20
CREATE VIEW Q1_20 AS
SELECT COUNT(ProductID) AS 'Count(ProductID)', SupplierID, 
SUM(Price*Stock) AS 'SUM(Price*Stock)'
FROM Products
GROUP BY SupplierID;
SELECT * FROM Q1_20;

-- 1.21

UPDATE Products
SET Price = 15.95, 
Weight = '1 kg', 
Stock = 18
WHERE ProductID IN (1004);

SELECT ProductID, ProductName, Price, Weight, Stock, SupplierID 
FROM Products
WHERE ProductID IN (1004);

-- 1.26
ALTER TABLE Products RENAME TO Products_Deno;
ALTER TABLE Suppliers RENAME TO Suppliers_Deno;
RENAME TABLE Qproducts TO Q1_15;

ALTER TABLE `Products_Deno` CHANGE COLUMN `ProductID` `ProductID` VARCHAR(10) NOT NULL;
ALTER TABLE `Products_Deno` CHANGE COLUMN `Weight` `Weight` VARCHAR(15);
ALTER TABLE `Products_Deno` CHANGE COLUMN `Stock` `Stock` INT;
ALTER TABLE Products_Deno RENAME COLUMN ColumnName TO Columnname;
ALTER TABLE Products_Deno RENAME COLUMN Stock TO stock;

-- 1.27

-- UPDATE Products_Deno
-- SET Price = 12.36
-- WHERE ProductID = 1004;

SELECT ProductID, ProductName, Price, Weight, Stock, SupplierID 
FROM Products_Deno
WHERE ProductID IN (4001, 1004, 2002, 1002)
ORDER BY Stock DESC;

-- 1.28

-- CREATE VIEW Q1_28 AS
-- SELECT  SupplierID AS 'supplierid', Prices AS 'prices',
-- CONCAT(DISTINCT ProdctName) AS 'group_concat(distinct productName)'
-- FROM Products_Deno
-- GROUP BY ProductName; 
-- SELECT * FROM Q1_28;

-- DROP VIEW IF EXISTS Q1_28;

CREATE VIEW Q1_28 AS
SELECT SupplierID AS 'supplierid', SUM(Prices) AS 'prices',
GROUP_CONCAT(ProductName) AS 'group_concat(productName)'
FROM Products_Deno
GROUP BY SupplierID;
SELECT * FROM Q1_28;
