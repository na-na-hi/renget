> https://rentry.org/PPP2_p296b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.7.1 using declarations and using directives
//  -and beginning on p 296

// This is the 1st preferred form by most professionals

#include <iostream>  // get the iostream library
#include <string>    // get the string library

using std::cin;     // cin means std::cin
using std::cout;    // cout means std::cout
using std::string;  // string means std::string

int main()
{
  string name;
  cout << "Please enter your first name\n";
  cin >> name;
  cout << "Hello, " << name << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p296b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p296a) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p296c)