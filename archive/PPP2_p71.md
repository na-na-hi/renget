> https://rentry.org/PPP2_p71
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.5.1 An example: detect repeated words
// -beginning on p 71

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

int main()
{
  cout << "Please enter words (use ctrl+d to end input)\n";
  string previous = " ";  // previous word; initialized to “not a word”
  string current;         // current word

  while (cin >> current) {    // read a stream of words
    if (previous == current)  // check if the word is the same as last
      cout << "repeated word: " << current << '\n';

    previous = current;
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p71.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p70b) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p73a)