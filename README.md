# G20 CO₂ & NDC Relational Database

This repository contains the SQL scripts, data inserts, and ER diagram used to design and test a simple relational database for analysing G20 countries’ CO₂ emissions and their climate targets (NDCs). This work was developed as part of a University of London database assignment.

The project models the relationship between:
- historical CO₂ emissions from fossil fuels and industry (selected years), and  
- each country’s Nationally Determined Contribution (NDC) target for 2030.  

The objective is to demonstrate basic database design, implementation, and querying using MySQL.

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| **schema.sql** | SQL script to create the database schema (tables, keys, and relationships). |
| **data.sql** | Sample data inserts for countries, emissions, and NDC targets. |
| **queries.sql** | Example SQL queries used for analysis and for demonstrating the database. |
| **ER-diagram.png** | Entity-Relationship diagram showing the structure of the database. |

---

## 🗄️ Database Structure Overview

The database contains three main tables:

1. **Country** – basic country information, including ISO code.  
2. **Emission** – CO₂ emission values by year (fossil fuels & industry).  
3. **NDC** – simplified representation of each country's NDC target (target year, base year, % reduction).

The schema uses:
- `InnoDB` engine  
- primary keys on all tables  
- foreign keys linking emissions and NDCs to countries  

---

## ▶️ How to Run the SQL Files

1. Open any MySQL environment (MySQL Shell, MySQL Workbench, phpMyAdmin, db-fiddle, etc.).
2. Run **schema.sql** to create the database and tables.
3. Run **data.sql** to insert example data.
4. Execute queries from **queries.sql** to test the database and generate analysis outputs.

This database is designed for demonstration and coursework purposes.  
It can easily be extended to include more countries, more years, or full datasets.

---

## 📄 Data Source & Licensing

The structure and sample values in this project are based on publicly available climate data from **Climate Watch** (World Resources Institute):  
https://www.climatewatchdata.org/

Climate Watch publishes its data and visualisations under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** licence.  
This licence allows reuse, adaptation, and sharing as long as proper attribution is provided.

Original source:  
*Climate Watch, World Resources Institute (2024). Licensed under CC BY 4.0.*

---

## 📝 Notes

- The CO₂ values in this repository are **simplified examples**, not full datasets, because the purpose of the assignment is to demonstrate relational modelling rather than conduct full climate analysis.
- The database can be connected to real datasets from Climate Watch or the UNFCCC if extended in the future.

---

## 📧 Contact

Created by **Misaki Tsuruta** as part of coursework for the University of London.  
