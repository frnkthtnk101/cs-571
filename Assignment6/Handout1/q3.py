import sys

student_list = {}
for j in range(1,len(sys.argv)):
	fo = open(sys.argv[j],"r")
	for line in fo.readlines():
		line_list = line.strip('\n').split(" ",1)
		student_list[int(line_list[0])]=line_list[1]
	fo.close()
print "id name"
keys = student_list.keys()
keys.sort()
for i in keys:
	print str(i) +" "+ student_list[i]
