-- Show how many patients have a birth_date with 2010 as the birth year.

SELECT COUNT(patient_id) FROM patients WHERE birth_date LIKE '2010%' 
