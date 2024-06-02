--Practice_01:
SELECT DISTINCT CITY FROM STATION
WHERE ID % 2 = 0
--Practice_02:
SELECT
COUNT(*) - COUNT(DISTINCT CITY) FROM STATION
--Practice_04:
SELECT
ROUND(CAST(SUM(item_count * order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) as mean
FROM items_per_order
--Practice_05:
SELECT candidate_id FROM candidates
WHERE skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
HAVING count(skill) = 3;
--Practice_06:
SELECT user_id,
DATE(MAX(post_date))- DATE(MIN(post_date))as days_between
from posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_content) >=2;
--Practice_07:
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC
--Practice_08:
SELECT manufacturer,
count(drug) as drug_count,
ABS(SUM(cogs - total_sales)) as total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC
--Practice_09:
SELECT id, movie, description, rating 
from cinema
WHERE id % 2 = 1
and description NOT LIKE'%boring%'
ORDER BY rating DESC
---Practice_10:
SELECT teacher_id,
COUNT(DISTINCT subject_id) as cnt
from Teacher
GROUP BY teacher_id
---Practice_11:
SELECT user_id,
COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
---Practice_12:
SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student)>= 5




































