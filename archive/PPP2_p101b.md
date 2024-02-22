> https://rentry.org/PPP2_p101b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4 Statements
// -beginning on p 101

#include <iostream>

using std::cout;

int main()
{
  int x = 4;
  int y = 7;

  if (x == 5)
    ;  // false case (does nothing)
  {
    y = 3;  // unintentional error
  }

  cout << x << '\n'  // output above variable values to console...
       << y << '\n';

  //---
  cout << '\n';  // here simply to separate the console outputs

  x = 5;  // set x to 5 now
  y = 7;  // reset y to 7

  if (x == 5)
    ;  // true case (still does nothing)
  {
    y = 3;  // accidentally "correct"
  }

  cout << x << '\n'  // output above variable values to console...
       << y << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p101b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p101a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p102a)