#!/bin/bash
sudo apt-get install -y python-pip git
su -c 'pip install git+git://github.com/Lokaltog/powerline'

# APPEND THIS to .bashrc
if [ -f /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
fi

#https://powerline.readthedocs.io/en/latest/configuration.html#
