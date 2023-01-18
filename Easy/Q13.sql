-- Show the total number of admissions for patient_id 579.

select patient_id, COUNT(*) from admissions where patient_id == 579
