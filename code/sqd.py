import sys
#import requests, json
def squared(x):

    y = x * x *9
    return y
def AddSum(a):

    b = a * a *4
    return b


if __name__ == '__main__':

    x = float(sys.argv[1])
    sys.stdout.write(str(squared(x)))
    sys.stdout.write(str(AddSum(x)))
#    sys.stdout.write(str(test(11)))