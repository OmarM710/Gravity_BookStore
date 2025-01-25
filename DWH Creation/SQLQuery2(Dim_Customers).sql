if exists ( 
		   select * from
		   sys.foreign_keys
		   where name = 'FK_factsales_DimCustomers'
		   and 
		   object_id= OBJECT_ID('Fact Sales'))

alter table FactSales 
drop constraint FK_factsales_DimCustomers
GO

if exists (
		   select * from
		   sys.tables
		   where name = 'DimCustomers'
		   and 
		   type = 'U')
drop table DimCustomers 

GO
-- create table Dim customers

create table DimCustomers
			(Customer_Surrgot_key int primary key identity,
			 customer_id int,
			 Cust_fname varchar(200),
			 Cust_lname varchar(200),
			 Email varchar(350),
			 StartDate datetime,
			 EndDate datetime, 
			 IsCurrent int,
			 Customer_address varchar(200)) 



 

