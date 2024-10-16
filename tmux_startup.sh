#!/bin/bash
# var for session name (to avoid repeated occurences)
sn=tonyWork

# Start the session and window 0 in /etc
#   This will also be the default cwd for new windows created
#   via a binding unless overridden with default-path.
tmux new-session -s "$sn" -n "qdxcDbg" -d

# Create a bunch of windows in /var/log
cd /var/log
tmux new-window -t "$sn:1" -n "qdxc"
tmux new-window -t "$sn:2" -n "src"
tmux new-window -t "$sn:3" -n "work1"
tmux new-window -t "$sn:4" -n "work2"
tmux new-window -t "$sn:5" -n "script"
tmux new-window -t "$sn:6" -n "summary"
tmux new-window -t "$sn:7" -n "test"

# Set the default cwd for new windows (optional, otherwise defaults to session cwd)
#tmux set-option default-path /

# Select window #1 and attach to the session
tmux select-window -t "$sn:2"
tmux -2 attach-session -t "$sn"
