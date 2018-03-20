#include <iostream>
#include <string>
#include <sstream>

using namespace std;

class calculate
{
   double hours;
      double total;
      public:
         calculate(int);
            void findTotal();
            };

            calculate::calculate(int data)
            {
               total = 1.5;
                  hours = data - 1;
                  }

                  void calculate::findTotal(void)
                  {
                     while (hours > 0)
                        {
                              total += 1.2;
                                    hours--;
                                       }
                                          cout << "You owe: $" << total << endl;
                                          }

                                          int main()
                                          {
                                             string entered;
                                                int length;
                                                   
                                                      cout << "How many hours were you parked: ";
                                                         cin >> entered;
                                                            stringstream(entered) >> length;
                                                               
                                                                  calculate total(length);
                                                                     total.findTotal();
                                                                        
                return 0;   
                                                                              }
