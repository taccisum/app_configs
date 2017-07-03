if [ $(whoami) == "root" ]; then
	yum install vim
	yum install tree
	yum install git
else
	echo "请切换为root用户执行"
fi


