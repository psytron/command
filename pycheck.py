
import sys
import os



class bcolors:
    HEADER = '\033[95m'
    GRAY   = '\033[30m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'



def cmd( str_in ):
	return os.popen( str_in ).read().strip()

print(bcolors.OKGREEN)
print('INTERPRETER: ',sys.version)
print('PYTHON D: ', cmd('which python') )
print('PYTHON 3: ', cmd('which python3') )
print(bcolors.ENDC)