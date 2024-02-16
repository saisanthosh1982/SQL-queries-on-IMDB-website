SELECT NB.nconst||','||NB.primaryname ||','||TB.startyear ||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actor')
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY COUNT(*) DESC
FETCH first 1 row only;

SELECT NB.nconst||','||NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress')
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY COUNT(*) DESC
FETCH first 1 row only;

SELECT NB.nconst ||','||NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actor') AND 
TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
HAVING COUNT(*) = 4
ORDER BY TB.startyear;

SELECT NB.nconst ||','||NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND 
TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
HAVING COUNT(*) = 4
ORDER BY TB.startyear;

