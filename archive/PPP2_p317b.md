> https://rentry.org/PPP2_p317b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 9.4.6 Reporting errors
//  -and beginning on p 317

#include <iostream>
#include <stdexcept>

using namespace std;

void error(const char* s) { throw runtime_error(s); }

// simple Date (prevent invalid dates):
class Date {
 public:
  Date(int y, int m, int d);  // check for valid date and initialize

  class Invalid {};  // to be used as a Date exception

  void add_day(int n) { d += n; }  // naive

  int year() { return y; }
  int month() { return m; }
  int day() { return d; }

 private:
  bool is_valid();  // return true if date is valid

  int y, m, d;  // year, month, day
};

// initializes data members
Date::Date(int yy, int mm, int dd) : y{yy}, m{mm}, d{dd}
{
  if (! is_valid())  // check for validity
    throw Invalid();
}

// return true if date is valid
bool Date::is_valid()
{
  if (m < 1 || 12 < m)
    return false;

  // ...

  return true;  // naive
}

ostream& operator<<(ostream& os, Date& d)  // see §9.2 for a declaration of <<
{
  return os << '{' << d.year() << ',' << d.month() << ',' << d.day() << '}';
}

void f(int x, int y)
try {
  Date dxy{2004, x, y};
  cout << dxy << '\n';
  dxy.add_day(2);

} catch (Date::Invalid) {
  error("invalid date");
}

int main()
try {
  f(8, 29);
  f(15, 29);  // run-time error: invalid date

} catch (exception& e) {
  cerr << "error: " << e.what() << '\n';
  return 1;

} catch (...) {
  cerr << "Oops: unknown exception!\n";
  return 2;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_09/main_p317b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p317a) • [Up](https://rentry.org/PPP2_ch09) • [Next](https://rentry.org/PPP2_p318)