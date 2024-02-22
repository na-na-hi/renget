> https://rentry.org/PPP2_p66
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.4 Operations and operators
// -beginning on p 66

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

int main()
{
  cout << "Please enter your count and name\n";
  int count;
  cin >> count;                // >> reads an integer into count
  string name;                 //
  cin >> name;                 // >> reads a string into name
  int    c2 = count + 2;       // + adds integers
  string s2 = name + " Jr. ";  // + appends characters
  int    c3 = count - 2;       // - subtracts integers
  // string s3 = name - " Jr. ";  // error: - isn’t defined for strings
  int age = -100;

  cout << count << '\n'  // output above variable values to console...
       << name << '\n'   //
       << c2 << '\n'     //
       << s2 << '\n'     //
       << c3 << '\n'     //
       << age << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p66.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p65) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p67)