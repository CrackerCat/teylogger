#include <ctime>
#include <cstdio>
#include <cstring>
#include <cerrno>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <string.h>
#include <windows.h>
#define LOGO "  _____            _                            \n |_   _|___  _  _ | | ___  __ _  __ _  ___  _ _ \n   | | / -_)| || || |/ _ \\/ _` |/ _` |/ -_)| '_|\n   |_| \\___| \\_, ||_|\\___/\\__, |\\__, |\\___||_|  \n             |__/         |___/ |___/   "
#define AUTHOR "@uynilo9"
#define RESET "\033[0m"
#define YELLOW "\033[33m"
#define BLUE "\033[34m"
#define BRED "\033[41m"
#define BYELLOW "\033[43m"
#define BGREEN "\033[42m"
std::string now() {
    std::time_t raw;
    std::tm* time;
    char* buffer = new char[80];
    std::time(&raw);
    time = std::localtime(&raw);
    std::strftime(buffer, 80, "%Y-%m-%d-%H-%M-%S", time);
    return std::string(buffer);
};
void teylogger() {
    std::cout << BLUE << LOGO << RESET << YELLOW << AUTHOR << RESET << "\n" << std::endl;
};
void success(std::string message) {
    std::cout << BGREEN << " SUCCESS " << RESET << " " << message << std::endl;
};
void error(std::string message) {
    std::cout << BRED << " ERROR " << RESET << " " << message << std::endl;
};
int main(int argc, char* argv[]) {
    if(argc == 1) teylogger();
    if(argc == 2) {
        if(strcmp(argv[1], "start") == 0) {
            system("taskkill /F /T /IM teylogger.exe >nul 2>nul");
            if(system("start cmd /k C:\\Teylogger\\application\\teylogger.exe > nul:")  != 0) {
                teylogger(), error("Something went wrong"), printf("\n");
                return 1;
            } else {
                std::fstream file;
                file.open("C:\\Teylogger\\logs\\temp.txt", std::ios::out | std::ios::trunc);
                file << "[THIS LOG WAS STARTING LISTENING AT " << now() << "]\n";
                file.close();
                teylogger(), success("Execute application successfully"), printf("\n");
                return 0;
            };
        } else if(strcmp(argv[1], "stop") == 0) {
            if(system("taskkill /F /T /IM teylogger.exe >nul 2>nul") != 0) {
                teylogger(), error("Someting went wrong"), printf("\n");
                return 1;
            };
            std::string target_ = "C:\\Teylogger\\logs\\" + now() + ".txt";
            std::ifstream  temp("C:\\Teylogger\\logs\\temp.txt", std::ios::binary);
            std::ofstream  target(target_,   std::ios::binary);
            target << temp.rdbuf();
            teylogger(), success("Application has ended"), printf("\n");
            return 0;
        } else if(strcmp(argv[1], "version") == 0) {
            teylogger(), printf("1.0.0\n\n");
        } else teylogger(), error("Unknown command"), printf("\n");
    };
    if(argc > 2) teylogger(), error("Unknown command"), printf("\n");
    return 0;
};