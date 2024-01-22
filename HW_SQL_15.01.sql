
--Вывести сред/стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы t
SELECT 
AVG(Price) AS avg_price
FROM Products
WHERE CategoryID IN (1,2,5)
AND ProductName LIKE 't%'

--Посчитать стоимость заказа 10248
SELECT 
SUM(Price) AS total_cost_order_10248
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE OrderID = 10248


--Вывести ко-во товаров с ценой от 10 до 250 EUR
SELECT 
COUNT(ProductID) AS total_amount_with_price_10_250
FROM Products
WHERE Price BETWEEN 10 AND 250


--Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT SUM(Price) AS total_cost_germany
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Customers.Country = 'Germany'



