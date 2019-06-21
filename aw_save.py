#!/usr/bin/python
# aw_save.py
# ===================================================================

import shelve, json
from aw_character import player, listingm, fn_menu
from aw_tools import menu

def loadAW():
    #print('Loading ...')
    db = shelve.open('saves/aw_saves')
    p = db['AW']
    return p

def saveAW(p):
    #print('Saving ...')
    db = shelve.open('saves/aw_saves')
    db['AW'] = p
    db.close()
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
    listingm(p.characters)
    for i in p.characters:
        m.append(i.name)
    r=menu(m)
    i=p.characters[r[0]]
    fn_menu[i.skill](i)
    saveAW(p)
    return

if __name__ == "__main__":
    main()
