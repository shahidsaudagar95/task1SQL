create table collage(
id serial primary key,
name varchar,
location varchar,
branches int
);

select * from collage



drop table collage;


create table student(
std_id int primary key,
name  varchar,
clg_id int,
age int,
foreign key(clg_id)references collage(id)
);

select * from student;

drop table student;



create table library (
lib_id INT PRIMARY KEY,
Book_name VARCHAR,
c_id INT,
author VARCHAR,
FOREIGN KEY (c_id) REFERENCES collage(id)
);

select * from library;


insert into collage (name, location, branches)
VALUES
('kdk collage of engineering', 'Nagpur', 5),
('Indian Institute of Science', 'Bangalore', 6),
('Delhi Technological University', 'Delhi', 4),
('National Institute of Technology', 'nagour', 5),
('Anna University', 'Chennai', 7),
('BITS Pilani', 'Pilani', 6),
('Jadavpur University', 'Kolkata', 4),
('Vellore Institute of Technology', 'Vellore', 8),
('Amrita Vishwa Vidyapeetham', 'Coimbatore', 5),
('SRM Institute of Science and Technology', 'Chennai', 6);



insert into student (std_id, name, clg_id, age)
VALUES
(1, 'Amit Verma', 1, 20),
(2, 'Sneha Rao', 2, 21),
(3, 'Ravi Desai', 3, 22),
(4, 'Priya Nair', 4, 20),
(5, 'Karan Singh', 5, 23),
(6, 'Neha Kulkarni', 6, 19),
(7, 'Arjun Patil', 7, 21),
(8, 'Meera Joshi', 8, 22),
(9, 'Rahul Sharma', 9, 20),
(10, 'Isha Banerjee', 10, 21);



insert into library (lib_id, Book_name, c_id, author) VALUES
(1, 'Introduction to Algorithms', 1, 'Thomas H. Cormen'),
(2, 'Engineering Thermodynamics', 2, 'P.K. Nag'),
(3, 'Digital Logic Design', 3, 'M. Morris Mano'),
(4, 'Structural Analysis', 4, 'R.C. Hibbeler'),
(5, 'Linear Algebra and Its Applications', 5, 'Gilbert Strang'),
(6, 'Concepts of Physics', 6, 'H.C. Verma'),
(7, 'Organic Chemistry', 7, 'Paula Yurkanis Bruice'),
(8, 'Principles of Genetics', 8, 'D. Peter Snustad'),
(9, 'Microeconomics', 9, 'Paul Krugman'),
(10, 'The Norton Anthology of English Literature', 10, 'Stephen Greenblatt');
