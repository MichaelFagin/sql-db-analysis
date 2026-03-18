# 📊 LSU Data Analysis: SQL Database Project

## 📝 Project Overview
This project demonstrates the design and implementation of a relational database developed during my time at LSU. It transforms a complex, multi-sheet Excel dataset into a structured MySQL database to solve specific business logic challenges.

## 📁 Repository Structure
- **/data**: Contains the raw multi-sheet Excel workbook (`.xlsx`) used as the data source.
- **scripts/**: SQL scripts for Table Creation (DDL) and Data Analysis (DML).

## 🗄️ Data Dictionary
The source Excel file consists of the following key modules:
| Sheet Name | Description | Key Fields |
| :--- | :--- | :--- |
| **Transactions** | Historical sales records | `OrderID`, `Date`, `Amount` |
| **Products** | Inventory and pricing | `SKU`, `Category`, `Price` |
| **Customers** | Demographic information | `CustomerID`, `Region` |

## 🚀 Key Skills Demonstrated
- **Database Normalization:** Converting flat Excel files into relational tables.
- **Complex Joins:** Connecting disparate data sheets to find insights.
- **Data Integrity:** Implementing constraints and triggers.

## 🔍 Code Highlight: [CREATE TRIGGER]

CREATE TRIGGER timecard_update
AFTER UPDATE ON timecard
FOR EACH ROW 
	INSERT INTO timecard_log 
    VALUES (old.date,old.employeeID,old.starttime,new.starttime,old.endtime,new.endtime,current_timestamp());  
    
# DML statement to fire the trigger
UPDATE timecard
SET date='2024-06-15',employeeID=12,starttime = '10:00:00', endtime = '18:30:00'
WHERE date='2024-06-15' AND employeeID=12;
