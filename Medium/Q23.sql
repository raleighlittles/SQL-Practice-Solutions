-- Display the number of duplicate patients based on their first_name and last_name.

-- First example we've seen of a 'GROUP BY' having more than one field

SELECT first_name, last_name, COUNT(*) FROM patients GROup BY first_name, last_name HAVING COUNT(*) > 1
