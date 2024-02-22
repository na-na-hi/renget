> https://rentry.org/PPP2_p122a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.6.3 A numeric example
//  -and beginning on p 122

#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::vector;

int main()
{
  cout << "Please enter temperatures: ";
  vector<double> temps;  // temperatures
  double         temp;

  while (cin >> temp)       // read
    temps.push_back(temp);  // put into vector

  // … temp might be used here …
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p122a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p121) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p122b)