> https://rentry.org/PPP2_p112a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.2.3 for-statements
//  -and beginning on p 112

#include <iostream>

using std::cout;

// return the square of x
int square(int x) { return x * x; }

// calculate and print a table of squares 0–99 (twice)
int main()
{
  for (int i = 0; i < 100; ++i)
    cout << i << '\t' << square(i) << '\n';

  //---
  cout << '\n';

  {
    int i = 0;                                 // the for-statement initializer
                                               //
    while (i < 100) {                          // the for-statement condition
      cout << i << '\t' << square(i) << '\n';  // the for-statement body
      ++i;                                     // the for-statement increment
    }
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p112a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p111) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p112b)