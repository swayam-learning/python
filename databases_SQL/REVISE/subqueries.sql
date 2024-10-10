USE sqllearning;
SELECT * FROM `movies (1)`;

-- Q1. Find the movie with highest profit (vs Order by)

SELECT * FROM `movies (1)`
 WHERE (gross - budget)=(SELECT MAX(gross-budget) FROM `movies (1)`);