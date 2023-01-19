# Show all allergies ordered by popularity. Remove NULL values from query.

SELECT allergies, COUNT(*) AS total_allergies
FROM patients
WHERE allergies IS NOT NULL
GROUP BY allergies
ORDER BY total_allergies DESC;
