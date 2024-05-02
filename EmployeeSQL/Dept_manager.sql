CREATE TABLE Dept_manager (
    Dept_no VARCHAR(6) NOT NULL,
    Emp_no INT NOT NULL,
    CONSTRAINT pk_Dept_manager PRIMARY KEY (
        Dept_no,Emp_no
     )
);


ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Department (Dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employee (Emp_no);

select * from Dept_manager
