#! /bin/sh
e='exit'
echo "==============CHUONG TRINH HIEN THI THONG TIN TRONG TM=================="
echo "1. hien thi ten thu muc (khong ke thu muc an)"
echo "2. hien thi ten thu muc va noi dung thu muc"
echo "3. hien thi ten file va chi so inode cua file"
echo "4. hien thi ca thu muc an"
echo "nhap lua chon: "
read n
while [ $n != $e ]
do
case "$n" in
	"1") echo -e "ds thu muc \n\n" `ls`;;
	"2") echo -e "Ds va noi dung thu muc \n\n" `ls -a -all`;;
	"3") echo -e "Ten file va chi so inode \n\n" `ls -i`;;
	"4") echo -e "hien thi ca thu muc an \n\n" `ls -a`;;
esac
echo "==============CHUONG TRINH HIEN THI THONG TIN TRONG TM=================="
echo "1. hien thi ten thu muc (khong ke thu muc an)"
echo "2. hien thi ten thu muc va noi dung thu muc"
echo "3. hien thi ten file va chi so inode cua file"
echo "4. hien thi ca thu muc an"
echo "nhap lua chon: "
read n
done
exit 0
