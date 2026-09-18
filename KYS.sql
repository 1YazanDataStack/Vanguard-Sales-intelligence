Alter Table FactSales
Add Constraint FK_FactSales_DimCustomers Foreign Key (Customer_key)
references DimCustomers (Customer_key) ;
-----------------------------------------------------------------------------------------------------
Alter Table FactSales 
Add Constraint Fk_FactSales_DimOrders Foreign Key (Order_key)
references DimOrders (Order_key) ;
---------------------------------------------------------------------------------------------------------
Alter Table FactSales
Add Constraint Fk_FactSales_DimProducts Foreign Key (Product_key)
references DimProducts (Product_key) ;
----------------------------------------------------------------------------------------------------
Alter Table FactSales 
Add Constraint Fk_FactSales_DimDate Foreign Key (Date_key) 
references DimDate (Date_key) ;
-----------------------s-------------------------------------------