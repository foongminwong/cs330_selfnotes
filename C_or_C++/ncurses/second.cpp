//http://www.youtube.com/user/thecplusplusguy
//Thanks for the typed in code to Tapit85
#include <ncurses.h>

int main()
{
	initscr();
//		move(5, 10); //move cursor to position y, x
//			printw("Hello World");
mvprintw(6, 10, "Hello World");	// does the same in one step
					refresh();
						getch();
							endwin();
								return 0;
								}
