# pull
git pull
# credential caching, it will be cached for 72000 seconds (20 hour) .
git config --global credential.helper 'cache --timeout 7200'

# changes
# builds=`ls packages/z*/build.sh`
builds=`ls packages/[p-z]*/build.sh`
for build in $builds; do
  echo "Adding line to file: $build"
  echo "" >> $build
  git add $build
  git commit -m "$build"
  git push
  echo "Sleep 5 minutes"
  sleep 300
  echo "done ------------------"
done


# builds=`ls packages/n*/build.sh`
# for build in $builds; do
#   echo "Remove back, the line from the end of the file: $build"
#   sed -i '/^$/d' $build
#   git add $build
#   git commit -m "$build"
#   git push
#   echo "Sleep 5 minutes"
#   sleep 300
#   echo "done ------------------"
# done
