import mysql.connector 

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='high_sistem',
                                         user='root',
                                         password='Datosluci91')

    mySql_insert_query = " UPDATE producto SET  precio='0' WHERE id_producto='10'"

    
    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "registro(s) actualizado") 

except mysql.connector.Error as error:
    print("Failed to delete record into MySQL table {}".format(error))

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
