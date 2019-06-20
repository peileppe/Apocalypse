#!/usr/bin/python
#  main.py
# ===================================================================
# Wed Jun 19 15:54:45 CEST 2019

import readline
import json
from aw_log import logger
from aw_tools import menu
from aw_names import namePick 
from aw_character import character, listing

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
