2023-02-19
文件整理
工程尽量保证单文件,一个工程一个文件夹,加build脚本
启用远程编译
这是一个工具集合,不是具体项目
文件要解耦，现在联系太紧密了
大体量的工程独立出去！！！！
先把已有的项目整理好一个个来
从现在开始写代码要规范，以前写得跟答辩一样

常用的功能、通用功能记录下来就好，不用写到dll暴露出来
mydll只有cppservice用，代码可以集中到mydll那个工程










```
⠄⠄⠄⠄⢠⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣯⢻⣿⣿⣿⣿⣆⠄⠄⠄
⠄⠄⣼⢀⣿⣿⣿⣿⣏⡏⠄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢻⣿⣿⣿⣿⡆⠄⠄
⠄⠄⡟⣼⣿⣿⣿⣿⣿⠄⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⣿⣇⢻⣿⣿⣿⣿⠄⠄
⠄⢰⠃⣿⣿⠿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠙⠿⣿⣿⣿⣿⣿⠄⢿⣿⣿⣿⡄⠄
⠄⢸⢠⣿⣿⣧⡙⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠈⠛⢿⣿⣿⡇⠸⣿⡿⣸⡇⠄
⠄⠈⡆⣿⣿⣿⣿⣦⡙⠳⠄⠄⠄⠄⠄⠄⢀⣠⣤⣀⣈⠙⠃⠄⠿⢇⣿⡇⠄
⠄⠄⡇⢿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⣠⣶⣿⣿⣿⣿⣿⣿⣷⣆⡀⣼⣿⡇⠄
⠄⠄⢹⡘⣿⣿⣿⢿⣷⡀⠄⢀⣴⣾⣟⠉⠉⠉⠉⣽⣿⣿⣿⣿⠇⢹⣿⠃⠄
⠄⠄⠄⢷⡘⢿⣿⣎⢻⣷⠰⣿⣿⣿⣿⣦⣀⣀⣴⣿⣿⣿⠟⢫⡾⢸⡟⠄.
⠄⠄⠄⠄⠻⣦⡙⠿⣧⠙⢷⠙⠻⠿⢿⡿⠿⠿⠛⠋⠉⠄⠂⠘⠁⠞⠄⠄⠄
⠄⠄⠄⠄⠄⠈⠙⠑⣠⣤⣴⡖⠄⠿⣋⣉⣉⡁⠄⢾⣦⠄⠄⠄⠄⠄⠄⠄⠄
```



# vscode 插件

1. Clara Copilot
2. GitHub Copilot
3. GitHub Theme
4. Gitpod
5. JetBrains IDE Keymap
6. One Dark Pro
7. PlatfomIO IDE

C:\Users\Administrator\AppData\Local\CrashDumps

# 提供一些仓库ci编译的可执行文件

* 不对源文件进行任何更改，基于master分支,可执行文件在build(branch)分支下编译，仅添加*.yml
* 可以进行pr(pull request，指添加一些repo或其他)，或者自行参考build分支下的*.yml去进行编译。
* 版权归原作者所有

1. win32
    1. [KeyCastOW](https://github.com/hunsou/KeyCastOW)使用[appveyor](https://ci.appveyor.com/project/hunsou/keycastow)
    2. [imgui](https://github.com/hunsou/imgui)使用[appveyor](https://ci.appveyor.com/project/hunsou/imgui)
2. android
    1. [GLStudio](https://github.com/hunsou/GLStudio)使用[travis](https://travis-ci.com/hunsou/GLStudio)
    2. [Shadowsocks-android](https://github.com/hunsou/Shadowsocks-android)
       使用[travis](https://travis-ci.com/hunsou/Shadowsocks-android)

![404](http://)