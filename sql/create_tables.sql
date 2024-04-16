CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    StartDate DATE,
    ExitDate DATE,
    Title VARCHAR(255),
    Supervisor VARCHAR(255),
    Email VARCHAR(255),
    BusinessUnit VARCHAR(255),
    EmployeeStatus VARCHAR(50),
    EmployeeType VARCHAR(50),
    PayZone VARCHAR(50),
    EmployeeClassificationType VARCHAR(50),
    TerminationType VARCHAR(50),
    TerminationDescription VARCHAR(255),
    DepartmentType VARCHAR(255),
    DivisionDescription VARCHAR(255),
    DOB DATE,
    State VARCHAR(50),
    JobFunction VARCHAR(255),
    Gender CHAR(1),
    Location VARCHAR(255),
    RaceOrEthnicity VARCHAR(255),
    MaritalStatus VARCHAR(50),
    PerformanceScore VARCHAR(50),
    CurrentEmployeeRating DECIMAL(5, 2)
);

CREATE TABLE TrainingDevelopment (
    EmployeeID INT,
    TrainingDate DATE,
    TrainingProgramName VARCHAR(255),
    TrainingType VARCHAR(50),
    TrainingOutcome VARCHAR(50),
    Location VARCHAR(255),
    Trainer VARCHAR(255),
    TrainingDurationDays INT,
    TrainingCost DECIMAL(10, 2),
    PRIMARY KEY (EmployeeID, TrainingDate)
    ADD CONSTRAINT FK_Employee_TrainingDevelopment FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);
);

CREATE TABLE Recruitment (
    ApplicantID INT PRIMARY KEY,
    ApplicationDate DATE,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Gender CHAR(1),
    DOB DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(20),
    Country VARCHAR(100),
    EducationLevel VARCHAR(100),
    YearsOfExperience INT,
    DesiredSalary DECIMAL(10, 2),
    JobTitle VARCHAR(255),
    Status VARCHAR(50)
);

CREATE TABLE EmployeeEngagementSurvey (
    EmployeeID INT,
    SurveyDate DATE,
    EngagementScore DECIMAL(5, 2),
    SatisfactionScore DECIMAL(5, 2),
    WorkLifeBalanceScore DECIMAL(5, 2),
    PRIMARY KEY (EmployeeID, SurveyDate)
    ADD CONSTRAINT FK_Employee_EmployeeEngagementSurvey FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);
);
