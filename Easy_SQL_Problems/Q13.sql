# Based on the cities that our patients live in, show unique cities that are in province_id 'NS'

SELECT DISTINCT city
FROM patients
WHERE province_id = 'NS';

# can use AS alias to name 'DISTINCT city' as unique_cities
