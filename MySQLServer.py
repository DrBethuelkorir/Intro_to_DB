import mysql.connector
from mysql.connector import Error

def create_database():
    """
    Creates alx_book_store database in MySQL server
    """
    connection = None
    try:
        # Connect to MySQL server (without specifying a database)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="1234"  # Use your MySQL password here
        )
        
        if connection.is_connected():
            # Create cursor
            cursor = connection.cursor()
            
            # Create database if it doesn't exist
            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            cursor.execute(create_db_query)
            
            print("Database 'alx_book_store' created successfully!")
            
    except Error as e:
        print(f"Error: {e}")
        print("Failed to connect to the database")
        
    finally:
        # Close connection properly
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("Database connection closed")

if __name__ == "__main__":
    create_database()