# filter using where clause on ProductID column
SELECT ProductID, sum(Quantity)
FROM OrderDetails
where ProductID = 10;