-- Tutorial 0 - SELECT basics

SELECT population FROM world
  WHERE name = 'Germany';

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

-- Tutorial 1 - SELECT name

SELECT name FROM world
  WHERE name LIKE 'Y%';

SELECT name FROM world
  WHERE name LIKE '%y';

SELECT name FROM world
  WHERE name LIKE '%x%';

SELECT name FROM world
  WHERE name LIKE '%land';

SELECT name FROM world
  WHERE name LIKE 'C%ia';

SELECT name FROM world
  WHERE name LIKE '%oo%';

SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

SELECT name FROM world
 WHERE name LIKE '%o__o%';

SELECT name FROM world
 WHERE name LIKE '____';

SELECT name
  FROM world
 WHERE name = capital;

SELECT name
  FROM world
 WHERE capital = concat(name, ' City')

SELECT capital, name
  FROM world
WHERE capital LIKE concat(name, '%');

SELECT capital, name
  FROM world
  WHERE capital LIKE concat(name, '%')
AND capital <> name;

SELECT name, REPLACE(capital, name, '') AS extension
  FROM world
  WHERE capital LIKE concat(name, '%')
AND capital <> name;

-- Tutorial 2 - SELECT from World

SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population >= 200000000;

SELECT name, gdp/population AS 'per capita GDP'
  FROM world
WHERE population >= 200000000;

SELECT name, population/1000000 AS 'population in millions'
  FROM world 
WHERE continent = 'South America';

SELECT name, population FROM world
WHERE name in ('France', 'Germany', 'Italy');

SELECT name FROM world
WHERE name LIKE '%United%';

SELECT name, population, area FROM world
WHERE area > 3000000 or population > 250000000;

SELECT name, population, area from world
WHERE (area > 3000000 AND population < 250000000)
OR (area < 3000000 AND population > 250000000);

SELECT name, ROUND(population/1000000, 2) AS 'population in millions',
ROUND(gdp/1000000000, 2) AS 'GDP in billions'
FROM world
WHERE continent = 'South America';

SELECT name, ROUND(gdp/population, -3) AS 'per capita GDP' FROM world
WHERE gdp >= 1000000000000;

SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital);

SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital;

SELECT name FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'

 -- Tutorial 3 - SELECT from Nobel
 
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';

SELECT winner FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

SELECT yr, subject, winner FROM nobel
WHERE subject = 'LITERATURE' AND yr BETWEEN 1980 AND 1989;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

SELECT winner FROM nobel
WHERE winner LIKE 'John%';

SELECT yr, subject, winner FROM nobel
WHERE (yr = 1980 AND subject = 'Physics') OR (yr = 1984 AND subject = 'Chemistry');

SELECT * FROM nobel
WHERE yr = 1980 and subject NOT IN ('Chemistry', 'Medicine');

SELECT * FROM nobel
WHERE (subject = 'Medicine' and yr < 1910)
   OR (subject = 'Literature' and yr >= 2004);

SELECT * FROM nobel
WHERE winner = 'Peter Grünberg';

SELECT * FROM nobel
WHERE winner = 'Eugene O''Neill';

SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr desc, winner;

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner;
