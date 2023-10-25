# kubectl-delete
# Autogenerated from man page /usr/local/share/man/man1/kubectl-delete.1
complete -c kubectl-delete -l all -d '	Delete all resources, in the namespace of the specified resource types'
complete -c kubectl-delete -s A -l all-namespaces -d '	If present, list the requested object(s) across all namespaces'
complete -c kubectl-delete -l cascade -d '	Must be "background", "orphan", or "foreground"'
complete -c kubectl-delete -l dry-run -d '	Must be "none", "server", or "client"'
complete -c kubectl-delete -l field-selector -d '	Selector (field query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-delete -s f -l filename -d '	containing the resource to delete'
complete -c kubectl-delete -l force -d '	If true, immediately remove resources from API and bypass graceful deletion'
complete -c kubectl-delete -l grace-period -s 1 -d '	Period of time in seconds given to the resource to terminate gracefully'
complete -c kubectl-delete -l ignore-not-found -d '	Treat "resource not found" as a successful delete'
complete -c kubectl-delete -s k -l kustomize -d '	Process a kustomization directory'
complete -c kubectl-delete -l now -d '	If true, resources are signaled for immediate shutdown (same as --grace-peri…'
complete -c kubectl-delete -s o -l output -d '	Output mode.  Use "-o name" for shorter output (resource/name)'
complete -c kubectl-delete -l raw -d '	Raw URI to DELETE to the server'
complete -c kubectl-delete -s R -l recursive -d '	Process the directory used in -f, --filename recursively'
complete -c kubectl-delete -s l -l selector -d '	Selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'. (e. g'
complete -c kubectl-delete -l timeout -d '	The length of time to wait before giving up on a delete, zero means determin…'
complete -c kubectl-delete -l wait -d '	If true, wait for resources to be gone before returning'
complete -c kubectl-delete -l as -d '	Username to impersonate for the operation'
complete -c kubectl-delete -l as-group -d '	Group to impersonate for the operation, this flag can be repeated to specify…'
complete -c kubectl-delete -l as-uid -d '	UID to impersonate for the operation'
complete -c kubectl-delete -l azure-container-registry-config -d '	Path to the file containing Azure container registry configuration informati…'
complete -c kubectl-delete -l cache-dir -d '	Default cache directory'
complete -c kubectl-delete -l certificate-authority -d '	Path to a cert file for the certificate authority'
complete -c kubectl-delete -l client-certificate -d '	Path to a client certificate file for TLS'
complete -c kubectl-delete -l client-key -d '	Path to a client key file for TLS'
complete -c kubectl-delete -l cluster -d '	The name of the kubeconfig cluster to use'
complete -c kubectl-delete -l context -d '	The name of the kubeconfig context to use'
complete -c kubectl-delete -l disable-compression -d '	If true, opt-out of response compression for all requests to the server'
complete -c kubectl-delete -l insecure-skip-tls-verify -d '	If true, the server\'s certificate will not be checked for validity'
complete -c kubectl-delete -l kubeconfig -d '	Path to the kubeconfig file to use for CLI requests'
complete -c kubectl-delete -l match-server-version -d '	Require server version to match client version'
complete -c kubectl-delete -s n -l namespace -d '	If present, the namespace scope for this CLI request'
complete -c kubectl-delete -l password -d '	Password for basic authentication to the API server'
complete -c kubectl-delete -l profile -d '	Name of profile to capture'
complete -c kubectl-delete -l profile-output -d '	Name of the file to write the profile to'
complete -c kubectl-delete -l request-timeout -d '	The length of time to wait before giving up on a single server request'
complete -c kubectl-delete -s s -l server -d '	The address and port of the Kubernetes API server'
complete -c kubectl-delete -l tls-server-name -d '	Server name to use for server certificate validation'
complete -c kubectl-delete -l token -d '	Bearer token for authentication to the API server'
complete -c kubectl-delete -l user -d '	The name of the kubeconfig user to use'
complete -c kubectl-delete -l username -d '	Username for basic authentication to the API server'
complete -c kubectl-delete -l version -d '	--version, --version=raw prints version information and quits; --version=vX'
complete -c kubectl-delete -l warnings-as-errors -d '	Treat warnings received from the server as errors and exit with a non-zero e…'

