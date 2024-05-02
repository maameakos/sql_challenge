CREATE TABLE Dept_emp (
    Emp_no INT NOT NULL,
    Dept_no VARCHAR NOT NULL,
    CONSTRAINT pk_Dept_emp PRIMARY KEY (
        Emp_no,Dept_no
     )
);


ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employee (Emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Department (Dept_no);

select * from Dept_emp