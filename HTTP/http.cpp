#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
#include <unordered_map>
#include <netinet/in.h>
#include <unistd.h>
#include <sys/stat.h>
#include <socket.h>

#define PORT 8081
#define BUFFER_SIZE 4096

std::string getContextType(const std::string &path){

}

std::string readFile(const std::string &path){

}

bool fileExists(const std::string &path){

}

void http_requeset(char* buffer, int size){
    std::cout<<"http request\n"<<size<<"------------\n";
}

void start_http(){
    socket_para_t para;
    para.func = http_requeset;
    para.port = 8087;

    start_socket(&para);
	end_socket();
}