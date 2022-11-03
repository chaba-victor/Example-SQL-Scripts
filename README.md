# 10 Common SQL Operations

Relational databases (tabular data) are the most common types of databases; it constitutes about 70% of the total data being captured.
SQL is one of the most used programming languages for manipulating relational data. It is employed actively by Data Analysts/Engineers for manipulation tasks.
We will now look through 10 of the most used SQL operations. Let’s get started:


## 1. Limit
Looking at the rows will give you an idea of the values within the different columns of the data table. Fetching and looking at ‘all’ the rows of the data table is an expensive operation, it takes time and resources. So, the functionality to fetch 1st few rows of the data table becomes very helpful. Limit clause is used to fetch the top rows of a data table.

 2. Distinct: Using Distinct, we can find the distinct values within a column, and applying the count function gives the count of distinct values in that column. For example, we can find the count of distinct (or unique) product ids using the following code.
 
 
 3. Aggregation: Aggregation operation is used to find the sum, count, min, max, etc of the values of a column. For example, if we want to find the total quantity (or units) of products sold we can apply the sum function to the quantity column. Similarly, we can also find the maximum units sold for a product by applying the max function on quantity column.
 
 
 4. Groupby: Groupby is used to find the aggregations/groups at the column level. Groupby is used along with the aggregations such as sum, min, max, count, etc. For example, in order to find the total units sold for all the products, we can group by product id and find the sum of quantity.
 
 
 5. Where: Where clause is used to filter the rows based on some column values. For example, imagine if we want to look at the total quantity sold corresponding to product id 10, we can use the where clause on the product id column.




6. Having: Having clause is used to apply a filter on the aggregated columns/values. For example, imagine we want to find the products having a total quantity sold greater than 350 units, we can use the having clause to apply the filter on aggregated quantity.



7. Order by: Order by clause is used to sort the values of a column by ascending (by default) or descending order. For example, if we want to find the products with the maximum quantity sold for the retailer, then we can use the order by function.


8. Join: Join is used to combine the information present in 2 data tables into a single table. Image, if we want to get the information about the products, we can join the order details table with the product table to get the product info. In order to join 2 data tables, we need to join them on the primary key(or columns) that are common in both the tables. In the example below, we are applying inner join between both the tables using the ProductID column.


9. Window: The window function is used to apply functions on a subset/window of data. For example, in order to find the top 3 selling products within each category, we can partition our data by category column (partition by CategoryID), sort it by total quantity (high to low), attach the row number to each row and filter the first 3 rows (as shown in the code below).


10. LIKE: Like operator is used along with the ‘Where’ clause for searching a specific pattern within a column. For example, in order to find the suppliers whose contact number starts with code 171, we can use the following code:
