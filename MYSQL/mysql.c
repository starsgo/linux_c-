#include "../tools/mysql/include/mysql.h"
#include "mysql.h"

int mysql_test(){
    MYSQL* conn;
    MYSQL_RES* res;
    MYSQL_ROW row;

    conn = mysql_init(NULL);
    if(conn == NULL){
        printf("error mysql_init()\n");
        exit(1);
    }

    #ifdef debug
    if(mysql_real_connect(conn,"127.0.0.1","gxx","456789","db1",3306,NULL,0) == NULL){
        printf("error mysql_real_connect()\n");
        exit(1);
    }
    #endif
    #ifdef release
    if(mysql_real_connect(conn,"127.0.0.1","kickpi","kickpi","db1",3306,NULL,0) == NULL){
        printf("error mysql_real_connect()\n");
        exit(1);
    }
    #endif

    printf("connect ok\n");
}