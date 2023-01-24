# Display the number of duplicate patients based on their first_name and last_name.

SELECT
  first_name,
  last_name,
  COUNT(*) AS number_duplicates
FROM patients
GROUP BY first_name, last_name
HAVING number_duplicates > 1;
