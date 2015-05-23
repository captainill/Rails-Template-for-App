if [ "$1" = "prod" ]; then
  echo "Pushing to http://repo.com ..."
  git subtree push --prefix blocks git@heroku.com:repo.git master
else
  echo "Pushing to http://repostage.herokuapp.com ..."
  git subtree push --prefix blocks git@heroku.com:repostage.git master
fi
