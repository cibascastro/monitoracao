CREATE INDEX idx_nome_lower ON heavy_table (lower(nome));
CREATE INDEX idx_valor ON heavy_table (valor);