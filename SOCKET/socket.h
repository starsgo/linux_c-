#ifndef __SOCKET_H
#define __SOCKET_H

#define MAX_EPOLL 128
#define PORT 6004
#define MAX_LISTEN 50
#define BUFFER_SIZE 1024

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
typedef SOCKET sck_t;
#define SCK_INVALID INVALID_SOCKET
#ifdef __cplusplus
    extern "C"{
        void sck_init(void);
        void sck_cleanup(void);
        sck_t tcp_connect(const char *host, unsigned short port);
        int   sck_close(sck_t s);
    }
#endif
void sck_init(void);
void sck_cleanup(void);
sck_t tcp_connect(const char *host, unsigned short port);
int   sck_close(sck_t s);

#elif defined(__linux__)
    typedef void (*function)(char*,int,int);
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
#endif