#ifndef __SOCKET_H
#define __SOCKET_H

#define MAX_EPOLL 128
#define PORT 6004
#define MAX_LISTEN 50
#define BUFFER_SIZE 1024


typedef void (*function)(char*,int);
typedef struct socket_parm_s{
    int port;
    function func;
} socket_para_t;

typedef enum{
    SOCKET_SUCCESS = 0,
    SOCKET_ERROR = -1 ,
} SOCKET_STATUS;

#ifdef __cplusplus
extern "C"{
    SOCKET_STATUS start_socket(socket_para_t* para);
    SOCKET_STATUS end_socket();
//void* socket_thread(void* arg);
}
#else
    SOCKET_STATUS start_socket(socket_para_t* para);
    SOCKET_STATUS end_socket();  

#endif

#endif