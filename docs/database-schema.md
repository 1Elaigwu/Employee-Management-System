# Database Schema

The Employee Management System uses a relational database to store and manage employee-related data. This document outlines the database schema including tables, columns, relationships,
and constraints.

## 1. Employees Table

The `Employees` table stores information about employees within the organization.

### Columns:

- `EmployeeID` (INT): Unique identifier for each employee (Primary Key)
- `FirstName` (VARCHAR): First name of the employee
- `LastName` (VARCHAR): Last name of the employee
- `StartDate` (DATE): Date when the employee started working
- `ExitDate` (DATE): Date when the employee left the organization (nullable)
- `Title` (VARCHAR): Job title or position of the employee
- `Supervisor` (VARCHAR): Name of the employee's supervisor
- `Email` (VARCHAR): Email address of the employee
- `BusinessUnit` (VARCHAR): Department or business unit where the employee belongs
- `EmployeeStatus` (VARCHAR): Current employment status (e.g., Active, On Leave, Terminated)
- `EmployeeType` (VARCHAR): Type of employment (e.g., Full-time, Part-time, Contract)
- `PayZone` (VARCHAR): Salary band or pay zone
- `EmployeeClassificationType` (VARCHAR): Classification type (e.g., Exempt, Non-exempt)
- `TerminationType` (VARCHAR): Type of termination (if applicable)
- `TerminationDescription` (VARCHAR): Additional details or reasons for termination
- `DepartmentType` (VARCHAR): Category or type of department
- `DivisionDescription` (VARCHAR): Division or branch of the organization
- `DOB` (DATE): Date of birth of the employee
- `State` (VARCHAR): State or region where the employee is located
- `JobFunction` (VARCHAR): Primary job function or role
- `Gender` (VARCHAR): Gender of the employee (e.g., M for Male, F for Female)
- `Location` (VARCHAR): Physical location or office where the employee is based
- `RaceEthnicity` (VARCHAR): Racial or ethnic background of the employee
- `MaritalStatus` (VARCHAR): Marital status of the employee
- `PerformanceScore` (VARCHAR): Performance score (e.g., Excellent, Satisfactory)
- `CurrentEmployeeRating` (DECIMAL): Current rating of the employee's performance

### Relationships:

- **None**

## 2. TrainingDevelopment Table

The `TrainingDevelopment` table tracks training and development activities for employees.

### Columns:

- `EmployeeID` (INT): Identifier of the employee participating in training (Foreign Key referencing `Employees.EmployeeID`)
- `TrainingDate` (DATE): Date of the training session
- `TrainingProgramName` (VARCHAR): Name of the training program
- `TrainingType` (VARCHAR): Type of training (e.g., Technical, Soft Skills, Safety)
- `TrainingOutcome` (VARCHAR): Outcome of the training (e.g., Completed, Partial Completion, Not Completed)
- `Location` (VARCHAR): Location (physical or virtual) of the training session
- `Trainer` (VARCHAR): Name of the trainer/instructor
- `TrainingDurationDays` (INT): Duration of the training in days
- `TrainingCost` (DECIMAL): Cost associated with the training program

### Relationships:

- **EmployeeID** (Foreign Key referencing `Employees.EmployeeID`)

## 3. Recruitment Table

The `Recruitment` table manages recruitment activities and applicant data.

### Columns:

- `ApplicantID` (INT): Unique identifier for each applicant (Primary Key)
- `ApplicationDate` (DATE): Date when the applicant submitted the application
- `FirstName` (VARCHAR): First name of the applicant
- `LastName` (VARCHAR): Last name of the applicant
- `Gender` (VARCHAR): Gender of the applicant
- `DateOfBirth` (DATE): Date of birth of the applicant
- `PhoneNumber` (VARCHAR): Contact phone number of the applicant
- `Email` (VARCHAR): Email address of the applicant
- `Address` (VARCHAR): Street address of the applicant
- `City` (VARCHAR): City of the applicant's address
- `State` (VARCHAR): State or province of the applicant's address
- `ZipCode` (VARCHAR): Postal or ZIP code of the applicant's address
- `Country` (VARCHAR): Country of the applicant's address
- `EducationLevel` (VARCHAR): Highest education level attained by the applicant
- `YearsOfExperience` (INT): Number of years of professional experience
- `DesiredSalary` (DECIMAL): Desired salary for the job
- `JobTitle` (VARCHAR): Title or designation of the job applied for
- `Status` (VARCHAR): Application status (e.g., Submitted, Under Review, Rejected, Selected)

### Relationships:

- **None**

## 4. EmployeeEngagementSurvey Table

The `EmployeeEngagementSurvey` table stores employee engagement survey responses.

### Columns:

- `EmployeeID` (INT): Identifier of the employee participating in the survey (Foreign Key referencing `Employees.EmployeeID`)
- `SurveyDate` (DATE): Date when the survey was conducted
- `EngagementScore` (DECIMAL): Score representing employee engagement level
- `SatisfactionScore` (DECIMAL): Score indicating employee satisfaction level
- `WorkLifeBalanceScore` (DECIMAL): Score reflecting work-life balance perceptions

### Relationships:

- **EmployeeID** (Foreign Key referencing `Employees.EmployeeID`)

---

This `database-schema.md` document provides an overview of the database schema for the Employee Management System, detailing the tables, columns, relationships, and constraints used to store and manage employee-related data.
