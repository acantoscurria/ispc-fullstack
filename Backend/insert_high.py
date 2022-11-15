import mysql.connector

try:
    connection=mysql.connector.connect(host='localhost',database='high_sistem', user='root',password='Datosluci91')
    mySql_Insert_Query= """INSERT INTO producto(id_producto,nombre,cantidad,marca, concepto,descripcion,precio, id_empleado, id_proveedor)
    VALUES 
    (%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    records_to_insert=[(8,'agua saborizada', 200, 'aquarius', 'pera', 'botella 500ml', 125, 26723238, 1),
    (9,'agua saborizada', 100, 'cepita', 'naranja', 'botella 500ml', 200, 26723238, 1),
    (10,'agua saborizada', 150, 'levite', 'durazno', 'botella 500ml', 150, 26723238, 1)]
    cursor=connection.cursor()
    cursor.executemany(mySql_Insert_Query,records_to_insert)
    connection.commit()
    print(cursor.rowcount,"Record inserted successfully into products table")
    
except mysql.connector.Error as error:
   print("failed to insert record into MySQL table:{}".format(error))
finally:
  if connection.is_connected():
     cursor.close()
     connection.close()
     print("MySQL connection is closed")