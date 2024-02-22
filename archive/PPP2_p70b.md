> https://rentry.org/PPP2_p70b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.5 Assignment and initialization
// -beginning on p 70

#include <iostream>
#include <string>

using std::cout;
using std::string;

int main()
{
  int y = 8;  // initialize y with 8
  int x;      // x is uninitialized
  x = 9;      // assign 9 to x

  string t = "howdy!";  // initialize t with “howdy!”
  string s;             // s is uninitialized
  s = "G'day";          // assign “G’day” to s

  cout << y << '\n'  // output above variable values to console...
       << x << '\n'  //
       << t << '\n'  //
       << s << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p70b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p70a) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p71)