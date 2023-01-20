# Show the difference in maximum weight and minimum weight where the last name is Maroni.

SELECT (MAX(weight) - MIN(weight))
FROM patients
WHERE last_name = 'Maroni';
