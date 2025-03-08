#include "CLog.h"
#include <ctime>
#include <iostream>
#include <sstream>
#include <fstream>
#include <string.h>

//global 
static CLog g_CLog_debug(DEBUG);
static CLog g_CLog_store(STORE);


//class variable
time_t CLog::now;
tm* CLog::tm_t;
std::ofstream CLog::outputStream;

//class function
CLog& CLog::CDebug(){
    CPrintTime();
    return g_CLog_debug;
}
CLog& CLog::CStore(){
    now = time(NULL);
    tm_t = localtime(&now);
    std::stringstream ss;
    ss <<tm_t->tm_mon+1 << "_" << tm_t->tm_mday << "-"<< tm_t->tm_hour << "."<< tm_t->tm_min << "." <<tm_t->tm_sec<< " ";
    std::string filePath = "./" + ss.str() + ".txt";

    outputStream = std::ofstream(filePath,std::ios::app);
    if(outputStream.is_open()){

    }else{
        CDebug() << "error store\n";
    }
    return g_CLog_store;
}
void CLog::CPrintTime(){
    now = time(NULL);
    tm_t = localtime(&now);

    std::stringstream ss;
    std::cout << "---debug----";
    ss << tm_t->tm_year + 1900 << "." << tm_t->tm_mon + 1 << "."<< tm_t->tm_mday << "."<< tm_t->tm_hour << "."<< tm_t->tm_sec<< " ";
    std::cout << ss.str();
}

//constructor
CLog::CLog(enum MODE mode){
   this->mode = mode;
}

//print str
CLog& CLog::CPrint(char* str){
    if (mode == STORE){
        if (strcmp(str, "endl") == 0){
            outputStream.close();
            CDebug() << "file close\n";
        }
        else{
            outputStream << str;
        }
    }
    if(mode == DEBUG){
        std::cout << str;    
    }
if(mode == DEBUG){return g_CLog_debug;};
if(mode == STORE){return g_CLog_store;};
}
CLog& CLog::operator<<(char* str){
    return CPrint(str);
}

//print num
CLog& CLog::CPrint(int num){
    if (mode == STORE){
        outputStream << num;
    }if (mode == DEBUG){
        std::cout << num;
    }
if(mode == DEBUG){return g_CLog_debug;};
if(mode == STORE){return g_CLog_store;};
    
}
CLog& CLog::operator<<(int num){
    return CPrint(num);
}

//store
