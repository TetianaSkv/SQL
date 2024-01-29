
--Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)
SELECT 
OrderDetails.OrderID,
COUNT(*) AS oders_total,
SUM(Products.Price) AS total_orders_cost
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID
HAVING
	total_orders_cost >= 5000


--Вывести страны, в которые было отправлено 3 и более заказов
SELECT
	Country,
	COUNT(*) AS total_orders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Country
HAVING
	total_orders >= 3


--Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)
SELECT ProductName, Quantity,
SUM(Quantity) AS total_sold
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID
ORDER BY total_sold DESC
LIMIT 10


--Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)
SELECT EmployeeID,
SUM(Price*0.05) AS total_salary
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
GROUP BY Orders.EmployeeID



--Дополните схему БД "онлайн-шахматы" функционалом групповых чатов