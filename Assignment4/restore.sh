#!/bin/bash
cd $HOME/.JUNK

if [ -f $1 ];
then
	echo $1
	NF=`echo $1 | cut -f1 -d ":"`
	mv $1 recover.tgz
	echo $NF
	tar xf recover.tgz
	POS=`cat POS`
	mv $NF "$POS"
	rm POS
	rm recover.tgz 
	
	#kill
	echo what is happening to files
	for i in `ls *.tgz`;
	do
        	FiletempDate=`echo $i | cut -f2 -d":" | awk  -F "\-|\." '{print $1$2$3}'`
        	FileDate=`date -d "$FiletempDate 2 days" +%y%m%d`
        	today=`date '+%y%m%d'`
        	if [ $FileDate -lt $today ];
        	then
                	echo $i was deleted... It has been two days
                	rm $i
        	fi
	done
else
	echo file does not exist.......
fi
