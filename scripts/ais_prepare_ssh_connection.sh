#!/usr/bin/env bash
##
##  Script to create AI-Speaker package repos
##
##  Copyright 2021 AI-Speaker <info@ai-speaker.com>
##

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

echo "Publish cross-compiled packages to http://powiedz.co/apt/dists/dom-dev/test/..."
ssh staging <<EOT
cd /var/www/github_action_hooks
./publish_test_repo.sh
EOT
