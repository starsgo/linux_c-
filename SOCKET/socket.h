#ifndef __SOCKET_H
#define __SOCKET_H

#define MAX_EPOLL 128
#define PORT 6005
#define MAX_LISTEN 50
#define BUFFER_SIZE 1024

typedef enum{
    SOCKET_SUCCESS = 0,
    SOCKET_ERROR = -1 ,
} SOCKET_STATUS;

SOCKET_STATUS start_socket();
SOCKET_STATUS end_socket();
//void* socket_thread(void* arg);



#endif