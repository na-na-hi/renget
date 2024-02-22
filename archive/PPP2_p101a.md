> https://rentry.org/PPP2_p101a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4 Statements
// -beginning on p 101

#include <iostream>

using std::cout;

int main()
{
  int a = 7;
  cout << a << '\n';

  // 1 + 2;  // do an addition, but don’t use the sum

  // a * b;  // do a multiplication, but don’t use the product
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p101a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p100c) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p101b)