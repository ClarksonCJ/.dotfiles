# gh-secret-list
# Autogenerated from man page /usr/local/share/man/man1/gh-secret-list.1
complete -c gh-secret-list -s a -l app -d 'List secrets for a specific application: {actions|codespaces|dependabot}'
complete -c gh-secret-list -s e -l env -d 'List secrets for an environment'
complete -c gh-secret-list -s q -l jq -d 'Filter JSON output using a jq expression'
complete -c gh-secret-list -l json -d 'Output JSON with the specified fields'
complete -c gh-secret-list -s o -l org -d 'List secrets for an organization'
complete -c gh-secret-list -s t -l template -d 'Format JSON output using a Go template; see "gh help formatting"'
complete -c gh-secret-list -s u -l user -d 'List a secret for your user OPTIONS INHERITED FROM PARENT COMMANDS'
complete -c gh-secret-list -s R -l repo -d 'Select another repository using the [HOST/]OWNER/REPO format SEE ALSO'

