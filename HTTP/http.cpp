#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
#include <unordered_map>
#include <netinet/in.h>
#include <unistd.h>
#include <sys/stat.h>
#include "socket.h"
#include "log.h"

#define PORT 8081
#define BUFFER_SIZE 4096

std::string getContentType(const std::string &path){
    // if(path.ends_with(".html")) return "text/html";
    // if(path.ends_with(".css")) return "text/css";
    // if(path.ends_with(".js")) return "application/javascript";
    // if(path.ends_with(".jpg")) return "image/jpg";
    // if(path.ends_with(".jpeg")) return "image/jpeg";
    // if(path.ends_with(".png")) return "image/png";
    // if(path.ends_with(".gif")) return "image/gif";
    // return "text/plain;

    return "text/html";
}

std::string readFile(const std::string &path){
    std::ifstream file(path, std::ios::binary);

    if(!file.is_open()) return "notFound";

    std::ostringstream ss;
    ss << file.rdbuf();

    return ss.str();
}

bool fileExists(const std::string &path){
    return true;
}

void http_requeset(char* buffer, int size, int socket_fd){
    std::string Buffer = buffer;
    std::cout<<"http request\n"<<Buffer << '\n';

    std::istringstream request(Buffer);
    std::string method, path, version;
    request >> method >> path >> version;

    if(path ==  "/") path = "/index.html";

    std::string filePath = "." + path;

    if(method == "GET"){
        // if(fileExists(filePath)){

        std::string content = readFile(filePath);
        if(content.compare("notFound") == 0){
        // if(content.c_str() == "notFound"){
            std::string notFound = "HTTP/1.1 404 Not Found\r\n\r\n404 Not Found";
            send(socket_fd, notFound.c_str(), notFound.length(),0);
            return;
        }
        std::string contentType = getContentType(filePath);

        std::ostringstream response;
        response << "HTTP/1.1 200 OK\r\n";
        response << "Content-Type: " << contentType <<"\r\n";
        response << "Content-Length: "<< content.length() << "\r\n";
        response << "\r\n";
        response << content;

        send(socket_fd, response.str().c_str(), response.str().length(),0);
        // }else{
        // }
    }else if(method == "POST"){
        std::string response = "";
        send(socket_fd, response.c_str(), response.length(), 0);
    }
}

void start_http(){
    socket_para_t para;
    para.func = http_requeset;
    para.port = 8087;

    start_socket(&para);
    log_debug("start_http\n");
	//end_socket();
    while(1){
        
    }
}