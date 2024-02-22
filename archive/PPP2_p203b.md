> https://rentry.org/PPP2_p203b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 6.6 Trying the first version
//  -and beginning on p 203

#include <iostream>
#include <stdexcept>
#include <string>

using namespace std;

void error(const char* s) { throw runtime_error(s); }

class Token {
 public:
  Token(char ch) : kind{ch} {}

  Token(char ch, double val) : kind{ch}, value{val} {}

  char   kind  = '0';
  double value = 0.0;
};

// read a token from cin
Token get_token()
{
  char ch;
  cin >> ch;  // note that >> skips whitespace (space, newline, tab, etc.)

  // clang-format off
  switch (ch) {
    case ';':
    case 'q':
    case '(': case ')': case '+': case '-': case '*': case '/':
      return Token{ch};
      break;
    case '.':
    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9': {
      cin.putback(ch);  // put digit back into the input stream
      double val;
      cin >> val;              // read a floating-point number
      return Token{'8', val};  // let '8' represent "a number"
      break;
    }
    default:
      error("Bad token");
      return Token{'K'};  // invalid, shouldn't reach here
  }
  // clang-format on
}

double expression();  // forward-declaration so primary() can call expression()

double primary()
{
  Token t = get_token();

  switch (t.kind) {
    case '(': {  // handle '(' expression ')'
      double d = expression();

      t = get_token();
      if (t.kind != ')')
        error("')' expected");

      return d;
      break;
    }
    case '8':          // we use '8' to represent a number
      return t.value;  // return the number's value
      break;
    default:
      error("primary expected");
      // shouldn't reach here
      return 0.0;
  }
}

double term()
{
  double left = primary();

  Token t = get_token();  // get the next token

  while (true) {
    switch (t.kind) {
      case '*': left *= primary(); break;
      case '/': {
        double d = primary();
        if (d == 0)
          error("divide by zero");

        left /= d;
        break;
      }
      default: return left;
    }

    t = get_token();
  }
}

double expression()
{
  double left = term();

  Token t = get_token();

  while (true) {
    switch (t.kind) {
      case '+': left += term(); break;
      case '-': left -= term(); break;
      default: return left;
    }

    t = get_token();
  }
}

int main()
try {
  while (cin)
    cout << expression() << '\n';

} catch (exception& e) {
  cerr << e.what() << '\n';
  return 1;

} catch (...) {
  cerr << "exception \n";
  return 2;
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_06/main_p203b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p203a) • [Up](https://rentry.org/PPP2_ch06) • [Next](https://rentry.org/PPP2_p206)