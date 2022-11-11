import mysql.connector
from mysql.connector import Error
try:
    connection=mysql.connector.connect (host='localhost',database='high_sistem', user='root',password='Datosluci91')
    if connection.is_connected():
        db_Info=connection.get_server_info()
        print("connected to MySQL Server version", db_Info)
        cursor=connection.cursor()
        cursor.execute("select database ();")
        record=cursor.fetchone()
        print("se ha conectado a la base de datos: ",record)
except Error as e:
    print("error while connecting to MySQL", e)
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")