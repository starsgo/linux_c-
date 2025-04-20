#ifndef __CLOG_H
#define __CLOG_H
#include <iostream>
#include <ctime>
#include <fstream>

#define CLOG_DEBUG  1
#define CLOG_STORE  1

enum MODE{
    DEBUG = 0,
    STORE = 1
};

class CLog{

public:

private:
    static time_t now;
    static tm* tm_t;
    static std::ofstream outputStream;
    enum MODE mode;
public:
    CLog(enum MODE mode);

public:
    static CLog& CStore();
    static CLog& CDebug();
    CLog& operator<<(char* str);
    CLog& operator<<(int num);

private:
    CLog& CPrint(char* str);
    CLog& CPrint(int num);
    static void CPrintTime();
    
};



#endif