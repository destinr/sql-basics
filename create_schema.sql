-- Schema
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id         serial PRIMARY KEY,
  line_1     varchar(255) NOT NULL,
  city       varchar(255) NOT NULL,
  state      varchar(255) NOT NULL,
  zipcode    varchar(255) NOT NULL
);

CREATE TABLE classes (
  id      serial PRIMARY KEY,
  name    varchar(255) NOT NULL,
  credits decimal NOT NULL
);

CREATE TABLE enrollments (
  id           serial PRIMARY KEY,
  student_id   integer,
  class_id     integer,
  grade        varchar(255) 
);
