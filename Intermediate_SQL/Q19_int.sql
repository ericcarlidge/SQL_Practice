# Show first_name, last_name, and the total number of admissions attended for each doctor.
# Every admission has been attended by a doctor.

SELECT 
  doctors.first_name, 
  doctors.last_name, 
  COUNT(*) AS number_admissions_per_doctor
FROM admissions
JOIN doctors ON admissions.attending_doctor_id = doctors.doctor_id
GROUP BY admissions.attending_doctor_id;
