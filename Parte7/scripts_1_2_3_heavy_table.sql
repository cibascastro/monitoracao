-- Script 1: Consulta com COUNT(*) e LIKE
SELECT COUNT(*)
FROM heavy_table
WHERE lower(nome) LIKE '%abc%' AND valor > 500;

-- Script 2: Consulta com GROUP BY em coluna não indexada
SELECT categoria, COUNT(*), AVG(valor)
FROM heavy_table
WHERE valor > 200
GROUP BY categoria;

-- Script 3: Consulta com ORDER BY + OFFSET
SELECT id, nome, valor
FROM heavy_table
WHERE valor BETWEEN 100 AND 900
ORDER BY runtime
OFFSET 100000 LIMIT 100;

-- DELETE
DELETE FROM heavy_table
WHERE valor IN (
    SELECT valor
    FROM heavy_table
    WHERE categoria = 'A'
);

-- UPDATE
UPDATE heavy_table
SET valor = valor * 1.1,
    nome = md5(nome || random()::text)
WHERE id IN (
    SELECT id
    FROM heavy_table
    WHERE categoria = 'B'
);
