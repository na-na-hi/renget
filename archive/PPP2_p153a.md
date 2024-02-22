> https://rentry.org/PPP2_p153a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.4 Narrowing errors
//  -and beginning on p 153

#include <iostream>

using std::cout;

int main()
{
  int  x = 2.9;
  char c = 1066;

  cout << x << '\n'  //
       << c << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p153a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p152b) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p153b)