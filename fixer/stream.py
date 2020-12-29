import urllib.request
import os

try:
    updateURL = "https://raw.githubusercontent.com/MrNort64/newten/main/source.bat"
    sourceCodeGet = urllib.request.urlopen(updateURL)
    sourceCode = sourceCodeGet.read()
    f = open('Newten.bat', 'w')
    f.write(sourceCode.decode())
    f.close()
    os.system(r".\updater\instants\passed.vbs")
except:
    os.system(r".\updater\instants\failed.vbs")
    os.system("exit")
