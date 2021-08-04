import socket
import os
os.system("color")
host = input("[36mnewten/portscan-# \033[34mHost:[92m ")
port1 = input("[36mnewten/portscan-# [34mStart Port:[92m ")
port2 = input("[36mnewten/portscan-# [34mEnd Port:[92m ")
startNum = port1
endNum = port2
print("[36mnewten/portscan-$ [92mScanning:[97m " + host)
for x in range(int(endNum) + 1 - int(port1)):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(0.01)
    result = sock.connect_ex((host, int(startNum)))
    os.system("title Scanning Ports - " + str(startNum))
    if result == 0:
        print("[92mPort[97m " + str(startNum) + " [92mis Open!")
    else:
        pass
    sock.close()
    startNum = int(startNum) + 1
