-- ============================================================
--  Question 1
-- ============================================================

SELECT first_name, last_name, city, phone
FROM customers
WHERE state = 'CA' AND phone IS NOT NULL;


-- ============================================================
--  Question 2
-- ============================================================

SELECT product_id, product_name, model_year, list_price
FROM products
ORDER BY model_year DESC, list_price ASC;


-- ============================================================
--  Question 3
-- ============================================================

-- Part a:
SELECT product_name, list_price
FROM products
ORDER BY list_price DESC
LIMIT 5;

-- Part b:
SELECT *
FROM products
ORDER BY list_price ASC
LIMIT (SELECT CEIL(COUNT(*) * 0.05) FROM products);


-- ============================================================
--  Question 4
-- ============================================================

-- Page 1:
SELECT *
FROM products
ORDER BY list_price DESC
LIMIT 10 OFFSET 0;

-- Page 2:
SELECT *
FROM products
ORDER BY list_price DESC
LIMIT 10 OFFSET 10;

-- Page 3:
SELECT *
FROM products
ORDER BY list_price DESC
LIMIT 10 OFFSET 20;


-- ============================================================
--  Question 5
-- ============================================================

-- Part a:
SELECT DISTINCT state
FROM customers
ORDER BY state ASC;

-- Part b:
SELECT DISTINCT state, city
FROM customers
ORDER BY state ASC, city ASC;

-- Part c:
SELECT COUNT(DISTINCT model_year) AS total_model_years
FROM products;


-- ============================================================
--  Question 6
-- ============================================================

SELECT product_id, product_name, brand_id, category_id, list_price
FROM products
WHERE list_price BETWEEN 500 AND 1500
  AND (model_year = 2019 OR model_year = 2020)
ORDER BY list_price ASC;