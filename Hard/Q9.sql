-- For each day display the total amount of admissions on that day. Display the amount changed from the previous date.
-- See: https://stackoverflow.com/questions/23200189/sql-find-difference-between-previous-and-current-row

SELECT admission_date, COUNT(patient_id) AS admission_day, COUNT(patient_id) - LAG(COUNT(patient_id), 1) OVER
(ORDER BY admission_date)
FROM admissions
GROUP BY admission_date
