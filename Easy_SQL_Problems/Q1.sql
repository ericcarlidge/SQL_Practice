# Show first name and last name of patients who do not have allergies. (null)

SELECT first_name, last_name
FROM patients
WHERE allergies IS NULL;
