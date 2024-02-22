> https://rentry.org/PPP2_p279a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.5.5 Pass-by-reference
//  -and beginning on p 279

#include <iostream>
#include <vector>

using namespace std;

void init(vector<double>& v)  // pass-by-reference
{
  for (int i = 0; i < (int)v.size(); ++i)
    v[i] = i;
}

void g(int x)
{
  vector<double> vd1(10);         // small vector
  vector<double> vd2(1'000'000);  // large vector
  vector<double> vd3(x);          // vector of some unknown size

  init(vd1);
  init(vd2);
  init(vd3);
}

int main() { g(10); }
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p279a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p277) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p279b)