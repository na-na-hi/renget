> https://rentry.org/PPP2_p81
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.9.2 Unsafe conversions
// -beginning on p 81

#include <iostream>

using std::cin;
using std::cout;

int main()
{
  cout << "Please enter numbers\n";

  double d = 0;

  while (cin >> d) {  // repeat the statements below
                      // as long as we type in numbers

    int  i  = d;  // try to squeeze a double into an int
    char c  = i;  // try to squeeze an int into a char
    int  i2 = c;  // get the integer value of the character

    cout << "d== " << d              // the original double
         << " i== " << i             // converted to int
         << " i2== " << i2           // int value of char
         << " char(" << c << ")\n";  // the char
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p81.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p80) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p82)