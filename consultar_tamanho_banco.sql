SELECT table_schema via_aroma_sig, 
       ROUND(SUM(data_length + index_length) / 1024 / 1024, 1) as 'Size(MB)' 
FROM information_schema.tables 
