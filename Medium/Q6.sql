-- Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.

SELECT
(SELECT COUNT(patient_id) FROM patients WHERE (gender == "M")) as male_count,
(SELECT COUNT(patient_id) FROM patients WHERE (gender == "F")) as female_count
