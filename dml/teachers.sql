-- delete existing rows
TRUNCATE teachers CASCADE;

-- create teachers
INSERT INTO teachers (first_name, last_name)
VALUES
  ('Michael', 'Herman'),
  ('Wes', 'Reid'),
  ('Robby', 'Hajek'),
  ('Ben', 'Hassara');

INSERT INTO teachers (first_name, last_name) VALUES ('Bob', 'Ross');

UPDATE teachers SET class_id=(SELECT id FROM classes WHERE subject='Underwater Basket Weaving') WHERE last_name='Reid';
UPDATE teachers SET class_id=(SELECT id FROM classes WHERE subject='Underwater Basket Weaving') WHERE last_name='Hassara';
UPDATE teachers SET class_id=(SELECT id FROM classes WHERE subject='Teaching your dog to read') WHERE last_name='Herman';
UPDATE teachers SET class_id=(SELECT id FROM classes WHERE subject='WAT') WHERE last_name='Hajek';

SELECT * FROM teachers WHERE class_id=(Select id FROM classes WHERE subject='Underwater Basket Weaving');
SELECT * FROM teachers WHERE last_name='Herman' OR last_name='Hassara';
