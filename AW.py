#!/usr/bin/python
#  AW.py
# ===================================================================
# 

import curses
import readline
import json, shelve
from aw_log import logger
from aw_save import loadAW, saveAW
from aw_names import namePick 
from aw_character import character, player
from aw_menu import run_menu as menu, display_box as show

def newGame():
    try:
        with open('AW-db/aw_classes.json') as f:
            awcl=json.load(f)
    except IOError:
        print(IOError)
    p = player()
    p.starterPack(awcl)
    m=[]
    for i in p.characters:
        m.append(i.display())
    r=menu(m)
    print('selected:'+p.characters[r[0]].display())
    return

def main(self):
    win=curses.initscr()
    try:
        db=shelve.open('saves/aw_saves')
    except IOError:
        print(IOError)
        exit()
    # p = player()
    p = db['AW']
    m=[]
    for i,c in enumerate(p.characters):
        m.append(str(i)+' '+c.name+' '+c.classe)
    r=menu(m, 5, 10)
    show(['selected',m[r]])
    curses.endwin()
    return

if __name__ == "__main__":
    curses.wrapper(main)
