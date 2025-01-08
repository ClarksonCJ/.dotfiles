function create_worktree
    git worktree add -b $argv[1] $argv[1]
end
