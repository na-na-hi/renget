> https://rentry.org/PPP2_p95
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3 Expressions
// -beginning on p 95

#include <iostream>

using std::cout;

int main()
{
  // compute area:
  int length = 99;  // assign 99 to length
  int width  = 40;
  int area   = length * width;  // a multiplication

  int perimeter = (length + width) * 2;  // add then multiply
  // int perimeter = length * 2 + width * 2;  // (clumsy)
  // int perimeter = length + width * 2;      // add width * 2 to length (error)

  cout << length << '\n'  // output above variable values to console...
       << width << '\n'   //
       << area << '\n'    //
       << perimeter << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p95.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p94) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p96a)