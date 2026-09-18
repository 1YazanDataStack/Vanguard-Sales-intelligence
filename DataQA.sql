Select
COUNT(*) as Original_Count from Sales.dbo.Customers as c
inner join Sales.dbo.Orders as o on o.Customer_id = c.Customer_Id
inner join Sales.dbo.Products as p on p.Order_id = o.Order_Id

select COUNT(*) Joined_Count 
from Salesx.dbo.DimCustomers as dic
inner join DimOrders as dio on dio.Customer_id = dic.Customer_Id
inner join DimProducts as dip on dip.Order_id = dio.Order_id 

