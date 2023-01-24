# Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1.
# Obese is defined as weight(kg)/(height(m)2) >= 30. Weight is in units kg. Height is in units cm.

SELECT
	patient_id,
	weight,
	height,
    CASE
    	WHEN weight / (POWER((height / 100.0), 2)) >= 30 THEN TRUE
        ELSE FALSE
    END AS 'isObese'
FROM patients;

#Alternate

SELECT patient_id, weight, height, 
  (CASE 
      WHEN weight/(POWER(height/100.0,2)) >= 30 THEN
          1
      ELSE
          0
      END) AS isObese
FROM patients;
