import psycopg2
import pandas as pd
import gdown

# import necessary csv files from google drive link
def import_csv_files(file_link):
    if not isinstance(file_link, str):
        raise TypeError('File link must be a string')    
    gdown.download_folder(file_link)
    
# read SQL file and split queries
def read_sql_file(file_path):
    with open(file_path, 'r') as file:
        sql_queries = file.read().split(';')
    # Remove empty queries
    sql_queries = [query.strip() for query in sql_queries if query.strip()]
    return sql_queries

# connect to PostgreSQL database
def connect_to_database():
    try:
        connection = psycopg2.connect(
            user='postgres',
            password="1482002",
            host="localhost",
            port="5432",
            database="sql_project"
        )
        return connection
    except (Exception, psycopg2.Error) as error:
        print("Error while connecting to PostgreSQL", error)
        return None

# execute queries and return results as Pandas DataFrames
def execute_queries(connection, queries):
    dataframes = []
    cursor = connection.cursor()
    try:
        for query in queries:
            cursor.execute(query)
            # Fetch all rows from the result set
            rows = cursor.fetchall()
            # Convert fetched data into DataFrame
            df = pd.DataFrame(rows, columns=[desc[0] for desc in cursor.description])
            dataframes.append(df)
        print("All queries executed successfully!")
        return dataframes
    except (Exception, psycopg2.Error) as error:
        print("Error executing SQL query:", error)
        return None
    finally:
        cursor.close()

