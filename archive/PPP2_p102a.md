> https://rentry.org/PPP2_p102a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.1.1 if-statements
// -beginning on p 102

#include <iostream>

using std::cin;
using std::cout;

int main()
{
  int a = 0;
  int b = 0;

  cout << "Please enter two integers\n";
  cin >> a >> b;

  if (a < b)  // condition
    // 1st alternative (taken if condition is true):
    cout << "max(" << a << "," << b << ") is " << b << "\n";
  else
    // 2nd alternative (taken if condition is false):
    cout << "max(" << a << "," << b << ") is " << a << "\n";
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p102a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p101b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p102b)