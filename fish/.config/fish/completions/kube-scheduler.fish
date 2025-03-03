# kube-scheduler
# Autogenerated from man page /usr/local/share/man/man1/kube-scheduler.1
complete -c kube-scheduler -l allow-metric-labels -d '	The map from metric-label to value allow-list of this label'
complete -c kube-scheduler -l authentication-kubeconfig -d '	kubeconfig file pointing at the \'core\' kubernetes server with enough rights …'
complete -c kube-scheduler -l authentication-skip-lookup -d '	If false, the authentication-kubeconfig will be used to lookup missing authe…'
complete -c kube-scheduler -l authentication-token-webhook-cache-ttl -d '	The duration to cache responses from the webhook token authenticator'
complete -c kube-scheduler -l authentication-tolerate-lookup-failure -d '	If true, failures to look up missing authentication configuration from the c…'
complete -c kube-scheduler -l authorization-always-allow-paths -d '	A list of HTTP paths to skip during authorization, i. e'
complete -c kube-scheduler -l authorization-kubeconfig -d '	kubeconfig file pointing at the \'core\' kubernetes server with enough rights …'
complete -c kube-scheduler -l authorization-webhook-cache-authorized-ttl -d '	The duration to cache \'authorized\' responses from the webhook authorizer'
complete -c kube-scheduler -l authorization-webhook-cache-unauthorized-ttl -d '	The duration to cache \'unauthorized\' responses from the webhook authorizer'
complete -c kube-scheduler -l azure-container-registry-config -d '	Path to the file containing Azure container registry configuration informati…'
complete -c kube-scheduler -l bind-address -d '	The IP address on which to listen for the --secure-port port'
complete -c kube-scheduler -l cert-dir -d '	The directory where the TLS certs are located'
complete -c kube-scheduler -l client-ca-file -d '	If set, any request presenting a client certificate signed by one of the aut…'
complete -c kube-scheduler -l config -d '	The path to the configuration file'
complete -c kube-scheduler -l contention-profiling -d '	DEPRECATED: enable block profiling, if profiling is enabled'
complete -c kube-scheduler -l disabled-metrics -d '	This flag provides an escape hatch for misbehaving metrics'
complete -c kube-scheduler -l feature-gates -d '	A set of key=value pairs that describe feature gates for alpha/experimental …'
complete -c kube-scheduler -s h -l help -d '	help for kube-scheduler'
complete -c kube-scheduler -l http2-max-streams-per-connection -d '	The limit that the server gives to clients for the maximum number of streams…'
complete -c kube-scheduler -l kube-api-burst -d '	DEPRECATED: burst to use while talking with kubernetes apiserver'
complete -c kube-scheduler -l kube-api-content-type -d '	DEPRECATED: content type of requests sent to apiserver'
complete -c kube-scheduler -l kube-api-qps -d '	DEPRECATED: QPS to use while talking with kubernetes apiserver'
complete -c kube-scheduler -l kubeconfig -d '	DEPRECATED: path to kubeconfig file with authorization and master location i…'
complete -c kube-scheduler -l leader-elect -d '	Start a leader election client and gain leadership before executing the main…'
complete -c kube-scheduler -l leader-elect-lease-duration -d '	The duration that non-leader candidates will wait after observing a leadersh…'
complete -c kube-scheduler -l leader-elect-renew-deadline -d '	The interval between attempts by the acting master to renew a leadership slo…'
complete -c kube-scheduler -l leader-elect-resource-lock -d '	The type of resource object that is used for locking during leader election'
complete -c kube-scheduler -l leader-elect-resource-name -d '	The name of resource object that is used for locking during leader election'
complete -c kube-scheduler -l leader-elect-resource-namespace -d '	The namespace of resource object that is used for locking during leader elec…'
complete -c kube-scheduler -l leader-elect-retry-period -d '	The duration the clients should wait between attempting acquisition and rene…'
complete -c kube-scheduler -l log-flush-frequency -d '	Maximum number of seconds between log flushes'
complete -c kube-scheduler -l logging-format -d '	Sets the log format.  Permitted formats: "text"'
complete -c kube-scheduler -l master -d '	The address of the Kubernetes API server (overrides any value in kubeconfig)'
complete -c kube-scheduler -l permit-address-sharing -d '	If true, SO_REUSEADDR will be used when binding the port'
complete -c kube-scheduler -l permit-port-sharing -d '	If true, SO_REUSEPORT will be used when binding the port, which allows more …'
complete -c kube-scheduler -l pod-max-in-unschedulable-pods-duration -d '	DEPRECATED: the maximum time a pod can stay in unschedulablePods'
complete -c kube-scheduler -l profiling -d '	DEPRECATED: enable profiling via web interface host:port/debug/pprof/'
complete -c kube-scheduler -l requestheader-allowed-names -d '	List of client certificate common names to allow to provide usernames in hea…'
complete -c kube-scheduler -l requestheader-client-ca-file -d '	Root certificate bundle to use to verify client certificates on incoming req…'
complete -c kube-scheduler -l requestheader-extra-headers-prefix -d '	List of request header prefixes to inspect.  X-Remote-Extra- is suggested'
complete -c kube-scheduler -l requestheader-group-headers -d '	List of request headers to inspect for groups.  X-Remote-Group is suggested'
complete -c kube-scheduler -l requestheader-username-headers -d '	List of request headers to inspect for usernames.  X-Remote-User is common'
complete -c kube-scheduler -l secure-port -d '	The port on which to serve HTTPS with authentication and authorization'
complete -c kube-scheduler -l show-hidden-metrics-for-version -d '	The previous version for which you want to show hidden metrics'
complete -c kube-scheduler -l tls-cert-file -d '	File containing the default x509 Certificate for HTTPS'
complete -c kube-scheduler -l tls-cipher-suites -d '	Comma-separated list of cipher suites for the server'
complete -c kube-scheduler -l tls-min-version -d '	Minimum TLS version supported'
complete -c kube-scheduler -l tls-private-key-file -d '	File containing the default x509 private key matching --tls-cert-file'
complete -c kube-scheduler -l tls-sni-cert-key -d '	A pair of x509 certificate and private key file paths, optionally suffixed w…'
complete -c kube-scheduler -s v -l v -d '	number for the log level verbosity'
complete -c kube-scheduler -l version -d '	--version, --version=raw prints version information and quits; --version=vX'
complete -c kube-scheduler -l vmodule -d '	comma-separated list of pattern=N settings for file-filtered logging (only w…'
complete -c kube-scheduler -l write-config-to -d '	If set, write the configuration values to this file and exit.  HISTORY'

