#!/usr/bin/python
# aw_character
# ===================================================================
import readline
import json
from aw_log import logger
from aw_tools import menu

class unitTest(object):
    def __init__(self, f1, n='default'):
        self.name = n
        self.myfunc = f1
        return
    def display(self):
        return '- '+self.name

def listing(x, list1):
    for i in list1:
        print(i.display())
    return
def promote(i, list1):
    listing(i, list1)
    print('promote ')
    return
def qExit(z, list1):
    print('Bye!')
    return

def mainTest():
    o, MENU = [], []
    o.append(unit(listing, 'Listing'))
    o.append(unit(promote, 'promote'))
    o.append(unit(qExit, 'quit'))
    for i in o:
        MENU.append(i.name)
    while(True):
        x, y = menu(MENU)
        print (str(x)+' '+y)
        o[x].myfunc(x, o)
        if x == 2:
            break
    return

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
        self.hp = 11+st[0]
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
    def displayf(self):
        r='\''+self.skill+'\''+':'+self.skill+','
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

def confuse():
    print('confusing')
    return
def doublestrike():
    print('double striking')
    return
def hack():
    print('hacking')
    return
def cure():
    print('healing')
    return
def charm():
    print('charming')
    return
def leader():
    print('leading')
    return
def diplomacy():
    print('talking')
    return
def rage():
    print('berserking')
    return
def dominate():
    print('dominating')
    return

fn_menu={
'confuse':confuse,
'doublestrike':doublestrike,
'hack':hack,
'cure':cure,
'charm':charm,
'leader':leader,
'diplomacy':diplomacy,
'rage':rage,
'dominate':dominate
}

def listing(ul):
    for i in ul:
        print(i.display())
    return

def listingf(ul):
    for i in ul:
        print(i.displayf())
    return

def listingm(ul):
    for i in ul:
        fn_menu[i.skill]()
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
    listingf(p.characters)
    listingm(p.characters)
    return

if __name__ == "__main__":
    main()
