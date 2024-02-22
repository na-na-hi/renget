> https://rentry.org/PPP2_p149a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.2 Range errors
//  -and beginning on p 149

#include <iostream>
#include <vector>

using std::cout;
using std::vector;

int main()
{
  vector<int> v(5);

  int x = v[5];

  cout << x << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p149a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p148) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p149b)