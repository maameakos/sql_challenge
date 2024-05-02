-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mrkPdp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Title" (
    "Title_id" VARCHAR(6)   NOT NULL,
    "Title" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "Title_id"
     )
);
CREATE TABLE "Employee" (
    "Emp_no" INT   NOT NULL,
    "emp_title_ID" VARCHAR(10)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(60)   NOT NULL,
    "last_name" VARCHAR(60)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Department" (
    "Dept_no" VARCHAR(5)   NOT NULL,
    "Dept_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "Emp_no","Dept_no"
     )
);



CREATE TABLE "Dept_manager" (
    "Dept_no" VARCHAR(6)   NOT NULL,
    "Emp_no" INT NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "Dept_no","Emp_no"
     )
);

CREATE TABLE "Salaries" (
    "Emp_no" INT NOT NULL,
    "Salary" INT NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_no"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_title_ID" FOREIGN KEY("emp_title_ID")
REFERENCES "Title" ("Title_id");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

