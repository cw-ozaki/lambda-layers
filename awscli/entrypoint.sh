#!/bin/sh

pip install awscli
rm -rf /usr/local/lib/python2.7/site-packages/README
rm -rf /usr/local/lib/python2.7/site-packages/__pycache__
rm -rf /usr/local/lib/python2.7/site-packages/pip*
rm -rf /usr/local/lib/python2.7/site-packages/wheel*

mkdir -p /share/lib/python2.7/site-packages
cp -av /usr/local/lib/python2.7/site-packages/* /share/lib/python2.7/site-packages

mkdir -p /share/bin
patch -u /usr/local/bin/aws < /awscli/aws.patch
cp /usr/local/bin/aws /share/bin/aws
