> https://rentry.org/PPP2_p68b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.4 Operations and operators
// -beginning on p 68

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

// read and compare names
int main()
{
  cout << "Please enter two names\n";
  string first;
  string second;
  cin >> first >> second;  // read two strings

  if (first == second)
    cout << "that's the same name twice\n";

  if (first < second)
    cout << first << " is alphabetically before " << second << '\n';

  if (first > second)
    cout << first << " is alphabetically after " << second << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p68b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p68a) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p69)