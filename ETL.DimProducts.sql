insert into DimProducts(Product_id , Order_id , Manufactory , Category,Subcategory) 
select 
p.Product_id ,
o.Order_id ,
p.Manufactory ,
p.Category,
p.Subcategory
from Sales.dbo.Products as p 
inner join DimOrders as o on o.Order_id = p.Order_id ;