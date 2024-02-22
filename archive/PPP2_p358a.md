> https://rentry.org/PPP2_p358a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 10.7 Reading a single value
//  -and beginning on p 358

#include <iostream>

using namespace std;

int main()
{
  cout << "Please enter an integer in the range 1 to 10 (inclusive):\n";
  int n = 0;

  while (cin >> n) {        // read
    if (1 <= n && n <= 10)  // check range
      break;                // exit while() loop when a good value is obtained

    cout << "Sorry " << n << " is not in the [1:10] range; please try again\n";
  }

  // what could possibly go wrong here?
  // … use n here …
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_10/main_p358a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p357) • [Up](https://rentry.org/PPP2_ch10) • [Next](https://rentry.org/PPP2_p358b)