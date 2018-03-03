import sys

print "name average"
for j in range(1,len(sys.argv)):
	fo = open(sys.argv[j],"r")
	for line in fo.readlines():
		line_list = line.strip('\n').split(" ")
		score = 0 
		for i in range(1,len(line_list)):
			score += int(line_list[i])
		print line_list[0]," ",(score/(len(line_list)-1))
	fo.close()
