-- Criação de tabela grande sem índices
DROP TABLE IF EXISTS heavy_table;
CREATE TABLE heavy_table (
    id SERIAL PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    valor NUMERIC,
    criado_em TIMESTAMP DEFAULT now()
);


