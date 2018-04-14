from sys import argv
from serial import Serial

try:
    baudRate = int(argv[-1])
    serialPort = argv[1:-1]
except ValueError:
    #some nice default
    baudRate = 9600
    serialPort = argv[1:]

#support paths with spaces. Windows maybe?
serialPort = ' '.join(serialPort)
if not serialPort:
    exit("Please specify a serial port")

print( "reading from %r@%i ..." % (serialPort, baudRate) )
ser = Serial(serialPort, baudRate, timeout=1)    
while True:
    if ser.inWaiting() > 0:
        print( ser.readline() )