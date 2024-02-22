> https://rentry.org/PPP2_p279b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.5.5 Pass-by-reference
//  -and beginning on p 279

#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

int g(int& x);
int f(int& x);

void h(int x, int y)
{
  int  i = 7;
  int& r = i;   // r is a reference to i
  r      = 9;   // i becomes 9
  i      = 10;  // r becomes 10

  cout << r << ' ' << i << '\n';  // print: 10 10

  vector<vector<double>> v;  // vector of vector of double (a 2D container)

  double  val = v[f(x)][g(y)];  // val is the value of v[f(x)][g(y)]
  double& var = v[f(x)][g(y)];  // var is a reference to v[f(x)][g(y)]

  var = var / 2 + sqrt(var);

  cout << val << '\n';
}

// pass-by-reference (let the function refer back to the variable passed)
int f(int& x)
{
  x = x + 1;
  return x;
}

int main()
{
  int xx = 0;
  cout << f(xx) << endl;  // print: 1
  cout << xx << endl;     // print: 1;  f() changes the value of xx

  int yy = 7;
  cout << f(yy) << endl;  // print: 8
  cout << yy << endl;     // print: 8; f() changes the value of yy
}

int g(int& x)
{
  x = x + 1;
  return x;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p279b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p279a) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p281a)