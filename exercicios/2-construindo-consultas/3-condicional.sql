-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT state from customers
WHERE Country = 'Brazil';

SELECT DISTINCT 
state AS Estado_Sigla,
Country as Pais,
CASE 
    WHEN state = 'SP' THEN 'São Paulo'
    WHEN state = 'RJ' THEN 'Rio de Janeiro'
    WHEN state = 'DF' THEN 'Distrito Federal'
    ELSE 'Outro Estado'
END AS Estado_Nome
FROM customers
WHERE Country = 'Brazil';
