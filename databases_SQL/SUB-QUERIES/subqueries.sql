-- Active: 1728126369033@@127.0.0.1@3306@sqllearning
select * from `movies (1)`;

-- ------------------------- Sub-Queries------------------------------------------------------------------------------
SELECT * FROM `movies (1)` 
-- outer query
WHERE score = (SELECT MAX(score) FROM `movies (1)`);
-- inner query result is acted upon the outer query

-- --------------------------------------------------------------------------------------------------------------------
-- Q1. Find the movie with highest profit (vs Order by)
SELECT * FROM `movies (1)`
 WHERE (gross - budget)=(SELECT MAX(gross-budget) FROM `movies (1)`);
 -- O(n) + O(n) = O(2n)

SELECT * FROM `movies (1)` ORDER BY (gross-budget) DESC LIMIT 1; 
-- this will be faster in larger dataset

 -- Q2. Find how many movies have a rating > the avg of all the movies ratings(Find the 
 -- count of above average movies)
SELECT * FROM `movies (1)` WHERE score > (SELECT AVG(score) FROM `movies (1)`);

-- Q3. Find the highest rated movie in 2000
SELECT * FROM `movies (1)` WHERE year=2000  AND score =(SELECT MAX(score) FROM `movies (1)` WHERE year=2000)

-- Q4. Find the highest rated movie among all movies whose number of votes are > the dataset avg votes
SELECT * FROM `movies (1)` WHERE score = (SELECT MAX(score) FROM `movies (1)` WHERE votes > (SELECT AVG(votes) FROM `movies (1)`)); 

