#quantity dans sales 
#purchase price dans product 
#revenue dans sales 

SELECT *
FROM {{ ref('stg_gz_raw_data__raw_gz_sales') }}
INNER JOIN {{ ref('stg_gz_raw_data__raw_gz_product') }}
USING (products_id)