#!/bin/bash

# Make bash.sh executable
chmod +x ~/Bash-termux/bash.sh
chmod +x ~/Bash-termux/update.sh

# Define the command and directory
command="bashinst"
bash_dir=~/Bash-termux

# Create a symbolic link to the script
ln -s "$bash_dir/bash.sh" "/data/data/com.termux/files/usr/bin/$command"

# Update PATH
echo 'export PATH=$PATH:'"$bash_dir" >> ~/.bashrc
source ~/.bashrc

# Clear the terminal
clear

echo "Run '$command' to open."
