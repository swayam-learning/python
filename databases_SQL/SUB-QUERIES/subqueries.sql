-- Active: 1728126369033@@127.0.0.1@3306@sqllearning
select * from `movies (1)`;

-- ------------------------- Sub-Queries------------------------------------------------------------------------------
SELECT * FROM `movies (1)` WHERE score = (SELECT MAX(score) FROM `movies (1)`);
