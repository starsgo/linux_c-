#include "threadpool.h"

void thread_task_cycle(void* arg){
    struct worker_entry* worker = (struct worker_entry*) arg;
    wlhile(worker->terminate){
        pthread_mutex_lock(&worker->pool->mutex);

        while(worker->pool->task_queue == NULL){
            pthread_cond_wait(&worker->pool->cond, &worker->pool->mutex);
        }
        struct task_entry* task = worker->pool->task_queue;
        LIST_DEL(task, worker->pool->task_queue);

        pthread_mutex_unlock(&worker->pool->mutex);
        
        task->call_back(task->userdata);
    }
}

int thread_pool_setup(struct thread_pool* pool, int num){
    assert(pool != NULL);
    if(num < 1) num = 1;

    int index = 0;
    for(index = 0; index < num; index++){
        struct worker_entry* worker = (struct worker_entry*) malloc(sizeof(struct worker_entry));
        if(worker == NULL){
            perror("malloc");
            continue;
        }
        memset(worker, 0 , sizeof(struct worker_entry));
        worker -> pool = pool;
        pthread_create(&worker->id, NULL, thread_task_cycle, worker);
        usleep(1);
        LIST_ADD(worker, pool->worker_queue);
    }
}

void task_pool_push_task(struct thread_pool* pool, struct task_entry* task){
    pthread_mutex_lock(&pool->mutex);

    LIST_ADD(task,pool->task_queue);
    pthread_cond_signal(&pool->cond);

    pthread_mutex_unlock(&pool->mutex);
}