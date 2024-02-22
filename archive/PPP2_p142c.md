> https://rentry.org/PPP2_p142c
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.5.1 The caller deals with errors
//  -and beginning on p 142

#include <iostream>
#include <stdexcept>

using std::cout;
using std::runtime_error;

// error() simply disguises throws
void error(const char* s) { throw runtime_error(s); }

// calculate area of a rectangle
int area(int length, int width) { return length * width; }

// calculate area within frame
int framed_area(int x, int y) { return area(x - 2, y - 2); }

int main()
{
  int y = 0;  // please test out some positive values here, too
  int z = 0;  //

  if (z <= 2)
    error("non-positive 2nd area() argument called by framed_area()");

  int area2 = framed_area(1, z);

  if (y <= 2 || z <= 2)
    error("non-positive area() argument called by framed_area()");

  int area3 = framed_area(y, z);

  cout << y << '\n'      //
       << z << '\n'      //
       << area2 << '\n'  //
       << area3 << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p142c.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p142b) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p143a)