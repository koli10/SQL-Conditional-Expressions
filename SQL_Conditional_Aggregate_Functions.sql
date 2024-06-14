use salesdatabase;
select * from averagetime;
-- Average time spent on social media by users 
SELECT AVG(time_spent) AS average_time_spent FROM averagetime;

-- Count the number of users by gender
SELECT gender, COUNT(*) AS count FROM averagetime GROUP BY gender;

-- Most popular platform
SELECT platform, COUNT(*) AS count FROM averagetime GROUP BY platform ORDER BY count DESC LIMIT 1;

-- Average income by profession
SELECT profession, AVG(income) AS average_income FROM averagetime GROUP BY profession;

-- How does home ownership status influence the time spent on social media?
SELECT isHomeOwner, AVG(time_spent) AS average_time_spent
FROM averagetime
GROUP BY isHomeOwner;
-- Is there a significant difference in the average time spent on social media between different age groups
SELECT 
    CASE 
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60 and above'
    END AS age_group,
    AVG(time_spent) AS average_time_spent
FROM averagetime
GROUP BY age_group;

-- Find users who spend more than 5 hours on social media.
SELECT *
FROM averagetime
WHERE time_spent > 5;

 --  Get the top 5 users who spend the most time on social media.
 SELECT *
FROM averagetime
ORDER BY time_spent DESC
LIMIT 5;
 --  Find female users who are students.
 SELECT *
FROM averagetime
WHERE gender = 'female' AND profession = 'Student';










