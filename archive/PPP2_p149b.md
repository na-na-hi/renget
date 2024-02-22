> https://rentry.org/PPP2_p149b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.6.2 Range errors
//  -and beginning on p 149

#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

using std::cerr;
using std::cin;
using std::cout;
using std::out_of_range;
using std::to_string;
using std::vector;

int main()
try {
  cout << "Please enter integers: (press '|' to stop):\n";
  vector<int> v;  // a vector of ints
  for (int x; cin >> x;)
    v.push_back(x);  // set values

  // print values
  for (unsigned int i = 0; i <= v.size(); ++i) {
    // exposition only:
    // if (v.size() <= i)  // check the index i against the vector size
    //   throw out_of_range{to_string(i)};

    cout << "v[" << i << "] == " << v[i] << '\n';
  }

} catch (out_of_range&) {
  cerr << "Oops! Range error\n";
  return 1;

} catch (...) {  // catch all other exceptions
  cerr << "Exception: something went wrong\n";
  return 2;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p149b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p149a) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p150)