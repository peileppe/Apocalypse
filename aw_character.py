#!/usr/bin/python
# menu
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

class unit(object):
    def __init__(self, f1, n='default'):
        self.name = n
        self.myfunc = f1
        return
    def display(self):
        return '- '+self.name

def listing(x, list1):
    for i in list1:
        print(i.display())
    return
def promote(i, list1):
    listing(i, list1)
    print('promote ')
    return
def qExit(z, list1):
    print('Bye!')
    return

def main():
    o, MENU = [], []
    o.append(unit(listing, 'Listing'))
    o.append(unit(promote, 'promote'))
    o.append(unit(qExit, 'quit'))
    for i in o:
        MENU.append(i.name)
    while(True):
        x, y = menu(MENU)
        print (str(x)+' '+y)
        o[x].myfunc(x, o)
        if x == 2:
            break
    return

if __name__ == "__main__":
    main()
