/*multiline comments
look like this*/

--single line comments look like this

--Q1: number of rows
SELECT COUNT (*) FROM data_analyst_jobs; 

--Q2: Look at first 10 rows
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--XTO Land Data Analyst

--Q3: How many postings are in TN? How many are in TN or KY?
SELECT COUNT(*) FROM data_analyst_jobs
WHERE location = 'TN';
-- 21 in TN
SELECT COUNT (*) FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
-- 27 in TN or KY

--Q4: How many postings in TN have a star rating above 4?
SELECT COUNT (*) FROM data_analyst_jobs
WHERE star_rating > '4';
-- 416

--Q5: How many postings in the datset have a review count between 500 and 1000?
SELECT COUNT (*) FROM data_analyst_jobs
WHERE review_count > '500' AND review_count < '1000';
--150

/*Q6: Show the average star rating for companies in each state. 
The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?*/
SELECT location AS state, AVG(star_rating) AS  avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
--Nevada is the highest, West Virgina is the lowest

--Q7: Select unique job titles from data. How many are there?
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;
--881 

--Q8: How many unique job titles are there from CA companies
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location = 'CA';
--230

/*Q9: Find the name of each company and its average star 
rating for all companies that have more than 5000 reviews 
across all locations. How many companies are there with more that 5000 reviews across all locations? */
SELECT company, AVG(star_rating) AS avg_star
FROM data_analyst_jobs
WHERE review_count > '5000'
GROUP BY company;
--41 companies where reviews>5k

/*Q10: Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating? */
SELECT company, AVG(star_rating) AS avg_star
FROM data_analyst_jobs
WHERE review_count > '5000'
GROUP BY company
ORDER BY avg_star DESC;
--3 way tie between GM, Unilever, and Microsoft

--Q11: Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT 
FROM








