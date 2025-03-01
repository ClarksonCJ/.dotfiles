# kubectl-drain
# Autogenerated from man page /usr/local/share/man/man1/kubectl-drain.1
complete -c kubectl-drain -l chunk-size -d '	Return large lists in chunks rather than all at once.  Pass 0 to disable'
complete -c kubectl-drain -l delete-emptydir-data -d '	Continue even if there are pods using emptyDir (local data that will be dele…'
complete -c kubectl-drain -l delete-local-data -d '	Continue even if there are pods using emptyDir (local data that will be dele…'
complete -c kubectl-drain -l disable-eviction -d '	Force drain to use delete, even if eviction is supported'
complete -c kubectl-drain -l dry-run -d '	Must be "none", "server", or "client"'
complete -c kubectl-drain -l force -d '	Continue even if there are pods that do not declare a controller'
complete -c kubectl-drain -l grace-period -s 1 -d '	Period of time in seconds given to each pod to terminate gracefully'
complete -c kubectl-drain -l ignore-daemonsets -d '	Ignore DaemonSet-managed pods'
complete -c kubectl-drain -l pod-selector -d '	Label selector to filter pods on the node'
complete -c kubectl-drain -s l -l selector -d '	Selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-drain -l skip-wait-for-delete-timeout -d '	If pod DeletionTimestamp older than N seconds, skip waiting for the pod'
complete -c kubectl-drain -l timeout -d '	The length of time to wait before giving up, zero means infinite OPTIONS INH…'
complete -c kubectl-drain -l as -d '	Username to impersonate for the operation'
complete -c kubectl-drain -l as-group -d '	Group to impersonate for the operation, this flag can be repeated to specify…'
complete -c kubectl-drain -l as-uid -d '	UID to impersonate for the operation'
complete -c kubectl-drain -l azure-container-registry-config -d '	Path to the file containing Azure container registry configuration informati…'
complete -c kubectl-drain -l cache-dir -d '	Default cache directory'
complete -c kubectl-drain -l certificate-authority -d '	Path to a cert file for the certificate authority'
complete -c kubectl-drain -l client-certificate -d '	Path to a client certificate file for TLS'
complete -c kubectl-drain -l client-key -d '	Path to a client key file for TLS'
complete -c kubectl-drain -l cluster -d '	The name of the kubeconfig cluster to use'
complete -c kubectl-drain -l context -d '	The name of the kubeconfig context to use'
complete -c kubectl-drain -l disable-compression -d '	If true, opt-out of response compression for all requests to the server'
complete -c kubectl-drain -l insecure-skip-tls-verify -d '	If true, the server\'s certificate will not be checked for validity'
complete -c kubectl-drain -l kubeconfig -d '	Path to the kubeconfig file to use for CLI requests'
complete -c kubectl-drain -l match-server-version -d '	Require server version to match client version'
complete -c kubectl-drain -s n -l namespace -d '	If present, the namespace scope for this CLI request'
complete -c kubectl-drain -l password -d '	Password for basic authentication to the API server'
complete -c kubectl-drain -l profile -d '	Name of profile to capture'
complete -c kubectl-drain -l profile-output -d '	Name of the file to write the profile to'
complete -c kubectl-drain -l request-timeout -d '	The length of time to wait before giving up on a single server request'
complete -c kubectl-drain -s s -l server -d '	The address and port of the Kubernetes API server'
complete -c kubectl-drain -l tls-server-name -d '	Server name to use for server certificate validation'
complete -c kubectl-drain -l token -d '	Bearer token for authentication to the API server'
complete -c kubectl-drain -l user -d '	The name of the kubeconfig user to use'
complete -c kubectl-drain -l username -d '	Username for basic authentication to the API server'
complete -c kubectl-drain -l version -d '	--version, --version=raw prints version information and quits; --version=vX'
complete -c kubectl-drain -l warnings-as-errors -d '	Treat warnings received from the server as errors and exit with a non-zero e…'

