#!/usr/bin/env bash
##
##  Package uploader for Bintray and AI-Speaker
##
##  Copyright 2021 AI-Speaker <info@ai-speaker.com>
##

set -o errexit
set -o nounset


echo "Upload test.txt to ais"
mkdir -p ~/test
echo "xxx" > ~/test/123.txt
mkdir -p ~/.ssh
echo $AIS_SSH_PRIVATE_KEY > ~/.ssh/private.key
sudo chmod 600  ~/.ssh/private.key
ssh-keyscan -i ~/.ssh/private.key -p ${AIS_PORT} -T 240 ${AIS_SERVER_IP} > ~/.ssh/known_hosts

# rsync -i ~/.ssh/private.key -e ssh -p ${AIS_PORT} --progress --stats -ravzh $DEBFILES_DIR_PATH ${AIS_USER}@${AIS_SERVER_IP}:/var/www/ais-debs-staging

scp -P ${AIS_PORT} -r ~/test ${AIS_USER}@${AIS_SERVER_IP}:/var/www/ais-debs-staging
