USE sqllearning;

SELECT * FROM users;
SELECT * FROM users1;
SELECT * FROM membership;
SELECT * FROM `groups`;
-- --------------------- CROSS JOINS -----------------------------------------------
SELECT * FROM users t1 CROSS JOIN `groups` t2; 
-- --------------------INNER JOINS--------------------------------------------------
SELECT * FROM membership t1 INNER JOIN `groups` t2 ON t1.group_id = t2.group_id;
-- --------------------LEFT JOINS---------------------------------------------------
SELECT * FROM users t1 LEFT JOIN membership t2 ON t1.user_id = t2.user_id;
-- -------------------RIGHT JOINS---------------------------------------------------
SELECT * FROM users t1 RIGHT JOIN membership t2 on t1.user_id=t2.user_id;
-- -------------------FULL OUTER JOINS----------------------------------------------
SELECT * FROM users FULL JOIN membership ;
-- ------------------ SETS----------------------------------------------------------
-- ------------------UNION----------------------------------------------------------
SELECT * FROM person1
UNION
SELECT * FROM person2;
-- -------------------UNION ALL ----------------------------------------------------
SELECT * FROM person1 
UNION ALL
SELECT * FROM person2;
-- -------------------INTERSECT------------------------------------------------------
SELECT * FROM person1
INTERSECT
SELECT * FROM person2;
-- ------------------ EXCEPT or MINUS------------------------------------------------
SELECT * FROM person1
EXCEPT
SELECT * FROM person2;
-- -----------------------------------------------------------------------------------
-- ------------------FULL OUTER JOIN--------------------------------------------------
SELECT * FROM users t1 LEFT JOIN membership t2 ON t1.user_id=t2.user_id
UNION
SELECT * FROM users t3 RIGHT JOIN membership t4 ON t3.user_id=t4.user_id;
-- -----------------------------------------------------------------------------------

