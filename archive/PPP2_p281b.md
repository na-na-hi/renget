> https://rentry.org/PPP2_p281b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.5.6 Pass-by-value vs. pass-by-reference
//  -and beginning on p 281

#include <iostream>
#include <vector>

using namespace std;

void f([[maybe_unused]] int a, int& r, const int& cr)
{
  ++a;  // change the local a
  ++r;  // change the object referred to by r

  // ++cr;  // error: cr is const

  cout << cr << '\n';
}

void g([[maybe_unused]] int a, int& r, const int& cr)
{
  ++a;         // change the local a
  ++r;         // change the object referred to by r
  int x = cr;  // read the object referred to by cr

  cout << x << '\n';
}

int main()
{
  int x = 0;
  int y = 1;
  int z = 0;

  g(x, y, z);  // x==0; y==1; z==0

  // g(1, 2, 3);  // error: reference argument r needs a variable to refer to

  g(1, y, 3);  // ok: since cr is const we can pass a literal
  // means: int __compiler_generated = 3; g(1,y,__compiler_generated)
}

//---

int incr1(int a) { return a + 1; }  // return the new value as the result

void incr2(int& a) { ++a; }  // modify object passed as reference

void foo()
{
  int x = 7;
  x     = incr1(x);  // pretty obvious
  incr2(x);          // pretty obscure
}

//---

// make each element in v1 the larger of the corresponding elements in v1 and v2
// similarly, make each element of v2 the smaller
void larger(vector<int>& v1, vector<int>& v2)
{
  for (int i = 0; i < (int)v1.size(); ++i)
    if (v1[i] < v2[i])
      swap(v1[i], v2[i]);
}

void f()
{
  vector<int> vx;
  vector<int> vy;

  // read vx and vy from input

  larger(vx, vy);

  // ...
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p281b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p281a) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p284)