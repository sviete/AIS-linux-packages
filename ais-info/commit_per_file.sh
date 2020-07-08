# get changed files

# TODO
# git config remote.origin.url https://xx:xxx@github.com/sviete/AIS-linux-packages.git

files=`git diff --name-only`
for file in $files; do
  echo "Adding file: $file"
  git add $file
  git commit -m "build $file"
  # TODO git push
  echo "------------------"
done
