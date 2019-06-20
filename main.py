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
    def __init__(self, name='', classe=''):
        self.name=name
        self.classe=classe
        self.active=True
        return
    def found(self, s):
        return (self.active and (s.lower() in self.name.lower()))
    def display(self):
        if self.active: return self.name.ljust(10)+" "+self.classe.ljust(10)

class character(unit):
    def __init__(self, n, c, st=[0, 0, 0, 0, 0], sk=''):
        unit.__init__(self, n,c)
        self.level = 1
        self.hp = 10
        self.countdown = {}
        self.stats = st # str(hard)0, int(sharp)1, chm(hot)2, dex(cool)3, psi(weird)4
        self.skill = sk
        return
    def display(self):
        r = unit.display(self)+'\t'
        r+= '['+str(self.level)+']['+str(self.hp)+']'+'\t'
        r+= 'stats:'+','.join(str(self.stats[i]) for i in range(len(self.stats))).ljust(10)+'\t'
        r+= 'skill:'+self.skill
        return r

class player():
    def __init__(self):
        self.characters = []
        self.countdowns = {}
        return
    def starterPack(self, awcls):
        chList=[]
        for c in awcls:
            chList.append(c)
        for i, k in enumerate(chList):
            self.characters.append(character('name='+str(i), k, awcls[k]['stat'],awcls[k]['skill']))
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
    p.starterPack(awcl)
    listing(p.characters)
    return

if __name__ == "__main__":
    main()
