#! /bin/sh
read -p "Nhap ten file can copy: " n
file=`find -name $n`
if [ -z $file ]
then
	echo "file khong ton tai"
else
	read -p "Nhap ten thu muc nhap vao: " m
	tm=`find -name $m -type d`
	if [ -z $tm ]
	then
		echo "Thu muc khong ton tai, da tao thu muc $m"
		echo `mkdir $m`
		echo `cp $file $m/$file`	
	else
		echo `cp $file $m/$file`
	fi
	echo "Copy file thanh cong"
fi
exit 0

