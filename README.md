# sql-challenge
---
# 📊 Pewlett Hackard Employee Database Analysis

## 📌 Project Overview
This project analyzes employee records for **Pewlett Hackard**, a fictional company, focusing on employees from the **1980s and 1990s**. The dataset includes information about employees, their departments, salaries, job titles, and management roles.

Using **PostgreSQL** and **pgAdmin 4**, I designed a relational database, created **SQL views** for easy data retrieval, executed queries to analyze employee records, and exported query results for deeper insights.

---

## 🏗 Database Schema
The database consists of **six main tables**:

- **employees** - Employee details, including birth date, hire date, and gender.
- **departments** - List of company departments.
- **titles** - Job titles for employees.
- **salaries** - Salary history for employees.
- **dept_emp** - Relationship between employees and departments.
- **dept_manager** - List of department managers.

### **Entity Relationship Diagram (ERD)**


![Database Schema](EmployeeSQL/Schema/Pewlett%20Hackard%20Schema%20-%20Image.png)

---

## 📊 Data Analysis Insights

Below are key findings based on the **output CSV files** in the `EmployeeSQL/Outputs/` folder.

### **1. Employee Salaries (`employee_salaries.csv`)**
- The dataset provides a detailed salary breakdown for each employee.
- Salaries **vary significantly**, indicating a hierarchical pay structure.
- **Further analysis:** Compare salary trends across different departments.

### **2. Employees Hired in 1986 (`employees_hired_1986.csv`)**
- This dataset helps track **long-serving employees** who have been with the company since 1986.
- A **trend analysis** could identify **hiring spikes** over time.

### **3. Department Managers (`dept_managers.csv`)**
- Shows **current and past department managers**.
- Useful for **identifying leadership trends** and tenure of managers.

### **4. Employee Department Assignment (`employee_dept.csv`)**
- Links employees to their respective departments.
- Could be used to **analyze department growth** over time.

### **5. Employees Named "Hercules B" (`employee_hercules-b.csv`)**
- A rare set of employees whose **first name is Hercules** and **last name starts with 'B'**.
- Fun fact: This query helps demonstrate **SQL filtering** capabilities.

### **6. Sales & Development Employees (`sales+development_employees.csv`)**
- Employees in the **Sales** and **Development** departments.
- These teams are likely crucial for **business growth and innovation**.

### **7. Employees in the Sales Department (`sales_dept_employees.csv`)**
- Focuses on employees **only in Sales**.
- This dataset can be used to analyze **department size** and **employee turnover**.

### **8. Employees Sharing Last Names (`employees_shared_last_name.csv`)**
- Shows employees with **common last names**.
- Could suggest **family relationships** or **repeated hiring patterns**.

---

## 🛠 How to Use This Repository

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/yourusername/sql-challenge.git
cd sql-challenge/EmployeeSQL/
```

### **2️⃣ Open pgAdmin**

### **3️⃣ Import the table `schema.sql` file**

