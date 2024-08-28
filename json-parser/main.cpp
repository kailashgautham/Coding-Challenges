#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

#include "trim.h"

void invalid_json_output() {
    std::cout << "Invalid JSON." << std::endl;
}

void valid_json_output() {
    std::cout << "Valid JSON." << std::endl;
}

bool is_valid_number(std::string input) {
    std::stringstream ss;
    ss << input;
    float number = 0;
    ss >> number;
    if (ss.good() || (number == 0 && input[0] != '0')) {
        return false;
    }
    return true;
}

int main(int argc, char* argv[]) {

    if (argc == 1) {
        std::cout
        << "Invalid number of arguments." << std::endl
        << "Usage: ./json-parser filename.json" << std::endl;
        return 1;
    }

    std::string file_name = argv[1];
    std::ifstream file_reader(file_name);
    std::string curr_line;

    std::vector<std::string> key_value_pairs;

    bool is_first_line = true;

    while (getline(file_reader, curr_line)) {
        std::stringstream ss(trim(curr_line), ',');
        std::string curr_pair;
        while (std::getline(ss, curr_pair, ',')) {
            key_value_pairs.push_back(curr_pair);
        }
    }

    if (key_value_pairs.size() == 0 || key_value_pairs[0].size() == 0 || key_value_pairs[0][0] != '{') {
        invalid_json_output();
        return 1;
    }
    if (key_value_pairs.back().size() == 0 || key_value_pairs.back().back() != '}') {
        invalid_json_output();
        return 1;
    }

    if (key_value_pairs[0].size() == 1) {
        key_value_pairs.erase(key_value_pairs.begin());
    } 
    else {
        key_value_pairs[0].erase(key_value_pairs[0].begin());
    }

    if (key_value_pairs.back().size() == 1) {
        key_value_pairs.pop_back();
    }
    else {
        key_value_pairs.back().pop_back();
    }

    if (key_value_pairs.size() > 0 && key_value_pairs[0].size() == 0) {
        key_value_pairs.erase(key_value_pairs.begin());
    }

    for (std::string i : key_value_pairs) {
        if (i.size() == 0) {
            invalid_json_output();
            return 1;
        }
        std::stringstream ss(i);
        std::string key;
        getline(ss, key, ':');
        trim(key);
        if (key[0] != '\"' || key.back() != '\"') {
            invalid_json_output();
            return 1;
        }

        std::string value;
        getline(ss, value);
        trim(value);
        if (value[0] == '\"' && value.back() == '\"') {
            continue;
        }
        if (value[0] == '\"' || value.back() == '\"') {
            invalid_json_output();
            return 1;
        }
        if (value != "true" && value != "false" && value != "null" && !is_valid_number(value)) {
            invalid_json_output();
            return 1;
        }
    }
    valid_json_output();
    return 0;

}
