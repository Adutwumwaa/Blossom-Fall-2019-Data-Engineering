-- SQL DATA MANIPULATION LANGUAGE
set search_path to stackoverflow_filtered;

--How many cities appeared more than twice in your results table? ANS = 133
select city, COUNT(*) 
FROM results
GROUP BY city
HAVING COUNT(*) > 2;




--How many unique created_at dates(not datetime) are in the result table?

SELECT DISTINCT DATE(created_at) created_list 
FROM results;
--Ans: 1448

--array_agg(DISTINCT location) location_list




--If you were to give an award to one user, who will it be? And why?
SELECT display_name, COUNT(*)
FROM results
GROUP BY display_name
ORDER BY count(*) desc;
--ANS DebanjanB will be the receipient of the award because he/she had the highest number of activity



--Minimum updated time
SELECT min(updated_at) min_updated_at
FROM results;
--ANS = 13:35:12, 23-01-2019