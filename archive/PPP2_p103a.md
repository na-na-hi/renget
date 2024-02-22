> https://rentry.org/PPP2_p103a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.1.1 if-statements
// -beginning on p 103

#include <iostream>

using std::cin;
using std::cout;

// convert from inches to centimeters or centimeters to inches
// a whitespace-separated suffix ‘i’ or ‘c’ indicates the unit of the input
int main()
{
  constexpr double cm_per_inch = 2.54;  // number of centimeters in an inch
  double           length      = 1;     // length in inches or centimeters
  char             unit        = 0;

  cout << "Please enter a length followed by a separate unit (c or i):\n";
  cin >> length >> unit;

  if (unit == 'i')
    cout << length << "in == " << cm_per_inch * length << "cm\n";
  else
    cout << length << "cm == " << length / cm_per_inch << "in\n";
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p103a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p102b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p103b)