#!/usr/bin/python
#  main.py
# ===================================================================
# Fri May 24 14:20:53 CEST 2019

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
        self.active=True
        return
    def found(self, s):
        return (self.active and (s.lower() in self.name.lower()))
    def display(self):
        if self.active: return ('<%s  \t%s   >' % (self.name,self.classe))

class character(unit):
    def __init__(self, n, c):
        unit.__init__(self, n,c)
        self.level = 1
        self.hp = 10
        self.countdown = {}
        return
    def display(self):
        #return unit.display(self)+'['+str(self.level)+']['+str(self.hp)+']'
        return ('%s \t[%d]\t[%d]' % (unit.display(self),self.level,self.hp))

class player():
    def __init__(self):
        self.characters = []
        self.countdowns = {}
        return
    def starterPack(self, chList):
        for i, k in enumerate(chList):
            self.characters.append(character('name='+str(i), k[1]))
        return

def queryDb(db_connexion, query):
    cur = db_connexion.cursor()
    cur.execute(query)
    result=cur.fetchall()
    return result

def listing(ul):
    print ('< %s   \t%s   > \t%s\t%s' % ('name','classe','level','hp'))
    for i in ul:
        print(i.display())
    return

def main():
    try:
        sqlDb = sqlite3.connect('AW-db/AW.db')
        q0 = 'select id, name from AWClasses where id > 0 order by name ;'
        r1=queryDb(sqlDb, q0)
    except IOError:
        print(IOError)
    p = player()
    p.starterPack(r1)
    listing(p.characters)
    sqlDb.close() 
    return

if __name__ == "__main__":
    main()
