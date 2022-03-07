-- query 1 --
SELECT app_name FROM analytics WHERE id = 1880;

-- query 2 --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

 -- query 3 --
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- query 4 --
SELECT app_name, reviews FROM analytics
  ORDER BY reviews DESC
  LIMIT 5;

-- query 5 --
SELECT app_name FROM analytics
  WHERE rating >= 4.8
  ORDER BY reviews DESC
  LIMIT 1;

-- query 6 --
SELECT category, AVG(rating) FROM analytics
  GROUP BY category
  ORDER BY AVG(rating) DESC;

-- query 7 --
SELECT app_name, price, rating FROM analytics
  WHERE rating < 3
  ORDER BY price DESC
  LIMIT 1;

-- query 8 --
SELECT app_name FROM analytics
  WHERE min_installs <= 50 AND rating IS NOT NULL
  ORDER BY rating DESC;

-- query 9 --
SELECT app_name FROM analytics
  WHERE rating < 3 AND reviews >= 10000;

-- query 10 --
SELECT app_name FROM analytics
  WHERE price BETWEEN 0.10 AND 1.00
  ORDER BY reviews DESC
  LIMIT 10;

-- query 11 --
SELECT app_name FROM analytics
  WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- query 12 --
SELECT app_name FROM analytics
  WHERE price = (SELECT MAX(price) FROM analytics);

-- query 13 --
SELECT SUM(reviews) FROM analytics;

-- query 14 --
SELECT category FROM analytics
  GROUP BY category
  HAVING COUNT(app_name) > 300;

-- query 15 --
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics
  WHERE min_installs >= 100000 AND min_installs/reviews = (SELECT MAX(min_installs/reviews)
  FROM analytics);
