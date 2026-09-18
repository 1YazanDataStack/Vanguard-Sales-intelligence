insert into DimCustomers( Customer_Id,City,Segment) 
select 
Customer_Id,
City,
Segment 
from Sales.dbo.Customers ;
