if exists (
		   select * from
		   sys.tables
		   where name = 'Factsales'
		   and 
		   type = 'U')
drop table Factsales

alter table 
drop constraint FK_factsales_DimDate 

GO

create table Factsales 
		     ( Customer_SK int,
			   Book_SK int,
			   Shipping_methode_SK int,
			   Date_SK int,
			   Sales_Quantity int,
			   price decimal(5,2),
			   total decimal (5,2),
			   tax decimal (5,2),
			   net_sale decimal(5,2),
			   transaction_SK int,
			  
 constraint FK_factsales_DimShipping foreign key (Shipping_methode_SK)
 references DimShipping (Shipping_Surrgot_key),
			  
 constraint FK_factsales_DimDate foreign key (Date_SK)
 references DimDate (DateSK),
			  
 constraint FK_factsales_DimCustomers foreign key(Customer_SK)
 references DimCustomers (Customer_Surrgot_key),
			  
constraint FK_factsales_DimBooks foreign key(Book_SK)
references DimBooks (Book_surrgot_key))

			   