# Gravity Books Data Warehouse Project

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## Table of Contents
1. [Overview](#overview)
2. [Project Steps](#project-steps)
   - [Create the `gravity_books` Database](#1-create-the-gravity_books-database)
   - [Design the Data Warehouse Model](#2-design-the-data-warehouse-model)
   - [Implement the Data Warehouse on SSMS](#3-implement-the-data-warehouse-on-sql-server-management-studio-ssms)
   - [Maintain Data Integrity](#4-maintain-data-integrity-between-fact-and-dimension-tables)
   - [ETL Process](#5-etl-process-populate-data-from-gravity_books-to-gravity_books_dwh)
   - [Design an SSAS Project](#6-design-an-ssas-project-tabular-mode)
   - [BI Self-Service Reporting](#7-bi-self-service-reporting)
3. [Tools and Technologies](#tools-and-technologies)
4. [License](#license)
5. [How to Contribute](#how-to-contribute)
6. [Credits](#credits)

## Overview
This project focuses on the development of a data warehouse solution for the `gravity_books` transactional database. The objective is to implement a robust Business Intelligence (BI) solution, enabling efficient data analysis and reporting. Below are the main steps and deliverables of the project, presented in detail.

## Project Steps
### 1. Create the `gravity_books` Database
- Designed and implemented the `gravity_books` transactional database in SQL Server.
- Defined normalized schemas to support efficient transactional operations.
- Populated the database with sample transactional data, including tables such as:
  - `Books`
  - `Authors`
  - `Sales`
  - `Customers`
  - `Categories`

### 2. Design the Data Warehouse Model
- Analyzed the transactional database to define the dimensional modeling approach.
- Created a star schema to ensure simplicity and efficiency in analytical queries.
- Defined the following key components:
  - **Fact Table**: `Sales_Fact`
  - **Dimension Tables**:
    - `Book_Dim`
    - `Author_Dim`
    - `Customer_Dim`
    - `Category_Dim`
    - `Date_Dim`

#### Visualizations of the Data Warehouse Model
Here are the visual representations of the dimension and fact tables:

- **DimBook Table**:
  ![DimBook]([URL_PLACEHOLDER_DimBook](https://github.com/OmarM710/Gravity_BookStore/blob/66c4c44b7d9a91bb1e5285b766171d85942cbc23/screen%20shots/DimBook.png))

- **DimCustomer Table**:
  ![DimCustomer]([URL_PLACEHOLDER_DimCustomer](https://github.com/OmarM710/Gravity_BookStore/blob/66c4c44b7d9a91bb1e5285b766171d85942cbc23/screen%20shots/DimCustomer.png))

- **DimShipping Table**:
  ![DimShipping]([URL_PLACEHOLDER_DimShipping](https://github.com/OmarM710/Gravity_BookStore/blob/66c4c44b7d9a91bb1e5285b766171d85942cbc23/screen%20shots/DimShipping.png))

- **Fact Table**:
  ![Fact]([URL_PLACEHOLDER_Fact](https://github.com/OmarM710/Gravity_BookStore/blob/66c4c44b7d9a91bb1e5285b766171d85942cbc23/screen%20shots/Fact%20.png))

- **Modified Customers Table**:
  ![Modified Customers]([URL_PLACEHOLDER_ModifiedCustomers](https://github.com/OmarM710/Gravity_BookStore/blob/66c4c44b7d9a91bb1e5285b766171d85942cbc23/screen%20shots/modfied%20cutomers.png))

### 3. Implement the Data Warehouse on SQL Server Management Studio (SSMS)
- Created the `gravity_books_dwh` database in SSMS.
- Implemented the star schema by creating and indexing the fact and dimension tables.
- Populated the data warehouse tables with initial data from the transactional database.

### 4. Maintain Data Integrity Between Fact and Dimension Tables
- Designed and implemented SQL scripts to check and maintain referential integrity:
  - Ensured that all foreign keys in the fact table correspond to valid entries in dimension tables.
  - Periodically validated data consistency using automated triggers and constraints.

### 5. ETL Process: Populate Data from `gravity_books` to `gravity_books_dwh`
- Designed and implemented an ETL (Extract, Transform, Load) process using SQL scripts and tools like SSIS.
- Steps included:
  - **Extract**: Retrieved data from the transactional database.
  - **Transform**: Applied necessary data cleansing and transformations, such as:
    - Deduplication.
    - Formatting date fields.
    - Mapping transactional data to the dimensional model.
  - **Load**: Inserted the transformed data into the data warehouse tables.

### 6. Design an SSAS Project (Tabular Mode)
- Created an SSAS (SQL Server Analysis Services) Tabular model project to enable OLAP capabilities.
- Defined the following key deliverables:
  - **Measures**: Defined KPIs such as total sales, revenue per category, and sales growth.
  - **Relationships**: Established relationships between fact and dimension tables within the model.
  - **Hierarchies**: Created hierarchies for dimensions like `Category` and `Date`.
- Deployed the SSAS project and browsed the cube using tools such as SQL Server Data Tools (SSDT) and Excel.

### 7. BI Self-Service Reporting
- Designed and developed interactive self-service reports using Power BI.
- Connected the reports to the OLAP cube to enable dynamic exploration of the data.
- Delivered key insights through visualizations, including:
  - Sales trends over time.
  - Category-wise revenue distribution.
  - Customer purchase behavior analysis.
- Ensured end-users could interact with the reports for ad-hoc analysis.

## Tools and Technologies
- **Database Management**: SQL Server Management Studio (SSMS)
- **ETL Tools**: SQL scripts and SSIS
- **OLAP Tools**: SQL Server Analysis Services (SSAS) Tabular Mode
- **BI Reporting**: Power BI
