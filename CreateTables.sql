CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    hire_date DATE
);

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    name VARCHAR(20),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee(employee_id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE animal (
    animal_id INT PRIMARY KEY,
    department_id INT,
    employee_id INT,
    species VARCHAR(20),
    name VARCHAR(20),
    arrival_date DATE,
    age TINYINT,
    FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE animal_employee (
    animal_employee_id INT PRIMARY KEY,
    animal_id INT,
    employee_id INT,
    FOREIGN KEY (animal_id) REFERENCES animal(animal_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE ON UPDATE CASCADE  
);

CREATE TABLE customer_surveys (
	survey_id INT PRIMARY KEY, 
	survey_date DATE,
	customer_name VARCHAR(50),
	favorite_animal INT,
	FOREIGN KEY (favorite_animal) REFERENCES animal(animal_id)
);
