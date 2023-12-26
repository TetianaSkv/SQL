-- В рамках БД "песочница" напишите след/запросы:


--Вывести предпоследний заказ
SELECT * 
FROM Orders
ORDER BY OrderID DESC
LIMIT 1


--Вывести пять самых старых заказов
SELECT * 
FROM Orders
ORDER BY OrderID ASC
LIMIT 5


--Вывести номера телефонов поставщиков, кроме тех, что из UK и Brazil
SELECT Phone 
FROM Suppliers
WHERE 
NOT Country IN ('UK', 'Brasil')


--Вывести товары из категорий 4 и 5 с ценой до 250 EUR (вкл.)
SELECT * 
FROM Products
WHERE
Price <= 250
AND
CategoryID IN (4,5)


--Дайте ответ на вопрос, зачем нужна проекция в БД
-- для того, чтобы например из таблицы выбрать только необходимые столбцы