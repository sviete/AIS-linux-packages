#!/usr/bin/env bash
##
##  Package uploader for AI-Speaker
##
##  Copyright 2021 AI-Speaker <info@ai-speaker.com>
##

set -o errexit
set -o nounset

AIS_PACKAGES_BASEDIR=$(realpath "$(dirname "$0")/../")

# Verify that script is correctly installed to Termux repository.
if [ ! -d "$AIS_PACKAGES_BASEDIR/packages" ]; then
	echo "[!] Cannot find ais directory 'packages'."
	exit 1
fi


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

for i in debs-*.tar; do
  tar xf $i
done
# Purging debfiles of removed packages.
TO_DELETE=$(test -f ./debs/deleted_packages.txt && cat ./debs/deleted_packages.txt || true)
if [ -n "$TO_DELETE" ]; then
  echo "TO_DELETE"
  echo $TO_DELETE
fi
# Uploading modified packages.
TO_UPLOAD=$(test -f ./debs/built_packages.txt && cat ./debs/built_packages.txt || true)
if [ -n "$TO_UPLOAD" ]; then
  echo "TO_UPLOAD"
  echo $TO_UPLOAD
fi

echo "Upload to ais"
DEBFILES_DIR_PATH="$AIS_PACKAGES_BASEDIR/debs/*"
scp -pr $DEBFILES_DIR_PATH staging:/var/www/ais-debs-staging
