1. 将js bundle 对应的 map 文件放到根目录里，文件命名为 release.bundle.map
2. sh start.sh -f map文件路径 -l 行数 -c 列数

例如：

sh start.sh -l 1166 -c 534 
不指定 -f 参数，则默认使用目录下面的 release.bundle.map 文件

sh start.sh -l 1166 -c 534 -f /Users/hjy/Desktop/release.bundle.map 
采用指定的 map 文件进行分析