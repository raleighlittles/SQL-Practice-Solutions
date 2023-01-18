-- Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. 
-- Sort the list starting from the earliest birth_date.

SELECT first_name, last_name, birth_date FROM patients WHERE birth_date between '1970-01-01' AND '1979-12-31'
ORDER BY birth_date ASC
