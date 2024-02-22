> https://rentry.org/PPP2_p100a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.3 Conversions
// -beginning on p 100

#include <iostream>

using std::cin;
using std::cout;

int main()
{
  cout << "Please enter a temperature centigrade: ";
  double dc;
  cin >> dc;

  // 9 / 5 * dc + 32 means ((9 / 5) * dc) + 32
  double df = 9 / 5 * dc + 32;  // beware!

  cout << df << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p100a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p99b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p100b)