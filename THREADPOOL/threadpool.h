#ifndef __THRREDPOOL_H
#define __THREADPOOL_H

#include <pthread.h>

extern struct thread_pool g_thread_pool;


#define LIST_ADD(item, list) do{        \
    item->prev = NULL;                  \
    item->next = list;                  \
    if(list != NULL) list->prev = item; \
    list = item;                        \
} while(0)

#define LIST_DEL(item, list) do{        \
    if(item->prev != NULL) item->prev->next = item->next;   \
    if(item->next != NULL) item->next->prev = item->prev;   \
    if(list == item) list = item->next;         \
    item->next = item->prev = NULL;;            \
} while(0)

struct worker_entry{
    struct worker_entry* next;
    struct worker_entry* prev;
    pthread_t id;
    int terminate;

    struct thread_pool* pool;
};

struct task_entry{
    // #ifdef 0
    // struct task_entry* next;
    // #endif
    struct task_entry* next;
    struct task_entry* prev;

    void (*task_callback)(void* arg);
    const void* user_data;
};

// #ifdef 0
// struct task_queue{
//     struct task_entry* head;
//     struct task_entry* tail;
// };
// #endif

struct thread_pool{
    struct worker_entry* worker_queue;
    struct task_entry* task_queue;

    pthread_cond_t cond;
    pthread_mutex_t mutex;
};


#ifdef __cplusplus
extern "C"{
    int thread_pool_setup(struct thread_pool* pool, int num);
    void task_pool_push_task(struct thread_pool* pool, struct task_entry* task);
}
#else
    int thread_pool_setup(struct thread_pool* pool, int num);
    void task_pool_push_task(struct thread_pool* pool, struct task_entry* task);
#endif

#endif