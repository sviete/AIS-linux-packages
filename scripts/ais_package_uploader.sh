#!/usr/bin/env bash
##
##  Package uploader for Bintray and AI-Speaker
##
##  Copyright 2021 AI-Speaker <info@ai-speaker.com>
##

set -o errexit
set -o nounset

echo "Prepare ssh connection to ais"
mkdir -p ~/.ssh/
ssh-keyscan -p ${AIS_PORT} -T 240 ${AIS_SERVER_IP} > ~/.ssh/known_hosts
echo "$AIS_SSH_PRIVATE_KEY" > ~/.ssh/staging.key
chmod 600 ~/.ssh/staging.key
cat >>~/.ssh/config <<END
Host staging
  HostName $AIS_SERVER_IP
  Port $AIS_PORT
  User $AIS_USER
  IdentityFile ~/.ssh/staging.key
  StrictHostKeyChecking no
  AddKeysToAgent yes
END

echo "Upload test.txt to ais"
mkdir -p ~/test
echo "xxx" > ~/test/123.txt
scp -pr -v ~/test staging:/var/www/ais-debs-staging
