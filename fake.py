
import mysql.connector

from random import randint

def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)
    

cnx = mysql.connector.connect(user='root', password='',
                              host='localhost', port=3306, 
                              database='pokedb')

query = "SELECT * FROM items where identifier not like '%-mail' and identifier not like 'data-card%' and identifier not like '%-mail' and identifier not like 'data-card' and identifier not like '%-sweet' and identifier not like '%-apple' and identifier not like '%-pot' and identifier not like 'throat-spray' and identifier not like 'eject-pack' and identifier not like 'heavy-duty-boots' and identifier not like 'blunder-policy' and identifier not like 'room-service' and identifier not like 'utility-umbrella' and identifier not like 'tr%' and cost=0 LIMIT 475;"

cursor = cnx.cursor()

cursor.execute(query)

query2 = "UPDATE `items` SET `cost` = '{}' WHERE `items`.`id` = {};"

for row in cursor:
    print(query2.format(random_with_N_digits(3), row[0]))
    #print(str([str(identifier[0]), random_with_N_digits(4)]).replace("[", "(").replace("]", ")") + ",")

cursor.close()
cnx.close()