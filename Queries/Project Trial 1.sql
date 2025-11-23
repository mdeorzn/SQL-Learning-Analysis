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

