#!/usr/bin/python2

print ("xfinity.py")

from splinter import Browser
from time import sleep

def xfinity(browser=None):
    if not browser:
        print ("Making browser...")
        browser = Browser('phantomjs')
    print ("Trying google.com...")
    browser.visit('http://google.com/')
    if 'google.' in browser.url:
        print ("google.com connected :)")
        return

    print ("Sign up...")
    browser.click_link_by_partial_text('Sign up')
    print ("Filling form...")
    browser.select("rateplanid", "spn")
    browser.check('spn_terms')
    browser.fill('spn_postal', '12345')
    browser.fill('spn_email', 'mailer-daemon@xfinity.nnu.com')
    print ("Submitting...")
    sleep(3) # it did not work without the sleeps
    browser.find_by_css('.startSessionButton').type(' \n')
    sleep(7)
    browser.ensure_success_response()
    print (browser.screenshot())

if __name__ == '__main__':
    xfinity()
