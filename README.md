<h1>SQL Notes</h1>
<h2>SQL:</h2><p> SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases. It is used to perform various operations, such as inserting, updating, and retrieving data from a database, creating and altering database structures, and controlling access to the data. SQL is an essential tool for working with databases and is widely used in data analysis and business intelligence applications. </p>

<h3>Show:</h3><p>The "SHOW" statement in SQL is used to display various information about the database and its components, such as the list of databases, tables, views, indexes, etc. Here are a few examples:
<ul>
<li>To show the list of databases:<br>
<i>SHOW DATABASES;</i>
</li>
<li>To show the list of tables in a database:<br>
<i>SHOW TABLES;</i>
</li>
<li>To show the structure of a table:<br>
<i>SHOW COLUMNS FROM table_name;</i>
</li>
</ul></p>
<h3>Describe Function (DESC):</h3><p>The "DESC" statement in SQL is used to describe the structure of a table. It shows information about the columns in a table, such as column name, data type, and constraints.

Here is an example of using the "DESC" statement in SQL:
<br>
<i>DESC table_name;</i>

Note that the exact syntax of the "DESC" statement may vary between different SQL databases (such as MySQL, PostgreSQL, SQL Server, etc.), and some databases may use the "DESCRIBE" statement instead.</p>

<h3>SELECT: </h3><p>The SELECT statement in SQL is used to query data from a database. The * in SELECT * specifies that you want to select all columns from the table.

Here is an example of using the SELECT statement in SQL to retrieve all columns from a table named "database":
<br>
<i>SELECT * FROM database;</i></p>

<p>This statement will retrieve all the rows and columns from the table named "database". You can also specify a specific set of columns to retrieve by listing the column names separated by commas, instead of using *. For example:
<br>
<i>SELECT column1, column2, column3 FROM database;</i></p>

<h2>Calculations in SQL</h2>
<p>SQL allows you to perform various calculations on the data stored in a database. You can use mathematical expressions and functions to manipulate the data and perform operations such as addition, subtraction, multiplication, and division.<br>

<p>Here are a few examples of calculations in SQL:
<ul>
<li>Adding two columns:<br>
<i>SELECT column1 + column2 AS result FROM table_name;</i></li>

<li>Multiplying a column by a constant:<br>
<i>SELECT column1 * 5 AS result FROM table_name;</i></li>

<li>Dividing a column by another column:<br>
<i>SELECT column1 / column2 AS result FROM table_name;</i></li>

<li>Using a built-in mathematical function, such as square root:<br>
<i>SELECT SQRT(column1) AS result FROM table_name;</i></li></ul></p>

<h2>Conditions in SQL</h2>
<p>Conditions in SQL are used to filter the data returned by a query based on specific criteria. The WHERE clause is used to specify the conditions for a query.</p>
<p>Here are a few examples of conditions in SQL:

<ul>
<li>Retrieve rows where a column has a specific value:
<i>SELECT * FROM table_name WHERE column1 = 'value';</i></li>

<li>Retrieve rows where a column is greater than a value:
<i>SELECT * FROM table_name WHERE column1 > 5;</i></li>

<li>Retrieve rows where a column is between two values:
<i>SELECT * FROM table_name WHERE column1 BETWEEN 5 AND 10;</i></li>

<li>Retrieve rows where a column matches a pattern:
<i>SELECT * FROM table_name WHERE column1 LIKE 'A%';</i></li>

<li>You can also use multiple conditions in the WHERE clause using logical operators such as AND and OR. For example:
<i>SELECT * FROM table_name WHERE column1 = 'value' AND column2 > 5;</i>
This query will return rows where column1 has the value 'value' and column2 is greater than 5.</li>
</ul></p>

