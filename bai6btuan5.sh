#! /bin/sh
cau2()
{
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
}
cau3()
{
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
}
cau4()
{
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
}
calculate()
{
echo "Nhap so thu nhat: "
read a
echo "Nhap so thu hai: "
read b
echo "nhap toan hang: "
read n
case "$n" in
	"+") s=$(($a+$b))
	;;
	"-") s=$(($a-$b))
	;;
	"*") s=$(($a*$b))
	;;
	"/") s=$(($a/$b))
	;;
	*) echo "Ban da nhap sai dinh dang !!!"
	;;
esac
echo "Phep tinh: $a $n $b = $s"
}
echo "=============== MENU ================"
echo "1. Xoa file"
echo "2. Copy file"
echo "3. Tim thong tin thu muc"
echo "4. May tinh"
echo "5. Thoat"
echo "Nhap lua chon: "
read lc
while [ $lc -lt 5 ]
do
	case "$lc" in
	"1") cau2
	;;
	"2") cau3
	;;
	"3") cau4
	;;
	"4") calculate
	;;
	*) echo "vui long nhap dung dinh dang"
	;;
	esac
echo "Nhap lua chon: "
read lc
done
echo "Xin cam on !!!"
exit 0
