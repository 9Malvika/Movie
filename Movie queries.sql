--Query 1

--List the name of all movies directed by 'Rajkumar Hirani' and for this we use the DIRECTOR table.
-- SELECT DIR_ID
-- FROM DIRECTOR
-- WHERE DIR_ID = 'Rajkumar Hirani'
-- the above query will return the DIR_ID "201". Now we will find the name of the movie whose DIR_ID is "201". For using this we use table MOVIE and use the above query as a sub query.

SELECT MOV_NAME
FROM MOVIE
WHERE DIR_ID = (SELECT DIR_ID
FROM DIRECTOR
WHERE DIR_NAME='Rajkumar Hirani');

---------------------------------------------------------------------

--Query 2

-- display all the actress who acted in a movie between 2009 and 2012
-- we use ACTRESS_NAME field of ARTIST table as well as the MOV_YEAR field of the MOVIE table.
-- for joining these two tables we use a third table CAST using ART_ID and MOV_ID.

SELECT A.ACTRESS_NAME, M.MOV_NAME, M.MOV_YEAR
FROM ARTIST A, CAST C, MOVIE M
WHERE A.ART_ID = C.ART_ID
AND C.MOV_ID = M.MOV_ID
AND M.MOV_YEAR BETWEEN 2009 AND 2012


