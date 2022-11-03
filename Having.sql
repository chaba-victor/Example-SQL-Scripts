SELECT ProductID, sum(Quantity)
FROM OrderDetails
group by ProductID
having sum(Quantity) > 350;