#include <iostream>
#include <sys/stat.h>
#include <sstream>
#include <vector>
#include <string>

long GetFileSize(std::string file_name);

long GetFileBytes(std::string file_name) {
    
}

int main() {
    std::cout << ">";
    std::string command;
    getline(std::cin, command);
    std::stringstream ss(command);
    std::vector<std::string> command_terms;
    while (ss.good()) {
        std::string current_term;
        ss >> current_term;
        command_terms.push_back(current_term);
    }
    if (command_terms.size() == 0 || command_terms[0] != "ccwc") {
        std::cout << "Unknown command: " << command_terms[0] << std::endl;
        return 1;
    }
    if (command_terms.size() == 1 || command_terms[1] != "-c") {
        std::cout << "Unknown flag: " << command_terms[1] << std::endl;
        return 1;
    }
    if (command_terms.size() == 2) {
        std::cout << "Missing parameter: file_name" << std::endl;
    }
    std::string file_name = command_terms[2];
    long file_size = GetFileSize(file_name);
    if (file_size == -1) {
        std::cout << "Invalid file: " << file_name << std::endl;
        return 1;
    }
    std::cout << "  " << file_size << " " << file_name << std::endl;
    return 0;
}

long GetFileSize(std::string file_name) {
    struct stat stat_buffer;
    int rc = stat(file_name.c_str(), &stat_buffer); // stores the return code of the stat function. returns 0 for success, -1 for failure.
    return (rc == 0 ? stat_buffer.st_size : -1);
}
