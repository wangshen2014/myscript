#!/bin/bash

baidupan_DIR="/$(date +%Y-%m-%d)"
local_path="/home/wangshen"
document_s=document_$(date +"%Y%m%d").tar.gz
freeshell_files_s=freeshell_files_$(date +%Y%m%d).tar.gz
#nginx_CONFIG=nginx_$(date +%Y%m%d).tar.gz
cd /home/wangshen
test -f freeshell_files_*.tar.gz
if { $? == 0 }
{
	echo "发现旧版本 freeshell_files_*.tar.gz 存在，是否删除？"
	if read -t 5 -p "please enter y/n:" _Y_N
	then
		case "$_Y_N" in
			y|Y|yes|YES"")echo "shanchu";;
			n|N|no|NO)echo "bushanchu";;
		esac
	else
    		echo "sorry,too slow,echo"
	fi
}else
{
	echo "meiyou"
}
#rm *.tar.gz
i=1
while [ $i > 0 ]
do
echo "si"
done
tar -czvf $document_s $local_path/document
#cd /home/wangshen/freeshell_files
tar -czvf $freeshell_files_s $local_path/freeshell_files

cd /home/wangshen/software/freehao123
./bpcs_uploader.php upload $local_path/$document_s  $baidupan_DIR/
./bpcs_uploader.php upload $local_path/$freeshell_files_s  $baidupan_DIR/
exit 0;;
