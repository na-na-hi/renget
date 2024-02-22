> https://rentry.org/PPP2_p99a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.3 Conversions
// -beginning on p 99

#include <iostream>

using std::cout;

int main()
{
  // 5/2 is 2 (not 2.5)
  cout << (5 / 2) << '\n';

  // 2.5/2 means 2.5/double(2), that is, 1.25
  cout << (2.5 / 2) << '\n';

  // 'a'+1 means int{'a'}+1, that is, the ASCII code for 'a'+1
  cout << ('a' + 1) << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p99a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p98) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p99b)