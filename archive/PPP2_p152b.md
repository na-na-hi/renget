> https://rentry.org/PPP2_p152b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.3 Bad input
//  -and beginning on p 152

#include <iostream>
#include <stdexcept>
#include <string>

using std::cerr;
using std::exception;
using std::runtime_error;
using std::string;

void error(string s1, string s2) { throw runtime_error(s1 + s2); }

int main()
try {
  // . . . our program . . .

  return 0;  // 0 indicates success

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
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p152b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p152a) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p153a)