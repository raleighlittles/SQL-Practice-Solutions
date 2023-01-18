-- Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.
-- Clever trick that I didn't know you could do with Order By

SELECT province_name FROM province_names
ORDER By province_name == 'Ontario' DESC, province_name
