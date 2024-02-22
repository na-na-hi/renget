> https://rentry.org/PPP2_p152a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.3 Bad input
//  -and beginning on p 152

#include <iostream>
#include <stdexcept>

using std::cerr;
using std::exception;
using std::runtime_error;

void error(const char* s) { throw runtime_error(s); }

int main()
try {
  // . . . our program . . .

  return 0;  // 0 indicates success

} catch (exception& e) {
  cerr << "error: " << e.what() << '\n';
  // keep_window_open();
  return 1;  // 1 indicates failure

} catch (...) {
  cerr << "Oops: unknown exception!\n";
  // keep_window_open();
  return 2;  // 2 indicates failure
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p152a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p151) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p152b)