> https://rentry.org/PPP2_p118a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.6 vector
//  -and beginning on p 118

#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::string;
using std::vector;

int main()
{
  // vector of 6 ints
  vector<int> v = {5, 7, 9, 4, 6, 8};

  // vector of 4 strings
  vector<string> philosophers = {"Kant", "Plato", "Hume", "Kierkegaard"};

  // output above variable values to console...

  for (int x : v)
    cout << x << '\n';

  //---
  cout << '\n';

  for (string philosopher : philosophers)
    cout << philosopher << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p118a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p117) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p118b)