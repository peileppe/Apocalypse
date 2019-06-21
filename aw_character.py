#!/usr/bin/python
# aw_character
# ===================================================================
import readline
import json
from aw_debug import logger
from aw_tools import menu, dice
from aw_names import namePick

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
            self.characters.append(character(namePick(), k, awcls[k]['stat'],awcls[k]['skill']))
        return
    def display(self):
        r=''
        for i in self.characters:
            r+=i.display()+'\n'
        return r

def confuse(c):
    action='confusing'
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def doublestrike(c):
    action=('double striking')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def hack(c):
    action=('hacking')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def cure(c):
    action=('healing')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def charm(c):
    action=('charming')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def leader(c):
    action=('leading')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def diplomacy(c):
    action=('talking')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def rage(c):
    action=('berserking')
    print(c.name+' try '+action+'='+dice(0)[1])
    return
def dominate(c):
    action=('dominating')
    print(c.name+' try '+action+'='+dice(0)[1])
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

def listingm(ul):
    for i in ul:
        fn_menu[i.skill](i)
    return

def main():
    try:
        with open('AW-db/aw_classes.json') as f:
            awcl=json.load(f)
    except IOError:
        print(IOError)
    m=[]
    p = player()
    p.starterPack(awcl)
    print(p.display())
    listingm(p.characters)
    for i in p.characters:
        m.append(i.name)
    r=menu(m)
    i=p.characters[r[0]]
    fn_menu[i.skill](i)
    return

if __name__ == "__main__":
    main()
