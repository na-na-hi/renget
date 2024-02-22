> https://rentry.org/PPP2_p77
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.8 Types and objects
// -beginning on p 77

#include <iostream>
#include <string>

using std::cout;
using std::string;

int main()
{
  int    a  = 7;
  int    b  = 9;
  char   c  = 'a';
  double x  = 1.2;
  string s1 = "Hello, World!";
  string s2 = "1.2";

  cout << a << '\n'   // output above variable values to console...
       << b << '\n'   //
       << c << '\n'   //
       << x << '\n'   //
       << s1 << '\n'  //
       << s2 << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p77.cpp && ./a.out`

!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p76) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p78)