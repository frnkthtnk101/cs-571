BEGIN{
FS="[\ *]+"

}
{
	total=($2+$3+$4+$5+$6)/5
	if(total >= 90)
	{
		print $1," ",total," A"
	}
	else if(total >= 80)
	{
		print $1," ",total," B"
	}	
	else if(total >= 70)
	{
		print $1," ",total," C"
	}
	else if(total >= 60)
	{
		print $1," ",total," D"
	}
	else
	{
		print $1," ",total," F"
	}



	
}
END{


}
