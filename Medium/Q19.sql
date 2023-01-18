-- Show first_name, last_name, and the total number of admissions attended for each doctor.
-- Every admission has been attended by a doctor.

SELECT doctors.first_name, doctors.last_name, COUNT(*) as admissions_total FROM admissions
INNER JOIN doctors ON (doctors.doctor_id == admissions.attending_doctor_id)
GROUP by attending_doctor_id
