> https://rentry.org/PPP2_p107b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4.1.3 Switch technicalities
//  -and beginning on p 107

#include <iostream>

using std::cin;
using std::cout;

// you can label a statement using several case labels
int main()
{
  cout << "Please enter a digit\n";
  char a;
  cin >> a;

  switch (a) {
    case '0':
    case '2':
    case '4':
    case '6':
    case '8': cout << "is even\n"; break;
    case '1':
    case '3':
    case '5':
    case '7':
    case '9': cout << "is odd\n"; break;
    default: cout << "is not a digit\n"; break;
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p107b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p107a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p108)