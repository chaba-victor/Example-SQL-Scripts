# finding the total units sold across products 
SELECT ProductID, sum(Quantity)
FROM OrderDetails
group by ProductID
LIMIT 5;