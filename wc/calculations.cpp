#include <fstream>
#include <sys/stat.h>
#include <sstream>
#include <string>

#include "calculations.h"

long CalculateFileBytes(std::string file_name) {
    struct stat stat_buffer;
    // stores the return code of the stat function. returns 0 for success, -1 for failure.
    int rc = stat(file_name.c_str(), &stat_buffer);
    return (rc == 0 ? stat_buffer.st_size : -1);
}

int CalculateFileLines(std::string file_name) {
    std::ifstream file_reader(file_name);
    std::string curr_line;
    int line_count = 0;
    while (getline(file_reader, curr_line)) {
        line_count++;
    }
    return line_count;
}

int CalculateFileWords(std::string file_name) {
    std::ifstream file_reader(file_name);
    std::string curr_line;
    int word_count = 0;
    while (getline(file_reader, curr_line)) {
        std::stringstream ss(curr_line);
        std::string word;
        while (ss >> word) {
            word_count++;
        }
    }
    return word_count;
}

int CalculateFileCharacters(std::string file_name) {
    std::ifstream file_reader(file_name);
    std::string curr_line;
    int character_count = 0;
    while (getline(file_reader, curr_line)) {
        character_count += curr_line.size();
    }
    return character_count;
}
