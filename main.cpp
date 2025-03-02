#include <iostream>
#include "kv.h"

#include "socket.h"
#include "http.h"
#include "mysql.h"
	//#include "log.h"


int main(){
	kvstore_t kvstore;
	KV_STATUS ret;
	char* res;

	//log_init();
	mysql_test();

	ret = init_kvstore(&kvstore);
	std::cout << ret;

	ret = put_kvpair(&kvstore,"gxx","123456789");
	std::cout << ret;
	ret = put_kvpair(&kvstore,"gxc","223344556");
	std::cout << ret;

	res = get_kvpair(&kvstore,"gxx");
	std::cout << res;

	ret = destroy_kvstore(&kvstore);
	std::cout << ret;

	start_http();
	std::cout<<"1";

}