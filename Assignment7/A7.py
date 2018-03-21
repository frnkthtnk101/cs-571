import sys
def get_value(what_to_say):
        while(True):
                number= raw_input(what_to_say)
                try:
                        number = int(number)
                        return number
                except:
                        print "not a number"
def check_args(ARRH):
    if len(ARRH) == 6:
        for i in range(1,len(ARRH)):
            try:
                int(ARRH[i])
            except ValueError:
                print ARRH[i]+" no good!"
                return False
            except:
                print sys.exc_info()[0]
                return False
    else:
        return False
    return True

values = [0,0,0,0,0]
good_to_go = True
#sys.argv = ["/Users/Franco/Desktop/num.py",10,10,10,10,10]
#print len(sys.argv)
if len(sys.argv) > 1:
    good_to_go = check_args(sys.argv)
    if good_to_go:
        values[0] = int(sys.argv[1])
        values[1] = int(sys.argv[2])
        values[2] = int(sys.argv[3])
        values[3] = int(sys.argv[4])
        values[4] = int(sys.argv[5])
else:
    values[0] = get_value("how many rows you would like to display")
    values[1] = get_value("what is y?")
    values[2] = get_value("what is 1y?")
    values[3] = get_value("what is 2y?")
    values[4] = get_value("what is 3y?")
if good_to_go:
    print "given: "+"".join(str(values))
    print "x|y|y1|y2|y3"
    print "1 | "+str(values[1])+" | "+str(values[2])+" | "+str(values[3])+" | "+str(values[4])
    for i in range(values[0]):
            values[1]= values[1] + values[2]
            values[2]= values[2] + values[3]
            values[3]= values[3] + values[4]
            print str(i+1)+" | "+str(values[1])+" | "+str(values[2])+" | "+str(values[3])+" | "+str(values[4])
