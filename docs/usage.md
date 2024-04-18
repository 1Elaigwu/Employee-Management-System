# Usage Guide

Welcome to the Employee Management System! This guide provides instructions on how to set up and use the system to manage employee data, training records, recruitment activities, and 
employee engagement surveys.

## Prerequisites

Before getting started, ensure you have the following installed on your machine:

- **Python**: Version 3.x
- **SQL Server Management Studio (SSMS)**: Installed and running with a database connection ready.

# Navigate to the Project Directory:
cd employee-management-system

# Install Dependencies:
pip install -r requirements.txt

## Configuration
- **Database Setup**:
- Create a database in SQL Server Management Studio for the Employee Management System.

## Update the database connection details in the config.py file.
- **Data Loading (Optional)**:
- If you have employee data CSV files, place them in the / directory.
- Run the data loading script to populate the database:

python scripts/load_data.py

## Running the Application
- **Start the Server**:
- **Access the Application**:Open a web browser and navigate to http://localhost:5000 to access the Employee Management System.

# Features and Functionality

## Employee Data Management

- **View, Add, Edit, and Delete Employee Records**:
  - View detailed information about employees.
  - Add new employee records to the database.
  - Edit existing employee details such as job title, department, etc.
  - Delete employee records from the system.

- **Search and Filter Employees**:
  - Search for employees based on criteria such as department, job title, or name.
  - Filter employees to view specific groups (e.g., active employees, terminated employees).

## Training and Development

- **Create and Manage Training Programs**:
  - Set up new training programs with details like program name, type, and duration.
  - Manage and update existing training programs in the system.

- **Track Employee Participation and Outcomes**:
  - Record employee participation in training sessions.
  - Track outcomes such as completion status and feedback.

## Recruitment Management

- **Post Job Openings**:
  - Create job postings with details like job title, description, and desired qualifications.
  - Publish job openings to attract applicants.

- **Manage Applicant Data**:
  - Store applicant information including contact details, resume, and application status.
  - Review and update applicant profiles throughout the recruitment process.

- **Track Recruitment Status and Candidate Profiles**:
  - Monitor the status of each recruitment process (e.g., open, in progress, closed).
  - View candidate profiles and progress in the selection process.

## Employee Engagement Surveys

- **Conduct Employee Engagement Surveys**:
  - Administer surveys to measure employee engagement, satisfaction, and work-life balance.
  - Collect responses from employees across the organization.

- **Analyze Survey Responses**:
  - Analyze survey data to identify trends and patterns in employee feedback.
  - Generate reports summarizing survey results and actionable insights for management.

To configure and run the Employee Management System application, follow the steps for setting up the database, updating the configuration file, optionally loading data from CSV files, 
and starting the server to access the application. Adjust paths and commands as needed based on your specific environment and project setup.






