> https://rentry.org/PPP2_p165b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.10.1 Post-conditions
//  -and beginning on p 165

#include <iostream>
#include <stdexcept>

using std::cerr;
using std::cout;
using std::exception;
using std::runtime_error;

void error(const char* s) { throw runtime_error(s); }

// class Bad_area {};  // a type specifically for reporting errors from area()

/*
// calculate area of a rectangle;
// throw a Bad_area exception in case of a bad argument
int area(int length, int width) {
  if (length <= 0 || width <= 0)
    throw Bad_area{};
  return length * width;
}
*/

// calculate area of a rectangle;
// pre-conditions: length and width are positive
// post-condition: returns a positive value that is the area
int area(int length, int width)
{
  if (length <= 0 || width <= 0)
    error("area() pre-condition");

  int a = length * width;
  if (a <= 0)
    error("area() post-condition");

  return a;
}

// calculate area within frame
int framed_area(int x, int y)
{
  constexpr int frame_width = 2;

  return area(x - frame_width, y - frame_width);
}

int main()
try {
  int x = -1;
  int y = 2;
  int z = 4;

  // . . .

  int    area1 = area(x, y);
  int    area2 = framed_area(1, z);
  int    area3 = framed_area(y, z);
  double ratio = area1 / area3;

  cout << area1 << '\n'  //
       << area2 << '\n'  //
       << area3 << '\n'  //
       << ratio << '\n';

} catch (exception& e) {
  cerr << "error: " << e.what() << '\n';
  // keep_window_open();
  return 1;

} catch (...) {
  cerr << "Oops: unknown exception!\n";
  // keep_window_open();
  return 2;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p165b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p165a) • [Up](https://rentry.org/PPP2_ch05)