# Projeto de Modelagem e Consultas SQL para Oficina de Carros

Este repositório contém a solução para o desafio de modelagem e consultas SQL para uma oficina de carros. O objetivo do projeto é criar uma modelagem de banco de dados que represente uma oficina, suas entidades e relacionamentos, e elaborar consultas SQL para realizar operações e análises sobre os dados.

## 🎲 Modelagem do Banco de Dados

O esquema do banco de dados foi projetado para atender às necessidades de uma oficina de carros, considerando clientes, veículos, ordens de serviço, serviços, itens de serviço e outros atributos relevantes. O modelo inclui as seguintes características:

- Clientes podem ser associados a múltiplos veículos;
- Cada ordem de serviço registra a abertura, conclusão, custo total e serviços realizados;
- Os serviços são identificados por nome, descrição e preço;
- Os itens de serviço detalham os serviços realizados em cada ordem de serviço.

## 📋 Estrutura do Repositório

O repositório está organizado da seguinte forma:

- `Oficina_Schema.mwb`: Arquivo contendo o diagrama da relação EER do banco;
- `script.sql`: Arquivo SQL contendo o script para criar o esquema do banco de dados, incluindo tabelas, chaves primárias, chaves estrangeiras e constraints;
- `insertions.sql`: Arquivo SQL com código para persistencia de dados fictícios;
- `queries.sql`: Arquivo SQL com uma série de consultas elaboradas para responder a diferentes perguntas relacionadas ao cenário da oficina de carros. As consultas abordam seleções, junções, agregações, ordenações e análises.

## 💼 Perguntas de Negócios Abordadas

Através das consultas elaboradas no arquivo `queries.sql`, foram respondidas diversas perguntas e situações de negócios, incluindo:

- Quais são os 5 serviços mais caros na oficina?
- Qual a média de tempo em horas para a finalização das ordens de serviço?
- Quais as 5 ordens de serviço que mais faturaram?
- Qual cor predomina entre todos os carros que já passaram pela oficina?
- Quais são os 5 clientes com maior número de carros registrados na oficina?
- Quais são os 5 serviços mais realizados na oficina?
- Quais clientes possuem pelo menos 3 ordens de serviço?
- Em qual cidade reside a maior parte dos clientes da oficina?
- Quais os 5 modelos de carro que mais solicitaram serviços na oficina?
- Quanto pagou no total os 5 clientes que mais gastaram na oficina?

## ⚙️ Como Usar

1. Clone este repositório para o seu ambiente local;
2. Execute o script SQL `script.sql` em seu sistema de gerenciamento de banco de dados para criar o esquema do banco de dados;
3. Utilize o arquivo `insertions.sql` para inserir os dados nas tabelas do esquema;
4. Realize as pesquisas do arquivo `queries.sql` para explorar as consultas elaboradas e suas respostas para as perguntas de negócios.

## ✅ Conclusão

Este projeto apresenta uma solução de modelagem de banco de dados e consultas SQL para uma oficina de carros. As consultas oferecem insights sobre os clientes, veículos, ordens de serviço e serviços oferecidos pela oficina.

---

Obrigado por ler até aqui! - [Caiython](https://github.com/caiython) 😊