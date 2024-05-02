This is a  research project about people employed in a fictional company during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
In this project, I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answer questions about the data. I performed data modeling, data engineering, and data analysis, respectively.

An Entity relationship diagram was made to show the relation between our data and provide a high level overview of our database. SQL scripts were written to create the corresponding tables needed for our database, making sure primary key constraints, data integrity constraints were considered. Assumptions made include an employee could work in multiple departments and a departments could have multiple managers, as shown in the data provided.

Data Analysis; the questions below were answered with the queries provided in the data analysis.sql file.
* List the employee number, last name, first name, sex, and salary of each employee
* List the first name, last name, and hire date for the employees who were hired in 1986 
* List the manager of each department along with their department number, department name, employee number, last name, and first name 
* List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
* List each employee in the Sales department, including their employee number, last name, and first name 
* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
