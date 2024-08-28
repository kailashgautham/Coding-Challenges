#include <iostream>

#include "flags.h"
#include "calculations.h"

int GetFileBytes(std::string file_name)
{
    long file_size = CalculateFileBytes(file_name);
    if (file_size == -1)
    {
        std::cout << "Invalid file: " << file_name << std::endl;
        return 1;
    }
    std::cout << "  " << file_size << " " << file_name << std::endl;
    return 0;
}

int GetFileLines(std::string file_name)
{
    int line_count = CalculateFileLines(file_name);
    std::cout << "  " << line_count << " " << file_name << std::endl;
    return 0;
}

int GetFileWords(std::string file_name)
{
    int word_count = CalculateFileWords(file_name);
    std::cout << "  " << word_count << " " << file_name << std::endl;
    return 0;
}

int GetFileCharacters(std::string file_name)
{
    int character_count = CalculateFileCharacters(file_name);
    std::cout << "  " << character_count << " " << file_name << std::endl;
    return 0;
}
