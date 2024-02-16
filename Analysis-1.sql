SELECT NB.primaryname||','||COUNT(distinct TB.startyear) ||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
Lower(NB.primaryname) LIKE '%aishwarya rai bach%' AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND TB.startyear > '1995' AND TB.startyear <= '2000'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC;

SELECT NB.primaryname||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
Lower(NB.primaryname) LIKE '%aishwarya rai bach%' AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND TB.startyear NOT LIKE '\N' AND TB.startyear > '2000' AND TB.startyear <= '2005'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC;

SELECT NB.primaryname||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
Lower(NB.primaryname) LIKE '%aishwarya rai bach%' AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND TB.startyear NOT LIKE '\N' AND TB.startyear > '2006' AND TB.startyear <= '2010'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC;

SELECT NB.primaryname||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
Lower(NB.primaryname) LIKE '%aishwarya rai bach%' AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND TB.startyear NOT LIKE '\N' AND TB.startyear > '2011' AND TB.startyear <= '2015'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC;

SELECT NB.primaryname||','||COUNT(*)
FROM IMDB.name_basics NB, IMDB.title_principals TP, IMDB.title_basics TB
WHERE NB.nconst = TP.nconst AND TP.tconst = TB.tconst AND
Lower(NB.primaryname) LIKE '%aishwarya rai bach%' AND
LOWER(TB.titleType) = 'movie' AND
LOWER(TP.category) IN ('actress') AND TB.startyear NOT LIKE '\N' AND TB.startyear > '2016' AND TB.startyear <= '2020'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC;

