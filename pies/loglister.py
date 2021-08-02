import os

arr = os.listdir("./content/logs")
length = len(arr)
num = 0
if length == 1:
    os.system("echo You have [97m" + str(len(arr)) + "[92m log & echo.")
else:
    os.system("echo You have [97m" + str(len(arr)) + "[92m logs & echo.")
for x in arr:
    num = num + 1
    os.system("echo [97m" + str(num) + ".[92m " + x.replace(".txt", ""))
