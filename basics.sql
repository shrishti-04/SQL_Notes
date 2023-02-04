-- this will show the table-- 
show tables;

-- this will describe the table-- 
desc sales;

-- This will select all the columns from your data-- 
select * from sales;

-- selecting a particular column from data (SaleDate, Amount, Customers)
select SaleDate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;

-- Calculation--
select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per Boxes' from sales; 