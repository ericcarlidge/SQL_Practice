# For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

SELECT
	CONCAT(p.first_name, ' ', p.last_name) AS p_full_name,
  a.diagnosis,
  CONCAT(d.first_name, ' ', d.last_name) AS dr_full_name
FROM admissions a
	JOIN patients p ON a.patient_id = p.patient_id
  JOIN doctors d ON a.attending_doctor_id = d.doctor_id;
