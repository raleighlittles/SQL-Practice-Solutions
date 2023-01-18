-- Show first name and last name concatinated into one column to show their full name.
-- Look at the Expected Output to see the format, take note of the expected column name
SELECT CONCAT(first_name, " ", last_name) AS full_name from patients
