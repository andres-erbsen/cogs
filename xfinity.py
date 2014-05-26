#!/usr/bin/python2

from splinter import Browser
from time import sleep

def xfinity(browser=None):
    if not browser:
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
    browser.fill('spn_postal', '12345')
    browser.fill('spn_email', 'mailer-daemon@xfinity.nnu.com')
    browser.check('spn_terms')
    print ("Submitting...")
    sleep(0.5) # it did not work without the sleeps
    browser.find_by_css('.startSessionButton').type(' \n')
    sleep(2)
    browser.ensure_success_response()
    print (browser.screenshot())

if __name__ == '__main__':
    xfinity()
