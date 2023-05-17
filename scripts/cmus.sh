#!/bin/env bash
# Inspiration: https://yulinling.net/zh/post/cmus/
# Bind this in q:
# :bind -f common q shell tmux detach-client -s cmus


if ! tmux has-session -t cmus 2>/dev/null; then
    tmux new-session -s cmus -d -n cmus "/usr/bin/cmus $@"
fi
tmux attach -d -t cmus
