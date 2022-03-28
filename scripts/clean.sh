#!/bin/bash

# initializing moving to git folder and loading commons
source _common.sh
cd ..
export BASE_PATH=`pwd`

function clean {
    error-check
        git pull
        error-check
        git fetch --all
        error-check

        # remove local merged branches that are not master or develop
        if git branch --merged | egrep -v "(^\*|master|dev)"; then
            # asking confirmation
            ask-confirmation "You are DELETING the following branches: $(git branch --merged | egrep -v '(^\*|master|dev)')"
            git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d
        else
            echo "[INFO] there are no local branches that are merged but no deleted"
        fi
        error-check
        git remote prune origin
        error-check
        # remove commit-id
        if [ -f output/commit-id.gitbuild ]; then
            rm output/commit-id.gitbuild
        fi
}

# cleaning microservices
clean
error-check