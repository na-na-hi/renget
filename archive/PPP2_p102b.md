> https://rentry.org/PPP2_p102b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.1.1 if-statements
// -beginning on p 102

#include <iostream>

using std::cout;

void go() { cout << "go\n"; }

void wait() { cout << "wait\n"; }

int main()
{
  constexpr int green = 1;
  constexpr int red   = 3;

  int traffic_light = 1;

  if (traffic_light == green)
    go();

  if (traffic_light == red)
    wait();

  //---
  cout << '\n';  // here simply to separate the console outputs

  traffic_light = 3;  // set traffic_light to 3 now

  if (traffic_light == green)
    go();

  if (traffic_light == red)
    wait();
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p102b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p102a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p103a)