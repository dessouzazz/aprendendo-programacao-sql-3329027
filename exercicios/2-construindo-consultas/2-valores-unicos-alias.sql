-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
select DISTINCT Country from customers;

-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países

select DISTINCT Country AS País, Company AS Empresa from customers;


-- Nesta mesma consulta, atribua um alias com título em português para cada coluna
