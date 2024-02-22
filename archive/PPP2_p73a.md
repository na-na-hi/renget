> https://rentry.org/PPP2_p73a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.6 Composite assignment operators
// -beginning on p 73

#include <iostream>

using std::cout;

int main()
{
  int counter = 1;
  ++counter;
  cout << counter << '\n';

  counter = counter + 1;
  cout << counter << '\n';

  int a = 1;
  a += 7;  // means a = a+7
  cout << a << '\n';

  int b = 1;
  b -= 9;  // means b = b-9
  cout << b << '\n';

  int c = 1;
  c *= 2;  // means c = c*2
  cout << c << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p73a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p71) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p73b)