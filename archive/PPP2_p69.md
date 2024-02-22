> https://rentry.org/PPP2_p69
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.5 Assignment and initialization
// -beginning on p 69

#include <iostream>

using std::cout;

int main()
{
  int a = 3;          // a starts out with the value 3
  cout << a << '\n';  //

  a = 4;              // a gets the value 4 (“becomes 4”)
  cout << a << '\n';  //

  int b = a;          // b starts out with a copy of a’s value (that is, 4)
  cout << b << '\n';  //

  b = a + 5;          // b gets the value a+5 (that is, 9)
  cout << b << '\n';  //

  a = a + 7;          // a gets the value a+7 (that is, 11)
  cout << a << '\n';  //
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p69.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p68b) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p70a)