> https://rentry.org/PPP2_p317a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 9.4.5 Referring to the current object
//  -and beginning on p 317

#include <iostream>

using std::cout;

class Date {
 public:
  Date(int yy, int mm, int dd) : y{yy}, m{mm}, d{dd}
  {
    // . . .
  }

  void add_day(int n) { d += n; }  // naive

  int year() { return y; }
  int month() { return m; }
  int day() { return d; }

  // ...

 private:
  int y, m, d;  // year, month, day
};

void f(Date d1, Date d2) { cout << d1.month() << ' ' << d2.month() << '\n'; }

int main()
{
  Date a{1994, 03, 29};
  Date b{2000, 02, 15};

  f(a, b);
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_09/main_p317a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p315) • [Up](https://rentry.org/PPP2_ch09) • [Next](https://rentry.org/PPP2_p317b)