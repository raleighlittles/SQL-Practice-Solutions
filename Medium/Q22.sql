-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

SELECT CONCAT(patients.first_name, " ", patients.last_name) AS patient_name,
admissions.diagnosis,
CONCAT (doctors.first_name, " ", doctors.last_name) AS doctor_name FRom patients
INNER JOIN admissions ON (patients.patient_id == admissions.patient_id)
INNER JOIN doctors ON (admissions.attending_doctor_id == doctors.doctor_id)
