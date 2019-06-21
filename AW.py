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
    return p

def selectCharacter(p):
    m=[]
    for i,c in enumerate(p.characters):
        m.append(str(i)+' '+c.name+' '+c.classe)
    r=menu(m, 4, 12)
    show(['selected',m[r]])
    return p.characters[r]

def menuGame(m,w):
    fclear(w)
    r=menu(m,2, 5)
    return r

def startGame(p,w):
    m=['Town','Gear','Mission','Exit']
    r=menu(m,8, 22)
    while (r!=len(m)-1):
        if r==0:
            show(['Going to Town'])
        elif r==1:
            show(['listing Gear'])
        elif r==2:
            show(['Going in Mission'])
        r=menu(m,8,22)
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
    m=['New Game','Load Game','Select character','Save Team','Quit']
    r=menuGame(m,win)
    while r!=len(m)-1:
        if r==0:
            p=newGame()
        elif r==1:
            p=loadAW()
        elif r==2:
            selectCharacter(p)
            startGame(p,win)
        elif r==3:
            saveAW(p)
            show(['Game Saved'])
        r=menuGame(m,win)
    curses.endwin()
    return

if __name__ == "__main__":
    curses.wrapper(main)
