insert into FactSales(Customer_key ,Order_key ,Product_key ,Date_key,Sales,
Quantity,Discount,Profit,Profit_Margin)
select 
Dic.Customer_key ,
Dio.Order_key ,
Dip.Product_key ,
did.Date_key,
S.Sales,
S.Quantity,
S.Discount,
S.Profit,
S.Profit_Margin 
from sales.dbo.Sales as s
inner join Salesx.dbo.DimOrders as o on o.Order_id = s.Sale_Id
inner join DimProducts as dip on dip.Product_key = s.Sale_Id
inner join DimOrders as dio on dio.Order_id = dip.Order_id 
inner join DimCustomers as dic on dic.Customer_Id = dio.Customer_id
inner join DimDate as did on did.Date_key =CAST(CONVERT(varchar(8),dio.Order_Date , 112) AS int)