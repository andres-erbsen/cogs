#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

rm -rf ${DIR}/etc/*
cp -art "${DIR}/etc"          \
  /etc/pm                     \
  /etc/rc.conf                \
  /etc/cdmrc                  \
  /etc/acpi/handler.sh
