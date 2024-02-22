> https://rentry.org/PPP2_Chrono_h
```cpp
#pragma once

#include <string>
#include <vector>

namespace Chrono {

//------------------------------------------------------------------------------
enum class Month {
  jan = 1,
  feb,
  mar,
  apr,
  may,
  jun,
  jul,
  aug,
  sep,
  oct,
  nov,
  dec
};

//------------------------------------------------------------------------------
class Date {
 public:
  Date();  // default constructor

  Date(int y, Month m, int d);  // initialize & check for valid date

  class Invalid {};  // to throw as exception

  // note: the default copy operations are fine

  // nonmodifying operations:
  int   day() const { return d; }
  Month month() const { return m; }
  int   year() const { return y; }

  // modifying operations:
  void add_day(int n);
  void add_month(int n);
  void add_year(int n);

 private:
  int   y;
  Month m;
  int   d;
};

//------------------------------------------------------------------------------
enum class Day {
  sunday = 0,  // 0 intentionally, to match indexing into day_tbl
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday
};

//------------------------------------------------------------------------------
std::vector<std::string> const day_tbl{"Sunday",    "Monday",   "Tuesday",
                                       "Wednesday", "Thursday", "Friday",
                                       "Saturday"};

}  // namespace Chrono

// intentionally located down here to avoid include-cycle issues
// -ie, everything belonging to the Chrono.h scope is already declared by now
// -this atypical arrangement allows calling usage code to see the helper decls
#include "chrono_helper.h"
```
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[main_chrono](https://rentry.org/PPP2_p334) • [Chrono.cpp](https://rentry.org/PPP2_Chrono_cpp) • [chrono_helper.h](https://rentry.org/PPP2_chrono_helper_h) • [chrono_helper.cpp](https://rentry.org/PPP2_chrono_helper_cpp)