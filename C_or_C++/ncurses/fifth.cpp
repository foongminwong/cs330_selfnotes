//http://www.youtube.com/user/thecplusplusguy
//Thanks for the typed in code to Tapit85
#include <ncurses.h>

int main()
{
	initscr();
	start_color();
	WINDOW* win;
	win=newwin(10,10,10,10);
	wrefresh(win);
	delwin(win);
	init_pair(1,COLOR_RED,COLOR_BLACK);
	attron(COLOR_PAIR(1));
	printw("Something");
	attroff(COLOR_PAIR(1));
	refresh();
	getch();

	endwin();
	return 0;
}
