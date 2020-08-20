#!/bin/bash
tmux new-session -n main \; \
    send-keys 'brew services' C-m \; \
    split-window -h -p 50 \; \
    send-keys 'cd Development' C-m \; \
    split-window -v -p 30\; \
    send-keys 'htop' C-m \; \
    select-pane -t 1 \; \
    split-window -h \; \
    send-keys 'cd Development' C-m \; \
    new-window -n secondary \; \
    send-keys 'newsboat' C-m \; \
    split-window -h -p 50 \; \
    send-keys 'torsocks irssi' C-m \; \
    split-window -v \; \
    send-keys 't' C-m \; \
