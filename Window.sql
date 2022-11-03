select * 
from
(select c.*,
      ROW_NUMBER() OVER(partition BY c.CategoryID
       ORDER BY c.tot_qty DESC) AS 'Row_Number' 
from (SELECT  b.CategoryID, a.ProductID, sum(a.Quantity) as 'tot_qty'
from OrderDetails as a
inner join 
Products as b
on a.ProductID = b.ProductID
group by b.CategoryID, a.ProductID)c )d
where Row_Number <= 3