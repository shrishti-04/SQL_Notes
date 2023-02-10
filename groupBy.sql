SELECT geoID, sum(amount), avg(amount), sum(Boxes)
FROM sales
GROUP BY GeoID;

-- Add join function to it and group it by geo
SELECT g.geo, sum(amount), avg(amount), sum(Boxes)
FROM sales s
JOIN geo g ON g.geoID = s.geoID
GROUP BY g.geo

-- Join people and products data with sales data and group it by Team and Categories.
SELECT pr.Category, p.Team, sum(amount), sum(Boxes)
FROM sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.PID = s.PID
GROUP BY p.Team, pr.Category;

-- Join people and products data with sales data and group it by Team and Categories and order it by Team and Categories.
SELECT pr.Category, p.Team, sum(amount), sum(Boxes)
FROM sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.PID = s.PID
GROUP BY p.Team, pr.Category
ORDER BY p.Team, pr.Category;

-- Join people and products data with sales data and group it by Team and Categories and order it by Team and Categories.
-- But the team should not be null.
SELECT pr.Category, p.Team, sum(amount), sum(Boxes)
FROM sales s
JOIN people p ON p.SPID = s.SPID
JOIN products pr ON pr.PID = s.PID
WHERE p.Team <> ''
GROUP BY p.Team, pr.Category
ORDER BY p.Team, pr.Category;

-- Find out top 10 Products with high Amount.
SELECT pr.Product, sum(s.amount) as 'Total Amount'
FROM sales s
JOIN products pr ON pr.PID = s.PID
GROUP BY pr.Product
ORDER BY 'Total Amount' DESC
limit 10;