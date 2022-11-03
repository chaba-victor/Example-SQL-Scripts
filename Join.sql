# joining order details and products data table on productid column
# both the tables have productid as primary key 
SELECT a.*,b.* 
from OrderDetails as a 
inner join 
Products as b 
on a.ProductID = b.ProductID
Limit 5;