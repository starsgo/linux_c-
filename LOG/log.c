#include "log.h"
#include "stdio.h"
#include "time.h"

FILE* fp;

int log_init(){
    fp = fopen("./log.txt","a");
    if(fp == NULL) return -1;
    return 0;
    fclose(fp);
}

void log_debug(char* info){
    char debug;
    time_t timep;
    time(&timep);
    fp = fopen("./log.txt","a");
    fputs(asctime(gmtime(&timep)),fp);
    fputs(" debug: ",fp);
    fputs(info,fp);
    fputs("\r\n",fp);
    fclose(fp);
}