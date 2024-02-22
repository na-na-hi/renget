> https://rentry.org/PPP2_p113b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.5 Functions
//  -and beginning on p 113

#include <iostream>

using std::cout;

// return the square of x
int square(int x) { return x * x; }

int main()
{
  cout << square(2) << '\n';   // print 4
  cout << square(10) << '\n';  // print 100
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p113b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p113a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p114)