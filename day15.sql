--CONDITIONAL FUNCATION--

SELECT * FROM product;

1.--CASE FUNCTION based on condition
 SELECT product_name,price,
   CASE
      WHEN price>=50000 then 'Expensive'
	  WHEN price>=10000 AND price<=49999 THEN 'Moderate'
	  ELSE 'Affordable'
	  END AS price_catgory
	  FROM product;

-- CASE FUNCTION (Assignment)
1.-- 10>= instcok 
--5>= limited   (--else not avaiable)
SELECT product_name, quantity,
  CASE 
     when quantity>=10 then 'IN STOCK'
	 WHEN  quantity>= 5 then 'limited'
	 else 'out of stock'
	 END AS quantity_category
	 from product;
-- using like operator--

SELECT product_name, category,
   CASE 
       WHEN category LIKE 'electronics' THEN 'Electronic ITEM'
	   WHEN category LIKE 'FUNITURE' THEN 'furniture ITEM'
	   ELSE 'accessory item'
	   END AS category_status
	   from product;

2.--COALESCE FUNCTION-- ( NULL VALUE HANDLE)

ALTER TABLE product 
 ADD COLUMN discount_price NUMERIC(10,2);
 
UPDATE product 
SET discount_price = NULL
WHERE product_name IN ('lapto','desk');

SELECT product_name,discount_price
from product;


SELECT product_name,
  COALESCE(discount_price, price) AS final_price
from product;


	  


	  
	  

