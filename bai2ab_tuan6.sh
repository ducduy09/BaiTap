#! /bin/sh
read -p "nhap ten thu muc: " n
echo " 5 file dau tien la: "
echo `ls $n|head -5`
echo " file thu 2 den file thu 5 la: "
echo `ls $n | head -5 | tail -3`

