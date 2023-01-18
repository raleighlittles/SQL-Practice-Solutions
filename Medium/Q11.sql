-- Show all allergies ordered by popularity. Remove NULL values from query.

 SELECT DISTINCT(allergies), COUNT(allergies) as total_diagnosis FROM patients 
 WHERE allergies is NOT NULL 
 GROUP by allergies 
 ORDER BY COUNT(allergies) DESC
