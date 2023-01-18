# Query all columns for patients that were admitted and discharged on the same date

SELECT *
FROM admissions
WHERE admission_date = discharge_date;
