-- Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
-- Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

-- Run two individual queries: one for patients with insurance, one for patients without, the combine them

SELECT 'Yes' as has_insurance,
COUNT(patient_id) * 10 as cost_after_insurance
FROM admissions
WHERE (patient_id % 2 == 0)
UNION
SELECT 'No' AS has_insurance,
COUNT(patient_id) * 50 AS cost_after_insurance
FROM admissions
WHERE (patient_id % 2 != 0)
