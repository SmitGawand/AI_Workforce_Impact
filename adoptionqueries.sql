-- What does the dataset AI_Adoption_Cleaned contain?
SELECT *
FROM AI_Adoption_Cleaned;


-- How many total rows, unique industries, unique countries, and unique GenAI tools are in the dataset?
SELECT COUNT(*) AS TotalRows,
       COUNT(DISTINCT Industry) AS UniqueIndustries,
       COUNT(DISTINCT Country) AS UniqueCountries,
       COUNT(DISTINCT GenAI_Tool) AS UniqueTools
FROM AI_Adoption_Cleaned;


-- Which countries have created the most new roles due to AI adoption?
SELECT Country, SUM(New_Roles_Created) AS TotalNewRoles
FROM AI_Adoption_Cleaned
GROUP BY Country
ORDER BY TotalNewRoles DESC;


-- What are the top 5 most adopted GenAI tools, and what is the average productivity change for each?
SELECT TOP 5 GenAI_Tool,
       COUNT(*) AS AdoptionCount,
       ROUND(AVG(Productivity_Change),2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY GenAI_Tool
ORDER BY AdoptionCount DESC;


-- How has productivity changed by industry and adoption year?
SELECT Industry, Adoption_Year,
       ROUND(AVG(Productivity_Change),2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY Industry, Adoption_Year
ORDER BY Industry, Adoption_Year;


-- Which industries saw the highest average productivity change from AI adoption?
SELECT Industry,
       ROUND(AVG([Productivity_Change]), 2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY Industry
ORDER BY AvgProductivity DESC;


-- Which 5 countries have the highest number of AI tool adoptions?
SELECT TOP 5 Country, COUNT(*) AS AdoptionCount
FROM AI_Adoption_Cleaned
GROUP BY Country
ORDER BY AdoptionCount DESC;


-- How did average productivity change over different adoption years?
SELECT Adoption_Year,
       ROUND(AVG([Productivity_Change]), 2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY Adoption_Year
ORDER BY Adoption_Year;


-- For each country, which GenAI tools are used most frequently?
SELECT Country, GenAI_Tool,
       COUNT(*) AS UsageCount
FROM AI_Adoption_Cleaned
GROUP BY Country, GenAI_Tool
ORDER BY Country, UsageCount DESC;
