-- remove existing rows
TRUNCATE classes CASCADE;

INSERT INTO classes (subject) VALUES
  ('Underwater Basket Weaving'),
  ('Teaching your dog to read'),
  ('WAT');

UPDATE teachers SET class_id=NULL WHERE last_name='Herman';
DELETE FROM classes WHERE subject='Teaching your dog to read';

SELECT * FROM classes;
