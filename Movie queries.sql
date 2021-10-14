--Query 1
--SELECT statement to query rows from the Movies table

SELECT MOV_NAME
FROM MOVIES
WHERE ROWNUM <= 2;
  
---------------------------------------------------------------------------------

--Query 2
--find the actor name to select movies based on the actor's name.

SELECT MOV_NAME, ACTOR_NAME
FROM MOVIES;

----------------------------------------------------------------------------------

--Query 3

--List the name of all movies directed by 'Rajkumar Hirani' and for this we use the DIRECTOR table.
-- SELECT DIR_ID
-- FROM DIRECTOR
-- WHERE DIR_ID = 'Rajkumar Hirani'
-- the above query will return the DIR_ID "201". Now we will find the name of the movies whose DIR_ID is "201". For using this we use table MOVIES and use the above query as a sub query.

SELECT MOV_NAME
FROM MOVIES
WHERE DIR_ID = (SELECT DIR_ID
FROM DIRECTOR
WHERE DIR_NAME='Rajkumar Hirani');

---------------------------------------------------------------------

--Query 4

-- find the movies directed by the director whose first name is 'Bryon' and last name is 'Howard'.

SELECT MOV_NAME
FROM MOVIES
WHERE MOV_ID =(
  SELECT MOV_ID
  FROM MOVIES
  WHERE DIR_ID = (
    SELECT DIR_ID
    FROM DIRECTOR
    WHERE DIR_FNAME='Bryon' AND DIR_LNAME ='Howard'));
    
----------------------------------------------------------------------------
--Query 5

--find the name and year of the movies

SELECT MOV_NAME, MOV_YEAR
FROM MOVIES;

-----------------------------------------------------------------------------
--Query 6

-- find when the movies 'PK' released

SELECT MOV_YEAR
FROM MOVIES
WHERE MOV_NAME = 'PK';

----------------------------------------------------------------------------
--Query 7

-- find the movies which was released in the year 2013

SELECT MOV_NAME
FROM MOVIES
WHERE MOV_YEAR = 2013;

-----------------------------------------------------------------------------
--Query 8

-- find those movies which was released before 2010

SELECT MOV_NAME
FROM MOVIES
WHERE MOV_YEAR<2010;

------------------------------------------------------------------------------
--Query 9

-- find the movies with mov_id 1001, 1002, 1004

SELECT MOV_NAME
FROM MOVIES
WHERE MOV_ID IN (1001, 1002, 1004);

--------------------------------------------------------------------------
-- Query 10

-- find those movies titles, which include the words 'Drishyam' . Sort the result set in ascending order by year of movieS

SELECT MOV_ID, MOV_NAME, MOV_YEAR
FROM MOVIES
WHERE MOV_NAME LIKE '%Drishyam%'
ORDER BY MOV_YEAR ASC;

----------------------------------------------------------------------------
