#!/bin/sh
#
# This generates our configure scripts and leads us onto the path of 
# the great Makefile...
#

set -e

if [ ! -d config ];
then
  mkdir config;
fi

if [ $(uname) != FreeBSD ];
then
  WARNINGS="all,error"
  export WARNINGS
fi

if [ $(uname) = NetBSD ];
then
  WARNINGS=""
  export WARNINGS
fi

autoreconf --install --verbose --force
