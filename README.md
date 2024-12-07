# CODETECH-TASK1
database for managing a library's book inventory, members, and borrow/return transactions.
This repository contains the SQL scripts to create a database for a library management system. The database includes tables for books, members, and transactions.

Database Schema:
The database schema consists of the following tables:

## Books:
Book_ID (Primary Key)
Title
Author
Publication_Year
Genre

## Members:
Member_ID (Primary Key)
Name
Address
Phone_Number

## Transactions:
Transaction_ID (Primary Key)
Book_ID (Foreign Key to Books)
Member_ID (Foreign Key to Members)
Borrow_Date
Return_Date

## SQL Scripts:
The *database_schema.sql* file contains the SQL statements to create the database tables.
The *data_insertion.sql* file contains SQL statements to insert sample data into the tables.
The *queries.sql* file contains various SQL queries to:
Insert data: Add new books, members, and transactions.
Update data: Modify existing records.
Delete data: Remove unwanted records.
Retrieve data: Query the database to retrieve specific information.
