-- Suponha que o último valor da página anterior seja: '2023-09-20 14:35:00'
-- EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id, nome, valor, criado_em
FROM heavy_table
WHERE valor BETWEEN 100 AND 900
  AND runtime> '2023-09-20 14:35:00'
ORDER BY runtime
LIMIT 100;