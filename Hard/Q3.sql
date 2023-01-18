-- Show patient_id, first_name, last_name, and attending doctor's specialty.
-- Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
-- Check patients, admissions, and doctors tables for required information.

SELECT patients.patient_id,
patients.first_name AS patient_first_name,
patients.last_name AS patient_last_name, 
doctors.specialty AS attending_doctor_speciality FROM patients
INNER JOIN admissions ON (patients.patient_id == admissions.patient_id)
INNER JOIN doctors ON (ADMISSIONS.attending_doctor_id == doctors.doctor_id)
WHERE admissions.diagnosis == 'Epilepsy' and doctors.first_name == 'Lisa'
