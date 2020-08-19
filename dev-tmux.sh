#!/bin/bash
tmux new-session -n main \; \
    send-keys 'cd Development/projects' C-m \; \
    split-window -h -p 65 \; \
    split-window -h \; \
    select-pane -t 2 \; \
    send-keys 'cd Development/projects' C-m \; \
    split-window -v \; \
    send-keys 'cd Development/projects' C-m \; \
    select-pane -t 1 \; \
    split-window -v -p 30 \; \
    send-keys 'htop' C-m \; \
    new-window -n secondary \; \
    split-window -h -p 65 \; \
    send-keys 'torsocks irssi' C-m \; \
    split-window -h \; \
    send-keys 'newsboat' C-m \; \
    split-window -v \; \
    send-keys 't' C-m \; \
