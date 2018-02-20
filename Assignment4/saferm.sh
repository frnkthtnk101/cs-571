#!/bin/bash
WORKINGDIR=$HOME/.JUNK
CURRENTPATH=`pwd`
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

