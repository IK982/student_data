DROP TABLE IF EXISTS new_student_data;
DROP TABLE IF EXISTS house_table;

CREATE TABLE house_table (
    id_house_colour varchar(50) primary key,
    head_of_house varchar(255),
    points int
);

CREATE TABLE new_student_data(
    id int primary key,
    name varchar(255),
    email varchar(127),
    start_year int,
    phone_number varchar(20),
    house_id varchar(127),
    CONSTRAINT fk_student_to_house FOREIGN KEY (house_id) REFERENCES house_table(id_house_colour)
);

INSERT INTO house_table(id_house_colour, head_of_house, points) 
VALUES ('Red', 'Mr Red', 297),
('Green', 'Miss Green', 304),
('Yellow', 'Mr Yellow', 300),
('Blue', 'Miss Blue', 309);

INSERT INTO new_student_data(id, name, house_id, phone_number, email, start_year) 
VALUES (1,'John Doe', 'Red', 01838596789, 'John.Doe@hotmail.co.uk', 2020),
(2, 'Jane Doe', 'Green', 01838594567, 'Jane.Doe@hotmail.co.uk', 2020),
(3, 'Ben Smith', 'Yellow', 01838595678, 'Ben.Smith@hotmail.co.uk', 2020),
(4, 'India KaurBrown', 'Blue', 01838597891, 'India.KaurBrown@hotmail.co.uk', 2020)







-- INSERT INTO student_data(id, name, school_house, phone_number, contact_email, start_year) 
-- VALUES (3,'John', 'Mars', 01838596789, 'John@example.co.uk', 2021);
--  psql -U postgres my_database_name
-- SELECT * FROM student_data; 
--  psql -U postgres -d my_database_name -f script.sql
-- SELECT * FROM my_new_table WHERE my_first_column > 17 LIMIT 10 OFFSET 30;
-- SELECT * FROM sample_students WHERE name LIKE 'M%'; -names starting with m 
--  SELECT * FROM sample_students WHERE email =  ''; - idenitfying students without emails
-- SELECT * FROM sample_students WHERE school_house = 'yellow' AND email = ''; - in yellow house and don't have email
--  SELECT * FROM sample_students ORDER BY name LIMIT 10; - find first 10 names alphabetically 
-- CREATE TABLE new_student_data(
--     id int primary key,
--     name varchar(255),
--     email varchar(127),
--     start_year int,
--     house_id varchar(127)
-- );