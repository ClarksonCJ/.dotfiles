function connect_to_ec2_instance --description 'Use SSM to connect to EC2 in current region'
set -l INSTANCE (aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].{InstanceId:InstanceId,Name:Tags[?Key=='Name'].Value|[0]}" --output json | jq -r '.[] | .[] | "\(.Name) \(.InstanceId)"' | fzf --with-nth=1 --delimiter=" " | awk '{print $2}')
if test -n "$INSTANCE"
aws ssm start-session --target $INSTANCE
end
end
