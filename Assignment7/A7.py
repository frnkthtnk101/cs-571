
def get_value(what_to_say):
	while(True):
		number= raw_input(what_to_say)
		try:
			number = int(number)
			return number
		except:
			print "not a number"

values = [0,0,0,0,0]
values[0] = get_value("how many rows you would like to display")
values[1] = get_value("what is y?")
values[2] = get_value("what is 1y?")
values[3] = get_value("what is 2y?")
values[4] = get_value("what is 3y?")
print values
print "1 | "+str(values[1])+" | "+str(values[2])+" | "+str(values[3])+" | "+str(values[4])
for i in range(values[0]):
	values[1]= values[1] + values[2]
	values[2]= values[2] + values[3]
	values[3]= values[3] + values[4]
	print str(i+1)+" | "+str(values[1])+" | "+str(values[2])+" | "+str(values[3])+" | "+str(values[4])
