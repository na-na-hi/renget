> https://rentry.org/PPP2_p153b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.3 Bad input
//  -and beginning on p 153

#include <iostream>
#include <stdexcept>
#include <string>

using std::cerr;
using std::cout;
using std::exception;
using std::runtime_error;
using std::string;
using std::to_string;

void error(string s) { throw runtime_error(s); }

// run-time checked narrowing cast (type conversion).
template <class R, class A>
R narrow_cast(A const& a)
{
  R r = R(a);
  if (A(r) != a)
    error("info loss  " + to_string(a) + " -> " + to_string(r));

  return r;
}

int main()
try {
  int  x1 = narrow_cast<int>(2.9);    // throws
  int  x2 = narrow_cast<int>(2.0);    // OK
  char c1 = narrow_cast<char>(1066);  // throws
  char c2 = narrow_cast<char>(85);    // OK

  cout << x1 << '\n'  //
       << x2 << '\n'  //
       << c1 << '\n'  //
       << c2 << '\n';

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
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p153b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p153a) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p154)