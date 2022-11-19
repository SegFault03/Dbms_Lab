REM   Script: DBMS_ASSIGNMENT_Q1
REM   Contains code for DBMS Lab Assignment-1.
Author: Niladri Das

create table Suppliers( 
s_id int primary key not null, 
sname varchar(30), 
address varchar(30) 
);

create table Parts( 
pid int primary key not null, 
pname varchar(30), 
color varchar(30) 
);

CREATE TABLE catalog( 
s_id INT NOT NULL, 
pid INT NOT NULL, 
cost REAL, 
FOREIGN KEY(s_id) REFERENCES suppliers(s_id), 
FOREIGN KEY(pid) REFERENCES parts(pid) 
);

CREATE TABLE BOOK( 
Book_id INT NOT NULL PRIMARY KEY, 
Publisher_Name VARCHAR(30), 
Pub_Year INT 
);

CREATE TABLE BOOK_AUTHORS( 
Book_id INT NOT NULL, 
Author_Name VARCHAR(30), 
FOREIGN KEY(Book_id) REFERENCES Book(Book_id) 
);

CREATE TABLE PUBLISHER( 
Pub_Name VARCHAR(40) NOT NULL PRIMARY KEY, 
Address VARCHAR(40), 
Phone varchar(10) 
);

CREATE TABLE LIBRARY_BRANCH( 
Branch_ID INT NOT NULL PRIMARY KEY, 
Branch_Name VARCHAR(40), 
Address VARCHAR(40) 
);

CREATE TABLE BOOK_LENDING( 
Book_id INT NOT NULL, 
Branch_id INT NOT NULL, 
Card_No INT NOT NULL PRIMARY KEY, 
Date_Out DATE, 
Due_Date DATE, 
FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID), 
FOREIGN KEY(BRANCH_ID) REFERENCES LIBRARY_BRANCH(BRANCH_ID) 
);

CREATE TABLE SALESMAN( 
Salesman_id INT NOT NULL PRIMARY KEY, 
S_name VARCHAR(40), 
City VARCHAR(40), 
Commission REAL 
);

CREATE TABLE CUSTOMER( 
Customer_id INT NOT NULL PRIMARY KEY, 
Cust_name VARCHAR(40), 
City VARCHAR(40), 
Grade CHAR, 
Salesman_id INT NOT NULL, 
FOREIGN KEY(SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID) 
);

CREATE TABLE ORDERS( 
Ord_no INT NOT NULL PRIMARY KEY, 
Purchase_Amt REAL, 
Ord_Date DATE, 
Customer_id INT NOT NULL, 
Salesman_id INT NOT NULL, 
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID), 
FOREIGN KEY(SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID) 
);

