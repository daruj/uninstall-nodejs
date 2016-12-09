#!/bin/sh

#  echo 'remove the nvm commands from your .bash_profile or .profile'

##  while you still have npm  try to uninstall things with it
npm uninstall -g nvm
npm uninstall -g n
npm uninstall -g yarn

sudo npm cache clean -f


# in case it was installed with port
sudo port uninstall nodejs

# Uninstall with brew everything node related (needs to be before sudo password)
brew uninstall node
brew uninstall npm
brew uninstall nvm
brew uninstall n
brew uninstall yarn
brew prune

# after all brew uninstalls
brew cleanup

## remove nvm

rm -rf ~/.nvm
rm -rf ~/.npm
rm -rf ~/.bower
rm -rf $NVM_DIR ~/.npm ~/.bower



# (( ${#} > 0 )) || {
#   echo 'DISCLAIMER: USE THIS SCRIPT AT YOUR OWN RISK!'
#   echo 'THE AUTHOR TAKES NO RESPONSIBILITY FOR THE RESULTS OF THIS SCRIPT.'
#   echo "Disclaimer aside, this worked for the author, for what that's worth."
#   echo 'Press Control-C to quit now.'
#   read
#   echo 'Re-running the script with sudo.'
#   echo 'You may be prompted for a password.'
#   sudo ${0} sudo
#   exit $?
# }
# This will need to be executed as an Admin (maybe just use sudo).

for bom in org.nodejs.node.pkg.bom org.nodejs.pkg.bom; do

  receipt=/var/db/receipts/${bom}
  [ -e ${receipt} ] && {
    # Loop through all the files in the bom.
    lsbom -f -l -s -pf ${receipt} \
    | while read i; do
      # Remove each file listed in the bom.
      rm -v /usr/local/${i}
    done
  }

done

### another way to do it
lsbom -f -l -s -pf /var/db/receipts/org.nodejs.pkg.bom | while read f; do  sudo rm /usr/local/${f}; done
sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*


# Remove directories related to node.js.
sudo rm -rf /usr/local/{lib/node{,/.npm,_modules},bin,share/man}/{npm*,node*,man1/node*}
## these 2 lines are the same
sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* /usr/local/lib/dtrace/node.d ~/.npm ~/.node-gyp /opt/local/bin/node opt/local/include/node /opt/local/lib/node_modules

sudo rm -rf  /usr/local/lib/node_modules/npm/
rm -f /usr/local/bin/npm;
rm -f /usr/local/lib/dtrace/node.d;
rm -rf ~/.npm;
sudo rm -rf /usr/local/bin/npm

sudo rm -rf /usr/local/share/man/man1/node.1

sudo rm -rf /usr/local/lib/dtrace/node.d

sudo rm -rf ~/.npm

sudo rm -rf /usr/local/include/node*

sudo rm -rf /usr/local/lib/node*

rm -rf ~/node*
rm -rf ~/npm
rm -rf ~/.npm*
sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/include/node*
sudo rm -rf /usr/local/bin/node
sudo rm -rf /usr/local/bin/npm
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/node.d

rm -vrf /usr/local/lib/node \
  /usr/local/lib/node_modules \
  /var/db/receipts/org.nodejs.*

exit 0
