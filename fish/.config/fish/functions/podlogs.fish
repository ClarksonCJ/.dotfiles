function podlogs --description 'show stern logs for pod'
set -l POD (kubectl get pod -o=jsonpath='{range .items..metadata}{.name}{"\n"}{end}' | fzf)
if test -n $POD
set -l CONTAINER (kubectl get pod $POD -o=jsonpath="{.spec['containers', '.initContainers'][*].name}" | string split " " | fzf)
if test -n $CONTAINER
kubectl stern pod/$POD -c $CONTAINER
end
end
end
