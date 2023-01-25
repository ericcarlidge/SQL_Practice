# Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name

SELECT pn.province_name
FROM province_names pn
	JOIN patients p ON pn.province_id = p.province_id
GROUP BY pn.province_name
HAVING 
	COUNT(CASE 
          	WHEN gender = 'M' THEN 1 
              END) > COUNT(CASE 
                       	      WHEN gender = 'F' THEN 1 
                           END);
