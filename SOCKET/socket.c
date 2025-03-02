#include "socket.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/epoll.h>
#include <fcntl.h>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>



void* socket_thread(void* arg){

    socket_para_t* para = (socket_para_t*)arg;
    function func = para->func;
    int port = para->port;

    int lfd,cfd,efd;
    int ret,epoll_ret;
    int fd_num = 1;

    char buffer[1024];

    struct sockaddr_in serv_addr,cli_addr;
    struct epoll_event ev,evs[MAX_EPOLL];
    //socklen_t len = sizeof(struct sockaddr_in);

    bzero(&serv_addr,sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(port);

    lfd = socket(AF_INET,SOCK_STREAM,0);
    if(lfd == -1) printf("error:socket()\n");
    
    ret = fcntl(lfd,F_SETFL,fcntl(lfd,F_GETFD,0)|O_NONBLOCK);
    if(ret == -1) printf("error:fcntl()\n");

    ret = bind(lfd, (struct sockadddr*)&serv_addr, sizeof(struct sockaddr));
    if(ret == -1) printf("error:bind()%d\n",errno);

    ret = listen(lfd, MAX_LISTEN);
    if(ret == -1) printf("error:listen()\n");

    efd = epoll_create(MAX_EPOLL);
    ev.events = EPOLLIN|EPOLLET;
    ev.data.fd = lfd;
    ret = epoll_ctl(efd,EPOLL_CTL_ADD,lfd,&ev);
    if(ret == -1) printf("error:epoll_ctl()\n");

    while(1){
        printf("epoll wair\n");
        epoll_ret = epoll_wait(efd,evs,fd_num,-1);
        if(epoll_ret == -1) printf("error:epoll_wait()\n");
        printf("epoll:%d\n",ret);

        int i;
        for(i = 0; i < epoll_ret; i++){
            if(evs[i].data.fd == lfd){
                printf("epoll lfd\n");

                socklen_t len = sizeof(cli_addr);
                cfd = accept(lfd,(struct sockadddr*)&cli_addr, &len);
                if(cfd == -1) printf("error:accept()\n");

                printf("Server connet with  client\n");
                //printf("Server connet with  client:%d",inet_ntoa(cli_addr.sin_addr));
                ev.events = EPOLLIN|EPOLLET;
                ev.data.fd = cfd;
                ret = epoll_ctl(efd,EPOLL_CTL_ADD,cfd,&ev);
                if(ret == -1) printf("error:epoll_ctl()\n");
                fd_num++;
                continue;
            }
            ret = read(evs[i].data.fd,buffer,sizeof(buffer));


            printf("epoll cfd recv: %d\n",ret);
            func(buffer,ret);
            
            
            if(ret <= 0 ){
                close(evs[i].data.fd);
                ev.data.fd = evs[i].data.fd;
                epoll_ctl(efd,EPOLL_CTL_DEL,evs[i].data.fd,&ev);
                fd_num--;
                continue;
            }
            //write(evs[i].data.fd,buffer,ret);
            //printf("epoll cfd send\n");
            printf("%s",buffer);
        }
        printf("3");
    }
    printf("4");

    close(lfd);
}

pthread_t tid;

SOCKET_STATUS start_socket(socket_para_t* socket_para){
    int status = pthread_create(&tid,NULL,socket_thread,socket_para);
    if(status == -1) printf("error:pthread_create()\n");
    printf("pthread created\n");
    return SOCKET_SUCCESS;
}
SOCKET_STATUS end_socket(){
    int status = pthread_join(tid,NULL);
    if(status == -1) printf("error:pthread_jion()\n");
    printf("pthread ended\n");
    return SOCKET_SUCCESS;
}