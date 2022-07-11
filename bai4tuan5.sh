#! /bin/sh
read -p "Nhap ten thu muc: " m
tm=`find -name $m -type d`
if [ -z $tm ]
then
	echo "Thu muc $m khong ton tai"
else
	file=`find $m -type f | wc -l`
	stm=`find $m -type d | wc -l`
	echo "So file: $file"
	echo "So thu muc: $stm"
fi
exit 0
