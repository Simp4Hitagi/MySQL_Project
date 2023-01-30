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
-- DESC Suppliers;
-- 1.3
CREATE TABLE Products(ProductID INT NOT NULL PRIMARY KEY, 
ProductName VARCHAR(30), 
Price DECIMAL(10, 2),
Weight VARCHAR(10),
Stock INT,
SupplierID VARCHAR(10), FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierID)
);

-- DESC Products;

-- 1.6
INSERT INTO Suppliers VALUES('SUPP0001', 'Fruit City', 'Themba', '0115062089', 'Fruit'), 
('SUPP0002', 'Vegan Veggie Xpress', 'Chinyere', '0137228936', 'Vegetables'),
('SUPP0003', 'The Nut House', 'Sam', '0216965133', 'Nuts'),
('SUPP0004', 'The Lazy Cow', 'Angelo', '0216964157', 'Dairy')
;
-- SELECT * FROM Suppliers;

-- 1.7
-- DROP TABLE IF EXISTS Products;
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

SELECT ProductID, ProductName, CONCAT('R', Price) AS Price, Weight, Stock FROM Products;


-- 1.8
-- SELECT * FROM Products ORDER BY Price DESC;
-- SELECT * FROM Products WHERE Stock < 20;

-- SELECT p.ProductID, p.ProductName, p.Price, p.Weight, p.Stock, 
-- s.ProductCategory
-- FROM Products p
-- RIGHT JOIN Suppliers s
-- USING(SupplierID);
--  SELECT * FROM Products ORDER BY Price DESC;
--  SELECT * FROM Products WHERE Stock < 20;

-- 1.9

-- WHERE TotalPrice = (Price * Stock) + 15%

-- ALTER TABLE Products
-- ADD TotalPrice INT;

-- CREATE VIEW Q9 AS 
-- SELECT ProductID, ProductName, Price, Weight, Stock
-- FROM Products
-- WHERE (Price * Stock) + (100/15) = TotalPrice;
-- SELECT * FROM Products;