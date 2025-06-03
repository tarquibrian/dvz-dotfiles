if status is-interactive
    set -g fish_greeting ''
    if not set -q TMUX
        tmux has-session -t devanzire >/dev/null 2>&1
        if test $status -eq 0
            tmux attach-session -t devanzire
        else
            tmux new-session -s devanzire
        end
    end
end
