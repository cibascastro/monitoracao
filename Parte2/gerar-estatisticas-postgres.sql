# Criar banco de dados
CREATE DATABASE dbs600;

# conectar no banco de dados
\c dbs600

# Crie uma tabela e insira dados:

CREATE TABLE t1 (
    id SERIAL PRIMARY KEY,
    data TEXT
);

INSERT INTO t1 (data)
SELECT md5(random()::text)
FROM generate_series(1, 10000);

# Execute algumas consultas para gerar estatísticas:
SELECT COUNT(*) FROM t1;
SELECT * FROM t1 WHERE id = 1;
SELECT * FROM t1 WHERE id > 5000;

# Verificar as estatísticas
SELECT
    query,
    calls,
    rows,
    total_exec_time / 1000 AS total_exec_time_seconds,
    shared_blks_read,
    shared_blks_hit,
    shared_blks_written
FROM pg_stat_statements
WHERE query LIKE '%t1%';
