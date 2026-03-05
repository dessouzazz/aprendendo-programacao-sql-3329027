-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente

SELECT
  c.CustomerId AS ID,
  c.FirstName AS Nome,
  c.LastName AS Sobrenome,
  SUM(i.Total) AS Total_gasto
FROM invoices i
INNER JOIN customers c ON i.customerId = c.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY Total_gasto DESC;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30

SELECT
  c.CustomerId AS ID,
  c.FirstName AS Nome,
  c.LastName AS Sobrenome,
  SUM(i.Total) AS Total_gasto,
  COUNT(i.Total) AS Total_de_compras
FROM invoices i
INNER JOIN customers c ON i.customerId = c.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.Total) >= 40;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente

SELECT
  c.CustomerId AS ID,
  c.FirstName AS Nome,
  c.LastName AS Sobrenome,
  SUM(i.Total) AS Total_gasto,
  COUNT(i.Total) AS Total_de_compras,
  MAX(i.Total) AS Maior_compra
FROM invoices i
INNER JOIN customers c ON i.customerId = c.CustomerId
GROUP BY c.CustomerId
ORDER BY Maior_compra DESC
LIMIT 5;