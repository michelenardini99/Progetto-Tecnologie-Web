
import mysql.connector

from random import randint

def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)
    

cnx = mysql.connector.connect(user='root', password='',
                              host='127.0.0.1', port=3306, 
                              database='pokedb')

query = "SELECT DISTINCT p.identifier    FROM pokemon p where p.identifier not like '%-alola' and p.identifier not like '%-galar' and p.identifier not like 'minior%' and p.identifier not like 'mimikyu%' and p.identifier not like '%-mega' and p.identifier not like '%-mega-%' and p.identifier not like 'pikachu-%' and p.identifier not like 'eevee-starter' and p.identifier not like 'marowak-totem' and p.id < 10008;"

cursor = cnx.cursor()

cursor.execute(query)

for identifier in cursor:
    print(str([str(identifier[0]), random_with_N_digits(4)]).replace("[", "(").replace("]", ")") + ",")

cursor.close()
cnx.close()