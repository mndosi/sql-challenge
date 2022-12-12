
CREATE TABLE "Departments" (
    "DeptNo" float   NOT NULL,
    "DeptName" Varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DeptNo"
     )
);

CREATE TABLE "Employee" (
    "EmpID" float   NOT NULL,
    "Title_id" float   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "sex"  Varchar  NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "EmpID"
     )
);

CREATE TABLE "Salaries" (
    "EmpID" float   NOT NULL,
    "Salary" float   NOT NULL,
	CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "EmpID"
     )
);

CREATE TABLE "Titles" (
    "TitleID" float   NOT NULL,
    "TitleName" Varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "TitleID"
     )
);

CREATE TABLE "DepartmentEmployee" (
    "EmpID" float   NOT NULL,
    "DeptNo" float   NOT NULL,
	CONSTRAINT "pk_DepartmentEmployee" PRIMARY KEY (
        "EmpID"
     )
);

CREATE TABLE "DepartmentManager" (
    "DeptNo" float   NOT NULL,
    "EmpID" float   NOT NULL
);


ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_DeptNo" FOREIGN KEY("DeptNo")
REFERENCES "DepartmentEmployee" ("EmpID");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("EmpID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("EmpID");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_TitleID" FOREIGN KEY("TitleID")
REFERENCES "Employee" ("Title_id");