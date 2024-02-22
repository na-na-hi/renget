> https://rentry.org/PPP2_p45
```cpp
// Code derived from Stroustrup's PPP2 book
// § 2.2 The classic first program
// -beginning on p 45

#include <iostream>

using std::cout;

// This program outputs the message “Hello, World!” to the monitor

int main()  // C++ programs start by executing the function main
{
  cout << "Hello, World!\n";  // output “Hello, World!”
  return 0;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_02/main_p45.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Up](https://rentry.org/PPP2_ch02) • [Next](https://rentry.org/PPP2_p48a)