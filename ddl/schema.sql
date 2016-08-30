\connect MarkDickinson;
DROP DATABASE IF EXISTS g30;
CREATE DATABASE g30;
\connect g30;
DROP TABLE IF EXISTS classes, students, teachers, students_classes;

CREATE TABLE classes (
  id serial primary key,
  subject varchar(255) NOT NULL
);

CREATE TABLE students (
  id serial primary key,
  first_name text NOT NULL,
  last_name text NOT NULL,
  jobs_applied integer DEFAULT 0
);

CREATE TABLE teachers (
  id serial primary key,
  first_name text NOT NULL,
  last_name text NOT NULL
);

ALTER TABLE teachers ADD class_id integer REFERENCES classes(id);

CREATE TABLE students_classes (
  student_id integer REFERENCES students(id),
  class_id integer REFERENCES classes(id)
)
