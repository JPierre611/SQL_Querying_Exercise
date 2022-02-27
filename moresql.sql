SELECT * FROM people
  WHERE age > 50
  ORDER BY age desc;

SELECT SUM(age) AS age_sum FROM people;

SELECT MIN(age) AS age_min, MAX(age) AS age_max FROM people;

SELECT * FROM students
  WHERE IsActive;

SELECT age, COUNT(*) AS people_count FROM people GROUP BY age;

SELECT age, COUNT(*) AS total_people
  FROM people GROUP BY age
  HAVING COUNT(*) >= 10;

-- Tutorial 5 - SUM and COUNT

SELECT SUM(population) AS total_population FROM world;

SELECT DISTINCT continent FROM world;

SELECT SUM(gdp) FROM world WHERE continent = 'Africa';

SELECT COUNT(*) FROM world WHERE area >= 1000000;

SELECT SUM(population) FROM world
  WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

SELECT continent, COUNT(*) FROM world GROUP BY continent;

SELECT continent, COUNT(*) FROM world
  WHERE population >= 10000000
  GROUP BY continent;

SELECT continent FROM world
  GROUP BY continent
  HAVING SUM(population) >= 100000000;

-- SUM and COUNT Quiz

SELECT SUM(population) FROM bbc WHERE region = 'Europe';

SELECT COUNT(name) FROM bbc WHERE population < 150000;

-- 3. AVG(), COUNT(), MAX(), MIN(), SUM()

-- 4. No result due to invalid use of the WHERE function

SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark');

SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region;

SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc);

-- 8. Table-D

Your score is: 8 out of 8;

-- The nobel table can be used to practice more SUM and COUNT functions.

SELECT COUNT(winner) FROM nobel;

SELECT DISTINCT subject FROM nobel;

SELECT COUNT(subject) FROM nobel WHERE subject = 'Physics';

SELECT subject, count(*) FROM nobel
  GROUP BY subject;

SELECT subject, MIN(yr) FROM nobel
  GROUP BY subject;

SELECT subject, COUNT(*) FROM nobel
  WHERE yr = 2000
  GROUP BY subject;

SELECT subject, COUNT(DISTINCT winner) FROM nobel
  GROUP BY subject;

SELECT subject, COUNT(DISTINCT yr) FROM nobel
  GROUP BY subject;

SELECT yr FROM nobel WHERE subject = 'Physics'
  GROUP BY yr
  HAVING COUNT(*) = 3;

SELECT winner from nobel
  GROUP BY winner
  HAVING COUNT(*) > 1;

SELECT winner FROM nobel
  GROUP BY winner
  HAVING COUNT(DISTINCT subject) > 1;

SELECT yr, subject FROM nobel
  WHERE yr >= 2000
  GROUP BY yr, subject
  HAVING COUNT(subject) = 3;