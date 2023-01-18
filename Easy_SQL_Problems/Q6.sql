# Show first name, last name, and the full province name of each patient.
# Example: 'Ontario' instead of 'ON'

SELECT patients.first_name, patients.last_name, province_names.province_name
FROM patients
JOIN province_names 
ON patients.province_id = province_names.province_id;
