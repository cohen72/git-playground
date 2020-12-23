git checkout develop
git merge --ff-only master
git push --force --set-upstream origin develop
git checkout master

git_branch=`git rev-parse --abbrev-ref HEAD`

# ensure on master branch
if [ "$git_branch" != "master" ]; then
  echo "🙅🏻‍♀️ Not so fast buddy, Youz gotta be on the 'master' branch!"
  exit  
fi

# esnsure branch is clean
if [ "$(git status --porcelain)" ]; then 
  echo "🙅🏻‍♂️ Tell your git repo to take a shower. It ain't clean!"
  exit
fi

#get latest git tag
latest_git_tag=$(git describe --abbrev=0)

#tag all white labels
whitelabels=(akronite internal)
for white_label in "${whitelabels[@]}"
do
  tag_name="${white_label}/${latest_git_tag}"
  git tag $tag_name
  git push origin $tag_name
done