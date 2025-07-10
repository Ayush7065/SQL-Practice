-- Sorting Datat Set
USE myntra1;
SELECT* FROM product;
 
 # 1. Finding 10 most expensive products 
SELECT * FROM product
ORDER BY discounted_price DESC LIMIT 10;

# 2. fIND LEAST 6 EXPENSIVE PRODUCTS ON mYNTRA 
SELECT * FROM product
ORDER BY discounted_price ASC LIMIT 6;

# tOP 5 PRODUCTS on best rating | rating*rating count

SELECT * , (rating*rating_count) as 'Rate'
FROM product
ORDER BY Rate DESC LIMIT 5;

# Products with at least 50 percent  discount
use myntra1;
SELECT * FROM product;
SELECT *
FROM product
WHERE discount_percent > 50
ORDER BY  discount_percent DESC LIMIT 10;

# tOP 10 Products BASED ON RATING COUNT ATLEAST GREATER THAN 500
SELECT * FROM product
WHERE rating_count > 500
ORDER BY  rating_count DESC LIMIT 10;
# Top 10 deatails of the product with category tshirts
# based on rarting*rating_count column





# 5 fINDING THE SECOND MOST EXPENSIVE PRODUCT
SELECT * FROM product
ORDER BY discounted_price DESC LIMIT 1,1;
-- This is a offset function in which we leave the position of first parameter in limit and show no of values given in the secon dparameter 
# 6 FINDING THE SECOND least EXPENSIVE PRODUCT least
SELECT * FROM product
ORDER BY discounted_price ASC LIMIT 1,1; 

# Finding Worst rated product of nike
SELECT * FROM product
WHERE brand_tag='nike'
ORDER BY rating_count asc LIMIT 1;

#9 Finding the worst rated product by nike & rating not zero
SELECT * FROM product
WHERE brand_tag='nike' and rating != 0
ORDER BY rating_count asc LIMIT 1;

# 10 Finding the top 10 best rated tshirt from nike or adidas on rating*rating_count
SELECT *, (rating*rating_count) as Rate
FROM product
WHERE brand_tag IN ('nike','adidas') and product_tag='tshirts'
ORDER BY Rate DESC LIMIT 10;

# Worst rated 10 products on the rating of 100 people atleast
SELECT * FROM product
WHERE rating_count>=100
ORDER BY rating ASC LIMIT 10;

# 10 worst rated tshirst based on the rating of 100 people atleast
SELECT * FROM product
WHERE rating_count>=100 and product_tag='tshirts'
ORDER BY rating ASC LIMIT 10;

# 11 For products with rating_count >100 calculate the ratio of 
# discounted_price and rating_count(price per sale) and list top 5 product with highest 
SELECT * , (discounted_price/rating_count) AS 'price_per_sale'
FROM product
WHERE rating_count >100
ORDER BY price_per_sale DESC LIMIT 5;

# Sort the products in alphabatical order based on their product_name and show the last 10 of them
USE myntra1;
SELECT * FROM product
ORDER BY product_name DESC LIMIT 10;

# 13 find the list of tshirts from nike and adida prices between 1000 and 1200 | 
# Sort them based on asesending order of brand_name & prices

SELECT * FROM product
WHERE  product_tag='tshirts' and brand_tag IN ('nike','adidas') and discounted_price BETWEEN 1000 and 2000 
ORDER BY brand_name ASC , discounted_price ASC LIMIT 100;




