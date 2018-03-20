nclude <iostream>
#include "Class.h"

using namespace std;

void SubClass1::doSomething(int x1, int x2, int x3)
{
    cout<<"subclass1 "<<x1<<x2<<endl;      
    }

    void SubClass2::doSomething(int e1, int e2, int e3)
    {
        cout<<"subclass2 "<<e1<<e2<<endl;
    }

    void Superclass::doSomething(int x, int y, int z)
    {
        SubClass1 objSubClass1;
        SubClass2 objSubClass2;
         switch(z){
                 case 1:
              objSubClass1.doSomething(x, y, z);
                  break;
    case 2:
        objSubClass2.doSomething(x, y, z);
        break;
                                                                            }
                                                                            }
