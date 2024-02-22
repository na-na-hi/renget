> https://rentry.org/PPP2_chrono_helper_cpp
```cpp
#include "chrono_helper.h"

using std::ios_base;

namespace Chrono {

//------------------------------------------------------------------------------
const Date& default_date()
{
  static Date dd{2001, Month::jan, 1};  // start of 21st century
  return dd;
}

//------------------------------------------------------------------------------
bool is_date(int y, Month m, int d)  // assume that y is valid
{
  if (d <= 0)
    return false;  // d must be positive

  if (m < Month::jan || Month::dec < m)
    return false;

  //---

  int days_in_month = 31;  // most months have 31 days

  switch (m) {
    case Month::jan:
    case Month::mar:
    case Month::may:
    case Month::jul:
    case Month::aug:
    case Month::oct:
    case Month::dec:
      // nop; variable already set above
      break;
    case Month::feb:  // the length of February varies
      days_in_month = (leapyear(y)) ? 29 : 28;
      break;
    case Month::apr:
    case Month::jun:
    case Month::sep:
    case Month::nov:
      days_in_month = 30;  // the rest have 30 days
      break;
  }

  if (days_in_month < d)
    return false;

  //---

  return true;
}

//------------------------------------------------------------------------------
// see Ch. 9, exercise 10
bool leapyear([[maybe_unused]] int y)
{  // bogus stub

  return false;
}

//------------------------------------------------------------------------------
bool operator==(const Date& a, const Date& b)
{
  return a.year() == b.year() && a.month() == b.month() && a.day() == b.day();
}

//------------------------------------------------------------------------------
bool operator!=(const Date& a, const Date& b) { return ! (a == b); }

//------------------------------------------------------------------------------
ostream& operator<<(ostream& os, const Date& d)
{
  return os << '{' << d.year() << ','  //
            << int(d.month()) << ','   //
            << d.day() << '}';
}

//------------------------------------------------------------------------------
ostream& operator<<(ostream& os, Date& d)
{
  return os << '{' << d.year() << ','  //
            << int(d.month()) << ','   //
            << d.day() << '}';
}

//------------------------------------------------------------------------------
istream& operator>>(istream& is, Date& dd)
{
  int  y, m, d;
  char ch1, ch2, ch3, ch4;

  is >> ch1 >> y >> ch2 >> m >> ch3 >> d >> ch4;

  if (! is)
    return is;

  if (ch1 != '{' || ch2 != ',' || ch3 != ',' ||
      ch4 != '}') {               // oops: format error
    is.clear(ios_base::failbit);  // set the fail bit

    return is;
  }

  dd = Date{y, Month{m}, d};  // update dd

  return is;
}

//------------------------------------------------------------------------------
ostream& operator<<(ostream& os, const Day& d) { return os << day_tbl[int(d)]; }

//------------------------------------------------------------------------------
Day day_of_week([[maybe_unused]] const Date& d)
{  // bogus stub

  return Day::sunday;
}

//------------------------------------------------------------------------------
Date next_Sunday(const Date& d)
{  // bogus stub

  Date res{d.year(), d.month(), (d.day() + 7)};
  return res;
}

//------------------------------------------------------------------------------
Date next_weekday([[maybe_unused]] const Date& d)
{  // bogus stub

  return d;
}

}  // namespace Chrono
```
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[main_chrono](https://rentry.org/PPP2_p334) • [Chrono.h](https://rentry.org/PPP2_Chrono_h) • [Chrono.cpp](https://rentry.org/PPP2_Chrono_cpp) • [chrono_helper.h](https://rentry.org/PPP2_chrono_helper_h)