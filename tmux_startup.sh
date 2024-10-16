#!/bin/bash
# var for session name (to avoid repeated occurences)
sn=tonyWork
LLVM="/path/to/your/llvm/"
HOME="/home/yanjjian/"
# Start the session and window 0 in /etc
#   This will also be the default cwd for new windows created
#   via a binding unless overridden with default-path.
cd $LLVM/clangDbg
tmux new-session -s "$sn" -n "clangDbg" -d

# Create a bunch of windows in /var/log
cd $LLVM/clang
tmux new-window -t "$sn:1" -n "clang"
cd $LLVM/
tmux new-window -t "$sn:2" -n "src"
cd $HOME/work
tmux new-window -t "$sn:3" -n "work1"
cd $HOME/work
tmux new-window -t "$sn:4" -n "work2"
cd $HOME/script
tmux new-window -t "$sn:5" -n "script"
cd $HOME/summary
tmux new-window -t "$sn:6" -n "summary"
cd $HOME/tests
tmux new-window -t "$sn:7" -n "tests"

# Set the default cwd for new windows (optional, otherwise defaults to session cwd)
#tmux set-option default-path /

# Select window #1 and attach to the session
tmux select-window -t "$sn:2"
tmux -2 attach-session -t "$sn"

