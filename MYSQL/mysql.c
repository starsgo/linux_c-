#include "../tools/mysql/include/mysql.h"

int mysql_test(){
    MYSQL* conn;
    MYSQL_RES* res;
    MYSQL_ROW row;

    conn = mysql_init(NULL);
    if(conn == NULL){
        printf("error mysql_init()\n");
        exit(1);
    }

    if(mysql_real_connect(conn,"127.0.0.1","gxx","456789","db1",3306,NULL,0) == NULL){
        printf("error mysql_real_connect()\n");
        exit(1);
    }

    printf("connect ok\n");
}