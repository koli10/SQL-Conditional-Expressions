use salesdatabase;
select * from averagetime;
-- Average time spent on social media by users 
SELECT AVG(time_spent) AS average_time_spent FROM averagetime;

-- Count the number of users by gender
SELECT gender, COUNT(*) AS count FROM averagetime GROUP BY gender;

 -- Querry to determine distribution by gender accross each platform
 SELECT platform, gender, COUNT(*) as user_count
FROM averagetime
GROUP BY platform, gender
ORDER BY platform, gender;



-- Most popular platform
SELECT platform, COUNT(*) AS count FROM averagetime GROUP BY platform ORDER BY count DESC LIMIT 1;

-- Most Popular Platform Among High-Income Users
SELECT platform, COUNT(*) as user_count
FROM averagetime
WHERE income > 50000
GROUP BY platform
ORDER BY user_count DESC
LIMIT 1;

-- Average income by profession
SELECT profession, AVG(income) AS average_income FROM averagetime GROUP BY profession;

-- How does home ownership status influence the time spent on social media?
SELECT isHomeOwner, AVG(time_spent) AS average_time_spent
FROM averagetime
GROUP BY isHomeOwner;

--  average time spent on social media by age group across each platform
SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        WHEN age BETWEEN 56 AND 65 THEN '56-65'
        ELSE '65+'
    END AS age_group,
    platform,
    AVG(time_spent) AS avg_time_spent
FROM 
    averagetime
GROUP BY 
    age_group, platform
ORDER BY 
    age_group, platform;

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

-- determine Most Popular Platform Among High-Income Users
SELECT platform, COUNT(*) as user_count
FROM averagetime
WHERE income > 5000
GROUP BY platform
ORDER BY user_count DESC;


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










