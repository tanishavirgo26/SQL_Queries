/*Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.*/
SELECT MAX(Doctor) AS Doctor, MAX(Professor) AS Professor, MAX(Singer) AS Singer, MAX(Actor) AS Actor FROM 
( SELECT CASE WHEN Occupation = 'Doctor' THEN Name END AS Doctor, CASE WHEN Occupation = 'Professor' THEN Name END AS Professor, CASE WHEN Occupation = 'Singer' THEN Name END AS Singer, CASE WHEN Occupation = 'Actor' THEN Name END AS Actor, ROW_NUMBER() 
 OVER (PARTITION BY Occupation ORDER BY Name) AS rn FROM OCCUPATIONS ) 
AS subquery GROUP BY rn ORDER BY rn;
/*SELECT MAX(Doctor) AS Doctor, MAX(Professor) AS Professor, MAX(Singer) AS Singer, MAX(Actor) AS Actor FROM 
( SELECT CASE WHEN Occupation = 'Doctor' THEN Name END AS Doctor, CASE WHEN Occupation = 'Professor' THEN Name END AS Professor, CASE WHEN Occupation = 'Singer' THEN Name END AS Singer, CASE WHEN Occupation = 'Actor' THEN Name END AS Actor, ROW_NUMBER() 
 OVER (PARTITION BY Occupation ORDER BY Name) AS rn FROM OCCUPATIONS ) 
AS subquery GROUP BY rn ORDER BY rn;*/