SELECT country_code, percentage, language FROM languages
WHERE language = 'Slovene';

SELECT countries.name, count(cities.id)
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY count(cities.id) DESC;

SELECT cities.name, population
FROM cities
WHERE population >= 500000
ORDER BY population DESC;

SELECT language, percentage, countries.name
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE percentage >= 89
ORDER BY percentage DESC;

SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 AND population > 100000;

SELECT name, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75;

SELECT cities.name AS city_name, countries.name AS country_name, cities.district, cities.population
FROM cities
JOIN countries ON countries.id = cities.country_id
WHERE cities.district ='Buenos Aires' AND cities.population > 500000;

SELECT countries.region, count(countries.name)
FROM countries
GROUP BY countries.region
ORDER BY count(countries.name) DESC;









