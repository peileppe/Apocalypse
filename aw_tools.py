#!/usr/bin/python
# aw_tools - menu
# ===================================================================
import readline

try:
    input = raw_input
except NameError:
    pass

def menu(listMenu):
    o, x = 0, []
    for i in listMenu:
        print (str(o)+'. '+i)
        x.append(str(o))
        o+=1
    j=input('Select option : ')
    while (j  not in (x)):
        j=input('Please choose a valid option :')
    return int(j), listMenu[int(j)]

def main():
    MENU = []
    for i in ['Listing', 'show', 'quit']:
        MENU.append(i)
    while(True):
        x, y = menu(MENU)
        print (str(x)+' '+y)
        if x == 2:
            break
    return

if __name__ == "__main__":
    main()
