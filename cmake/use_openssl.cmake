#--------------------------------------------------------------------
# OPENSSL
#--------------------------------------------------------------------

#NASM(可选)
#https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/win64/nasm-2.15.05-installer-x64.exe

#Perl
#https://strawberryperl.com/releases.html

#Strawberry Perl - 环境配置
#https://zhuanlan.zhihu.com/p/32470381?ivk_sa=1024320u

#openssl编译
#https://blog.csdn.net/qq_33053671/article/details/106410882
#https://www.cnblogs.com/luoluosha/p/14172664.html

#编译命令
#perl Configure VC-WIN64A no-asm --prefix=e:\openssl --openssldir=e:\ssl
#makefile文件中默认使用/MD，如要使用/MT，可搜索修改makefile文件中的"/MD"为"/MT"
#&& nmake && nmake install


if(NOT OPENSSL_ROOT)
#    set(OPENSSL_ROOT ${SDK_ROOT}/openssl)
    set(OPENSSL_ROOT E:/openssl)
    set(OPENSSL_ROOT_DIR ${OPENSSL_ROOT})
    set(OPENSSL_INCLUDE_DIR ${OPENSSL_ROOT}/include)
endif()
