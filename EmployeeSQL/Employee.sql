CREATE TABLE Employee (
    Emp_no INT NOT NULL,
    emp_title_ID VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60)  NOT NULL,
    sex VARCHAR(1) NOT NULL,
   hire_date DATE NOT NULL,
    CONSTRAINT pk_Employee PRIMARY KEY (
        Emp_no
     )
);

ALTER TABLE Employee ADD CONSTRAINT fk_Employee_emp_title_ID FOREIGN KEY(emp_title_ID)
REFERENCES Title (Title_id);

select * from employee