-- Display the total amount of patients for each province. Order by descending.

SELECT province_names.province_name, COUNT(patients.patient_id) as patient_count
FROM patients
INNER JOIN province_names ON patients.province_id == province_names.province_id
GROUP BY province_names.province_name
ORDER By patient_count DESC
