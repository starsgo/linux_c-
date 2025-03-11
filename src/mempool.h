#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MEM_PAGE_SIZE 4096
#define NUM_MEMPOOLS 3

#define MEMPOOL_1_BLOCKSIZE 32
#define MEMPOOL_2_BLOCKSIZE 64
#define MEMPOOL_3_BLOCKSIZE 128

#define MEMPOOL_1_BLOCKNUM  8
#define MEMPOOL_2_BLOCKNUM  8
#define MEMPOOL_3_BLOCKNUM  8

typedef struct mempool_s{
    int block_size;
    int free_count;
    void* mem;
    void* ptr;
}mempool_t;

extern mempool_t* g_memp_mangaer[NUM_MEMPOOLS];

#ifdef __cplusplus
extern "C"{
    int memp_manager_init();
    void* mymalloc(size_t size);
    void myfree(void* ptr);
}
#else
    int memp_manager_init();
    void* mymalloc(size_t size);
    void myfree(void* ptr);
#endif
int memp_init(mempool_t* mp, size_t block_size, size_t block_num);
void* _malloc(mempool_t* mp, size_t size);
void _free(mempool_t* mp, void* ptr);

// #define malloc(size)    _malloc(size)
// #define free(size)      _free(size)

