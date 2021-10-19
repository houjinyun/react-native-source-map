echo "----开始解析-----"

param1="$1"
param2="$2"
param3="$3"
param4="$4"
param5="$5"
param6="$6"

file=""
line=""
column=""

if [ "$param1" = "-f" ];then
    file="$param2"
elif [ "$param3" = "-f" ];then    
    file="$param4"
elif [ "$param5" = "-f" ];then    
    file="$param6"
else
    echo "-f 参数没有，使用根目录的map文件"
fi

if [ "$param1" = "-l" ];then
    line="$param2"
elif [ "$param3" = "-l" ];then    
    line="$param4"
elif [ "$param5" = "-l" ];then    
    line="$param6"
else
    echo "-l 参数错误"
    exit 1
fi

if [ "$param1" = "-c" ];then
    column="$param2"
elif [ "$param3" = "-c" ];then    
    column="$param4"
elif [ "$param5" = "-c" ];then    
    column="$param6"
else
    echo "-c 参数错误"
    exit 1
fi

echo "file = $file"
echo "line = $line"
echo "column = $column"

currDir=$(pwd)
echo "当前目录为：${currDir}"

# 如果是完整路径，不处理
if [[ "$file" =~ ^/.* ]];then
    echo "file 是完整文件路径"
elif [ "$file" = "" ];then
    echo "file参数为空"
else
    echo "file 是当前目录下的路径"
    file="${currDir}/$file"
fi

echo "              "
echo "进入 soucemap 命令目录"
cd /Users/hjy/Desktop/sourcemap

if [ "$file" = "" ];then
    echo "没有指定map文件，直接采用 soucemap 目录里的 release.bundle.map 文件"
else
    echo "删除release.bundle.map文件"
    rm release.bundle.map    
    echo "复制指定的文件到 soucemap 目录"
    cp $file release.bundle.map
fi

echo "              "
echo ">>>>>>>>>>开始分析>>>>>>>>>>"

npm start $line $column
