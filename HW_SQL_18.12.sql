--В рамках БД "песочница"  напишите след/запросы:


--Вывести данные о товарах (название товара, цена со скидкой_0.5%)
SELECT ProductName,
Price *.995 AS Price_down
FROM Products

--Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)
SELECT 
Orders.OrderID,
Customers.CustomerName,
Customers.Country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
	NOT Customers.Country = 'France'


--Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)
SELECT 
Products.ProductName,
Products.Price * 1.08 AS Price_usd
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price DESC
LIMIT 1

--Вывести список стран, которые поставляют морепродукты
SELECT 
Suppliers.Country
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE 
Categories.CategoryID = 8

--Вывести два самых дорогих товара из категории Beverages из USA
SELECT * 
FROM Categories
JOIN Products ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
CategoryName = 'Beverages'
AND 
Suppliers.Country = 'USA'
ORDER BY Price DESC
LIMIT 2