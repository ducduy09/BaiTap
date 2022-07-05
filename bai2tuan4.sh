#! /bin/sh
e='exit'
echo "nhap 00 de thoat !"
echo "nhap so n:"; read n
while [ $n != $e ]
do
if [ $n -gt 0 ]
then
	echo "so n la so duong"
elif [ $n -lt 0 ]
then
	echo "n la so am"
else
	echo "day la so 0"
fi
echo "nhap 00 de thoat !"
echo "nhap so n:"; read n
done
echo "Xin cam on !"
exit 0
