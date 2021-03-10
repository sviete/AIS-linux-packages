#!/usr/bin/env bash
##
##  Script to create AI-Speaker package repos
##
##  Copyright 2021 AI-Speaker <info@ai-speaker.com>
##

echo "Publish cross-compiled packages to http://powiedz.co/apt/dists/dom-dev/test/..."
ssh staging:/var/www/ais-debs-staging "./var/www/github_action_hooks/publish_test_repo.sh"


exit 0
