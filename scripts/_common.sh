APP_NAME=beleopard
REPO_NAME=beleopard
ORGANIZATION_REPO=StefanoZambrini
JIRA_ID=WBST-

function error-check() {
    if [ ! $? -eq 0 ]; then     
        echo "[ERROR]"
        exit 1
    fi
}