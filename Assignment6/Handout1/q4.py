import sys

student_list = {}
for j in sys.stdin:
	line_list = j.strip('\n').split(" ",1)
	student_list[int(line_list[0])]=line_list[1]
print "id name"
keys = student_list.keys()
keys.sort()
for i in keys:
	print str(i) +" "+ student_list[i]
