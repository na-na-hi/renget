> https://rentry.org/PPP2_p119b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.6.1 Traversing a vector
//  -and beginning on p 119

#include <iostream>
#include <vector>

using std::cout;
using std::vector;

int main()
{
  vector<int> v = {5, 7, 9, 4, 6, 8};

  for (unsigned int i = 0; i < v.size(); ++i)
    cout << v[i] << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p119b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p119a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p119c)