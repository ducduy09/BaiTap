#! /bin/sh
set `date`
echo "Hom nay la "
case "$1" in
	"Mon") echo "Thu Hai"
	;;
	"Tue") echo "Thu Ba"
	;;
	"Wed") echo "Thu Tu"
	;;
	"Thu") echo "Thu Nam"
	;;
	"Fri") echo "Thu Sau"
	;;
	"Sat") echo "Thu Bay"
	;;
	*) echo "Chu Nhat"
	;;
esac
exit 0
