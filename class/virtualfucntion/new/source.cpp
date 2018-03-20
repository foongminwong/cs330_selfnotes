#include <iostream>

#include <ncurses.h>

class Calc {
  public:
      Calc() {
            initscr();
                  clear();
                        getmaxyx(stdscr, height, width);
                            }

                                void plot() {
                                      getch();
                                            endwin();
                                                }

                                                  private:
                                                      int width;
                                                          int height;
                                                          };

                                                          int main(int argc, char **argv) {
                                                            Calc c; 
                                                              c.plot();
                                                                return 0;
                                                                }
