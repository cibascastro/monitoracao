SELECT pid, usename, datname, state, query_start, query
FROM pg_stat_activity
WHERE state != 'idle';