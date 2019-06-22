#!/usr/bin/python3
# AW3 
# ===================================================================
# 

import readline
import json, shelve
from aw_debug import logger
from aw_tools import menu
from aw_save import loadAW, saveAW
from aw_names import namePick 
from aw_character import character, player

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
    return p

def main():
    try:
        db=shelve.open('saves/aw_saves3')
    except IOError:
        print(IOError)
        exit()
    #p = db['AW3']
    p = newGame()
    db['AW3']=p
    #print(p.display())
    db.close()
    return

if __name__ == "__main__":
    main()
