if exists ( 
		   select * from
		   sys.foreign_keys
		   where name = 'FK_factsales_DimShipping'
		   and 
		   object_id= OBJECT_ID('Fact Sales'))

alter table FactSales 
drop constraint FK_factsales_DimShipping


if exists (
		   select * from
		   sys.tables
		   where name = 'DimShipping'
		   and 
		   type = 'U')
drop table DimShipping 

GO
-- create table Dim Shipping
 create table DimShipping
			  ( Shipping_Surrgot_key int primary key identity,
			    Shipping_method_id int,
				Shipping_method_name varchar(100),
				cost decimal (6,2),
				street_name varchar(200),
				city varchar(100),
				country varchar(200),
				Ship_date datetime,
				start_date datetime,
				end_date datetime,
				is_current int,
				Status_date datetime,
				Status_value varchar(20))

--alter table DimShipping
--add Status_date datetime, Status_value varchar(30)