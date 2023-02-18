<h1>SQL Notes</h1>
<h2>SQL:</h2><p> SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases. It is used to perform various operations, such as inserting, updating, and retrieving data from a database, creating and altering database structures, and controlling access to the data. SQL is an essential tool for working with databases and is widely used in data analysis and business intelligence applications. </p>

<h3>Show:</h3><p>The "SHOW" statement in SQL is used to display various information about the database and its components, such as the list of databases, tables, views, indexes, etc. Here are a few examples:

<ul>
<li>To show the list of databases:<br>
   <pre>SHOW DATABASES;</pre>
</li>
<li>To show the list of tables in a database:<br>
   <pre>SHOW TABLES;</pre>
</li>
<li>To show the structure of a table:<br>
   <pre>SHOW COLUMNS FROM table_name;</pre>
</li>
</ul>

</p>
<h3>Describe Function (DESC):</h3><p>The "DESC" statement in SQL is used to describe the structure of a table. It shows information about the columns in a table, such as column name, data type, and constraints.

Here is an example of using the "DESC" statement in SQL:
<br>
<pre>DESC table_name;</pre>

Note that the exact syntax of the "DESC" statement may vary between different SQL databases (such as MySQL, PostgreSQL, SQL Server, etc.), and some databases may use the "DESCRIBE" statement instead.</p>

<h3>SELECT: </h3><p>The SELECT statement in SQL is used to query data from a database. The * in SELECT * specifies that you want to select all columns from the table.

Here is an example of using the SELECT statement in SQL to retrieve all columns from a table named "database":
<br>
<pre>SELECT * FROM database;</pre></p>

<p>This statement will retrieve all the rows and columns from the table named "database". You can also specify a specific set of columns to retrieve by listing the column names separated by commas, instead of using *. For example:
<br>
<pre>SELECT column1, column2, column3 FROM database;</pre></p>

<h2>Calculations in SQL</h2>
<p>SQL allows you to perform various calculations on the data stored in a database. You can use mathematical expressions and functions to manipulate the data and perform operations such as addition, subtraction, multiplication, and division.<br>

<p>Here are a few examples of calculations in SQL:
<ul>
<li>Adding two columns:<br>
<pre>SELECT column1 + column2 AS result FROM table_name;</pre></li>

<li>Multiplying a column by a constant:<br>
<pre>SELECT column1 * 5 AS result FROM table_name;</pre></li>

<li>Dividing a column by another column:<br>
<pre>SELECT column1 / column2 AS result FROM table_name;</pre></li>

<li>Using a built-in mathematical function, such as square root:<br>
<pre>SELECT SQRT(column1) AS result FROM table_name;</pre></li></ul></p>

<h2>Conditions in SQL</h2>
<p>Conditions in SQL are used to filter the data returned by a query based on specific criteria. The WHERE clause is used to specify the conditions for a query.</p>
<p>Here are a few examples of conditions in SQL:

<ul>
<li>Retrieve rows where a column has a specific value:<br>
<pre>SELECT * FROM table_name WHERE column1 = 'value';</pre></li>

<li>Retrieve rows where a column is greater than a value:<br>
<pre>SELECT * FROM table_name WHERE column1 > 5;</pre></li>

<li>Retrieve rows where a column is between two values:<br>
<pre>SELECT * FROM table_name WHERE column1 BETWEEN 5 AND 10;</pre></li>

<li>Retrieve rows where a column matches a pattern:<br>
<pre>SELECT * FROM table_name WHERE column1 LIKE 'A%';</pre></li>

<li>You can also use multiple conditions in the WHERE clause using logical operators such as AND and OR. For example:<br>
<pre>SELECT * FROM table_name WHERE column1 = 'value' AND column2 > 5;</pre>
This query will return rows where column1 has the value 'value' and column2 is greater than 5.</li>
</ul></p>

<h3>ORDER Function</h3>
<p>The ORDER BY clause in SQL is used to sort the results of a query in ascending or descending order based on one or more columns.</p>

<p>Here is an example of using the ORDER BY clause in SQL:</p>

<p><pre>SELECT * FROM table_name ORDER BY column1;</pre></p>
<p>This statement will retrieve all the rows from the table "table_name" and sort the results based on the values in the "column1" column in ascending order. By default, the ORDER BY clause sorts the results in ascending order, but you can sort in descending order by using the DESC keyword. For example:</p>

<p><pre>SELECT * FROM table_name ORDER BY column1 DESC;</pre></p>

<p>This statement will sort the results in descending order based on the values in the "column1" column. You can also sort the results based on multiple columns by listing the columns separated by commas in the ORDER BY clause. For example:</p>

<p><pre>SELECT * FROM table_name ORDER BY column1, column2;</pre></p>

<p>This statement will sort the results first based on the values in the "column1" column, and then by the values in the "column2" column if there are any ties in the values of the "column1" column.</p>

<h2>Joins in SQL</h2>

<p>Joins in SQL are used to combine data from two or more tables based on a related column between them. The most common types of joins are INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.</p>

