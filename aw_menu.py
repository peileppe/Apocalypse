#!/usr/bin/env python
import curses
from curses import panel

def longest_in_the_list(l):
    # return the size of the longest string in the list
    return len(max(l,key=len))

def display_box(list1):
	# display the list in a box / not a menu
	maxx = longest_in_the_list(list1) + 4
	w1=curses.newwin(len(list1)+2,maxx,curses.LINES/2-len(list1)/2,curses.COLS/2-maxx/2)
	w1panel=panel.new_panel(w1)
	w1.box()
	yy, xx=w1.getmaxyx()
	line=1
	for item in list1:
		w1.addstr(line,2,str(item))
		line+=1
	w1.move(0,0)
	w1.addstr("[X]")
	w1.refresh()
	w1.getch()
	del w1panel

def display_menu(ws,x1,y1,menu1,attribut1):
	"""
	display each item in the list as an optin in the menu
	if the item is a list (or a tuple) then it only print the first item of that list/tuple
	"""
	current_option=0
	for o in menu1:
		if type(o)  == str:
			o=str(current_option)+". "+o
		elif type(o) == tuple or type(o) == list:
			o=str(current_option)+". "+o[0]
		ws.addstr(y1,x1,o,attribut1[current_option])
		ws.clrtoeol()
		y1+=1
		current_option+=1
	ws.move(0,0)
	ws.refresh()

def run_menu(menu1,x=0,y=0, subMenu=False):
	"""
	will display the menu at x, y on a newly created window
	then display menu to relative coordinates in that new window called wmenu
	see display_menu above
	"""
	max_length = longest_in_the_list(menu1)+4
	max_option = len(menu1)
	current_option=0
	option_selected=-1
	wmenu=curses.newwin(max_option ,max_length ,y ,x )
	menupanel = panel.new_panel(wmenu)
	color=curses.COLOR_WHITE
	curses.init_pair(color, curses.COLOR_BLACK, curses.COLOR_WHITE)
	wmenu.bkgdset(ord(' '), curses.color_pair(color))
	wmenu.keypad(1)
	wmenu.refresh()
	while option_selected == -1:
		attribut=[curses.A_NORMAL]*max_option
		attribut[current_option]=curses.A_REVERSE+curses.A_BOLD
		display_menu(wmenu,0,0,menu1,attribut)
		a=wmenu.getch()
		if   a==curses.KEY_DOWN:
			current_option+=1
		elif a==curses.KEY_UP:
			current_option-=1
		elif a==ord('\n') or a == 32 :
		# validation can be done by CR or space bar
			option_selected=current_option
			if subMenu:
				del menupanel
				panel.update_panels()
		elif a in range(ord('0'),ord('0')+max_option):
		# in case key pressed is a number
			current_option=a-ord('0')
			option_selected=current_option
			if subMenu:
				del menupanel
				panel.update_panels()
		if current_option>max_option-1:
			current_option=max_option-1
		elif current_option <0:
			current_option=0
	return option_selected

def main(self):
    win=curses.initscr()
    m = ['new Game', 'Load Game', 'Help', 'Exit']
    print (longest_in_the_list(m))
    print(max(m))
    r=run_menu(m, 5, 10)
    l=[]
    l.append('option selected')
    l.append(str(r)+' '+m[r])
    display_box(l)
    curses.endwin()
    return

if __name__=="__main__":
    curses.wrapper(main)
