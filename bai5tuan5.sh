#! /bin/sh
read -p "Nhap ten file muon doi ten: " n
file=`find -name $n -type f`
if [ -z $file ]
then
	echo "File $n khong ton tai"
else
	read -p "Nhap ten file moi: " m
	ref=`find -name $m -type f`
	if [ -z $ref ]
	then
		echo `mv $n $m`
	else
		echo "Ten file $m da ton tai"
	fi
fi
exit 0
