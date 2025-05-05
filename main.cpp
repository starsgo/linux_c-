#include <iostream>
#include "kv.h"
#include "threadpool.h"
#include "mempool.h"
#include "CLog.h"
#include "unistd.h"
#include "qt\widget.h"
#include <QApplication>

void test_threadpool();
void CLog_test();
void test_mempool();


int main(int argc, char *argv[]){

    QApplication a(argc, argv);
    Widget w;
    w.show();
    a.exec();

    return 1;
    if( thread_pool_setup(&g_thread_pool, 4) == 0){
	 	CLog::CDebug()<<"thread_init success\n";
	}
	memp_manager_init();

	//teset_threadpool
	test_threadpool();

	//test_mempool
	test_mempool();
	//mysql_test();

	//http_test
//	start_http();

}


void task_default(void* arg){
	char* str = (char*) arg;
	// while(1){
	for(int i=0; i< 5; i++){
		sleep(3);
		//printf("task\n");
		CLog::CDebug()<< str <<"\n";
	}
}
struct task_entry task0;
struct task_entry task1;
struct task_entry task2;
struct task_entry task3;



void test_threadpool(){
	//task0
	task0.task_callback =  task_default;
	task0.user_data = "00000";
	task_pool_push_task(&g_thread_pool, &task0);
	//task1
	task1.task_callback =  task_default;
	task1.user_data = "33333";
	task_pool_push_task(&g_thread_pool, &task1);
	//task2
	task2.task_callback =  task_default;
	task2.user_data = "22222";
	task_pool_push_task(&g_thread_pool, &task2);
	//task3
	task3.task_callback =  task_default;
	task3.user_data = "111111";
	task_pool_push_task(&g_thread_pool, &task3);

}
void CLog_test(){
	//clog test
	CLog::CDebug() << "CLog string" << 9 << "\n";
	CLog::CStore() << "aaabbbccc\n" << 123456789 << "endl";
	CLog::CStore() << "zzxxccvvbb\n" << 123456789 << "endl";
}

void kv_test(){
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

void test_mempool(){
	int i = 0;
	void* temp;
	for(i = 0; i< 3; i++){
		temp = mymalloc(89);
		printf("malloc temp: %p\n",temp);
		*(int*)temp = 20;
	}
	myfree(temp);
	temp = mymalloc(89);
	printf("malloc temp: %p\n",temp);
}