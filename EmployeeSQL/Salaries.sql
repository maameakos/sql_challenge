CREATE TABLE Salaries (
    Emp_no INT NOT NULL,
    Salary INT NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Emp_no
     )
);


ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employee (Emp_no);

select * from Salaries