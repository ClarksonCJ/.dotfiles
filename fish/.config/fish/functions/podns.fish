function podns --description 'List all pods for a specified namespace'
    set -l NS (kubectl get ns -o=jsonpath='{range .items..metadata}{.name}{"\n"}{end}' | fzf)
    kubectl get pods -n $NS -o=jsonpath='{range .items..metadata}{.name}{"\n"}{end}' | fzf
end

