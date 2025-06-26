02/24 - 05/24

SELECT * FROM missao
where 
(
    (EXTRACT(MONTH FROM data_inicio) >= 3 AND EXTRACT(YEAR FROM data_inicio) >= 2024) 
    AND
    (EXTRACT(MONTH FROM data_fim) <= 3 AND EXTRACT(YEAR FROM data_fim) <= 2024)
) 
OR
(   
    (EXTRACT(MONTH from data_inicio) <= 3 AND extract(year from data_inicio) <= 2024)
    AND
    (EXTRACT(MONTH FROM data_fim) >= 3 AND EXTRACT(YEAR FROM data_fim) >= 2024)
    OR data_fim IS NULL
);