<p>Here is an example of using an INNER JOIN in SQL:<br>
<pre>SELECT *<br>
FROM table1<br>
JOIN table2<br>
ON table1.column1 = table2.column2;</pre></p>

<p>This statement will return only the rows from both tables where there is a match on the values of table1.column1 and table2.column2. The ON clause specifies the join condition.</p>

<p>Here is an example of using a LEFT JOIN in SQL:<br>
<pre>SELECT *<br>
FROM table1<br>
LEFT JOIN table2<br>
ON table1.column1 = table2.column2;</pre></p>

<p>This statement will return all the rows from the left table (table1), and the matching rows from the right table (table2). If there is no match, the columns from the right table will be filled with NULL values.</p>

<p>Similarly, a RIGHT JOIN returns all the rows from the right table (table2), and the matching rows from the left table (table1). If there is no match, the columns from the left table will be filled with NULL values.</p>

<p>A FULL OUTER JOIN returns all the rows from both tables, and if there is no match, the columns from either table will be filled with NULL values.</p>

<p>Note that the exact syntax for joins may vary between different SQL databases.</p>

<h2>Group By in SQL</h2>

<p>The GROUP BY clause in SQL is used to group rows that have the same values into summary rows, like "find the number of customers in each city". The GROUP BY clause is often used with aggregate functions such as SUM, AVG, COUNT, MIN, and MAX to perform a calculation on each group.</p>

<p>Here is an example of using the GROUP BY clause in SQL:<br>
<pre>SELECT column1, COUNT(*)<br>
FROM table_name<br>
GROUP BY column1;<br></pre></p>

<p>This statement will retrieve the distinct values in column1, and return the count of the number of rows for each value.</p>

<p>You can also use multiple columns in the GROUP BY clause to group the data by multiple levels. For example:</p>

<p><pre>SELECT column1, column2, SUM(column3)<br>
FROM table_name<br>
GROUP BY column1, column2;<br></pre></p>

<h2>Strings in SQL</h2>

<p>SQL provides a variety of functions for working with strings. Some of the most commonly used string functions are:</p>
<p><ul>
<li>CONCAT: This function is used to concatenate (combine) two or more strings into a single string. For example: CONCAT('Hello, ', 'world!') will return Hello, world!.</li>
<li>LENGTH: This function returns the number of characters in a string. For example: LENGTH('Hello, world!') will return 13</li>
<li>SUBSTRING: This function returns a portion of a string. For example: SUBSTRING('Hello, world!', 7, 5) will return world.</li>
<li>TRIM: This function is used to remove spaces from the beginning and end of a string. For example: TRIM(' Hello, world! ') will return Hello, world!.</li>
<li>UPPER and LOWER: These functions are used to convert a string to uppercase or lowercase, respectively. For example: UPPER('Hello, world!') will return HELLO, WORLD!, and LOWER('Hello, world!') will return hello, world!.</li>
<li>REPLACE: This function is used to replace a portion of a string with another string. For example: REPLACE('Hello, world!', 'world', 'SQL') will return Hello, SQL!.</li></ul></p>

<p>These functions can be used in SQL queries to manipulate strings and create new columns with modified string values.</p>

<h3>Distinct</h3>

<p>The DISTINCT keyword in SQL is used to return only unique (distinct) values in the result set of a query. When a query is executed with the DISTINCT keyword, it returns only one row for each unique combination of values in the selected columns.</p>

<p>Here's an example of using the DISTINCT keyword in a SQL query:</p>
<p><pre>SELECT DISTINCT column1, column2 <BR>
FROM table_name;</pre></p>

<p>In this example, the query is selecting data from the table_name table and returning only the unique combinations of values in columns column1 and column2. Any duplicates in the result set will be removed.</p>

<p>The DISTINCT keyword is often used to eliminate duplicate values and ensure that the result set only contains unique values.</p>

<h3>Having</h3>
<p>HAVING is a SQL clause that is used in conjunction with the GROUP BY clause to filter the results of a query based on aggregated values.</p>

<p>When you use the GROUP BY clause, the result set is divided into groups based on the values in the specified columns. The HAVING clause is then used to filter these groups based on the result of an aggregate function, such as SUM, COUNT, AVG, MIN, or MAX.

For example, suppose you have a table of orders with columns for order_id, customer_id, order_date, and order_total. You want to find the total order value for each customer and only return the results for customers with a total order value greater than 1000.

You can use the GROUP BY clause to group the orders by customer_id and the SUM function to calculate the total order value for each customer. The HAVING clause can then be used to filter the results based on the sum of the order totals for each customer:</p>

<p><pre>SELECT customer_id, SUM(order_total) as total_order_value <br>
FROM orders <br>
GROUP BY customer_id <br>
HAVING SUM(order_total) > 1000;<br></pre></p>

<p>In this example, the HAVING clause is used to filter the groups based on the total order value for each customer. The groups that have a total order value greater than 1000 will be included in the result set.

Note that the HAVING clause is applied after the GROUP BY clause, so it can only reference columns that are being grouped or aggregated. Any columns that are not included in the GROUP BY or aggregate functions must be referenced in the SELECT statement.</p>

