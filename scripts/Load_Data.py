import sqlalchemy
import pyodbc
import os
import pandas as pd
import socket  # Import the socket module to use socket.gethostname()

# Change directory to where your CSV files are located
csv_directory = r"C:\Users" # location of your csv files
os.chdir(csv_directory)

# Print the list of CSV files in the directory (optional)
print("CSV Files in Directory:")
print(os.listdir())

# Define SQL Server connection parameters
server_name = socket.gethostname()  # Get the hostname of your machine
database_name = 'employee_management_system'
driver = 'ODBC Driver 17 for SQL Server'
trusted_connection = 'yes'

# Create the connection string
connection_string = f'mssql+pyodbc://{server_name}/{database_name}?trusted_connection={trusted_connection}&driver={driver}'

# Create the SQL Alchemy engine
engine = sqlalchemy.create_engine(connection_string)

# Loop through each CSV file in the directory
for file_name in os.listdir():
    if file_name.endswith('.csv'):
        table_name = os.path.splitext(file_name)[0]  # Use filename (without extension) as table name
        
        # Read CSV file into pandas DataFrame
        df = pd.read_csv(file_name)

        # Write DataFrame to SQL Server table
        df.to_sql(table_name, con=engine, if_exists='replace', index=False)
        
        print(f"Table '{table_name}' imported successfully.")

# Dispose of the database engine connection
engine.dispose()

print("All CSV files imported into SQL Server.")
