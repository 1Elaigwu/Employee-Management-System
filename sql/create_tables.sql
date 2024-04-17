-- Table: employee_data
CREATE TABLE employee_data (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    StartDate DATE,
    ExitDate DATE,
    Title VARCHAR(255),
    Supervisor VARCHAR(255),
    ADEmail VARCHAR(255),
    BusinessUnit VARCHAR(255),
    EmployeeStatus VARCHAR(50),
    EmployeeType VARCHAR(50),
    PayZone VARCHAR(50),
    EmployeeClassificationType VARCHAR(50),
    TerminationType VARCHAR(50),
    TerminationDescription TEXT,
    DepartmentType VARCHAR(255),
    Division VARCHAR(255),
    DOB DATE,
    State VARCHAR(255),
    JobFunctionDescription TEXT,
    GenderCode CHAR(1),
    LocationCode VARCHAR(50),
    RaceDesc VARCHAR(255),
    MaritalDesc VARCHAR(255),
    PerformanceScore DECIMAL(5, 2),
    CurrentEmployeeRating DECIMAL(5, 2)
);

-- Table: employee_engagement_survey_data
CREATE TABLE employee_engagement_survey_data (
    SurveyID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    SurveyDate DATE,
    EngagementScore INT,
    SatisfactionScore INT,
    WorkLifeBalanceScore INT,
    FOREIGN KEY (EmployeeID) REFERENCES employee_data(EmpID)
);

-- Table: recruitment_data
CREATE TABLE recruitment_data (
    ApplicantID INT PRIMARY KEY,
    ApplicationDate DATE,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Gender CHAR(1),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(20),
    Country VARCHAR(255),
    EducationLevel VARCHAR(255),
    YearsOfExperience INT,
    DesiredSalary DECIMAL(10, 2),
    JobTitle VARCHAR(255),
    Status VARCHAR(50)
);

-- Table: training_and_development_data
CREATE TABLE training_and_development_data (
    TrainingID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    TrainingDate DATE,
    TrainingProgramName VARCHAR(255),
    TrainingType VARCHAR(50),
    TrainingOutcome VARCHAR(255),
    Location VARCHAR(255),
    Trainer VARCHAR(255),
    TrainingDurationDays INT,
    TrainingCost DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES employee_data(EmpID)
);
