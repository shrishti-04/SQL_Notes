SELECT * FROM sales;

SELECT * FROM people;

-- Joining sales Data and people data
SELECT s.saleDate, s.amount, p.Salesperson, p.SPID, s.SPID
FROM sales s
JOIN people p on p.SPID = s.SPID;

-- using left join
SELECT s.saleDate, s.amount, pr.product
FROM sales s
Left JOIN products pr on pr.PID = s.PID;

-- Joining multiple data with each other
SELECT s.saleDate, s.amount, pr.product, p.Salesperson, p.Team
FROM sales s
JOIN people p on p.SPID = s.SPID
JOIN products pr on pr.PID = s.PID;

-- Adding Conditions in Joins function where amount should be greater than 10000
-- and people should be of Delish Team.
SELECT s.saleDate, s.amount, pr.product, p.Salesperson, p.Team
FROM sales s
JOIN people p on p.SPID = s.SPID
JOIN products pr on pr.PID = s.PID
WHERE Amount > 5000
and p.Team = 'Delish';

-- Same thing but the salesperson should not be in any team --
SELECT s.saleDate, s.amount, pr.product, p.Salesperson, p.Team
FROM sales s
JOIN people p on p.SPID = s.SPID
JOIN products pr on pr.PID = s.PID
WHERE Amount > 5000
AND p.Team = '';

-- Same thing but the person should belong to New Zealand or India, also sort 
-- saleDate in ascending order and data should be within year 2022
SELECT s.saleDate, s.amount, pr.product, p.Salesperson, p.Team, g.Geo
FROM sales s
JOIN people p on p.SPID = s.SPID
JOIN products pr on pr.PID = s.PID
JOIN geo g on g.geoID = s.geoID
WHERE Amount > 5000
AND p.Team = ''
AND g.Geo in ('New Zealand', 'India')
AND year(saleDate) = 2022
ORDER BY saleDate;


