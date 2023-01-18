-- Show first name, last name and role of every person that is either patient or doctor.
-- The roles are either "Patient" or "Doctor"
--
-- The question doesn't really specify whether duplicates should be included or not. I initially tried using 'UNION'
-- but noticed that the query returned fewer records than the expected output, so I changed it to 'UNION ALL'

 SELECT first_name, last_name, 'Patient' as role FROM patients
 UNION ALL
 SELECT first_name, last_name, 'Doctor' AS role from doctors
