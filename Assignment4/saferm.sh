#!/bin/bash
WORKINGDIR=$HOME/.JUNK
CURRENTPATH=`pwd`
#sace first
filename=`date "+$1:%y-%m-%d-%H.%M.%S"`
if [ ! -d $WORKINGDIR ]
	then
		mkdir $WORKINGDIR
fi
mkdir $WORKINGDIR/$filename
readlink -f $1 > $WORKINGDIR/$filename/POS
mv $1 $WORKINGDIR/$filename/$1
cd $WORKINGDIR/$filename
tar  --force-local -cf  $filename.tgz *
mv $filename.tgz $WORKINGDIR/$filename.tgz
cd ..
rm -rf $filename
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
