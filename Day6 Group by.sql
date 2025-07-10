USE myntra1;
SELECT brand_name, SUM(discounted_price) as 'Sum_of_Discounted_Price'
FROM product
GROUP BY brand_name
ORDER BY Sum_of_Discounted_Price DESC LIMIT 10;

-- NO OF PRODUCTS IN EACH PRODUCT CATEGORY
SELECT DISTINCT(product_tag), COUNT(product_tag) AS 'No_of_product'
FROM product
GROUP BY product_tag
ORDER BY No_of_product DESC;

-- Most expensive Brand 
SELECT brand_name, SUM(discounted_price) AS 'MEP'
FROM product
GROUP BY brand_name
ORDER BY MEP DESC LIMIT 1;

-- Most Expensive product category 
SELECT product_tag, SUM(discounted_price) AS 'MEP'
FROM product
GROUP BY product_tag
ORDER BY MEP DESC LIMIT 1;

-- Top 5 brands generating max ravenue
SELECT brand_name, SUM(discounted_price*rating_count) AS 'Revenue'
FROM product
GROUP BY brand_name
ORDER BY Revenue DESC LIMIT 5;
 
 -- Second most selling brand  
 SELECT brand_name, SUM(rating_count) AS 'most_sold_products'
FROM product
GROUP BY brand_name
ORDER BY most_sold_products DESC LIMIT 1,1;

-- top 5 categories sold most along with there revenue | sort on the bases of revenue
SELECT DISTINCT(product_tag), SUM(discounted_price*rating_count) AS 'Revenue'
FROM product
GROUP BY product_tag
ORDER BY Revenue DESC LIMIT 5;
 -- finding the top 5 brand who has the most number of product | different product in there inventry 
 SELECT brand_name, COUNT(DISTINCT(product_name)) AS 'Most_prod',COUNT(DISTINCT(product_tag)) AS 'Most_prod_CATEGORY'
 FROM product
 GROUP BY brand_name
 ORDER BY Most_prod_CATEGORY DESC, Most_prod DESC  LIMIT 5;
 
 -- FINDING THE TOP 5 BRANDS WHO SOLD TH EMOST NO OF PRODUCTS 
 SELECT brand_name, SUM(rating_count) as 'Most_prod_sold'
 FROM product
 GROUP BY brand_name
 ORDER BY Most_prod_sold DESC LIMIT 5;
 
 -- Finding the 5 most expensive brands based on their discounted price 
 SELECT brand_name, SUM(discounted_price) AS 'Disc_exp'
 FROM product
 WHERE rating_count>0
 GROUP BY brand_name
 ORDER BY Disc_exp DESC LIMIT 5;
 
 -- Finding the 5 LEAST expensive brands based on their discounted price 
SELECT brand_name, SUM(discounted_price) AS 'Disc_exp'
FROM product
WHERE rating_count>0
GROUP BY brand_name
ORDER BY Disc_exp ASC LIMIT 5;

-- WHICH CATEGORY OF h&M IS SOLD THE MOST
SELECT brand_tag, product_tag, SUM(rating_count) as 'Most_Sold'
FROM product
WHERE brand_tag='hm'
GROUP BY product_tag
ORDER BY Most_Sold DESC ;

-- WHICH CATEGORY OF specific brand IS SOLD THE MOST 
SELECT brand_name, product_tag, SUM(rating_count) as 'Most_Sold'
FROM product
GROUP BY product_tag,brand_name
ORDER BY Most_Sold DESC ;

