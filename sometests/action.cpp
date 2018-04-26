// brute-force approach to the
// event producer-consumer idiom
 
 
#include <iostream>
#include <ostream>
#include <string>
#include <vector>
 
using namespace std;
 
// interface of the listener
class ActionListener
{
public:
    virtual void actionPerformed() = 0;
};
 
// some class that can generate events
class SomeClass
{
public:
    // registration function
    void addListener(ActionListener *p)
    {
        listeners_.push_back(p);
    }
 
    // some other functions
    // ...
 
    void foo();
 
private:
    // collection of pointers to listeners
    typedef vector<ActionListener*> ListenerBag;
    ListenerBag listeners_;
 
    // some other members
    // ...
};
 
// some function that can produce an event
void SomeClass::foo()
{
    // ...
 
    // produce an event and notify
    // all listeners that are registered
    ListenerBag::iterator it;
    ListenerBag::iterator itend = listeners_.end();
 
    for (it = listeners_.begin(); it != itend; ++it)
    {
         (*it)->actionPerformed();
    }
}
 
// some listener class
class MyListener : public ActionListener
{
public:
    MyListener(const string &name) : name_(name) {}
    void actionPerformed()
    {
        cout << name_
            << " : Action performed, sir!" << endl;
    }
 
private:
    string name_;
};
 
int main()
{
    MyListener l1("listener 1");
    MyListener l2("listener 2");
 
    SomeClass someobject;
 
    someobject.addListener(&l1);
    someobject.addListener(&l2);
 
    // ...
 
    someobject.foo();
 
    // ...
 
    return 0;
}
