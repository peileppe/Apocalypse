#!/usr/bin/python
#  main.py
# ===================================================================
import readline
import sqlite3
from liblog import logger

try:
    input = raw_input
except NameError:
    pass

class unit(object):
    def __init__(self, name='Brenner', classe='Gunlugger'):
        self.name=name
        self.classe=classe
        return

def queryDb(db_connexion, query):
    #will return a list as result 
    cur = db_connexion.cursor()
    cur.execute(query)
    result=cur.fetchall()
    return result

def load(ul):
    for i in ul:
        print ('%s --  %s' % (i.name,i.classe))
    return

def main():
    try:
        sqlDb = sqlite3.connect('AW-db/AW.db')
        q0 = 'select id, name from AWClasses where id > 0 order by name ;'
        r1=queryDb(sqlDb, q0)
    except EOFError: # KeyboardInterrupt:
        print(EOFError)
    u = []
    for i, k in enumerate(r1):
        u.append(unit('name='+str(i), k[1]))
    load(u)
    print('Game over')     
    sqlDb.close() 
    return

if __name__ == "__main__":
    main()
