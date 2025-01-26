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


## 📊 6. Designing an SSAS Project (Tabular Mode)  

As part of the **Gravity Books Project**, we implemented a **SQL Server Analysis Services (SSAS) Tabular Model** to enable **OLAP capabilities** and enhance data analysis.  

### 🔍 Project Overview  
The **Gravity Books Project** is a **data analysis solution** designed to provide insights into **sales performance, customer trends, and shipping costs**. The data is stored in a **star schema data warehouse** and managed in **SQL Server Management Studio (SSMS)**.  

To analyze this data efficiently, we built an **SSAS Tabular Model** using **SQL Server Analysis Services (SSAS) in Visual Studio**.  

### 🛠️ Why Tabular Mode?  
✔️ **Simplicity:** Easier to design and manage compared to multidimensional models.  
✔️ **Performance:** Optimized for in-memory processing, ensuring faster querying and calculations.  
✔️ **Integration:** Seamlessly connects with modern visualization tools like **Power BI** for reporting.  

### 📌 Steps Taken  

1️⃣ **Created an SSAS Tabular Model Project in Visual Studio**  
   - Connected the project to the **SQL Server database**.  
   - Imported tables from the **data warehouse**.  
   - Established relationships using **surrogate keys**.  
   - ![Model](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/SSAS/Model.PNG?raw=true)  

2️⃣ **Created Measures using DAX (Data Analysis Expressions)**  
   - Defined key performance indicators (KPIs) to derive meaningful insights.  
   - ![Measures](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/SSAS/Measures.PNG?raw=true)  

### 📈 Results and Insights  

#### 🔹 **Sales Performance**  
- **Total sales:** 💲154,714.88  
- **Average book price:** 💲10.05  
- **Total books sold:** 📚 15,400  

#### 🔹 **Customer Analysis**  
- **Number of unique customers:** 👥 1,715  
- **Average transactions per customer:** 🔄 9  

#### 🔹 **Order Analysis**  
- **Total number of orders:** 🛒 7,515  
- **Average order value:** 💲20.49  

#### 🔹 **Shipping Costs**  
- **Total shipping cost:** 🚚 💲83,245.00  
- **Average shipping cost per order:** 💲11.03  

### 📊 Conclusion  
By leveraging **SSAS Tabular Mode**, we successfully enabled **fast, scalable, and interactive data analysis** for **Gravity Books**. This foundation allows for deeper insights into business performance and **seamless integration with Power BI for self-service reporting**.  

## 📊 BI Self-Service Reporting  

In this phase of the **Gravity Books** project, we designed and developed **interactive self-service reports** using **Power BI** to enhance data-driven decision-making. These reports are connected to an **OLAP cube**, enabling dynamic exploration and in-depth analysis of key business metrics.  

### 🔹 Key Deliverables:  

- **📌 Interactive Dashboard:**  
  - Provides an **overview of sales, customer trends, and business performance** at a glance.  
  - Incorporates dynamic filters and drill-through capabilities for deeper insights.  
  - ![Dashboard](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/Reporting/Dashboard.PNG?raw=true)  

- **📌 Sales Analysis Report:**  
  - Highlights **sales trends, revenue distribution, and top-performing books**.  
  - Offers visual breakdowns by region, category, and time periods.  
  - ![Sales Analysis Report](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/Reporting/Sales.PNG?raw=true)  

- **📌 Book Analysis Report:**  
  - Focuses on **book performance, pricing trends, and inventory insights**.  
  - Helps identify best-selling and underperforming books.  
  - ![Book Analysis Report](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/Reporting/Books.PNG?raw=true)  

- **📌 Ship Method Analysis Report:**  
  - Analyzes **shipping performance, costs, and delivery efficiency**.  
  - Assists in optimizing logistics and improving customer satisfaction.  
  - ![Ship Method Report](https://github.com/dinaibrahim6/Gravity_BookStore/blob/main/Reporting/ShipMethod.PNG?raw=true)  

### 💡 Key Features:  
✔️ **Self-service capabilities** for ad-hoc analysis by end-users.  
✔️ **Connected to the OLAP cube** for real-time data exploration.  
✔️ **Enhanced data visualizations** to support strategic decision-making.  


## Tools and Technologies
- **Database Management**: SQL Server Management Studio (SSMS)
- **ETL Tools**: SQL scripts and SSIS
- **OLAP Tools**: SQL Server Analysis Services (SSAS) Tabular Mode
- **BI Reporting**: Power BI


