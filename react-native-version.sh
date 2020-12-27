
branch=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)

echo "Running react-native-version on branch: ${branch}"

if [ $branch == "master" ]
then
  react-native-version --never-amend
else
  react-native-version --never-amend --never-increment-build
fi
