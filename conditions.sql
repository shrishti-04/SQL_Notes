-- where is used for satisfying certain conditions
SELECT * FROM sales
WHERE Amount > 10000;

-- ORDER arranges the column data in ascending manner
SELECT * FROM sales
WHERE Amount > 10000
ORDER BY Amount;

-- ORDER in desc arranges the data in descending manner
SELECT * FROM sales
WHERE Amount > 10000
ORDER BY Amount desc;

-- Select the data where it only includes if GeoID = g1 and amount should be greater than 10000.
-- And arrange it in descending order.
SELECT * FROM sales
WHERE GeoID='g1' AND Amount > 10000
ORDER BY GeoID, Amount DESC;

-- Select the data where amount should be greater than 10000 and the data should be within 2022 year.
SELECT * FROM sales
WHERE Amount > 10000 AND SaleDate >= '2022-01-01';

-- Select the column SaleDate and Amount where amount should be greater than 10000 and the data should 
-- be within 2022 year.
SELECT SaleDate, Amount FROM sales
WHERE Amount > 10000 AND year(SaleDate) = 2022
ORDER BY Amount DESC;

-- Select the boxes from Sales Data in which the boxes are between 0 to 50
SELECT * FROM sales
WHERE Boxes > 0 AND Boxes <= 50;

-- Select the column SaleDate, Amount, Boxes and WeekDay from the data where weekday should be 4 and boxes
-- should be in between 0 to 50
SELECT SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week' FROM sales
WHERE weekday(SaleDate) = 4 AND (Boxes > 0 AND Boxes <= 50)

-- Read People Database
SELECT * FROM people;

-- Select the Team who all are members of either Delish or Jucies
SELECT * FROM people
WHERE Team = 'Delish' OR Team = 'Jucies';

-- Another Method using (in)
SELECT * FROM people
WHERE Team in ('Delish', 'Jucies');

-- Filter the name from the data which starts from the letter B
SELECT * FROM people
WHERE SalesPerson LIKE 'B%';

-- Filter the name from the data in which letter B is present.
SELECT * FROM people
WHERE SalesPerson LIKE '%B%';

-- Categories the Amount under 1k, 5k, 10k or more than that.
SELECT SaleDate, Amount,
    case    when Amount < 1000 then 'Under 1k'
            when Amount < 5000 then 'Under 5k'
            when Amount < 10000 then 'Under 10k'
        else '10k or more'
    end as 'Amount Category'
FROM sales;
