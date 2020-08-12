create table titles(
	title_id varchar(35) Not Null,
	title varchar(35) Not Null,
	Primary Key (title_id)
);

create table employees(
	emp_no int Not Null,
	emp_title_id varchar(35) Not Null,
	birth_date Date Not Null,
	first_name varchar(35) Not Null,
	last_name varchar(35) Not Null,
	sex varchar(35) Not Null,
	hire_date Date Not Null,
	Primary Key (emp_no),
	Foreign Key (emp_title_id) References titles(title_id)
);

create table departments(
	dept_no varchar(35) Not Null,
	dept_name varchar(35) Not Null,
	Primary Key (dept_no)
);

create table dept_emp(
	emp_no int Not Null,
	dept_no varchar(35) Not null, 
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no),
	Primary Key (dept_no, emp_no)
);

create table dept_manager(
	dept_no varchar(35) not null, 
	emp_no int not null,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no),
	Primary Key (dept_no, emp_no)
);

create table salaries(
	emp_no int not null, 
	salary int not null,
	Foreign Key (emp_no) References employees(emp_no)
);