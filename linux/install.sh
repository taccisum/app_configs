function install(){
	echo "installing" $1
	yum install $1 -q $2
}

confirm="-y"

if [ $(whoami) != "root" ]; then
	echo "请切换为root用户执行"
	exit 1;
fi

read -p "ask you when ready to install? y/n: " yn
if [ "$yn" == "y" ] || [ "$yn" == "Y" ]; then
	confirm=""
fi

install vim $confirm
install tree $confirm
install git $confirm
install java-1.8.0-openjdk $confirm
