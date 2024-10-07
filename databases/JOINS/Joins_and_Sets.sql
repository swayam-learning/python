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
-- ------------------ SELF JOINS -----------------------------------------------------
SELECT u1.user_id,u1.name,u2.emergency_contact AS emergency_contact_id ,u2.name AS emergency_contact_name FROM users1 u1 JOIN users1 u2 ON u1.user_id=u2.emergency_contact;
-- --------------------joining on two different column-------------------------------
SELECT * FROM students s1 RIGHT JOIN class c1 ON s1.enrollment_year = c1.class_year;

-- FROM -- JOIN -- WHERE -- GROUP BY --HAVING --SELECT --DISTINCT --ORDER BY

-- -------------- 3 TABLE JOINING ------------------------------------------------------
SELECT * FROM order_details;
SELECT * FROM orders;
SELECT * FROM orders1;
SELECT * FROM orders2;
SELECT * FROM category;
SELECT * FROM users;

SELECT t1.order_id,t1.amount,t1.profit,t2.user_id,t4.name,t4.state,t4.city 
FROM order_details t1 
JOIN orders t2 
ON t1.order_id = t2.order_id 
JOIN
users t4 ON t4.user_id = t2.user_id;



