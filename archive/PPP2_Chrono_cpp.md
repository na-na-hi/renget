> https://rentry.org/PPP2_Chrono_cpp
```cpp
#include "Chrono.h"

namespace Chrono {

//------------------------------------------------------------------------------
Date::Date()
    : y{default_date().year()},
      m{default_date().month()},
      d{default_date().day()}
{
}

//------------------------------------------------------------------------------
Date::Date(int yy, Month mm, int dd) : y{yy}, m{mm}, d{dd}
{
  if (! is_date(yy, mm, dd))
    throw Invalid{};
}

//------------------------------------------------------------------------------
void Date::add_day([[maybe_unused]] int n)
{  // bogus stub
}

//------------------------------------------------------------------------------
void Date::add_month([[maybe_unused]] int n)
{  // bogus stub
}

//------------------------------------------------------------------------------
void Date::add_year(int n)
{
  // beware of leap years!
  if (m == Month::feb && d == 29 && ! leapyear(y + n)) {
    m = Month::mar;  // use March 1 instead of February 29
    d = 1;
  }

  y += n;
}

}  // namespace Chrono
```
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[main_chrono](https://rentry.org/PPP2_p334) • [Chrono.h](https://rentry.org/PPP2_Chrono_h) • [chrono_helper.h](https://rentry.org/PPP2_chrono_helper_h) • [chrono_helper.cpp](https://rentry.org/PPP2_chrono_helper_cpp)