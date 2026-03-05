-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas

SELECT * from customers
WHERE State IS NOT NULL
AND Fax IS NOT NULL
LIMIT 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente

SELECT * from customers
WHERE State IS NOT NULL
AND Fax IS NOT NULL
ORDER BY Country ASC, FirstName DESC
LIMIT 10;


-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas

SELECT * from customers
WHERE State IS NOT NULL
AND Fax IS NOT NULL
ORDER BY Country ASC, FirstName DESC
LIMIT 10 OFFSET 3;