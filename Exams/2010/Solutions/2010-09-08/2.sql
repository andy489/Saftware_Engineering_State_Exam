-- 2010-09-08
USE Movies;

-- 2.1. В)
SELECT NAME
FROM MOVIESTAR
WHERE NAME NOT IN (SELECT DISTINCT STARNAME
FROM STARSIN
WHERE MOVIEYEAR > 1970);

-- 2.2. Б)
SELECT Name, MIN(MOVIESTAR - YEAR(BIRTHDATE)) AS debut_age
FROM STARSIN
JOIN MOVIESTAR ON STARNAME = NAME
GROUP BY NAME