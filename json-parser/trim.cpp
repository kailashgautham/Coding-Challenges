/*
    Credit to Galik from Stack Overflow (https://stackoverflow.com/questions/216823/how-to-trim-a-stdstring)
*/
#include <string>

#include "trim.h"

const char* ws = " \t\n\r\f\v";

// trim from end of string (right)
std::string& rtrim(std::string& s, const char* t)
{
    s.erase(s.find_last_not_of(t) + 1);
    return s;
}

// trim from beginning of string (left)
std::string& ltrim(std::string& s, const char* t)
{
    s.erase(0, s.find_first_not_of(t));
    return s;
}

// trim from both ends of string (right then left)
std::string& trim(std::string& s, const char* t)
{
    return ltrim(rtrim(s, t), t);
}
