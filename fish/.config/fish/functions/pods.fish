function pods --description 'Get list of pod names for current namespace'
    set -l KOUT (kubectl get pods -o=jsonpath='{range .items..metadata}{.name}{"\n"}{end}' | fzf)
    if test -n "$KOUT"
        commandline -i $KOUT
    end
end

