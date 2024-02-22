> https://rentry.org/PPP2_p118b
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

  philosophers[2] = 99;      // error: trying to assign an int to a string
  v[2]            = "Hume";  // error: trying to assign a string to an int
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p118b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p118b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p118c)