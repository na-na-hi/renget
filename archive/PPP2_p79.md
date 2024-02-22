> https://rentry.org/PPP2_p79
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.9.1 Safe conversions
// -beginning on p 79

#include <iostream>

using std::cout;

int main()
{
  char c  = 'x';
  int  i1 = c;
  int  i2 = 'x';
  char c2 = i1;

  cout << c << ' ' << i1 << ' ' << c2 << '\n';
  cout << i2 << '\n';

  double d1 = 2.3;
  double d2 = d1 + 2;  // 2 is converted to 2.0 before adding

  if (d1 < 0)  // 0 is converted to 0.0 before comparison
    cout << "d1 is negative";

  cout << d1 << '\n'  //
       << d2 << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p79.cpp && ./a.out`

!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p78) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p80)