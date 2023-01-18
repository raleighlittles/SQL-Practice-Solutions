-- Based on cities where our patient lives in, write a query to display the list of unique city starting with a vowel (a, e, i, o, u). 
-- Show the result order in ascending by city.

SELECT DISTINCT(city) FROM patients WHERE (city LIKE 'a%' OR city LIKE 'e%' OR city LIKE 'i%' OR city LIKE 'o%' OR city LIKE 'u%') ORDER by city ASC
