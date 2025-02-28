#include <thread>
#include <mutex>

#define MAX_KEY_LEN 128
#define MAX_VALUE_LEN 512
#define MAX_TABLE_LEN 1024

typedef enum{
	KV_SUCCESS = 0,
	KV_ERROR = -1
} KV_STATUS;

typedef struct kvpair_s{
	char key[MAX_KEY_LEN];
	char value[MAX_VALUE_LEN];
} kvpair_t;

typedef struct kvstore_s{
	kvpair_t* table;
	int num_pairs;
	int max_pairs;
	std::mutex lock;
} kvstore_t;


KV_STATUS init_kvstore(kvstore_t* kvstore);
KV_STATUS destroy_kvstore(kvstore_t* kvstore);
KV_STATUS put_kvpair(kvstore_t* kvstore, const char* key, const char* value);
char* get_kvpair(kvstore_t* kvstore, const char* key);
typedef struct kvsops_s{
	KV_STATUS (*init)(kvstore_t* kvstore);
	KV_STATUS (*destroy)(kvstore_t* kvstore);
	KV_STATUS (*put)();
	char* (*get)();
} kvsops_t;
