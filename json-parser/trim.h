#include <string>

extern const char* ws;

// trim from end of string (right)
std::string& rtrim(std::string& s, const char* t = ws);

// trim from beginning of string (left)
std::string& ltrim(std::string& s, const char* t = ws);

// trim from both ends of string (right then left)
std::string& trim(std::string& s, const char* t = ws);
