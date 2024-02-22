> https://rentry.org/PPP2_p75a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.7 Names
// -beginning on p 75

#include <iostream>

using std::cout;

int main()
{
  int x                  = 1;
  int number_of_elements = 1;
  int Fourier_transform  = 1;
  int z2                 = 1;
  int Polygon            = 1;

  cout << x << '\n'  // output above variable values to console...
       << number_of_elements << '\n'  //
       << Fourier_transform << '\n'   //
       << z2 << '\n'                  //
       << Polygon << '\n';

  // int 2x;              // a name must start with a letter
  // int time$to$market;  // $ is not a letter, digit, or underscore
  // int Start menu;      // space is not a letter, digit, or underscore
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p75a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p73b) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p75b)