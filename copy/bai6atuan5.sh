#! /bin/sh
tinhtong()
{
s=0
for ((i=0; i<=$n; i++))
do
	s=$(($s+$i))
done
echo "Tong se la: $s"
}
sochiahet()
{
echo "Cac so chia het cho 7 tu 1 den n la: "
if [ $n -lt 7 ]
then
	echo "null"
else
	for ((i=1; i<=$n; i++))
	do
		so=$(($i%7)) 
		if [ $so = 0 ]
			then echo $i
		fi
	done
fi
}
lc=0
echo "Nhap so n: "
read n
export n
echo "=======CHUONG TRINH TINH TOAN======="
echo "1. tinh tong tu 1 den n"
echo "2. In cac so chia het cho 7 tu 1 den n"
echo "3. Thoat"
echo "Nhap lua chon: "
read lc
while [ $lc -lt 3 ]
do
	case "$lc" in
	"1") tinhtong
	;;
	"2") sochiahet
	;;
	*) echo "vui long nhap dung dinh dang"
	;;
	esac
echo "Nhap lua chon: "
read lc
done
echo "Xin cam on !!!"
exit 0
