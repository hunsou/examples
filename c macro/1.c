#define WIN32
#include <stdio.h>

#include <string.h> //strrchr()函数所需头文件
#ifdef WIN32
//windows:
#define filename(x) strrchr(x,'\\')?strrchr(x,'\\')+1:x
#else
//linux:
#define filename(x) strrchr(x,'/')?strrchr(x,'/')+1:x
#endif

int main()
{
	printf("%s\n",strrchr(__FILE__,'\\'));
    printf("filename:%s\n", filename(__FILE__) );
    printf("__func__:%s\n", __func__);
    //printf("__FUNC__:%s\n", __FUNC__);
    printf("__FUNCTION__:%s\n", __FUNCTION__);
    printf("__FILE__:%s\n", __FILE__);
    printf("__DATE__:%s\n", __DATE__);
    printf("__TIME__:%s\n", __TIME__);
    printf("__LINE__:%d\n", __LINE__);
    return 0;
}
