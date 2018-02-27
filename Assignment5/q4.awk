BEGIN{
FS="[\ *]+"
total=0
}
{
	total=total+($2+$3+$4+$5+$6)/5
	print $1," average :",($2+$3+$4+$5+$6)/5
}
END{

	print "class average: ",total/NR
}
