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

-- find the movie directed by the director whose first name is 'Bryon' and last name is 'Howard'.

SELECT MOV_NAME
FROM MOVIE
WHERE MOV_ID =(
  SELECT MOV_ID
  FROM MOVIE
  WHERE DIR_ID = (
    SELECT DIR_ID
    FROM DIRECTOR
    WHERE DIR_FNAME='Bryon' AND DIR_LNAME ='Howard'));
    
----------------------------------------------------------------------------



