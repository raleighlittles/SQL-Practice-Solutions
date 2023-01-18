-- For each doctor, display their id, full name, and the first and last admission date they attended.

SELECT doctors.doctor_id, CONCAT(doctors.first_name, " ", doctors.last_name) AS full_name, 
MIN(admissions.admission_date) as first_admission_date,
MAx(admissions.admission_date) as last_admission_date
FROM admissions INNER JOIN doctors ON (doctors.doctor_id == admissions.attending_doctor_id)
GROUP by doctors.doctor_id
