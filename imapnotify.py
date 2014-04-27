#! /usr/bin/python2

import sys
import imaplib2

if len(sys.argv) != 4:
    print 'USAGE: {0} host user mailbox; for example {0} imap.gmail.com andres.erbsen INBOX'

host, user, mailbox, password = sys.argv[1:4] + [raw_input()]
imap = imaplib2.IMAP4_SSL(host)
imap.login(user, password)
imap.select(mailbox)
imap.idle() # default timeout 29 minutes
