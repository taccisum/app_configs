# $1 要从文件中检测的文本，如果存在则不执行
# $2 要append到文件末尾的文本
cat $3 | grep "$1" 

if [ $? == 0 ];then
	echo $1 "已存在"
else
	echo "添加" $2 "到" $3
	echo $2 >> $3
fi

