INSERT INTO people (last_name, first_name, address, city)
VALUES ('Hernández', 'Laura', 'Calle 21', 'Monterrey');

UPDATE people
SET last_name = 'Chávez', city = 'Mérida'
WHERE person_id = 1;

UPDATE people
SET first_name = 'Juan'
WHERE city = 'Mérida';

DELETE FROM people
WHERE person_id = 1;

SELECT first_name, last_name
FROM people;