> https://rentry.org/PPP2_p112b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.2.3 for-statements
//  -and beginning on p 112

#include <iostream>

using std::cout;

// return the square of x
int square(int x) { return x * x; }

int main()
{
  for (int i = 0; i < 100; ++i) {  // for i in the [0:100) range
    cout << i << '\t' << square(i) << '\n';

    ++i;  // what's going on here? It smells like an error!
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p112b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p112a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p113a)