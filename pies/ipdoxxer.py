import urllib.request
import os
try:
    i = open("./content/temp/ltip_tmpf.txt", "r")
    updateURL = "https://ipinfo.io/" + i.read().replace("\n", "") + "/json"
    sourceCodeGet = urllib.request.urlopen(updateURL)
    sourceCode = sourceCodeGet.read()
    content = sourceCode.decode("utf-8")
    content = content.replace("\"readme\": \"https://ipinfo.io/missingauth\"", "")
    content = content.replace("{", "")
    content = content.replace("}", "")
    content = content.replace("\"", "")
    content = content.replace(",", " ")
    content = content.replace("ip:", "[92mIP:[97m")
    content = content.replace("hostname:", "[92mHostname:[97m")
    content = content.replace("anycast:", "[92mAnycast:[97m")
    content = content.replace("city:", "[92mCity:[97m")
    content = content.replace("region:", "[92mRegion:[97m")
    content = content.replace("country:", "[92mCountry:[97m")
    content = content.replace("loc:", "[92mGeo-Location:[97m")
    content = content.replace("postal:", "[92mZip Code:[97m")
    content = content.replace("org:", "[92morg:[97m")
    content = content.replace("timezone:", "[92mTimezone:[97m")
    f = open("./content/temp/dox.txt", "w")
    f.write(content)
    f.close()
except:
    os.system("echo [91mError with IP DOX!")
