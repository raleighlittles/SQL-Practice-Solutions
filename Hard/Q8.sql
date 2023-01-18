-- Show the percent of patients that have 'M' as their gender. 
-- Round the answer to the nearest hundreth number and in percent form.

-- Another use of subquery

SELECT CONCAT(ROUND(COUNT(gender) * 100.0 / (SELECT COUNT(*) from patients), 2), '%')
AS percent_of_male_patients
FROM patients
WHERE gender == 'M'
GROUP BY gender
