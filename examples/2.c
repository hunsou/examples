//
// Created by whoami on 2/20/2023.
//

#include <stdio.h>

#define DEBUG

#define ERROR(...) \
do{ \
fprintf(stderr, "[ERROR][File:%s,Func:%s,Line:%d]: ",__FILE__,__FUNCTION__,__LINE__); \
fprintf(stderr, __VA_ARGS__); \
}while(0)

#define WARNING(...) \
do{ \
fprintf(stdout, "[WARNING][File:%s,Func:%s,Line:%d]: ",__FILE__,__FUNCTION__,__LINE__); \
fprintf(stdout, __VA_ARGS__); \
}while(0)

#define INFO(...) \
do{ \
fprintf(stdout, "[INFO][File:%s,Func:%s,Line:%d]: ",__FILE__,__FUNCTION__,__LINE__); \
fprintf(stdout, __VA_ARGS__); \
}while(0)

#define SHOW_TIME(...) \
do{\
extern unsigned long long gLatestTime;\
timeval tp;\
gettimeofday(&tp, NULL);\
unsigned long long now = tp.tv_sec*1000000+tp.tv_usec; \
if(gLatestTime != 0) \
{ \
fprintf(stdout, ">>>>>>>>>Used Time: %s[%d], %s: %ld.%ld, %llu ms ", __FILE__, __LINE__, __func__, tp.tv_sec, tp.tv_usec, (now-gLatestTime)/1000);\
fprintf(stdout, __VA_ARGS__); \
fprintf(stdout, "/n"); \
} \
gLatestTime = now;\
}while(0)

#ifdef DEBUG

#define DBG(...) \
do{ \
fprintf(stdout, "[DEBUG][File:%s,Func:%s,Line:%d]: ",__FILE__,__FUNCTION__,__LINE__); \
fprintf(stdout, __VA_ARGS__); \
}while(0)

#else

#define DBG(...)

#endif

int main(){
	unsigned long long gLatestTime = 1.0f;
	ERROR("ERROR\n");
	WARNING("WARNING\n");
	INFO("INFO\n");
	//SHOW_TIME("SHOW_TIME");
	DBG("DBG\n");
	return 0;
}