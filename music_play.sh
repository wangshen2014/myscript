#!/bin/bash
c=0
ps -e | grep rhythmbox >/dev/null
if [ $? == 0 ];then
	let c+=1
fi
ps -e | grep osdlyrics > /dev/null
if [ $? == 0 ];then
	let c+=2
fi
case $c in
0)
	echo "Open both for you now,enjoy!"
	rhythmbox&
	osdlyrics&
	;;
1)
	echo "rhythmbox is already here, now open osdlyrics for you,enjoy!"
	osdlyrics&
	;;
2)
	echo "rhythmbox is already here, now open osdlyrics for you,enjoy!"
	rhythmbox&
	;;
3)
	echo "Close both for you now,enjoy!"
	pidof "rhythmbox" | while read pid
	do
	echo $pid
	kill $pid
	done
	pidof "osdlyrics" | while read pid
	do
	echo $pid
	kill $pid
	done
	;;
*)
	echo "oops,小样~程序执行出错了！"
	;;
esac
