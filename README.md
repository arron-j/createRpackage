### 说明：
此R包用于创建R包时初始化R/**.R DESCRIPTION文件

### 安装：
1. 在线安装：
library(devtools)
install_github("arron-j/createRpackage")
2. 下载打包文件后使用Rsutdio本地安装：[https://github.com/arron-j/createRpackage/releases/latest](https://github.com/arron-j/createRpackage/releases/latest)

### 使用：
```R
createRpackage('yyds')  # yyds是索要创建的包名
```

### 补充
初始化后，增加活修改功能后编译成新的R包，可安下列操作：
```R
library(devtools)
library(roxygen2)
setwd("D:/Team/test/")  # 须为R包根目录的上一级目录
# 编译R包三部曲：
roxygenize("D:/Team/test/createRpackage")
check("createRpackage")
build("createRpackage")
```
