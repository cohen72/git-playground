#!/bin/sh


# uri = URI("https://colucom.atlassian.net/rest/agile/1.0/board/54/sprint?state=active&maxResults=1")
# JIRA_USER="yehuda@colu.com"
# JIRA_API_TOKEN="Z8bj30qCy9uRzOaGG3mWB1ED"


admin_user="yehuda@colu.com"
api_token="admZ8bj30qCy9uRzOaGG3mWB1EDin"

user="tomd"
url="https://colucom.atlassian.net/rest/agile/1.0/board/54/sprint?state=active&maxResults=1"

# curl -s -u "${admin_user}:${admin_password}" ${url}

# curl -u username:password -i -H 'Accept:application/json' http://example.com


# response=$(curl -u "${admin_user}:${admin_password}" -X GET -H "Content-Type: application/json" ${url})

base64_string="eWVodWRhQGNvbHUuY29tOmFkbVo4YmozMHFDeTl1UnpPYUdHM21XQjFFRGlu"

# response=$(curl -H "Authorization: Basic ${base64_string}" -X GET -H "Content-Type: application/json" ${url})

curl -v ${url} --user "${admin_user}:${api_token}"

# response2=$(curl -u "${admin_user}:${api_token}" -i \
#     -H 'Accept:application/json' \
#     -H 'Authorization:Basic ${base64_string}' \
#     ${url})

# echo $response


# export JIRA='login:password'
# export JIRA_API=https://example.com/jira/rest/api/2
# export JIRA_CERT=/full/path/to/certificate/file
# export JIRA_KEY=/full/path/to/private/key/file
# export JIRA_CA=/full/path/to/certificate/authority/file

# function jiraApi() {
#     DATA_PARAM='-'

#     if [[ PUT == ${1} || POST == ${1} ]]
#     then
#         DATA_PARAM='@-'
#     fi

#     if [[ -z ${3} ]]
#     then
#         curl  --user "${JIRA}" \
#               --cert "${JIRA_CERT}" \
#               --key "${JIRA_KEY}" \
#               --cacert "${JIRA_CA}" \
#               --header 'Content-Type: application/json' \
#               --request "${1}" \
#               --data "${DATA_PARAM}" \
#               --silent \
#               "${JIRA_API}/${2}"
#     else
#         echo "${3}" |
#         curl  --user "${JIRA}" \
#               --cert "${JIRA_CERT}" \
#               --key "${JIRA_KEY}" \
#               --cacert "${JIRA_CA}" \
#               --header 'Content-Type: application/json' \
#               --request "${1}" \
#               --data "${DATA_PARAM}" \
#               --silent \
#               "${JIRA_API}/${2}"
#     fi
# }

# function jiraGet() {
#     jiraApi GET "${@}"
# }

# function jiraPost() {
#     jiraApi POST "${@}"
# }

# function jiraPut() {
#     jiraApi PUT "${@}"
# }