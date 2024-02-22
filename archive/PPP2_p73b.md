> https://rentry.org/PPP2_p73b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.6.1 An example: find repeated words
// -beginning on p 73

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

int main()
{
  cout << "Please enter words (ctrl+d to end input)\n";
  int    number_of_words = 0;
  string previous        = " ";  // not a word
  string current;

  while (cin >> current) {
    ++number_of_words;  // increase word count

    if (previous == current)
      cout << "word number " << number_of_words << " repeated: " << current
           << '\n';

    previous = current;
  }
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p73b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p73a) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p75a)