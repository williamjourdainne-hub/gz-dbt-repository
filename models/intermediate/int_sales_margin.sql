#quantity dans sales 
#purchase price dans product 
#revenue dans sales 

SELECT *,
(purchase_price*quantity) AS purchase_cost,
ROUND(revenue-(purchase_price*quantity)) AS margin
FROM {{ ref('stg_gz_raw_data__raw_gz_sales') }}
INNER JOIN {{ ref('stg_gz_raw_data__raw_gz_product') }}
USING (products_id)