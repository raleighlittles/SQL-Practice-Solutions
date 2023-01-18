-- Write a query to find the first_name, last name and birth date of patients who have height more than 160 and weight more than 70

SELECT first_name, last_name, birth_date FROM patients WHERE (height > 160) AND (weight > 70)
