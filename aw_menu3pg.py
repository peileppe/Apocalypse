#!/usr/bin/python
# aw_menu3pg.py
# ===================================================================

import pygame, time, random

def show_Text(y, x, msg, color, wh=100):
    pygame.draw.rect(winDisplay, color, [x, y, wh, 15])
    font = pygame.font.SysFont(None, 25)
    text = font.render(msg, True, black)
    winDisplay.blit(text,(x,y))
    return

def menu_loop(menu=['optionA','optionB','optionC','optionD','Help','Exit']):
    global black
    global white
    global red
    global blue
    black = (10,10,10)
    white = (205,205,205)
    red = (195,110,50)
    blue = (105,175,205)
    menuExit = False
    r=0
    while not menuExit:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_UP:
                    r-=1
                if event.key == pygame.K_DOWN:
                    r+=1
                if event.key in (27, 113, 13, 32):
                    menuExit=True
            if event.type == pygame.KEYUP:
                show_Text(0,0,'...',red,24)
                pygame.display.update()
                clock.tick(1)
        if r<=0: r=0
        if r>=len(menu):r=len(menu)-1
        winDisplay.fill(white)
        pygame.draw.rect(winDisplay, black , [10, 15, len(max(menu,key=len))*8+40, 15*len(menu)+10])
        r=display_menu(15,20,menu,r)
        pygame.display.update()
        clock.tick(5)
    print(menu[r])
    return

def display_menu(x1,y1,menu1, current_option):
    wh=len(max(menu1,key=len))*8+30
    for i,o in enumerate(menu1):
        o=str(i)+". "+o
        if i==current_option:
            show_Text(y1,x1,o,white,wh)
        else:
            show_Text(y1,x1,o,blue, wh)
        y1+=15
    return current_option

def main(): 
    global winDisplay
    global clock
    pygame.init()
    display_width = 800
    display_height = 600
    winDisplay = pygame.display.set_mode((display_width,display_height))
    pygame.display.set_caption('Demo')
    clock = pygame.time.Clock()
    menu_loop()
    pygame.quit()
    quit()
    return

if __name__=='__main__':
    main()
