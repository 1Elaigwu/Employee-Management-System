USE [employee_management_system];

-- Retrieve Employee Information with Department and Job Function Details
SELECT 
    e.EmpID,
    e.FirstName,
    e.LastName,
    e.StartDate,
    e.Title AS JobTitle,
    e.DepartmentType AS Department,
    e.JobFunctionDescription AS JobFunction
FROM 
    employee_data e
WHERE 
    e.EmployeeStatus = 'Active';  -- Filter for active employees

-- Retrieve Employee Engagement and Satisfaction Scores
SELECT 
    e.EmpID,
    e.FirstName,
    e.LastName,
    es.[Survey Date],  -- Enclose column name in square brackets
    es.[Engagement Score],  -- Enclose column name in square brackets
    es.[Satisfaction Score]  -- Enclose column name in square brackets
FROM 
    employee_data e
JOIN 
    employee_engagement_survey_data es ON e.EmpID = es.[Employee ID];  -- Corrected column name


SELECT * FROM [dbo].[employee_engagement_survey_data];

-- Retrieve Employee Recruitment and Application Details
SELECT 
    e.EmpID,
    e.FirstName,
    e.LastName,
    r.[Application Date],
    r.[Job Title],
    r.Status AS ApplicationStatus
FROM 
    employee_data e
JOIN 
    recruitment_data r ON e.EmpID = r.[Applicant ID];

-- Retrieve Employee Training History and Program Details
SELECT 
    e.EmpID,
    e.FirstName,
    e.LastName,
    t.[Training Date],
    t.[Training Program Name],
    t.[Training Type],
    t.[Training Outcome],
    t.[Training Cost]
FROM 
    employee_data e
JOIN 
    training_and_development_data t ON e.EmpID = t.[Employee ID];

-- Retrieve Comprehensive Employee Information with All Details
SELECT 
    e.EmpID,
    e.FirstName,
    e.LastName,
    e.StartDate,
    e.Title AS JobTitle,
    e.DepartmentType AS Department,
    e.JobFunctionDescription AS JobFunction,
    es.[Engagement Score],
    es.[Satisfaction Score],
    r.[Application Date],
    r.[Job Title] AS AppliedJobTitle,
    r.Status AS ApplicationStatus,
    t.[Training Date],
    t.[Training Program Name],
    t.[Training Type],
    t.[Training Outcome],
    t.[Training Cost]
FROM 
    employee_data e
LEFT JOIN 
    employee_engagement_survey_data es ON e.EmpID = es.[Employee ID]
LEFT JOIN 
    recruitment_data r ON e.EmpID = r.[Applicant ID]
LEFT JOIN 
    training_and_development_data t ON e.EmpID = t.[Employee ID]
WHERE 
    e.EmployeeStatus = 'Active';  -- Filter for active employees
