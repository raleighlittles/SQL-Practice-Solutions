-- Show the provinces that has more patients identified as 'M' than 'F'. 
-- Must only show full province_name

-- Requires knowledge of subqueries, and the fact that the argument to SUM can be a boolean expression.

SELECT province_name FROM 
(SELECT province_names.province_name, SUM(gender == "F") AS num_females, SUM(gender == "M") as num_males FROM patients
INNER JOIN province_names ON province_names.province_id == patients.province_id
GROUP By province_names.province_name
HAVING num_males > num_females )
