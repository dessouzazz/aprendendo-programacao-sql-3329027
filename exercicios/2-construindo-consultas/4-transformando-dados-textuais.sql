-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT CustomerId, FirstName, LastName, Address FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT CustomerId AS ID,
FirstName AS Nome,
upper(LastName) AS Sobrenome,
Address FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas

SELECT CustomerId AS ID,
lower(FirstName) AS Nome,
upper(LastName) AS Sobrenome,
Address FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome

SELECT CustomerId AS ID,
lower(FirstName) AS Nome,
upper(LastName) AS Sobrenome,
(FirstName || ' ' || LastName) AS Nome_Completo,
Address FROM customers
WHERE Country = 'Brazil';


-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço

SELECT 
  CustomerId AS ID,
  lower(FirstName) AS Nome,
  upper(LastName) AS Sobrenome,
  (FirstName || ' ' || LastName) AS Nome_Completo,
  REPLACE (Address, 'Av.', 'Avenida') AS Endereco 
FROM customers
WHERE Country = 'Brazil';


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais


