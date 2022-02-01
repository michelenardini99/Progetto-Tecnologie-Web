
import mysql.connector

from random import randint

def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)
    

cnx = mysql.connector.connect(user='root', password='',
                              host='localhost', port=3306, 
                              database='pokedb')

query = "SELECT identifier FROM pokemon LIMIT 898;"

cursor = cnx.cursor()

cursor.execute(query)

query2 = "UPDATE `items` SET `cost` = '{}' WHERE `items`.`id` = {};"

for row in cursor:
    print(row[0] + ",")

cursor.close()
cnx.close()