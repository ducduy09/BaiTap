#! /bin/sh
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
	"1") echo `sh tinhtong.sh`
	;;
	"2") echo `sh sochiahet.sh`
	;;
	*) echo "vui long nhap dung dinh dang"
	;;
	esac
echo "Nhap lua chon: "
read lc
done
echo "Xin cam on !!!"
exit 0
