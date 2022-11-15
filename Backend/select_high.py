import mysql.connector

connection = mysql.connector.connect(host='localhost',database='high_sistem', user='root',password='Datosluci91')

try:
     mySql_query= "select * from producto"
     cursor=connection.cursor()
     cursor.execute(mySql_query)
     rows=cursor.fetchall()
     for row in rows:
        print(row)
    


     cursor.close()
except mysql.connector.Error as error:
     print("failed to insert record into MySQL table:{}".format(error))
if connection.is_connected():
       connection.close()
       print("MySQL connection is closed")