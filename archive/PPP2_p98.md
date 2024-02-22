> https://rentry.org/PPP2_p98
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.2 Operators
// -beginning on p 98

#include <iostream>

using std::cout;

int main()
{
  int a = 10;
  cout << a << '\n';

  ++a;
  cout << a << '\n';

  a += 1;
  cout << a << '\n';

  a = a + 1;
  cout << a << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p98.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p97) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p99a)