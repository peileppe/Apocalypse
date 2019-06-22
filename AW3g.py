#!/usr/bin/python
#  AW3g.py - python3 using pycurses
# ===================================================================
# 

import pygcurse, pygame
import readline
import json, shelve
from aw_save3 import loadAW, saveAW
from aw_names import namePick 
from aw_character import character, player
from aw_menu3g import initscr, fclear,run_menu as menu, display_box as show
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

def menuGame(m,w):
    fclear(w)
    r=menu(w, m,2, 5)
    return r

def selectCharacter(p,w):
    m=[]
    for i,c in enumerate(p.characters):
        m.append(str(i)+' '+c.name+' '+c.classe)
    r=menu(w, m, 4, 12)
    show(w,['selected',m[r]])
    return r

def startGame(p,w,s):
    m=['Town','Gear','Mission','Exit']
    r=menu(w,m,24, 5 )
    n=p.characters[s].name
    while (r!=len(m)-1):
        if r==0:
            show(w,[n,'Going to Town'], False)
        elif r==1:
            show(w,[n,'listing Gear'], False)
        elif r==2:
            show(w,[n,'Going in Mission'], False)
        r=menu(w,m,24,5)
    return

def main():
    win=initscr()
    try:
        db=shelve.open('saves/aw_saves3')
    except IOError:
        print(IOError)
        exit()
    # p = player()
    p = db['AW3']
    m=['New Game','Load Game','Select char','Save Team','Quit']
    r=menuGame(m, win)
    while r!=len(m)-1:
        if r==0:
            p=newGame()
            show(win,['New Game'])
        elif r==1:
            p=loadAW()
            show(win,['Game loaded'])
        elif r==2:
            s=selectCharacter(p,win)
            startGame(p,win,s)
        elif r==3:
            saveAW(p)
            show(win,['Game Saved'])
        r=menuGame(m,win)
    #curses.endwin()
    return

if __name__ == "__main__":
    main()
