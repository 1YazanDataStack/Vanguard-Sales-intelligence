USE [Salesx]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create view [dbo].[vw_Summary] as 
select 
Customer_key ,
Order_key ,
Product_key ,
Date_key ,
SUM(sales) as Total_sales ,
SUM( Quantity) as Total_Quantity,
SUM(Discount) as Total_Discount ,
AVG(Sales) as AVG_Sales
from FactSales 
group by Customer_key,Order_key ,Product_key ,Date_key ;
GO

