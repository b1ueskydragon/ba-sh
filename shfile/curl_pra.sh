# curl -H "${TOKEN_HEADER_NAME}: ${TOKEN}" ${REQUEST_URL} | ${OPTION}
# e. g.)
curl -H "MY-TOKEN: abc123" http://myworld.com/myfile.gz | gunzip
