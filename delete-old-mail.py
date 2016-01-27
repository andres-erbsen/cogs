#!/usr/bin/env python3
import imaplib, ssl, sys
from datetime import datetime, timedelta

user, host, ndays = sys.argv[1:]
ndays = int(ndays)
password = sys.stdin.read().rstrip('\n')

s = imaplib.IMAP4_SSL(host, ssl_context=ssl.create_default_context())
s.login(user, password)
s.select('INBOX')
_, rr = s.search(None, 'BEFORE "{:%d-%b-%Y}"'.format(datetime.today() - timedelta(days=ndays)))
for r in rr:
    for uid in r.split():
        s.store(uid, '+FLAGS', '\\Deleted')
        print(uid, '+FLAGS', '\\Deleted')
print ('EXPUNGE')
s.expunge()
