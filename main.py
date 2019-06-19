#!/usr/bin/python
#  main.py
# ===================================================================
# Wed Jun 19 15:54:45 CEST 2019

import readline
import json
from aw_log import logger

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
        self.hard = 0
        self.sharp= 0
        self.hot  = 0
        self.cool = 0
        self.weird= 0
        return
    def display(self):
        return unit.display(self)+'['+str(self.level)+']['+str(self.hp)+']'+'hard:'+str(self.hard)+'sharp:'+str(self.sharp)+'hot:'+str(self.hot)+'cool:'+str(self.cool)

class player():
    def __init__(self):
        self.characters = []
        self.countdowns = {}
        return
    def starterPack(self, chList):
        for i, k in enumerate(chList):
            self.characters.append(character('name='+str(i), k[1]))
        return

def listing(ul):
    for i in ul:
        print(i.display())
    return

def main():
    try:
        with open('AW-db/aw_classes.json') as f:
            awcl=json.load(f)
    except IOError:
        print(IOError)
    p = player()
    p.starterPack(r1)
    listing(p.characters)
    sqlDb.close() 
    return

if __name__ == "__main__":
    main()
