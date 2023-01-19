# Show the city and the total number of patients in the city.
# Order from most to least patients and then by city name ascending.

SELECT city, COUNT(*) AS number_patients
FROM patients
GROUP BY city
ORDER BY number_patients DESC, city;
