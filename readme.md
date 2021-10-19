### 1. 功能说明

在进行 react-native 开发或者 react 开发中，js 代码混淆之后生成一个 mapping 文件，使用 source-map 库对其进行解析，分析出出错代码的源文件以及行号等信息。

### 2. 使用方法

执行命令：
```
sh start.sh -f mapping文件路径 -l 行数 -c 列数
```

例如：
```
sh start.sh -l 1166 -c 534 
不指定 -f 参数，则默认使用当前目录下面的 release.bundle.map 文件，需将 mapping 文件拷贝到当前目录下

sh start.sh -l 1166 -c 534 -f /Users/hjy/Desktop/release.bundle.map 
采用指定的 mapping 文件进行分析
```
