source _common.sh

read -p "Enter a the name of the branch: " BRANCH
git checkout -b ${JIRA_ID}${BRANCH}
git push origin ${JIRA_ID}${BRANCH}
echo ${JIRA_ID}${BRANCH} has been pushed!