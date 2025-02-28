#include "kv.h"
#include <thread>
#include <string.h>
#include <iostream>
//#define debug

KV_STATUS init_kvstore(kvstore_t* kvstore){
	if(!kvstore) return KV_ERROR;
	kvstore->table = (kvpair_t*)malloc(sizeof(kvpair_t) * MAX_TABLE_LEN);
	kvstore->num_pairs = 0;
	kvstore->max_pairs = MAX_TABLE_LEN;
	return KV_SUCCESS;
}

KV_STATUS destroy_kvstore(kvstore_t* kvstore){
	if(!kvstore) return KV_ERROR;
	free(kvstore->table);
	return KV_SUCCESS;
}

KV_STATUS put_kvpair(kvstore_t* kvstore, const char* key, const char* value){
	if(!kvstore) return KV_ERROR;
	if(kvstore->num_pairs >= kvstore->max_pairs){
		return KV_ERROR;	
	}
	
	//pthread_mutex_lock(&kvstore->lock);
	(kvstore->lock).lock();
	int idx = kvstore->num_pairs ++;
	//pthread_mutex_unlock(&kvstore->lock);
	(kvstore->lock).unlock();

	strncpy(kvstore->table[idx].key,key,MAX_KEY_LEN);
	strncpy(kvstore->table[idx].value,value,MAX_VALUE_LEN);
	return KV_SUCCESS;
}

char* get_kvpair(kvstore_t* kvstore, const char* key){
	if(!kvstore) return NULL;
	int i = 0;
	for(i = 0; i < kvstore->num_pairs; i++){
		if(strcmp(kvstore->table[i].key, key) == 0){
			return kvstore->table[i].value;
		}
	}
	return NULL;
}

#ifdef debug


int main(){
	kvstore_t kvstore;
	KV_STATUS ret;
	char* res;

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
}
#endif
