#include <iostream>
#include <fstream>
#include <sys/stat.h>
#include <sstream>
#include <vector>
#include <string>

#include "calculations.h"
#include "flags.h"

int main(int argc, char *argv[])
{

    if (argc == 1)
    {
        std::cout
            << "Invalid number of arguments." << std::endl
            << "Usage: ./ccwc [-flag] filename" << std::endl
            << "Flags:" << std::endl
            << "-c\tprints the number of bytes in the file" << std::endl
            << "-l\tprints the number of lines in the file" << std::endl
            << "-w\tprints the number of words in the file" << std::endl
            << "-m\tprints the number of characters in the file" << std::endl;
        return 1;
    }

    if (argc == 2)
    {
        std::string file_name = argv[1];
        long bytes = CalculateFileBytes(file_name);
        int lines = CalculateFileLines(file_name);
        int words = CalculateFileWords(file_name);
        std::cout << bytes << " " << lines << " " << words << " " << file_name << std::endl;
        return 0;
    }

    else
    {
        std::string flag = argv[1];
        std::string file_name = argv[2];
        if (flag == "-c")
        {
            int status = GetFileBytes(file_name);
            return status;
        }
        else if (flag == "-l")
        {
            int status = GetFileLines(file_name);
            return status;
        }
        else if (flag == "-w")
        {
            int status = GetFileWords(file_name);
            return status;
        }
        else if (flag == "-m")
        {
            int status = GetFileCharacters(file_name);
            return status;
        }
        else
        {
            std::cout << "Invalid flag: " << flag << std::endl;
            return 0;
        }
    }
}
