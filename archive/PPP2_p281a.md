> https://rentry.org/PPP2_p281a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.5.5 Pass-by-reference
//  -and beginning on p 281

#include <iostream>

using namespace std;

void swap(double& d1, double& d2)
{
  double temp = d1;    // copy d1's value to temp
  d1          = d2;    // copy d2's value to d2
  d2          = temp;  // copy d1's old value to d2
}

int main()
{
  double x = 1;
  double y = 2;

  cout << "x == " << x << ",  y == " << y << '\n';  // print: x == 1,  y == 2
  swap(x, y);
  cout << "x == " << x << ",  y == " << y << '\n';  // print: x == 2,  y == 1
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p281a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p279b) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p281b)