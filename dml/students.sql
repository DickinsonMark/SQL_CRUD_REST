-- delete existing rows
TRUNCATE students CASCADE;

-- create students
INSERT INTO students (first_name, last_name)
VALUES
  ('Adam', 'Franzen'),
  ('Akiko', 'Okabe'),
  ('Alex', 'Glassford'),
  ('Alex', 'Nye'),
  ('Alias', 'Montoya'),
  ('Allen', 'Fordham'),
  ('Austin', 'Mahan'),
  ('Brandon', 'Blair'),
  ('Derek', 'Styer'),
  ('George', 'Vickstrom'),
  ('Gina', 'DeBell'),
  ('Isaac', 'Collier'),
  ('Isaac', 'Miller'),
  ('John', 'Berger'),
  ('Jordon', 'Hoshor'),
  ('Kristjan', 'Gannon'),
  ('Mark', 'Dickinson'),
  ('Nathan', 'Dennis'),
  ('Phil', 'Benz'),
  ('Ryan', 'Harings'),
  ('Ryan', 'Pando'),
  ('Sam', 'Goldsmith'),
  ('Shane', 'Pittman'),
  ('Tommy', 'Gaessler'),
  ('Tyler', 'Maier');

INSERT INTO students (first_name, last_name, jobs_applied) VALUES ('Chester', 'Chettah', 10);

UPDATE students SET jobs_applied=3 WHERE last_name='Dickinson';
UPDATE students SET jobs_applied=5 WHERE last_name='Pando';

SELECT * FROM students WHERE jobs_applied > 0;

DELETE FROM students WHERE jobs_applied > 5;
DELETE FROM students WHERE last_name='Dickinson';

SELECT * FROM students;
