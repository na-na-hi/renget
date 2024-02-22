> https://rentry.org/PPP2_p76
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.7 Names
// -beginning on p 76

#include <iostream>

using std::cout;

int main()
{
  // int if                                   = 7;  // error: if is a keyword
  // int string                               = 7;  // this will lead to trouble
  int mtbf                                 = 7;
  int TLA                                  = 7;
  int myw                                  = 7;
  int NBV                                  = 7;
  int partial_sum                          = 7;
  int element_count                        = 7;
  int stable_partition                     = 7;
  int the_number_of_elements               = 7;
  int remaining_free_slots_in_symbol_table = 7;

  cout << mtbf << '\n'           // output above variable values to console...
       << TLA << '\n'            //
       << myw << '\n'            //
       << NBV << '\n'            //
       << partial_sum << '\n'    //
       << element_count << '\n'  //
       << stable_partition << '\n'        //
       << the_number_of_elements << '\n'  //
       << remaining_free_slots_in_symbol_table << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p76.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p75b) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p77)