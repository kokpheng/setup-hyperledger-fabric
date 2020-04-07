#~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"


export BASEHOME=/home/blockchain
#--------------------------------

# JAVA ENV
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/jdk1.8.0_221"
export PATH=$JAVA_HOME/bin:$PATH

# GO
export GOPATH=$BASEHOME/gopath
export GOROOT=$BASEHOME/go
export PATH=$PATH:$GOROOT/bin

# HYPERLEDGER FABRIC
export HL_FABRIC_VERSION=hlfv14
export FABRIC_VERSION=hlfv14
export HL_FABRIC_TOOLS=$BASEHOME/hyperledger/fabric-samples
export PATH=$PATH:$HL_FABRIC_TOOLS/bin
export FABRIC_START_TIMEOUT=30

# HYPERLEDGER FABRIC CA
export FABRIC_CA_HOME=$GOPATH/src/github.com/hyperledger/fabric-ca
