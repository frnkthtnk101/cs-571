BEGIN{
FS="[\ *]+"
}
{
	total=$3

	if(total == "A")
	{

		grades[0]= grades[0]"*"
	}
	else if(total == "B")
	{
		grades[1]= grades[1]"*"
	
	}	
	else if(total == "C")
	{
		grades[2]= grades[2]"*"

	}
	else if(total == "D")
	{
		grades[3]= grades[3]"*"

	}
	else
	{
		grades[4]= grades[4]"*"

	}

}
END{
	letter[0]="A"
	letter[1]="B"
	letter[2]="C"
	letter[3]="D"
	letter[4]="F"
	for(i=0;i<5;i++)
	{
		print letter[i]," ",grades[i] 
	}

}
