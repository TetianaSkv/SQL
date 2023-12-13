-- 1. Приведите десять типовых бизнес-процессов для предметной области 
-- ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.

-- Загрузка видео: Create
-- Просмотр видео: Read
-- Добавление комментария к видео: Create
-- Просмотр комментариев к видео: Read 
-- Удаление  комментария: Delete
-- Поиск видео:Read 
-- Создание аккаунта пользователя:Create
-- удаление аккаунта пользователя: Delete



-- В рамках БД "песочница" напишите след/запросы:



-- Вывести название и стоимость товаров от 20 до 150 EUR
SELECT ProductName, Price
FROM Products
WHERE 
Price > 20
AND
Price < 150



--Вывести страны поставщиков, кроме тех, что из USA.
SELECT City 
FROM Suppliers
WHERE
NOT Country = 'USA'

--Вывести перевозчика с ID 1
SELECT * 
FROM Shippers
WHERE
 ShipperID = 1

--Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT ContactName
FROM Customers
WHERE
NOT Country = 'France'
And 
NOT Country = 'USA'

--Вывести страну, город и адрес всех поставщиков, кроме тех, что из Japan и Brazil
SELECT Country, City, Address
FROM Suppliers
WHERE
NOT Country = 'Japan'
And 
NOT Country = 'Brazil'