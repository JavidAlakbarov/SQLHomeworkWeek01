--1)Write a query to count current and discontinued products.
	SELECT Count(ProductName) FROM Products
	SELECT Count(Discontinued) FROM Products WHERE ((Discontinued)=1)
	SELECT Count(ProductName) as Quantity FROM Products GROUP BY Discontinued;

--2)Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order
	SELECT ProductName ,UnitsOnOrder, UnitsInStock FROM Products WHERE (UnitsOnOrder>UnitsInStock)

--3)Write a query to get discontinued Product list (Product ID and name).
	SELECT ProductID,ProductName FROM Products WHERE (Discontinued=1)

--4)Write a query to get Product list (id, name, unit price) where current products cost less than $20.
	SELECT ProductID,ProductName,UnitPrice FROM Products WHERE (UnitPrice<20)

--5)Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.
	SELECT ProductID,ProductName,UnitPrice FROM Products WHERE (UnitPrice>15 and UnitPrice<25)