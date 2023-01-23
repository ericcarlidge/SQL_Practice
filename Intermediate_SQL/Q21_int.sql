# Display the total amount of patients for each province. Order by descending.

SELECT province_names.province_name, COUNT(*) AS total_patients
FROM patients
JOIN province_names ON patients.province_id = province_names.province_id
GROUP BY province_names.province_name
ORDER BY total_patients DESC;
