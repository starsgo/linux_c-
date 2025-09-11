#include "mempool.h"

#ifdef __linux__
mempool_t g_memp;
mempool_t* g_memp_mangaer[NUM_MEMPOOLS];

static int g_block_size[NUM_MEMPOOLS] = {MEMPOOL_1_BLOCKSIZE, MEMPOOL_2_BLOCKSIZE, MEMPOOL_3_BLOCKSIZE};
static int g_block_num[NUM_MEMPOOLS] = {MEMPOOL_1_BLOCKNUM, MEMPOOL_2_BLOCKNUM, MEMPOOL_3_BLOCKNUM};

int memp_init(mempool_t* mp, size_t block_size, size_t block_num){

    if(mp == NULL) return -1;
    memset(mp,0,sizeof(mempool_t));

    mp->block_size = block_size;
    mp->free_count = block_num;
    mp->mem = malloc(block_num * block_size);
    if(!mp->mem) return -1;

    mp->ptr = mp->mem;

    int i = 0;
    char* ptr = mp->ptr;
    for(i = 0; i < mp->free_count; i++){
        *(char**)ptr = ptr + block_size;
        ptr += block_size;
    }
    *(char**)ptr = NULL;
}

void* _malloc(mempool_t* mp, size_t size){
    if(mp == NULL) return NULL;
    if(mp->free_count == 0) return NULL;
    if(mp->block_size < size + sizeof(void*)) return NULL;
    void* ptr = mp->ptr;
    mp->ptr = *(char**)ptr;
    mp->free_count -- ;

    // printf("malloc a block\n");
    *(char**)ptr = (void*) mp;
    
    return ptr + sizeof(void*);
}

void _free(mempool_t* mp, void* ptr){
    if(mp == NULL) return;

    *(char**)ptr = mp->ptr;
    mp-> ptr = ptr;

    mp->free_count ++;

    // printf("free a block\n");
}

int memp_manager_init(){
    int i;
    for(i=0; i<NUM_MEMPOOLS; i++){
        g_memp_mangaer[i] = (mempool_t*)malloc(sizeof(mempool_t));
        memp_init(g_memp_mangaer[i], g_block_size[i], g_block_num[i]);
    }
}

void* mymalloc(size_t size){
    int i;
    for(i=0;i<NUM_MEMPOOLS;i++){
        if(size <= g_block_size[i] - sizeof(void*)){
            return _malloc(g_memp_mangaer[i], size);
        }
    }
    printf("size too large\n");
    return NULL;
}

void myfree(void* ptr){
    void* mem_ptr = *((char**)(ptr - sizeof(void*)));
    // printf("debug %p",mem_ptr);
    return _free(mem_ptr,ptr - sizeof(void*));
}

#endif
/*
typedef struct data_s{
    int a;
    int b;
    int c;
}data_t;


int main(){
    memp_manager_init();
    memp_init(&g_memp, 32,16);
    printf("mp->ptr-->%p\n",g_memp.ptr);

    data_t* p1 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p1-->%p\n",p1);
    p1->a = 1;
    p1->b = 2;
    p1->c = 3;

    data_t* p2 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p3-->%p\n",p2);

    data_t* p3 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p3-->%p\n",p3);

    data_t* p4 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p4-->%p\n",p4);


    _free(&g_memp, p1);
    printf("mp->ptr-->%p\n",g_memp.ptr);

    _free(&g_memp, p3);
    printf("mp->ptr-->%p\n",g_memp.ptr);

    data_t* p5 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p5-->%p\n",p5);

    data_t* p6 = (data_t*)_malloc(&g_memp, sizeof(data_t));
    printf("p6-->%p\n",p6);



    printf("1. mp_manager_64->ptr-->%p\n",g_memp_mangaer[1]->ptr);
    printf("1. mp_manager_128->ptr-->%p\n",g_memp_mangaer[2]->ptr);
    data_t* p7 = (data_t*)mymalloc(56);
    p7->a = p7->b = p7->c = 34;
    printf("2. pool2 malloc-->%p\n",p7);
    void* p8 = mymalloc(56);
    printf("3. pool2_malloc-->%p\n",p8);
    p8 = mymalloc(57);
    printf("4. pool3_malloc-->%p\n",p8);
    myfree(p7);
    printf("5. pool2_free->ptr-->%p\n",g_memp_mangaer[1]->ptr);
    myfree(p8);
    printf("6. pool3_free->ptr-->%p\n",g_memp_mangaer[2]->ptr);
    p8 = mymalloc(56);
    printf("7. pool2_malloc-->%p\n",p8);
    p8 = mymalloc(120);
    printf("8. pool3_malloc-->%p\n",p8);
}
*/