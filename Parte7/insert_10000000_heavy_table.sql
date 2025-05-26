-- Inserir 10 milhões de registros aleatórios
INSERT INTO heavy_table (nome, categoria, valor)
SELECT
    md5(random()::text),
    CASE WHEN random() < 0.5 THEN 'A' ELSE 'B' END,
    round((random() * 1000)::numeric, 2)
FROM generate_series(1, 10000000);
