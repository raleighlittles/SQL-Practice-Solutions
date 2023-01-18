-- Show patient_id, weight, height, isObese from the patients table.
-- Display isObese as a boolean 0 or 1.
-- Obese is defined as weight(kg)/(height(m)2) >= 30.
-- weight is in units kg.
-- height is in units cm.

SELECT patient_id, weight, height,
CASE
WHEN
( weight / (POWER(height * 0.01, 2)) ) >= 30 THEN 1
ELSE 0
END AS isObese
FROM patients
