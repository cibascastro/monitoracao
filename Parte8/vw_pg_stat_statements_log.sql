CREATE OR REPLACE VIEW vw_pg_stat_statements_log AS
SELECT 
    md5(query) AS query_hash, runtime, query
FROM pg_stat_statements_log

/*
select *
from vw_pg_stat_statements_log
where query_hash = '9bf79c86809e5494cfd20e2fc460e723'
*/