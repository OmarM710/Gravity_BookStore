
# 📚 Gravity Books Data Warehouse Project  

## 📌 Overview  
The **Gravity Books Data Warehouse Project** is a **Business Intelligence (BI) solution** designed to enhance **data analysis and reporting** for the `gravity_books` transactional database. This project involves designing a **data warehouse (DWH)** using a **star schema model**, implementing **ETL processes**, and enabling **self-service reporting** for insightful business decisions.  

## 🚀 Project Steps  

### 🔹 1. Creating the `gravity_books` Database  
- Designed and implemented the **`gravity_books` transactional database** in **SQL Server**.  
- Ensured the **schema was normalized** to optimize data integrity and reduce redundancy.  
- Populated the database with sample transactional data, including the following tables:  
  - 📚 `Books`  
  - ✍️ `Authors`  
  - 💰 `Sales`  
  - 👥 `Customers`  
  - 🏷️ `Categories`  

---  

### 🔹 2. Designing the Data Warehouse Model  
- **Analyzed the transactional database** to define an optimized **dimensional model** for analytical queries.  
- Developed a **star schema** for simplicity and efficiency.  
- Key components of the data warehouse:  
  - **📊 Fact Table:** `Sales_Fact` (contains transactional sales data).  
  - **📂 Dimension Tables:**  
    - 📖 `Book_Dim` (book details).  
    - ✍️ `Author_Dim` (author details).  
    - 👥 `Customer_Dim` (customer details).  
    - 🏷️ `Category_Dim` (book categories).  
    - 📅 `Date_Dim` (time-related data).  

#### 📌 Data Warehouse Model Visualizations  

- **DimBook Table:**  
  ![DimBook](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimBook.png?raw=true)  

- **DimCustomer Table:**  
  ![DimCustomer](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimCustomer.png?raw=true)  

- **DimShipping Table:**  
  ![DimShipping](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/DimShipping.png?raw=true)  

- **Fact Table:**  
  ![Fact](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/Fact%20.png?raw=true)  

- **Modified Customers Table:**  
  ![Modified Customers](https://github.com/OmarM710/Gravity_BookStore/blob/main/screen%20shots/modfied%20cutomers.png?raw=true)  

---  

### 🔹 3. Implementing the Data Warehouse in SQL Server Management Studio (SSMS)  
- Created the **`gravity_books_dwh` database** in **SSMS**.  
- Implemented the **star schema**, including indexing and performance optimization.  
- Populated the data warehouse tables with **transformed and structured data** from the transactional database.  

---  

### 🔹 4. Ensuring Data Integrity Between Fact and Dimension Tables  
- Implemented **referential integrity constraints** to maintain data consistency.  
- Designed **SQL scripts** to:  
  - Ensure all foreign keys in the **fact table** reference valid dimension records.  
  - Enforce **data validation rules** to prevent anomalies.  
  - Automate periodic **data consistency checks** using triggers and constraints.  

---  

### 🔹 5. ETL Process: Extract, Transform, Load (ETL)  
- Developed an **ETL pipeline** using **SQL scripts** and **SSIS (SQL Server Integration Services)** to transfer data from the transactional database to the data warehouse.  
- **ETL Workflow:**  
  1️⃣ **Extract**: Pulled data from the **`gravity_books` database**.  
  2️⃣ **Transform**: Applied data cleansing and structuring:  
     - ✅ **Removed duplicates**.  
     - ✅ **Formatted date fields**.  
     - ✅ **Mapped transactional data** to the **dimensional model**.  
  3️⃣ **Load**: Inserted the transformed data into the **data warehouse tables**.

🔹 6. Implementing Incremental Load
  - To optimize data processing and reduce resource consumption, we implemented an Incremental Load strategy in our ETL pipeline. This approach ensures that only new or updated records are loaded into the data warehouse, eliminating the need for full data reloads.

 ![Increamental Load](https://raw.githubusercontent.com/dinaibrahim6/Gravity_BookStore/refs/heads/main/Incremental%20load/Incremental_Load_.webp)  
📌 What is Incremental Load?
Incremental Load is a data integration strategy that processes only new or modified records from the source system, rather than reloading the entire dataset.

🔍 Key Benefits:
✔️ Efficiency: Processes only new/changed data, reducing resource consumption and runtime.
✔️ Minimized Impact: Smaller loads mean less strain on the source and target systems.
✔️ Faster Processing: Works significantly faster than full loads for large datasets.
✔️ Supports Real-Time Updates: Ideal for near real-time data processing.

🛠️ Implementation Steps:
1️⃣ Identify New or Updated Records
  - Used timestamp columns (e.g., LastModifiedDate) in the source database to track changes.
  - Designed CDC (Change Data Capture) or triggers to detect new and updated records.
2️⃣ Extract Only Incremental Data
  - Pulled records where LastModifiedDate > MAX(LastModifiedDate) in DWH.
3️⃣ Transform & Load
  - Applied necessary transformations (data cleansing, mapping).
  - Used MERGE statements or UPSERT logic to insert new records and update existing ones.


## 🏆 Summary  
This project successfully **transforms raw transactional data** into a **structured data warehouse**, enabling **efficient business intelligence and reporting**. With a **well-optimized star schema** and **ETL processes**, the system supports **fast querying, reporting, and analytics**, providing valuable insights into **sales, customers, and book performance**.  

🚀 **Next Steps:** Implementing **SSAS Tabular Models** and **Power BI dashboards** for advanced analytics and visualization.  

## 📊7. Designing an SSAS Project (Tabular Mode)  

As part of the **Gravity Books Project**, we implemented a **SQL Server Analysis Services (SSAS) Tabular Model** to enable **OLAP capabilities** and enhance data analysis.  

### 🔍 Overview  
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

## 📊 8. BI Self-Service Reporting  

In this phase of the **Gravity Books** project, we designed and developed **interactive self-service reports** using **Power BI** to enhance data-driven decision-making. These reports are connected to an **Tabular Model**, enabling dynamic exploration and in-depth analysis of key business metrics.  

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
✔️ **Connected to the Tabular Model** for data exploration.  
✔️ **Enhanced data visualizations** to support strategic decision-making.  


## Tools and Technologies
- **Database Management**: SQL Server Management Studio (SSMS)
- **ETL Tools**: SQL scripts and SSIS
- **OLAP Tools**: SQL Server Analysis Services (SSAS) Tabular Mode
- **BI Reporting**: Power BI


