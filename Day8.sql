CREATE DATABASE restaurant;
use restaurant;
select count(*) from restaurants;
select * from restaurants;

-- Which restaurant has generated maximum all over india
SELECT * FROM restaurants
WHERE rating_count*cost= (SELECT MAX(rating_count*cost) FROM restaurants);

-- how many restaurants are having rating more than avereage rating
SELECT COUNT(*) FROM restaurants
WHERE rating > (SELECT AVG(rating) FROM restaurants);

-- wHICH RESTRAUNT OF DELHI HAS GENRATED MOST REVENUE
SELECT * FROM restaurants
WHERE  city='delhi' and rating_count*cost= (SELECT MAX(rating_count*cost) FROM restaurants WHERE city='delhi' ) ;

-- Which restraunt of more than average restraunt od delh has genrated max revenue
SELECT * FROM restaurants
WHERE city='delhi'
AND rating_count*cost=(SELECT MAX(rating_count*cost) FROM restaurants 
WHERE  city='delhi' and cost > (SELECT AVG(cost) FROM restaurants 
WHERE city='delhi' ));

SELECT CUISINE, min(COST) FROM restaurants
group by CUISINE
order by min(COST) desc limit 10 ;


