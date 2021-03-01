CREATE TABLE employees (
	emp_no VARCHAR (30) PRIMARY KEY,
	emp_title_id VARCHAR (30),
  	birth_date VARCHAR (30),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (30),
	hire_date VARCHAR (30)
);

CREATE TABLE departments (
	depttb_id VARCHAR (30) PRIMARY KEY,
	dept_no VARCHAR (30),
	dept_name VARCHAR (30)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR (30),
	dept_no VARCHAR (30)
-- 	FOREIGN KEY (dept_no) REFERENCES departments(depttb_id)
);

CREATE TABLE titles (
	title_id VARCHAR (30) PRIMARY KEY,
	title VARCHAR (30),
	emp_no VARCHAR (30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	sal_id VARCHAR (30) PRIMARY KEY,
	salary VARCHAR (30),
	emp_no VARCHAR (30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE demg (
	emp_no VARCHAR (30),
	dept_no VARCHAR (30)
-- 	depttb_id VARCHAR (30)
-- 	FOREIGN KEY (dettb_id) REFERENCES departments(depttb_id)
);


SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM dept_emp;
SELECT * FROM titles;
SELECT * FROM salaries;
SELECT * FROM demg;

INSERT INTO titles (title_id, title)
VALUES
  ('s0001', 'Staff'),
  ('s0002', 'Senior Staff'),
  ('e0001', 'Assistant Engineer'),
  ('e0002', 'Engineer'),
  ('e0003',	'Senior Engineer'),
('e0004', 'Technique Leader'),
('m0001', 'Manager');
  
INSERT INTO demg (dept_no, emp_no)
VALUES
('d001', '110039'),
('d002', '110085'),
('d002', '110114'),
('d003', '110183'),
('d003', '110228'),
('d004', '110303'),
('d004', '110344'),
('d004', '110386'),
('d004', '110420'),
('d005', '110511'),
('d005', '110567'),
('d006', '110725'),
('d006', '110765'),
('d006', '110800'),
('d006', '110854'),
('d007', '111035'),
('d007', '111133'),
('d008', '111400'),
('d008', '111534'),
('d009', '111692'),
('d009', '111784'),
('d009', '111877'),
('d009', '111939');











