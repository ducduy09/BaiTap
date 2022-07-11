#! /bin/sh
read -p "Nhap ten file can xoa: " n
file=`find -name $n`
if [ -z $file ]
then
	echo "file khong ton tai"
else
	echo "TT File: `head -2 $file`"
	lc="n"
	echo "Ban co muon xoa file nay khong ??? y - co, n - khong"
	read lc
	case "$lc" in
		"y") echo `rm $file` 
			echo "xoa file thanh cong"
		;;
		"n") echo "Da huy xoa file"
		;;
		*) echo "lua chon $lc loi"
		;;
	esac
fi
exit 0
