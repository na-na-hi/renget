> https://rentry.org/PPP2_p265a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.3 Header files
//  -and beginning on p 265

//------------------------------------------------------------------------------
// as filename: f.h

int f(int);

//------------------------------------------------------------------------------
// as filename: f.cpp

// #include "f.h"

int f(int n) { return n; }

//------------------------------------------------------------------------------
// as filename: main.cpp  (aka "user.cpp" in book)

// #include "f.h"

int g(int i) { return f(i); }

int main() { return g(0); }
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p265a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p263) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p265b)