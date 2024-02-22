> https://rentry.org/PPP2_p63
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.2 Variables
// -beginning on p 63

#include <iostream>
#include <string>

using std::cout;
using std::string;

int main()
{
  int    number_of_steps = 39;           // int for integers
  double flying_time     = 3.5;          // double for floating-point numbers
  char   decimal_point   = '.';          // char for individual characters
  string name            = "Annemarie";  // string for character strings
  bool   tap_on          = true;         // bool for logical variables

  cout << number_of_steps << '\n'  // output above variable values to console...
       << flying_time << '\n'      //
       << decimal_point << '\n'    //
       << name << '\n'             //
       << tap_on << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p63.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p60) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p64a)