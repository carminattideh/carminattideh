
SELECT 
    a.id AS produto_id,
    a.codigo_interno AS codigo,
    a.descricao AS descricao,
    a.situacao AS situacao,
    b.descricao AS grupo,
    a.unidade_id AS unidade,
    a.custo AS custo,
    a.venda AS venda
FROM
    produtos a,
    produtos_departamentos b
WHERE
    a.departamento_id = b.id
        AND b.consumo <> 'produtos_indiretos'
GROUP BY a.id
ORDER BY a.descricao
limit 10
;

SELECT * FROM produtos_estoques limit 10;

SELECT * FROM produtos_estoques_lotes_quarentena
WHERE 
status_quarentena='ABERTO' 
ORDER BY id
