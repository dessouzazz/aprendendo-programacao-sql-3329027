-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.

SELECT InvoiceID, TrackID, UnitPrice FROM invoice_items;

-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente

SELECT InvoiceID, TrackID, UnitPrice,
UnitPrice * 2 AS Preco_Dobrado,
UnitPrice / 2 AS Preco_Metade,
UnitPrice + 10 AS Preco_Com_Adicional
FROM invoice_items;

-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30

SELECT InvoiceID, TrackID, UnitPrice,
UnitPrice * 2 AS Preco_Dobrado,
UnitPrice / 2 AS Preco_Metade,
UnitPrice + 10 AS Preco_Com_Adicional
FROM invoice_items
WHERE InvoiceID > 20 AND InvoiceID <= 30;