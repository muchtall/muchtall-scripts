#!/bin/bash

if [ ! "`whoami`" == "root" ] ; then echo "This utility works best when run as root. Ctrl+C now to cancel." ; sleep 5 ; fi
OLD_IFS=$IFS
IFS=""
NEXTPATH="`echo "$1/*" | sed -re 's/\/+/\//g'`"
RESULTS="`find ${NEXTPATH} -mount -maxdepth 1 -mindepth 1 -exec du -ksx {} \; | sort -n`"
NEXTPATH="1"

while [ true ] ; do
  if [ ! -z "${NEXTPATH}" ] ; then
    echo "${RESULTS}"
    NEXTPATH="`echo ${RESULTS} | tail -1 | sed -re 's/^[0-9]+\s+//g'`"
    if [ ! -d "${NEXTPATH}" ] ; then
      echo "The path \"${NEXTPATH}\" is a file."
      echo "You cannot evaluate disk usage beyond this point. Choose another path..."
      unset NEXTPATH
    fi
  else
    echo "You must specify a new path..."
  fi
  echo -n "Specify the next path to evaluate [${NEXTPATH}]: "
  read RESPONSE
  if [ ! -z "${RESPONSE}" ] ; then
    NEXTPATH="${RESPONSE}"
  fi
  if [ ! -z "${NEXTPATH}" ] ; then
    RESULTS="`find ${NEXTPATH} -mount -maxdepth 1 -mindepth 1 -exec du -ksx {} \; | sort -n`"
  fi
done
