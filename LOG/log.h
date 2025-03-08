#ifndef __LOG_H
#define __LOG_H


#ifdef __cplusplus
extern "C"{
    int log_init();
    void log_debug(char* info);
}
#else
    int log_init();
    void log_debug(char* info);
#endif
#endif