select COUNT(*) from pg_stat_statements_log 

--truncate table pg_stat_statements_log


SELECT 
    md5(query) AS query_hash, query, *
FROM pg_stat_statements_log 
order by md5(query); 



SELECT 
    md5(query) AS query_hash, TO_CHAR(runtime, 'YYYY-MM-DD HH24:MI') AS data_formatada ,count(*)
FROM pg_stat_statements_log 
group by md5(query) , TO_CHAR(runtime, 'YYYY-MM-DD HH24:MI')
order by 
	--md5(query); 
2 desc;


-- create view
CREATE OR REPLACE VIEW vw_pg_stat_statements_log AS
SELECT 
    md5(query) AS query_hash, runtime, query
FROM pg_stat_statements_log


SELECT 
    md5(query) AS query_hash, count(*)
FROM pg_stat_statements_log 
group by md5(query) 
order by 2 desc;

/*
01088f66bb828851b93717ac4156a076
9bf79c86809e5494cfd20e2fc460e723 

*/

select *
from vw_pg_stat_statements_log
where query_hash = 'd4e9f3a75c4eab06d92feabbed8bf36b'


EXPLAIN (ANALYZE, BUFFERS, FORMAT JSON)
SELECT id, nome, valor
FROM heavy_table
WHERE valor BETWEEN $1 AND $2
ORDER BY runtime
OFFSET $3 LIMIT $4



