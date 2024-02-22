> https://rentry.org/PPP2_p94
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3 Expressions
// -beginning on p 94

#include <iostream>

using std::cout;

int main()
{
  // compute area:
  int length = 20;  // a literal integer (used to initialize a variable)
  int width  = 40;
  int area   = length * width;  // a multiplication

  cout << length << '\n'  // output above variable values to console...
       << width << '\n'   //
       << area << '\n';

  length = 99;              // assign 99 to length
  area   = length * width;  // a multiplication (again)

  cout << length << '\n'  // output above variable values to console...
       << width << '\n'   //
       << area << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p94.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p95)