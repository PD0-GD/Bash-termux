command="bashinst"

script_dir="/data/data/com.termux/files/home/Bash-termux"

ln -s "$script_dir/bash.sh" "/data/data/com.termux/files/usr/bin/$command"

echo 'export PATH=$PATH:'"$script_dir" >> ~/.bashrc

source ~/.bashrc

echo "Installation complete. You can now use '$command' to run your script."
