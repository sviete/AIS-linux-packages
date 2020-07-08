# pull
git pull
# credential caching, it will be cached for 72000 seconds (20 hour) .
git config --global credential.helper 'cache --timeout 7200'

# chang
builds=`ls packages/*/build.sh`
for build in $builds; do
  echo "Adding line to file: $build"
  echo "" >> $build
  git add $build
  git commit -m "$build"
  git push
  sleep 100
  echo "done ------------------"
done
