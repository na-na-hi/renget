> https://rentry.org/PPP2_p265b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 8.3 Header files
//  -and beginning on p 265

//------------------------------------------------------------------------------
// as filename: token.h

class Token {};

class Token_stream {
 public:
  Token putback(Token t);

 private:
  // bool  full;
  Token buffer;
};

//------------------------------------------------------------------------------
// as filename: token.cpp

// #include "token.h"  // <--- #include'd here (in definition file)

Token Token_stream::putback(Token t)
{
  buffer.push_back(t);  // error
  return t;
}

//------------------------------------------------------------------------------
// as filename: main.cpp

// #include "token.h"  // <--- also #include'd here (in usage file)

Token_stream ts;

int main()
{
  Token t = ts.gett();  // error: no member gett

  // . . .

  ts.putback();  // error: argument missing
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_08/main_p265b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p265a) • [Up](https://rentry.org/PPP2_ch08) • [Next](https://rentry.org/PPP2_p266)