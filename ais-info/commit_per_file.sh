# get changed files

# credential caching, it will be cached for 7200 seconds (2 hour).
git config --global credential.helper 'cache --timeout 7200'

files=`git diff --name-only`
for file in $files; do
  echo "Adding file: $file"
  git add $file
  git commit -m "build $file"
  git push
  sleep 10
  echo "------------------"
done
