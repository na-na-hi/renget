> https://rentry.org/PPP2_p70a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.5 Assignment and initialization
// -beginning on p 70

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

int main()
{
  string a = "alpha";  // a starts out with the value “alpha”
  cout << a << '\n';   //

  a = "beta";         // a gets the value “beta” (becomes “beta”)
  cout << a << '\n';  //

  string b = a;  // b starts out with a copy of a’s value (that is, “beta”)
  cout << b << '\n';  //

  b = a + "gamma";  // b gets the value a+“gamma” (that is, “betagamma”)
  cout << b << '\n';  //

  a = a + "delta";  // a gets the value a+“delta” (that is, “betadelta”)
  cout << a << '\n';  //
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p70a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p69) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p70b)