> https://rentry.org/PPP2_p80
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.9.2 Unsafe conversions
// -beginning on p 80

#include <iostream>

using std::cout;

int main()
{
  int  a = 20'000;
  char c = a;  // try to squeeze a large int into a small char
  int  b = c;

  if (a != b)  // != means “not equal”
    cout << "oops!:  " << a << " != " << b << '\n';
  else
    cout << "Wow! We have large characters\n";
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p80.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p79) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p81)