
branch=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)

echo "Running react-native-version on branch: ${branch}"

if [ $branch == "master" ]
then
  echo "Running on master"
  react-native-version --never-amend --never-increment-build
else
echo "Not on master, incrementing build"
  react-native-version --never-amend
fi
