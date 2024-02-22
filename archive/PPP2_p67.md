> https://rentry.org/PPP2_p67
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.4 Operations and operators
// -beginning on p 67

#include <cmath>
#include <iostream>

using std::cin;
using std::cout;
using std::sqrt;

// simple program to exercise operators
int main()
{
  cout << "Please enter a floating-point value: ";
  double n;
  cin >> n;

  cout << "n == " << n                         //
       << "\nn + 1 == " << n + 1               //
       << "\nthree times n == " << 3 * n       //
       << "\ntwice n == " << n + n             //
       << "\nn squared == " << n * n           //
       << "\nhalf of n == " << n / 2           //
       << "\nsquare root of n == " << sqrt(n)  //
       << '\n';  // another name for newline (“end of line”) in output
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p67.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p66) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p68a)