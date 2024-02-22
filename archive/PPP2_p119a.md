> https://rentry.org/PPP2_p119a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.6 vector
//  -and beginning on p 118

#include <vector>

using std::vector;

int main()
{
  vector<int> vi(6);  // vector of 6 ints initialized to 0

  vi[20000] = 44;  // run-time error
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p119a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p118c) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p119b)