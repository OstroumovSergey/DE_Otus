--1. Staging area (STG)
CREATE TABLE Person_stg (
    PersonID INT PRIMARY KEY,
    Name VARCHAR,
    Surname VARCHAR,
    SocialSecurityID VARCHAR,
    CompanyID INT
);

CREATE TABLE Manager_stg (
    ManagerID INT PRIMARY KEY,
    PersonID INT,
    DepartmentID INT
);

CREATE TABLE Department_stg (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR,
    Description VARCHAR
);

CREATE TABLE Company_Departments_stg (
    CompanyID INT,
    DepartmentID INT,
    PRIMARY KEY (CompanyID, DepartmentID)
);

CREATE TABLE Company_stg (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR,
    Location VARCHAR
);

Create table Employee_stage(
	EmployeeID INT PRIMARY key,
  	PersonID INT, 
  	Position VARCHAR
);
