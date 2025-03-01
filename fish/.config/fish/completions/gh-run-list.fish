# gh-run-list
# Autogenerated from man page /usr/local/share/man/man1/gh-run-list.1
complete -c gh-run-list -s b -l branch -d 'Filter runs by branch'
complete -c gh-run-list -l created -d 'Filter runs by the date it was created'
complete -c gh-run-list -s e -l event -d 'Filter runs by which event triggered the run'
complete -c gh-run-list -s q -l jq -d 'Filter JSON output using a jq expression'
complete -c gh-run-list -l json -d 'Output JSON with the specified fields'
complete -c gh-run-list -s L -l limit -d 'Maximum number of runs to fetch'
complete -c gh-run-list -s s -l status -d 'Filter runs by status: {queued|completed|in_progress|requested|waiting|action…'
complete -c gh-run-list -s t -l template -d 'Format JSON output using a Go template; see "gh help formatting"'
complete -c gh-run-list -s u -l user -d 'Filter runs by user who triggered the run'
complete -c gh-run-list -s w -l workflow -d 'Filter runs by workflow OPTIONS INHERITED FROM PARENT COMMANDS'
complete -c gh-run-list -s R -l repo -d 'Select another repository using the [HOST/]OWNER/REPO format SEE ALSO'

