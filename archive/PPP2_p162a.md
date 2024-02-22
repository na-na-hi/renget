> https://rentry.org/PPP2_p162a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.9.1 Practical debug advice
//  -and beginning on p 162

#include <iostream>
#include <vector>

using std::cout;
using std::vector;

int main()
{
  vector<double> v{1.1, 2.2, 3.3, 4.4, 5.5};

  // note: try un-commenting the code below (all at once) and fixing it:

  // int j = 5;

  // for (int i = 0; i <= max; ++j) {  // oops! (twice)
  //   for (int i = 0; 0 < max; ++i)   // print the elements of v
  //     ;
  //   cout << "v[" << i << "]==" << v[i] << '\n';
  //   // …
  // }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p162a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p161) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p162b)