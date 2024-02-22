> https://rentry.org/PPP2_p122b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.6.3 A numeric example
//  -and beginning on p 122

#include <algorithm>
#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::vector;

template <typename C>
void sort(C& c)
{
  std::sort(begin(c), end(c));
}

// compute mean and median temperatures
int main()
{
  cout << "Please enter temperatures: ";
  vector<double> temps;            // temperatures
  for (double temp; cin >> temp;)  // read into temp
    temps.push_back(temp);         // put temp into vector

  // compute mean temperature:

  double sum = 0;
  for (double x : temps)
    sum += x;

  cout << "Average temperature: "
       << ((temps.size() > 0) ? (sum / temps.size()) : 0) << '\n';

  // compute median temperature:

  sort(temps);  // sort temperatures

  cout << "Median temperature: "
       << ((temps.size() > 0) ? (temps[temps.size() / 2]) : 0) << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p122b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p122a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p123)