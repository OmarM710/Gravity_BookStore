IF EXISTS (SELECT name 
           FROM sys.databases 
           WHERE name = 'Gravity_BookStore_DWH')
BEGIN
    DROP DATABASE Gravity_BookStore_DWH
    PRINT 'Database dropped successfully.'
END

--create DWH

create database Gravity_BookStore_DWH