-- Quais são os 5 serviços mais caros na oficina?
SELECT nome, preco
FROM Servico
ORDER BY preco DESC
LIMIT 5;

-- Qual a média de tempo em horas para a finalização das ordens de serviço?
SELECT AVG(TIMESTAMPDIFF(HOUR, data_de_abertura, data_de_conclusao)) AS MediaFinalizacao
FROM OrdemServico
WHERE data_de_conclusao IS NOT NULL;

-- Quais as 5 ordens de serviço que mais faturaram?
SELECT os.id AS ID, os.total AS Total
FROM OrdemServico os
ORDER BY Total DESC
LIMIT 5;

-- Qual cor predomina entre todos os carros que já passaram pela oficina?
SELECT v.cor AS Cor, COUNT(*) AS TotalCarros
FROM Veiculo v
GROUP BY Cor
ORDER BY TotalCarros DESC
LIMIT 1;

-- Quais são os 5 clientes com maior número de carros registrados na oficina?
SELECT i.nome_completo AS Cliente, COUNT(v.id) AS TotalVeiculos
FROM Cliente c
INNER JOIN Identificacao i ON i.id = c.identificacao_id
INNER JOIN Veiculo v ON c.id = v.cliente_id
GROUP BY Cliente
ORDER BY TotalVeiculos DESC
LIMIT 5;

-- Quais são os 5 serviços mais realizados na oficina?
SELECT s.nome AS Servico, COUNT(i.id) AS TotalRealizacoes
FROM ItemServico i
INNER JOIN Servico s ON s.id = i.servico_id
GROUP BY s.id, s.nome
ORDER BY TotalRealizacoes DESC
LIMIT 5;

-- Quais clientes possuem pelo menos 3 ordens de serviço?
SELECT i.nome_completo AS Cliente, COUNT(os.id) AS TotalOrdens
FROM OrdemServico os
INNER JOIN Cliente c ON c.id = os.cliente_id
INNER JOIN Identificacao i on i.id = c.identificacao_id
GROUP BY Cliente
HAVING COUNT(os.id) > 3
ORDER BY TotalOrdens DESC;

-- Em qual cidade reside a maior parte dos clientes da oficina?
SELECT e.cidade AS Cidade, COUNT(c.id) AS TotalClientes
FROM Cliente c
INNER JOIN Endereco e ON e.id = c.endereco_id
GROUP BY Cidade
ORDER BY TotalClientes DESC
LIMIT 1;

-- Quais os 5 modelos de carro que mais solicitaram serviços na oficina?
SELECT v.modelo AS Modelo, COUNT(*) AS TotalServicos
FROM Veiculo v
INNER JOIN OrdemServico os ON v.id = os.veiculo_id
INNER JOIN ItemServico i ON i.ordemservico_id = os.id
GROUP BY Modelo
ORDER BY TotalServicos DESC
LIMIT 5;

-- Quanto pagou no total os 5 clientes que mais gastaram na oficina?
SELECT i.nome_completo AS Cliente, SUM(os.total) AS TotalPago
FROM OrdemServico os
INNER JOIN Cliente c ON c.id = os.cliente_id
INNER JOIN Identificacao i ON i.id = c.identificacao_id
GROUP BY Cliente
ORDER BY TotalPago DESC
LIMIT 5;