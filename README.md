# Gravity Books Data Warehouse Project

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
  ![DimBook](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimBook.png?raw=true)

- **DimCustomer Table**:
  ![DimCustomer](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimCustomer.png?raw=true)

- **DimShipping Table**:
  ![DimShipping](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimShipping.png?raw=true)

- **Fact Table**:
  ![Fact](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/Fact%20.png?raw=true)

- **Modified Customers Table**:
  ![Modified Customers](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/modfied%20cutomers.png?raw=true)

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


