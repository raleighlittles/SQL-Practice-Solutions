-- Show all of the days of the month (1-31) and how many admission_dates occurred on that day.
-- Sort by the day with most admissions to least admissions.

SELECT DAY(admission_date) as day_number, COUNT(*) AS number_of_admissions FROM admissions 
GROUP by day_number order by number_of_admissions DESC
