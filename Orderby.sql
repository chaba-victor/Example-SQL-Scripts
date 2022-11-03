# order by in descending order to get top quantity products.
# order by sorts in ascending order by default.
SELECT ProductID, sum(Quantity)
FROM OrderDetails
group by ProductID
order by sum(Quantity) desc
Limit 5;

#Order by can be applied on non-aggregated columns too.
SELECT ProductID, Quantity
FROM OrderDetails
order by Quantity desc
Limit 5;