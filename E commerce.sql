CREATE DATABASE ecommerce;
use ecommerce;
select * from ecommerce;

##### RETURNED ORDER #####
CREATE VIEW RETURNED_ORDER AS
SELECT Category,Product,Order_Status FROM ecommerce
WHERE Order_Status='Returned';
select * from RETURNED_ORDER;

##### CANCELLED ORDER #####
CREATE VIEW CANCELLED_ORDER AS
SELECT Category,Product,Order_Status FROM ecommerce
WHERE Order_Status='Cancelled';
select * from CANCELLED_ORDER;

##### DELIVERED ORDER #####
CREATE VIEW DELIVERED_ORDER AS
SELECT Category,Product,Order_Status FROM ecommerce
WHERE Order_Status='Delivered';
select * from DELIVERED_ORDER;

##### TOTAL SALE CATEGORY #####
CREATE VIEW TOTAL_SALE_CATEGORY  AS
select Category,sum(Total_Amount) AS Total_sale_category from ecommerce
group by Category;
select * from TOTAL_SALE_CATEGORY;

##### TOTAL SALE PRODUCT #####
CREATE VIEW TOTAL_SALE_PRODUCTS  AS
select Product,sum(Total_Amount) AS Total_sale_product from ecommerce
group by Product;
select * from TOTAL_SALE_PRODUCTS;

##### TOTAL SALE CITY #####
CREATE VIEW TOTAL_SALE_CITYS  AS
select City,sum(Total_Amount) AS Total_sale_city from ecommerce
group by City;
select * from TOTAL_SALE_CITYS;

##### TOTAL SALE CITY/PRODUCT/CATEGORY #####
CREATE VIEW TOTAL_SALE_CITY_PRODUCT_CATEGORY  AS
select City,Category,Product,sum(Total_Amount) AS Total_sale_city from ecommerce
group by City,Category,Product;
select * from TOTAL_SALE_CITY_PRODUCT_CATEGORY;

##### RETURNED ORDER #####
CREATE VIEW COUNT_ORDER  AS
select Category,COUNT(Total_Amount) AS Count_order from ecommerce
WHERE Order_Status='Returned'
group by Category;
select * from COUNT_ORDER;

##### CANCELLED ORDER #####
CREATE VIEW COUNT_ORDER_CANCELLED  AS
select Category,COUNT(Total_Amount) AS Count_order_cancelled from ecommerce
WHERE Order_Status='Cancelled'
group by Category;
select * from COUNT_ORDER_CANCELLED;


##### DELIVERED ORDER #####
CREATE VIEW COUNT_ORDER_DELIVERED AS
select Category,COUNT(Total_Amount) AS Count_order_delivered from ecommerce
WHERE Order_Status='Delivered'
group by Category;
select * from COUNT_ORDER_DELIVERED;

##### DELIVERED ORDER Category,Product,City #####
CREATE VIEW CATEGORY_PRODUCT_CITY_DELIVERED AS
select Category,Product,City,COUNT(Total_Amount) AS Count_orderdelivered from ecommerce
WHERE Order_Status='Delivered'
group by Category,Product,City;
SELECT * FROM CATEGORY_PRODUCT_CITY_DELIVERED;

##### Returned Order Category,Product,City #####
CREATE VIEW CATEGORY_PRODUCT_CITY_RETURNED AS
select Category,Product,City,COUNT(Total_Amount) AS Count_orderReturned from ecommerce
WHERE Order_Status='Returned'
group by Category,Product,City;
SELECT * FROM CATEGORY_PRODUCT_CITY_RETURNED;

##### Cancelled Order Category,Product,City #####
CREATE VIEW CATEGORY_PRODUCT_CITY_CANCELLED AS
select Category,Product,City,COUNT(Total_Amount) AS Count_ordercancelled from ecommerce
WHERE Order_Status='Cancelled'
group by Category,Product,City;
SELECT * FROM CATEGORY_PRODUCT_CITY_CANCELLED;
###top customers by total spending using ORDER BY SUM(Total_Amount) DESC.##
SELECT * FROM ecommerce
ORDER BY Total_Amount DESC LIMIT 5;


