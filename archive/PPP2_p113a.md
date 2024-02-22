> https://rentry.org/PPP2_p113a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.2.3 for-statements
//  -and beginning on p 113

#include <iostream>

using std::cout;

// return the square of x
int square(int x) { return x * x; }

// calculate and print a table of squares of even numbers in the [0:100) range
int main()
{
  for (int i = 0; i < 100; i += 2)
    cout << i << '\t' << square(i) << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p113a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p112b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p113b)