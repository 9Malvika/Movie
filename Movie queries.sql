--Query 1

--List the name of all movies directed by 'Rajkumar Hirani' and for this we use the DIRECTOR table.
-- SELECT DIR_ID
-- FROM DIRECTOR
-- WHERE DIR_ID = 'Rajkumar Hirani'
-- the above query will return the DIR_ID "

SELECT MOV_NAME
FROM MOVIE
WHERE DIR_ID = (SELECT DIR_ID
FROM DIRECTOR
WHERE DIR_NAME='Rajkumar Hirani');

-- the above query will return the DIR_ID "
---------------------------------------------------------------------

--Query 2



