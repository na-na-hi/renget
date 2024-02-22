> https://rentry.org/PPP2_chrono_helper_h
```cpp
#pragma once

#include <iostream>

#include "Chrono.h"

using std::istream;
using std::ostream;

namespace Chrono {

const Date& default_date();
bool        is_date(int y, Month m, int d);
bool        leapyear(int y);
bool        operator==(const Date& a, const Date& b);
bool        operator!=(const Date& a, const Date& b);
ostream&    operator<<(ostream& os, const Date& d);
ostream&    operator<<(ostream& os, Date& d);
istream&    operator>>(istream& is, Date& dd);
ostream&    operator<<(ostream& os, const Day& d);
Day         day_of_week(const Date& d);
Date        next_Sunday(const Date& d);
Date        next_weekday(const Date& d);

}  // namespace Chrono
```
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[main_chrono](https://rentry.org/PPP2_p334) • [Chrono.h](https://rentry.org/PPP2_Chrono_h) • [Chrono.cpp](https://rentry.org/PPP2_Chrono_cpp) • [chrono_helper.cpp](https://rentry.org/PPP2_chrono_helper_cpp)