#! /bin/sh
read -p "nhap ten file ban muon tim kiem: " n
file=`find -name $n`
if [ -z $file ]
then
	echo "file khong ton tai"
else
	echo "file da ton tai"
fi
exit 0
