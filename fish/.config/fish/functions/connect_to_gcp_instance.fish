function connect_to_gcp_instance
  # Get the Instance ID and Name of the selected instance
  set instance_info (gcloud compute instances list --filter="status=RUNNING" --format="json" | jq -r '.[] | "\(.name) \(.id)"' | fzf --with-nth=1 --delimiter=" ")

  # Extract the Instance ID and Name
  set instance_name (echo $instance_info | awk '{print $1}')
  set instance_id (echo $instance_info | awk '{print $2}')

  # Check if an instance was selected
  if test -z "$instance_id"
    echo "No instance selected."
    return 1
  end

  # Establish an SSH connection to the selected instance
  gcloud compute ssh $instance_name
end
