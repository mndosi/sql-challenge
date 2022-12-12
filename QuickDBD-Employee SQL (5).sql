-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/MkOa7r
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Departments" (
    "DeptNo" INT   NOT NULL,
    "DeptName" VarChar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DeptNo"
     )
);

CREATE TABLE "DepartmentManager" (
    "DeptNo" INT   NOT NULL,
    "EmpID" INT   NOT NULL,
    CONSTRAINT "pk_DepartmentManager" PRIMARY KEY (
        "DeptNo"
     )
);

CREATE TABLE "Employee" (
    "EmpID" INT   NOT NULL,
    "TitleID" INT   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "sex" VarChar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "EmpID"
     )
);

CREATE TABLE "Salaries" (
    "EmpID" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "EmpID"
     )
);

CREATE TABLE "Titles" (
    "TitleID" INT   NOT NULL,
    "TitleName" VarChar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "TitleID"
     )
);

CREATE TABLE "DepartmentEmployee" (
    "EmpID" INT   NOT NULL,
    "DeptNo" INT   NOT NULL,
    CONSTRAINT "pk_DepartmentEmployee" PRIMARY KEY (
        "EmpID"
     )
);

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_DeptNo" FOREIGN KEY("DeptNo")
REFERENCES "Departments" ("DeptNo");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("EmpID");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_TitleID" FOREIGN KEY("TitleID")
REFERENCES "Titles" ("TitleID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("EmpID");

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("EmpID");

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_DeptNo" FOREIGN KEY("DeptNo")
REFERENCES "Departments" ("DeptNo");

