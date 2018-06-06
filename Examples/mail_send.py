# coding:utf-8
import smtplib
from email.mime.text import MIMEText
from email.header import Header
import time
#import os
import sys

def send_mail(subject, body, mail_to, username, password, mail_type='plain'):
    assert isinstance(mail_to, list) == True
    msg = MIMEText(body,'html',_charset='UTF-8')
    msg['Subject'] = Header(subject,"UTF-8")
    msg['From'] = username
    msg['To'] = ';'.join(mail_to)
    msg['date'] = time.strftime('%a, %d %b %Y %H:%M:%S %z')
    try:
        smtp = smtplib.SMTP()
        smtp.connect('smtp.163.com')
        smtp.login(username, password)
        smtp.sendmail(username, mail_to, msg.as_string())
        smtp.quit()
        return True
    except Exception as e:
        print "send mail error:%s"%e
        return False

if __name__ == "__main__":

    if len(sys.argv) < 2:
        print 'Usage : python mail.py object_mail'
        sys.exit()

    subject = 'subject'
    body = '''
msg body
    '''
    mail_to = [sys.argv[1]]
    username = 'username'
    #password = os.getenv('PASSWORD')
    password = 'password'
    send_mail(subject, body, mail_to, username, password)