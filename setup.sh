#!/bin/bash

echo -e ''
echo -e '\e[0;36m'
echo -e '__          ___    _          _      ______ ____  '
echo -e ' \ \        / / |  | |   /\   | |    |  ____|___ \ '
echo -e '  \ \  /\  / /| |__| |  /  \  | |    | |__    __) |'
echo -e '   \ \/  \/ / |  __  | / /\ \ | |    |  __|  |__ < '
echo -e '    \  /\  /  | |  | |/ ____ \| |____| |____ ___) |'
echo -e '     \/  \/   |_|  |_/_/    \_\______|______|____/ '
echo -e '                                                   '
echo -e '\e[0m'
echo -e ''                           
GREEN="\e[32m"
NC="\e[0m"
BINARY=$(uname -m)

#!/bin/bash

exists() {
  command -v "$1" >/dev/null 2>&1
}

is_valid_amount() {
  local re='^[0-9]+$'
  if [[ $1 =~ $re ]] && [ "$1" -gt 4999 ]; then
    return 0
  else
    return 1
  fi
}

if ! exists curl; then
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi

bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi


sudo apt install python3 python3-pip -y
python3 -m pip install python-dotenv;
python3 -m pip install buidl;
python3 -m pip install requests;
sudo apt update
sudo apt install bzip2 -y
git clone https://github.com/bestinslot-xyz/OPI-LC.git
cd OPI-LC/brc20/sqlite
wget https://opi-light-client-files.fra1.digitaloceanspaces.com/light_client_brc20_sqlite_last.sqlite3.tar.bz2
tar -xvf light_client_brc20_sqlite_last.sqlite3.tar.bz2
rm light_client_brc20_sqlite_last.sqlite3.tar.bz2
python3 initialise_sqlite.py