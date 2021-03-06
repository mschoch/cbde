#!/bin/sh

BRANCH="master"
TAGNAME=`date -u +"%Y%m%d"`

# Are we on the right branch?
if [ "$TRAVIS_BRANCH" = "$BRANCH" ]; then

  # Is this not a Pull Request?
  if [ "$TRAVIS_PULL_REQUEST" = false ]; then

    # Is this not a build which was triggered by setting a new tag?
    if [ -z "$TRAVIS_TAG" ]; then
      echo -e "Starting to tag commit.\n"

      # Add tag and push to master.
      git tag -a v${TAGNAME} -m "Travis build v$TAGNAME pushed a tag."
      echo -e "tagged\n"
      #git push origin --tags
      #echo -e "pushed\n"
      #git fetch origin


      echo -e "Done magic with tags.\n"
  fi
  fi
fi
