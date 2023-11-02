/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.*/
SELECT city.name
FROM CITY JOIN COUNTRY ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE CONTINENT = 'Africa';