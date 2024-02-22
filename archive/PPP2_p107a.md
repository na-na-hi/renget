> https://rentry.org/PPP2_p107a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.1.3 Switch technicalities
//  -and beginning on p 107

#include <iostream>

using std::cin;
using std::cout;

// case labels must be constants
int main()
{
  // define alternatives:
  int            y = 'y';  // this is going to cause trouble
  constexpr char n = 'n';  //
  constexpr char m = '?';

  cout << "Do you like fish?\n";
  char a;
  cin >> a;

  switch (a) {
    case n:
      // . . .
      break;
    case y:  // error: variable in case label
      // . . .
      break;
    case m:
      // . . .
      break;
    case 'n':  // error: duplicate case label (n’s value is ‘n’)
      // . . .
      break;
    default:
      // . . .
      break;
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p107a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p106) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p107b)