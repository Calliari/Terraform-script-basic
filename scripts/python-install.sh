#!/bin/bash
#
# Install python an additional package onto the instance.
#
# Ubuntu Server 16.04 LTS on AWS doesn't have this installed
#
# This is necessary for ansible to connect with remote servers
#


sudo apt-get install python-minimal -y
