function docker_cleanup
    podman rm -f (podman container ls -aq)
    podman rmi -f (podman image ls -aq)
end
