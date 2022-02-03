
import mysql.connector

from random import randint

def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)
    

cnx = mysql.connector.connect(user='root', password='',
                              host='localhost', port=3306, 
                              database='pokedb')

query = "SELECT pv.*, p.id FROM `pokemon_value` pv join pokemon p on (pv.name = p.identifier);"

cursor = cnx.cursor()

cursor.execute(query)

query2 = "INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', {}, {}, {}, '{} raised by PokeZone');"

for row in cursor:
    print(query2.format(row[2], random_with_N_digits(2), row[1], (row[0]).capitalize()))

cursor.close()
cnx.close()