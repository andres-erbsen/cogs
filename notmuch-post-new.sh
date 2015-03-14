#!/bin/sh -eu

( cd "$(dirname "$0")" && git diff-index --quiet HEAD -- || git commit -am post-new )
COMMIT="$( cd "$(dirname "$0")" && git rev-parse HEAD )"

NOTWHITELIST="(NOT (tag:encrypted OR tag:flagged
OR (action ADJ required)
OR (action ADJ requested)
OR mandatory
OR to:andres OR to:andreser OR to:andres.erbsen
))"

notmuch tag +filtered-by:$COMMIT:$LINENO -inbox -unread -unnotified 'folder:sent AND tag:unread'
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox -unnotified "tag:inbox AND               from:\"via git\" AND subject:fscq"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox -unnotified "tag:inbox AND               from:\"via git\" AND subject:pki"

notmuch tag +filtered-by:$COMMIT:$LINENO -inbox -unnotified "tag:inbox AND ( $(notmuch search --output=threads tag:muted | sed ':a;N;$!ba;s/\n/ OR /g') )"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox -unnotified "tag:inbox AND $NOTWHITELIST AND               akamai-jobnotification@noreply.jobs2web.com"

notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               to:ieee-acm-exec@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               to:uge-exec@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               to:uea@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               to:muba-exec@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               to:medlife-exec@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:im-having-a-personal-problem@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:i-only-have-personal-solutions@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:free-food@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:freefood@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:vultures@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1h AND to:reuse@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox                   AND date:..1d AND from:no-reply@piazza.com AND (NOT (subject:Instr AND subject:Note))"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:lists.ut.ee"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:csail-related"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:ec-discuss@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:eio@lists.ut.ee"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:linkazoo@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:tellmeaboutholes@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:clam@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:black-hole@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1d AND to:r-h-t-t@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..3d AND to:seminars@csail.mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..3d AND to:random-hall-talk@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..3d AND to:r-h-t@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..3d AND to:moderncrypto.org"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1w AND to:lists.csail.mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1w AND to:jiu-jitsu@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1w AND to:sipb-minutes@mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1w AND to:calendar@csail.mit.edu"
notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND date:..1w AND to:peckerites@mit.edu"

notmuch tag +filtered-by:$COMMIT:$LINENO -inbox "tag:inbox AND $NOTWHITELIST AND               eecs-jobs-announce@csail.mit.edu"
