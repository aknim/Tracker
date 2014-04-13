dir="/etc/tracker";
sudo mkdir -p "${dir}";
sudo chmod o+w "$dir";

#LINKING
userbin="$HOME/bin";
mkdir "${userbin}";
ln -s ./script.sh "${userbin}/t";

#BASHCOMPLETION
sudo cp bash_completion_t /etc/bash_completion.d/t;
. /etc/bash_completion.d/t;
