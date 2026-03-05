-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT 
  BillingCountry AS Pais, 
  SUM(total) AS Soma_Compras,
  MIN(total) AS Compra_Minima,
  MAX(total) AS Compra_Maxima,
  COUNT(total) AS Quantidade_Compras,
  ROUND(AVG(total), 2) AS Ticket_Medio
FROM invoices
GROUP BY BillingCountry;