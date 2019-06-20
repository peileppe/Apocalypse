#!/usr/bin/python
# aw_tools - menu
# ===================================================================
import readline
from random import randint

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

def dice(adjustment=0):
    result=randint(1,6)+randint(1,6)+adjustment
    if (result<=6): conclusion='fails'
    elif result in range(7,10): conclusion='semi-success'
    else:conclusion='success'
    return str(result),conclusion

def main():
    MENU = []
    for i in ['Listing', 'show dice result', 'quit']:
        MENU.append(i)
    while(True):
        x, y = menu(MENU)
        print (str(x)+' '+y)
        if x == 1:
            d, c = dice(0)
            print ('throwing dice:'+d.rjust(2)+' '+c)
        if x == 2:
            break
    return

if __name__ == "__main__":
    main()
