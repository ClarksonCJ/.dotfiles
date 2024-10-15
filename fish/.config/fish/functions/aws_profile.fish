function aws_profile
set -gx AWS_PROFILE (aws configure list-profiles | fzf)
end
