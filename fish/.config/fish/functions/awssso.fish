function awssso
set -lx PROFILE (aws configure list-profiles | fzf)
if test -n "$PROFILE"
aws sso login --profile $PROFILE
set -gx AWS_PROFILE $PROFILE
end
end
