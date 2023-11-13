#! /bin/bash
tmux -V > /dev/null 2>&1

if [ $? -ne 0 ]; then
  yum install -y tmux > /dev/null 2>&1
if

touch ~/.lsj-tmux.conf
cat > ~/.lsj-tmux.conf <<EOF
set -g mode-mouse on  
EOF

tmux source-file ~/.lsj-tmux.conf
