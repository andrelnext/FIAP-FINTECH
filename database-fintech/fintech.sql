CREATE TABLE fintech
(
    id             int not null,
    empresa           varchar(255) not null,
    data_pagamento date         not null
);

-- table funcionario
CREATE TABLE funcionario
(
    id                        int not null,
    funcionario_primeiroNome  varchar(255)   not null,
    funcionario_cargo         varchar(255)   not null,
    funcionario_cpf           varchar(11)    not null,
    funcionario_nascimento    date           not null,
    funcionario_salario       decimal(10, 2) not null,
    funcionario_servico_ativo boolean        not null
);

-- table funcionarios
CREATE TABLE funcionarios
(
    id             int not null,
    fintech_id     int not null,
    funcionario_id int not null

);

-- table servico (serviços prestados)
CREATE TABLE servico
(
    id                int not null,
    servico_nomeServico      varchar(255)   not null,
    servico_descricao varchar(255)   not null,
    servico_cargo     varchar(255)   not null,
    servico_valor     decimal(10, 2) not null
);

-- table funcionarios servicos
CREATE TABLE funcionarios_servicos
(
    id             int not null,
    responsavel int     not null,
    realizar     int     not null
);

-- table financeiro (contas a pagar e receber)
CREATE TABLE financeiro
(
    id                       int not null,
    data_pagamento           date           not null,
    -- valor total dos serviços prestados
    valor_total_servicos     decimal(10, 2) not null,
    -- valor total dos funcionários
    valor_total_funcionarios decimal(10, 2) not null

);