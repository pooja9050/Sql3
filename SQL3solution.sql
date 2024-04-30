#180. Consecutive Numbers
# Write your MySQL query statement below
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1 AND l1.num = l2.num
JOIN Logs l3 ON l1.id = l3.id - 2 AND l1.num = l3.num

#1141. User Activity for the Past 30 Days I
SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE activity_date > '2019-06-27' AND activity_date <'2019-07-27'
GROUP BY activity_date;

SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE activity_date > '2019-06-27' AND activity_date <'2019-07-27'
GROUP BY 1;

SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;


SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE DATEDIFF ('2019-07-27', activity_date) >=0  AND DATEDIFF ('2019-06-28', activity_date) <=0
GROUP BY activity_date;



SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE DATEDIFF ('2019-07-28', activity_date)  BETWEEN 0 AND 29 
GROUP BY activity_date;

SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE  activity_date BETWEEN DATE_SUB('2019-07-27' , INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY 1;


SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
WHERE  activity_date BETWEEN DATE_ADD('2019-07-27' , INTERVAL -29 DAY) AND '2019-07-27'
GROUP BY 1;

SELECT activity_date AS 'day', Count(DISTINCT user_id) AS 'active_users'
FROM Activity
GROUP BY activity_date Having activity_date > '2019-06-27' AND activity_date <= '2019-07-27';

#2142. The Number of Passengers in Each Bus I





