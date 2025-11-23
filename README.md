# SQL-Learning-Analysis
SQL analysis exercises using Kaggle datasets. Covers Select Queries, Case Statements, and Data Aggregation for analytical practice.

This repository contains my personal SQL learning journey, including practice queries, data exploration, and small analysis projects using publicly available datasets.

📌 Project Overview

The goal of this project is to improve my SQL skills by working with real datasets, practicing queries, and applying different SQL functions such as:

Filtering (WHERE)

Grouping & Aggregation (GROUP BY, COUNT, etc.)

Conditional logic (CASE WHEN)

Sorting (ORDER BY)

Aliasing

Data cleaning basics

📁 Repository Contents

Datasets → Raw datasets used for analysis

Queries → SQL scripts for each practice task

README.md → Project documentation (this file)

🧪 Example Query Used in This Project

Below is one of the SQL queries used to analyze salary data:

SELECT 
    Age,
    EducationLevel,
    JobTitle,
    COUNT(Age) AS TotalPeople,
    CASE 
        WHEN EducationLevel = 'High School' THEN 'CONTRACT'
        ELSE 'FIX'
    END AS WorkStatus,
    CASE 
        WHEN Age > 30 THEN 'Old'
        WHEN Age BETWEEN 25 AND 30 THEN 'Prime'
        ELSE 'Young'
    END AS AgeStatus
FROM Salary_Data$
WHERE 
    Age IS NOT NULL 
    AND EducationLevel = 'Bachelor''s'
    AND JobTitle = 'Data Analyst'
GROUP BY 
    Age, EducationLevel, JobTitle
ORDER BY 
    Age;

🎯 What I’m Learning

How to structure clean and readable SQL queries

How to categorize data using CASE

How to analyze datasets step-by-step

How to work with GitHub for version control

🚀 Next Steps

Add more datasets

Create more advanced queries

Upload visualizations (Power BI or Excel later)

Build a more complete SQL portfolio

💡 Notes

This is a beginner-friendly learning repository and will continue to grow as I practice more.
