#!bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

cp -art "${DIR}/etc"          \
  /etc/pm                     \
  /etc/rc.conf                \
  /etc/cdmrc                  \
  /etc/acpi/handler.sh
