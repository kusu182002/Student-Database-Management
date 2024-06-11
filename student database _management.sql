create database studentdatabase_management;  # creting a database

use studentdatabase_management; # providing which database is being used

-- CREATING TABLES --

-- DEPARTMENTS Table --
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100),
    head_of_department VARCHAR(100),
    department_block VARCHAR(10),
    contact_information VARCHAR(15)
);

-- STUDENTS TABLE --
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    enrollment_date DATE,
    department_id INT,
    attendance_percent FLOAT(4,2),
    grade_percent FLOAT(4,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Courses Table --
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    department_id INT,
    credits INT,
    course_duration_months INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Enrollments Table --
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    enrolled_status VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Instructors Table --
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- INSERING DATA INTO TABLES --

INSERT INTO Departments (department_name, head_of_department,department_block, contact_information) VALUES 
('Computer Science', 'Alice Johnson','A', '+919652900626'),
('Electrical Engineering', 'Bob Smith', 'B', '+919000331359'),
('Electronics Engineering', 'Jack Clark', 'C', '+919989557417'),
('Mechanical Engineering', 'Charlie Brown', 'D', '+919381754287'),
('Civil Engineering', 'David Wilson', 'E', '+918978135073');

INSERT INTO students (first_name, last_name, date_of_birth, gender, address, phone_number, email, enrollment_date, department_id, attendance_percent, grade_percent)
VALUES
    ('Ananya', 'Agarwal', '2000-05-15', 'Female', '123 Main St, Cityville', '+919876543210', 'ananya.agarwal@example.com', '2022-09-01', 1, 89.5, 75.0),
    ('Aarav', 'Bhat', '2001-08-20', 'Male', '456 Elm St, Townsville', '+919012345678', 'aarav.bhat@example.com', '2022-09-01', 2, 92.0, 85.5),
    ('Aditi', 'Chopra', '1999-03-10', 'Female', '789 Oak St, Villageton', '+919876543210', 'aditi.chopra@example.com', '2022-09-01', 1, 85.5, 80.5),
    ('Amit', 'Deshmukh', '2000-07-25', 'Male', '321 Pine St, Hamlet', '+918765432109', 'amit.deshmukh@example.com', '2022-09-01', 3, 88.0, 78.0),
    ('Aishwarya', 'Gupta', '2002-01-05', 'Female', '654 Cedar St, Riverside', '+919012345678', 'aishwarya.gupta@example.com', '2022-09-01', 2, 91.0, 82.5),
    ('Aryan', 'Iyer', '2001-11-15', 'Male', '987 Birch St, Lakeside', '+919876543210', 'aryan.iyer@example.com', '2022-09-01', 4, 90.0, 79.5),
    ('Bhavya', 'Jain', '1998-09-30', 'Female', '234 Elm St, Hilltop', '+918765432109', 'bhavya.jain@example.com', '2022-09-01', 3, 87.0, 77.5),
    ('Dev', 'Kumar', '1999-12-20', 'Male', '876 Maple St, Summit', '+919012345678', 'dev.kumar@example.com', '2022-09-01', 5, 89.0, 76.0),
    ('Diya', 'Mehta', '2000-04-18', 'Female', '543 Oak St, Mountainview', '+919876543210', 'diya.mehta@example.com', '2022-09-01', 4, 86.0, 81.0),
    ('Eshaan', 'Patel', '2002-03-08', 'Male', '765 Pine St, Valley City', '+918765432109', 'eshaan.patel@example.com', '2022-09-01', 1, 92.0, 83.5),
    ('Ishaan', 'Rao', '2001-06-12', 'Male', '456 Cedar St, Sunset', '+919012345678', 'ishaan.rao@example.com', '2022-09-01', 2, 93.0, 84.5),
    ('Ishika', 'Reddy', '2000-08-22', 'Female', '987 Birch St, Lakeside', '+919876543210', 'ishika.reddy@example.com', '2022-09-01', 3, 88.5, 79.0),
    ('Kabir', 'Sethi', '1999-10-10', 'Male', '321 Pine St, Hamlet', '+918765432109', 'kabir.sethi@example.com', '2022-09-01', 4, 87.5, 80.0),
    ('Kavya', 'Shah', '2001-02-28', 'Female', '234 Elm St, Hilltop', '+919012345678', 'kavya.shah@example.com', '2022-09-01', 5, 90.5, 81.5),
    ('Krish', 'Singh', '2000-11-05', 'Male', '876 Maple St, Summit', '+919876543210', 'krish.singh@example.com', '2022-09-01', 1, 91.5, 82.0),
    ('Manav', 'Tiwari', '2000-02-10', 'Male', '456 Pine St, Sunrise', '+918765432109', 'manav.tiwari@example.com', '2022-09-01', 2, 89.0, 80.0),
    ('Neha', 'Verma', '2001-04-22', 'Female', '789 Elm St, Beachtown', '+919012345678', 'neha.verma@example.com', '2022-09-01', 3, 87.5, 79.5),
    ('Rohan', 'Sharma', '2002-09-15', 'Male', '321 Cedar St, Hillside', '+919876543210', 'rohan.sharma@example.com', '2022-09-01', 4, 88.5, 81.0),
    ('Ishita', 'Singh', '2000-11-20', 'Female', '654 Oak St, Lakeside', '+918765432109', 'ishita.singh@example.com', '2022-09-01', 5, 90.0, 82.0),
    ('Yash', 'Patel', '1999-03-12', 'Male', '876 Maple St, Riverside', '+919012345678', 'yash.patel@example.com', '2022-09-01', 1, 91.0, 83.0),
    ('Tanvi', 'Gupta', '2001-05-25', 'Female', '543 Birch St, Valley City', '+919876543210', 'tanvi.gupta@example.com', '2022-09-01', 2, 92.0, 84.0),
    ('Virat', 'Reddy', '2002-08-30', 'Male', '987 Pine St, Hilltop', '+918765432109', 'virat.reddy@example.com', '2022-09-01', 3, 93.0, 85.0),
    ('Aaradhya', 'Shah', '2000-10-18', 'Female', '234 Elm St, Sunset', '+919012345678', 'aaradhya.shah@example.com', '2022-09-01', 4, 94.0, 86.0),
    ('Arjun', 'Kumar', '1998-12-05', 'Male', '765 Cedar St, Hamlet', '+919876543210', 'arjun.kumar@example.com', '2022-09-01', 5, 95.0, 87.0),
    ('Aanya', 'Joshi', '2001-07-08', 'Female', '321 Oak St, Townsville', '+918765432109', 'aanya.joshi@example.com', '2022-09-01', 1, 96.0, 88.0),
    ('Kabir', 'Malhotra', '2000-09-12', 'Male', '456 Birch St, Mountainview', '+919012345678', 'kabir.malhotra@example.com', '2022-09-01', 2, 97.0, 89.0),
    ('Anika', 'Rao', '1999-01-15', 'Female', '789 Pine St, Lakeside', '+919876543210', 'anika.rao@example.com', '2022-09-01', 3, 98.0, 90.0),
    ('Aadi', 'Sharma', '2002-06-20', 'Male', '654 Elm St, Riverside', '+918765432109', 'aadi.sharma@example.com', '2022-09-01', 4, 99.0, 91.0),
    ('Ira', 'Chopra', '2000-04-30', 'Female', '987 Cedar St, Valley City', '+919012345678', 'ira.chopra@example.com', '2022-09-01', 5, 100.0, 92.0),
    ('Vihaan', 'Sinha', '2001-03-25', 'Male', '234 Oak St, Hilltop', '+919876543210', 'vihaan.sinha@example.com', '2022-09-01', 1, 91.0, 83.0),
    ('Aaradhya', 'Tandon', '1998-08-10', 'Female', '876 Birch St, Sunset', '+918765432109', 'aaradhya.tandon@example.com', '2022-09-01', 2, 89.0, 80.0),
    ('Advik', 'Verma', '1999-11-15', 'Male', '543 Pine St, Hamlet', '+919012345678', 'advik.verma@example.com', '2022-09-01', 3, 88.0, 79.0),
    ('Aisha', 'Saxena', '2002-02-28', 'Female', '765 Elm St, Townsville', '+919876543210', 'aisha.saxena@example.com', '2022-09-01', 4, 87.0, 78.0),
    ('Shaurya', 'Kapoor', '2000-06-05', 'Male', '321 Cedar St, Mountainview', '+918765432109', 'shaurya.kapoor@example.com', '2022-09-01', 5, 86.0, 77.0),
    ('Myra', 'Malhotra', '2001-09-20', 'Female', '456 Oak St, Lakeside', '+919012345678', 'myra.malhotra@example.com', '2022-09-01', 1, 85.0, 76.0),
    ('Reyansh', 'Gupta', '2000-07-15', 'Male', '789 Pine St, Riverside', '+918765432109', 'reyansh.gupta@example.com', '2022-09-01', 2, 84.0, 75.0),
    ('Prisha', 'Rao', '1999-12-18', 'Female', '654 Elm St, Valley City', '+919876543210', 'prisha.rao@example.com', '2022-09-01', 3, 83.0, 74.0),
    ('Kabir', 'Chopra', '2002-04-05', 'Male', '987 Cedar St, Hilltop', '+919012345678', 'kabir.chopra@example.com', '2022-09-01', 4, 82.0, 73.0),
    ('Advik', 'Bose', '2000-04-22', 'Male', '123 Main St, Cityville', '+918765432109', 'advik.bose@example.com', '2022-09-01', 4, 88.5, 81.5),
    ('Aanya', 'Das', '2001-08-15', 'Female', '456 Elm St, Townsville', '+919012345678', 'aanya.das@example.com', '2022-09-01', 1, 89.0, 82.0),
    ('Arnav', 'Gupta', '1999-12-10', 'Male', '789 Oak St, Villageton', '+919876543210', 'arnav.gupta@example.com', '2022-09-01', 2, 90.0, 83.0),
    ('Avni', 'Iyer', '2000-06-25', 'Female', '321 Pine St, Hamlet', '+918765432109', 'avni.iyer@example.com', '2022-09-01', 3, 91.0, 84.0),
    ('Vihaan', 'Joshi', '2002-01-05', 'Male', '654 Cedar St, Riverside', '+919012345678', 'vihaan.joshi@example.com', '2022-09-01', 4, 92.0, 85.0),
    ('Aadhya', 'Kapoor', '2001-11-15', 'Female', '987 Birch St, Lakeside', '+918765432109', 'aadhya.kapoor@example.com', '2022-09-01', 5, 93.0, 86.0),
    ('Advait', 'Malhotra', '1998-09-30', 'Male', '234 Elm St, Hilltop', '+919012345678', 'advait.malhotra@example.com', '2022-09-01', 1, 94.0, 87.0),
    ('Ananya', 'Nair', '1999-12-20', 'Female', '876 Maple St, Summit', '+919876543210', 'ananya.nair@example.com', '2022-09-01', 2, 95.0, 88.0),
    ('Atharva', 'Patel', '2000-04-18', 'Male', '543 Oak St, Mountainview', '+918765432109', 'atharva.patel@example.com', '2022-09-01', 3, 96.0, 89.0),
    ('Anvi', 'Rai', '2002-03-08', 'Female', '765 Pine St, Valley City', '+919012345678', 'anvi.rai@example.com', '2022-09-01', 4, 97.0, 90.0),
    ('Ayaan', 'Shah', '2001-06-12', 'Male', '456 Cedar St, Sunset', '+918765432109', 'ayaan.shah@example.com', '2022-09-01', 5, 98.0, 91.0),
    ('Aarush', 'Singh', '2000-08-22', 'Male', '987 Birch St, Lakeside', '+919012345678', 'aarush.singh@example.com', '2022-09-01', 1, 89.0, 82.0),
    ('Aarna', 'Verma', '1998-07-15', 'Female', '321 Pine St, Hamlet', '+918765432109', 'aarna.verma@example.com', '2022-09-01', 2, 90.0, 83.0),
    ('Ansh', 'Yadav', '1999-09-25', 'Male', '654 Cedar St, Riverside', '+919012345678', 'ansh.yadav@example.com', '2022-09-01', 3, 91.0, 84.0),
    ('Advika', 'Agarwal', '2002-06-30', 'Female', '876 Maple St, Summit', '+918765432109', 'advika.agarwal@example.com', '2022-09-01', 4, 92.0, 85.0),
    ('Abeer', 'Bhat', '2000-04-20', 'Male', '543 Oak St, Mountainview', '+919012345678', 'abeer.bhat@example.com', '2022-09-01', 5, 93.0, 86.0),
    ('Anaisha', 'Chopra', '2000-12-18', 'Female', '765 Pine St, Valley City', '+918765432109', 'anaisha.chopra@example.com', '2022-09-01', 1, 94.0, 87.0),
    ('Arya', 'Deshmukh', '2000-01-10', 'Male', '456 Cedar St, Sunset', '+919012345678', 'arya.deshmukh@example.com', '2022-09-01', 2, 95.0, 88.0),
    ('Anvi', 'Gupta', '1999-03-25', 'Female', '987 Birch St, Lakeside', '+918765432109', 'anvi.gupta@example.com', '2022-09-01', 3, 96.0, 89.0),
    ('Ayaan', 'Iyer', '2001-02-15', 'Male', '234 Elm St, Hilltop', '+919012345678', 'ayaan.iyer@example.com', '2022-09-01', 4, 97.0, 90.0),
    ('Amaira', 'Jain', '2002-07-20', 'Female', '876 Maple St, Summit', '+918765432109', 'amaira.jain@example.com', '2022-09-01', 5, 98.0, 91.0),
    ('Anaya', 'Kumar', '2000-05-15', 'Male', '543 Oak St, Mountainview', '+919012345678', 'anaya.kumar@example.com', '2022-09-01', 1, 89.0, 82.0),
    ('Aarohi', 'Mehta', '2001-08-20', 'Female', '765 Pine St, Valley City', '+918765432109', 'aarohi.mehta@example.com', '2022-09-01', 2, 90.0, 83.0),
    ('Aarav', 'Patel', '1999-03-10', 'Male', '456 Cedar St, Sunset', '+919012345678', 'aarav.patel@example.com', '2022-09-01', 3, 91.0, 84.0),
    ('Anika', 'Rao', '2000-07-25', 'Female', '987 Birch St, Lakeside', '+918765432109', 'anika.rao@example.com', '2022-09-01', 4, 92.0, 85.0),
    ('Advait', 'Shah', '2002-01-05', 'Male', '321 Pine St, Hamlet', '+919012345678', 'advait.shah@example.com', '2022-09-01', 5, 93.0, 86.0),
    ('Rahul', 'Gupta', '2000-02-10', 'Male', '456 Pine St, Sunrise', '+918765432109', 'rahul.gupta@example.com', '2022-09-01', 2, 89.0, 80.0),
    ('Priya', 'Sharma', '2001-04-22', 'Female', '789 Elm St, Beachtown', '+919012345678', 'priya.sharma@example.com', '2022-09-01', 3, 87.5, 79.5),
    ('Vivek', 'Patel', '2002-09-15', 'Male', '321 Cedar St, Hillside', '+919876543210', 'vivek.patel@example.com', '2022-09-01', 4, 88.5, 81.0),
    ('Kavita', 'Singh', '2000-11-20', 'Female', '654 Oak St, Lakeside', '+918765432109', 'kavita.singh@example.com', '2022-09-01', 5, 90.0, 82.0),
    ('Deepak', 'Sharma', '1999-03-12', 'Male', '876 Maple St, Riverside', '+919012345678', 'deepak.sharma@example.com', '2022-09-01', 1, 91.0, 83.0),
    ('Neha', 'Gupta', '2001-05-25', 'Female', '543 Birch St, Valley City', '+919876543210', 'neha.gupta@example.com', '2022-09-01', 2, 92.0, 84.0),
    ('Amit', 'Reddy', '2002-08-30', 'Male', '987 Pine St, Hilltop', '+918765432109', 'amit.reddy@example.com', '2022-09-01', 3, 93.0, 85.0),
    ('Sneha', 'Shah', '2000-10-18', 'Female', '234 Elm St, Sunset', '+919012345678', 'sneha.shah@example.com', '2022-09-01', 4, 94.0, 86.0),
    ('Vikas', 'Kumar', '1998-12-05', 'Male', '765 Cedar St, Hamlet', '+919876543210', 'vikas.kumar@example.com', '2022-09-01', 5, 95.0, 87.0),
    ('Pooja', 'Joshi', '2001-07-08', 'Female', '321 Oak St, Townsville', '+918765432109', 'pooja.joshi@example.com', '2022-09-01', 1, 96.0, 88.0),
    ('Anil', 'Malhotra', '2000-09-12', 'Male', '456 Birch St, Mountainview', '+919012345678', 'anil.malhotra@example.com', '2022-09-01', 2, 97.0, 89.0),
    ('Ritu', 'Rao', '1999-01-15', 'Female', '789 Pine St, Lakeside', '+919876543210', 'ritu.rao@example.com', '2022-09-01', 3, 98.0, 90.0),
    ('Sanjay', 'Shah', '2001-02-15', 'Male', '876 Maple St, Summit', '+918765432109', 'sanjay.shah@example.com', '2022-09-01', 4, 99.0, 91.0),
    ('Meena', 'Yadav', '2002-07-20', 'Female', '543 Oak St, Mountainview', '+919012345678', 'meena.yadav@example.com', '2022-09-01', 5, 100.0, 92.0),
    ('Rajesh', 'Verma', '2000-05-15', 'Male', '123 Main St, Cityville', '+918765432109', 'rajesh.verma@example.com', '2022-09-01', 1, 89.5, 75.0),
    ('Seema', 'Yadav', '1999-12-20', 'Female', '456 Elm St, Townsville', '+919012345678', 'seema.yadav@example.com', '2022-09-01', 2, 92.0, 85.5),
    ('Sachin', 'Agarwal', '2000-05-15', 'Male', '789 Oak St, Villageton', '+919876543210', 'sachin.agarwal@example.com', '2022-09-01', 1, 85.5, 80.5),
    ('Madhu', 'Bhat', '2001-08-20', 'Female', '321 Pine St, Hamlet', '+918765432109', 'madhu.bhat@example.com', '2022-09-01', 3, 88.0, 78.0),
    ('Raj', 'Chopra', '2002-01-05', 'Male', '654 Cedar St, Riverside', '+919012345678', 'raj.chopra@example.com', '2022-09-01', 2, 91.0, 82.5),
    ('Pallavi', 'Deshmukh', '2001-11-15', 'Female', '987 Birch St, Lakeside', '+919876543210', 'pallavi.deshmukh@example.com', '2022-09-01', 4, 90.0, 79.5),
    ('Rahul', 'Gupta', '1998-09-30', 'Male', '234 Elm St, Hilltop', '+918765432109', 'rahul.gupta@example.com', '2022-09-01', 3, 87.0, 77.5),
    ('Shweta', 'Jain', '1999-12-20', 'Female', '876 Maple St, Summit', '+919012345678', 'shweta.jain@example.com', '2022-09-01', 5, 89.0, 76.0),
    ('Vishal', 'Mehta', '2000-04-18', 'Male', '543 Oak St, Mountainview', '+919876543210', 'vishal.mehta@example.com', '2022-09-01', 4, 86.0, 81.0),
    ('Kiran', 'Patel', '2002-03-08', 'Female', '765 Pine St, Valley City', '+918765432109', 'kiran.patel@example.com', '2022-09-01', 1, 92.0, 83.5),
    ('Shilpa', 'Rao', '2001-06-12', 'Female', '456 Cedar St, Sunset', '+919012345678', 'shilpa.rao@example.com', '2022-09-01', 2, 93.0, 84.5),
    ('Ravi', 'Reddy', '2000-08-22', 'Male', '987 Birch St, Lakeside', '+919876543210', 'ravi.reddy@example.com', '2022-09-01', 3, 88.5, 79.0),
    ('Geeta', 'Shah', '1999-10-10', 'Female', '321 Pine St, Hamlet', '+918765432109', 'geeta.shah@example.com', '2022-09-01', 4, 87.5, 80.0),
    ('Alok', 'Singh', '2001-02-28', 'Male', '234 Elm St, Hilltop', '+919012345678', 'alok.singh@example.com', '2022-09-01', 5, 90.5, 81.5),
    ('Riya', 'Sinha', '2000-11-05', 'Female', '876 Maple St, Summit', '+919876543210', 'riya.sinha@example.com', '2022-09-01', 1, 91.5, 82.0),
    ('Nitin', 'Tiwari', '1998-07-15', 'Male', '543 Oak St, Mountainview', '+918765432109', 'nitin.tiwari@example.com', '2022-09-01', 2, 86.0, 77.0),
    ('Ajay', 'Yadav', '2002-09-15', 'Male', '654 Cedar St, Hillside', '+919876543210', 'ajay.yadav@example.com', '2022-09-01', 4, 88.5, 81.0),
    ('Neeta', 'Kumar', '2000-11-20', 'Female', '987 Birch St, Lakeside', '+918765432109', 'neeta.kumar@example.com', '2022-09-01', 5, 90.0, 82.0),
    ('Anil', 'Sharma', '2001-03-25', 'Male', '123 Main St, Cityville', '+919876543210', 'anil.sharma@example.com', '2022-09-01', 1, 89.5, 75.0),
    ('Priya', 'Verma', '2000-06-18', 'Female', '456 Elm St, Townsville', '+919012345678', 'priya.verma@example.com', '2022-09-01', 2, 92.0, 85.5),
    ('Vikas', 'Singh', '2001-10-12', 'Male', '789 Oak St, Villageton', '+919876543210', 'vikas.singh@example.com', '2022-09-01', 1, 85.5, 80.5),
    ('Kavita', 'Bhat', '2002-04-08', 'Female', '321 Pine St, Hamlet', '+918765432109', 'kavita.bhat@example.com', '2022-09-01', 3, 88.0, 78.0),
    ('Deepak', 'Chopra', '1999-11-15', 'Male', '654 Cedar St, Riverside', '+919012345678', 'deepak.chopra@example.com', '2022-09-01', 2, 91.0, 82.5),
    ('Neha', 'Deshmukh', '2001-07-20', 'Female', '987 Birch St, Lakeside', '+919876543210', 'neha.deshmukh@example.com', '2022-09-01', 4, 90.0, 79.5),
    ('Amit', 'Gupta', '1998-09-30', 'Male', '234 Elm St, Hilltop', '+918765432109', 'amit.gupta@example.com', '2022-09-01', 3, 87.0, 77.5),
    ('Seema', 'Jain', '1999-12-20', 'Female', '876 Maple St, Summit', '+919012345678', 'seema.jain@example.com', '2022-09-01', 5, 89.0, 76.0),
    ('Vivek', 'Mehta', '2000-04-18', 'Male', '543 Oak St, Mountainview', '+919876543210', 'vivek.mehta@example.com', '2022-09-01', 4, 86.0, 81.0),
    ('Kiran', 'Patel', '2002-03-08', 'Female', '765 Pine St, Valley City', '+918765432109', 'kiran.patel@example.com', '2022-09-01', 1, 92.0, 83.5);


-- Inserting courses for Computer Science (department_id = 1)
INSERT INTO Courses (course_name, department_id, credits, course_duration_months)
VALUES
    ('Introduction to Computer Science', 1, 4, 12),
    ('Data Structures and Algorithms', 1, 5, 15),
    ('Database Management Systems', 1, 4, 9),
    ('Computer Networks', 1, 4, 16),
    ('Artificial Intelligence', 1, 5, 18);

-- Inserting courses for Electrical Engineering (department_id = 2)
INSERT INTO Courses (course_name, department_id, credits, course_duration_months)
VALUES
    ('Circuit Analysis', 2, 4, 18),
    ('Electromagnetic Fields', 2, 5, 20),
    ('Digital Electronics', 2, 4, 18),
    ('Power Systems', 2, 5, 21),
    ('Control Systems', 2, 4, 22);

-- Inserting courses for Electronics Engineering (department_id = 3)
INSERT INTO Courses (course_name, department_id, credits,course_duration_months)
VALUES
    ('Analog Electronics', 3, 4, 18),
    ('Digital Signal Processing', 3, 5, 19),
    ('Embedded Systems', 3, 4, 20),
    ('VLSI Design', 3, 5, 21),
    ('Communication Systems', 3, 4, 22);

-- Inserting courses for Mechanical Engineering (department_id = 4)
INSERT INTO Courses (course_name, department_id, credits, course_duration_months)
VALUES
    ('Mechanics of Materials', 4, 4, 20),
    ('Thermodynamics', 4, 5, 18),
    ('Fluid Mechanics', 4, 4,19),
    ('Manufacturing Processes', 4, 4, 21),
    ('Machine Design', 4, 5, 18);

-- Inserting courses for Civil Engineering (department_id = 5)
INSERT INTO Courses (course_name, department_id, credits, course_duration_months)
VALUES
    ('Structural Analysis', 5, 4, 22),
    ('Geotechnical Engineering', 5, 5, 24),
    ('Transportation Engineering', 5, 4, 20),
    ('Environmental Engineering', 5, 4, 18),
    ('Construction Management', 5, 5, 20);


-- Inserting instructors for Computer Science (department_id = 1)
INSERT INTO Instructors (first_name, last_name, email, phone_number, department_id)
VALUES
    ('Rahul', 'Sharma', 'rahul.sharma@example.com', '123-456-7890', 1),
    ('Priya', 'Patel', 'priya.patel@example.com', '987-654-3210', 1),
    ('Amit', 'Verma', 'amit.verma@example.com', '456-789-0123', 1);

-- Inserting instructors for Electrical Engineering (department_id = 2)
INSERT INTO Instructors (first_name, last_name, email, phone_number, department_id)
VALUES
    ('Neha', 'Singh', 'neha.singh@example.com', '111-222-3333', 2),
    ('Rajesh', 'Yadav', 'rajesh.yadav@example.com', '444-555-6666', 2),
    ('Anjali', 'Gupta', 'anjali.gupta@example.com', '777-888-9999', 2);

-- Inserting instructors for Electronics Engineering (department_id = 3)
INSERT INTO Instructors (first_name, last_name, email, phone_number, department_id)
VALUES
    ('Vivek', 'Shah', 'vivek.shah@example.com', '222-333-4444', 3),
    ('Pooja', 'Joshi', 'pooja.joshi@example.com', '555-666-7777', 3),
    ('Deepak', 'Kumar', 'deepak.kumar@example.com', '888-999-0000', 3);

-- Inserting instructors for Mechanical Engineering (department_id = 4)
INSERT INTO Instructors (first_name, last_name, email, phone_number, department_id)
VALUES
    ('Ajay', 'Mishra', 'ajay.mishra@example.com', '333-444-5555', 4),
    ('Sneha', 'Srivastava', 'sneha.srivastava@example.com', '666-777-8888', 4),
    ('Sanjay', 'Choudhary', 'sanjay.choudhary@example.com', '999-000-1111', 4);

-- Inserting instructors for Civil Engineering (department_id = 5)
INSERT INTO Instructors (first_name, last_name, email, phone_number, department_id)
VALUES
    ('Kavita', 'Sharma', 'kavita.sharma@example.com', '444-555-6666', 5),
    ('Rahul', 'Gandhi', 'rahul.gandhi@example.com', '777-888-9999', 5),
    ('Anita', 'Desai', 'anita.desai@example.com', '000-111-2222', 5);


INSERT INTO Enrollments (student_id, course_id, enrollment_date, enrolled_status) VALUES
(1, 1, '2023-01-01', 'completed'),
(2, 2, '2023-01-02',  'completed'),
(3, 3, '2023-01-03',  'completed'),
(4, 4, '2023-01-04',  'completed'),
(5, 5, '2023-01-05', 'active'),
(6, 6, '2023-01-06','active'),
(7, 7, '2023-01-07','active'),
(8, 8, '2023-01-08','active'),
(9, 9, '2023-01-09','active'),
(10, 10, '2023-01-10','active'),
(11, 11, '2023-01-11','active'),
(12, 12, '2023-01-12','active'),
(13, 13, '2023-01-13','active'),
(14, 14, '2023-01-14','active'),
(15, 15, '2023-01-15','active'),
(16, 16, '2023-01-16','active'),
(17, 17, '2023-01-17','active'),
(18, 18, '2023-01-18','active'),
(19, 19, '2023-01-19','drop'),
(20, 20, '2023-01-20','active'),
(21, 21, '2023-01-21','active'),
(22, 22, '2023-01-22','active'),
(23, 23, '2023-01-23','active'),
(24, 24, '2023-01-24','active'),
(25, 25, '2023-01-25','active'),
(26, 1, '2023-01-26', 'completed'),
(27, 2, '2023-01-27', 'completed'),
(28, 3, '2023-01-28', 'completed'),
(29, 4, '2023-01-29', 'completed'),
(30, 5, '2023-01-30', 'drop'),
(31, 6, '2023-01-31','active'),
(32, 7, '2023-02-01','active'),
(33, 8, '2023-02-02','active'),
(34, 9, '2023-02-03','active'),
(35, 10, '2023-02-04','active'),
(36, 11, '2023-02-05','active'),
(37, 12, '2023-02-06','active'),
(38, 13, '2023-02-07','active'),
(39, 14, '2023-02-08','active'),
(40, 15, '2023-02-09','active'),
(41, 16, '2023-02-10','active'),
(42, 17, '2023-02-11','active'),
(43, 18, '2023-02-12','active'),
(44, 19, '2023-02-13','active'),
(45, 20, '2023-02-14','active'),
(46, 21, '2023-02-15','active'),
(47, 22, '2023-02-16','active'),
(48, 23, '2023-02-17','active'),
(49, 24, '2023-02-18','active'),
(50, 25, '2023-02-19','active'),
(51, 1, '2023-02-20', 'completed'),
(52, 2, '2023-02-21', 'completed'),
(53, 3, '2023-02-22', 'completed'),
(54, 4, '2023-02-23', 'completed'),
(55, 5, '2023-02-24','active'),
(56, 6, '2023-02-25','active'),
(57, 7, '2023-02-26','active'),
(58, 8, '2023-02-27','active'),
(59, 9, '2023-02-28','active'),
(60, 10, '2023-03-01','active'),
(61, 11, '2023-03-02','active'),
(62, 12, '2023-03-03','active'),
(63, 13, '2023-03-04','active'),
(64, 14, '2023-03-05','active'),
(65, 15, '2023-03-06','active'),
(66, 16, '2023-03-07','active'),
(67, 17, '2023-03-08','active'),
(68, 18, '2023-03-09','active'),
(69, 19, '2023-03-10','active'),
(70, 20, '2023-03-11','active'),
(71, 21, '2023-03-12','active'),
(72, 22, '2023-03-13','active'),
(73, 23, '2023-03-14','active'),
(74, 24, '2023-03-15','active'),
(75, 25, '2023-03-16','active'),
(76, 1, '2023-03-17', 'completed'),
(77, 2, '2023-03-18', 'completed'),
(78, 3, '2023-03-19', 'completed'),
(79, 4, '2023-03-20', 'completed'),
(80, 5, '2023-03-21','active'),
(81, 6, '2023-03-22','active'),
(82, 7, '2023-03-23','active'),
(83, 8, '2023-03-24','active'),
(84, 9, '2023-03-25','active'),
(85, 10, '2023-03-26','active'),
(86, 11, '2023-03-27','active'),
(87, 12, '2023-03-28','active'),
(88, 13, '2023-03-29','active'),
(89, 14, '2023-03-30','active'),
(90, 15, '2023-03-31','active'),
(91, 16, '2023-04-01','active'),
(92, 17, '2023-04-02','active'),
(93, 18, '2023-04-03','active'),
(94, 19, '2023-04-04','active'),
(95, 20, '2023-04-05','active'),
(96, 21, '2023-04-06','active'),
(97, 22, '2023-04-07','active'),
(98, 23, '2023-04-08','active'),
(99, 24, '2023-04-09','active'),
(100, 25, '2023-04-10','active'),
(101, 1, '2023-04-11', 'completed'),
(102, 2, '2023-04-12', 'completed'),
(103, 3, '2023-04-13', 'completed'),
(104, 4, '2023-04-14', 'completed'),
(105, 5, '2023-04-15','active'),
(106, 6, '2023-04-16','active');

