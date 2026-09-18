insert into DimOrders( Customer_id,Order_id,Order_Date,ship_Date)
select 
dic.Customer_id,
o.Order_id,Order_Date,
o.ship_Date 
FROM Sales.dbo.Orders as o
inner join DimCustomers as dic on dic.Customer_Id = o.Customer_id ;

