#!/usr/bin/env python3
import pygcurse, pygame, sys
from aw_debug import logger

AREA_WIDTH=120
AREA_HEIGHT=60

# colors palette
BLACK = (0,0,0)
WHITE = (0xff,0xff,0xff)
BACKG = (0xe7, 0xf1, 0xf2)
AVATR = (0xef, 0x94, 0x34)
BLOCK = (0x95, 0xc4, 0xca)
CHASR = (0xfe, 0xd9,0x30)
BALLC = (0x57, 0x57, 0x6d)
FLAGC = (0xba, 0xef, 0xaa) 

FPS=15

KEY_UP= 273
KEY_DOWN=274
KEY_RIGHT=275
KEY_LEFT=276

def initscr():
    win = pygcurse.PygcurseWindow(AREA_WIDTH, AREA_HEIGHT, fullscreen=False)
    pygame.display.set_caption('Apocalypse')
    win.autowindowupdate = False
    win.autoupdate = False
    win.fill(bgcolor=BACKG)
    return win
    
def addstr(win, y, x, msg):
    win.cursor = (x, y)
    win.write(msg, fgcolor=BACKG, bgcolor=BALLC)
    return

def addch(win, y, x, color, symbol=None):
    if symbol!=None:
        win.putchar(symbol, int(x), int(y), fgcolor=BLACK, bgcolor=color)
    else:
        win.putchar('.', int(x), int(y), fgcolor=BLACK, bgcolor=color) # decor 
    return 

def refresh(win):
    #global mainClock
    win.update()
    pygame.display.update()    
    #mainClock.tick(FPS)    
    return

def getch(win):
    action=None
    while action==None: #ord('q'):
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()
            elif event.type == pygame.KEYDOWN:
                action = event.key
                logger.debug('key pressed '+str(action))
            elif event.type == pygame.KEYUP:
                action = None
    return action

def longest_in_the_list(l):
    # return the size of the longest string in the list
    return len(max(l,key=len))

def display_box(w1,list1, presskey=True):
    # display the list in a box / not a menu
    maxx = longest_in_the_list(list1) + 4
    #w1=curses.newwin(len(list1)+2,maxx,AREA_WIDTH/2-len(list1)/2,AREA_HEIGHT/2-maxx/2)
    #w1panel=panel.new_panel(w1)
    #w1.box()
    yy, xx= 40, 40#w1.getmaxyx()
    line=xx
    for item in list1:
	    addstr(w1,line,yy,str(item).ljust(maxx))
	    line+=1
    if presskey:
        i=getch(w1)
    refresh(w1)
    return
    
def fclear(win):
    for y in range(0, AREA_WIDTH - 1):
        for x in range(0, AREA_HEIGHT):
            addch(win,y,x,BLACK,'/')
    refresh(win)
    return

def display_menu(ws,x1,y1,menu1, sel): # sel = current option
    """
    display each item in the list as an option in the menu
    if the item is a list (or a tuple) then it only print the first item of that list/tuple
    """
    logger.debug('current selection:'+str(sel))
    current_option=0
    for s, o in enumerate(menu1):
        if type(o)  == str:
            o=str(current_option)+". "+o
        elif type(o) == tuple or type(o) == list:
            o=str(current_option)+". "+o[0]
        if s==sel: o+='<<'
        addstr(ws,y1,x1,o.ljust(20)) #,attribut1[current_option])
        y1+=1
        current_option+=1
    refresh(ws)

def run_menu(wmenu,menu1,x=0,y=0, subMenu=False):
    """
    will display the menu at x, y on a newly created window
    then display menu to relative coordinates in that new window called wmenu
    """
    max_length = longest_in_the_list(menu1)+4
    max_option = len(menu1)
    current_option=0
    option_selected=-1
    color=WHITE
    refresh(wmenu)
    while option_selected == -1:
        display_menu(wmenu,0,0,menu1,current_option)
        a=getch(wmenu)
        logger.warning('after getch:'+str(a))
        if   a==KEY_DOWN:
            current_option+=1
        elif a==KEY_UP:
            current_option-=1
        elif a==ord('\n') or a == 32 : # validation can be done by CR or space bar
            option_selected=current_option
        elif a in range(ord('0'),ord('0')+max_option): # in case key pressed is a number
            current_option=a-ord('0')
            option_selected=current_option
        if current_option>max_option-1:
            current_option=max_option-1
        elif current_option <0:
            current_option=0
    return option_selected

def main():
    win=initscr()
    #win.clear()
    fclear(win)
    m = ['new Game', 'Load Game', 'Help', 'Exit']
    r=run_menu(win,m, 5, 10)
    l=[]
    l.append('option selected')
    l.append(str(r)+' '+m[r])
    display_box(win,l,False)
    pygame.quit()
    return

if __name__ == '__main__':
    main()
