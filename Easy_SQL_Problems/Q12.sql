# Show the patient id and the total number of admissions for patient_id 579

SELECT patient_id,  COUNT(*) AS Total_Admissions
FROM admissions
WHERE patient_id = 579;
