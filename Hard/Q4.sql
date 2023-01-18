-- All patients who have gone through admissions, can see their medical documents on our site. 
-- Those patients are given a temporary password after their first admission. 
-- Show the patient_id and temp_password.
-- The password must be the following, in order:
-- 1. patient_id
-- 2. the numerical length of patient's last_name
-- 3. year of patient's birth_date

-- Note: The key part is "patients who have gone through admissions".. this means to use the admissions version of 'patients_id', not the one in patients
-- (presumably there are patients in the database that have never been admitted)

SELECT DISTINCT(admissions.patient_id), CONCAT(admissions.patient_id, LEN(last_name), YEAR(birth_date)) AS temp_password 
FROM patients
INNER JOIN admissions ON (patients.patient_id == admissions.patient_id)
