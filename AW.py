#!/usr/bin/python
#  AW.py
# ===================================================================
# 

import curses
import readline
import json, shelve
from aw_save import loadAW, saveAW
from aw_names import namePick 
from aw_character import character, player
from aw_menu import fclear,run_menu as menu, display_box as show
from aw_debug import logger

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
    return

def selectCharacter(p):
    m=[]
    for i,c in enumerate(p.characters):
        m.append(str(i)+' '+c.name+' '+c.classe)
    r=menu(m, 5, 10)
    show(['selected',m[r]])
    return p.characters[r]

def menuGame(w):
    fclear(w)
    m=['New Game','Load Game','Select Team','Quit']
    r=menu(m,5, 10)
    return r

def main(self):
    win=curses.initscr()
    try:
        db=shelve.open('saves/aw_saves')
    except IOError:
        print(IOError)
        exit()
    # p = player()
    p = db['AW']
    r=menuGame(win)
    while r!=3:
        if r==0:
            newGame()
        elif r==1:
            loadAW()
        elif r==2:
            selectCharacter(p)
        r=menuGame(win)
    curses.endwin()
    return

if __name__ == "__main__":
    curses.wrapper(main)
