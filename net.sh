#!/bin/bash

# overview:
# -----------------
# This is a simple wifi network tool with a few functions to simplify your life as much as it can, 
# when it comes to managing wifi networks in a linux shell.
# -----------------

# syntax error message
syntax_error()
{
 # in red
 tput setaf 1; echo "There was a syntax error."
 
 # if a message is passed into the error function, then print it
 if [ ! -z "$1" ]; then
  echo "" # skip line

  tput setaf 1; echo $1
 fi

 echo "" # skip line

 # in white
 tput sgr0; echo "Here's an example of this executable's usage:"

 echo "" # skip line

 # in green
 tput setaf 2; echo "./net.sh connect $NETWORK_NAME $PASSWORD"

 echo "" # skip line
}

echo "" # skip first line

# if first parameter isn't nil, go on with program, if it is
# return an error
if [ ! -z "$1" ]; then
 # connect to a network
 if [ $1 == "connect" ]; then

  # in green, specify that all further output is from nmcli
  tput setaf 2; echo "NMCLI"
  
  # if password is specified, connect with password, otherwise connect without password
  if [ ! -z "$3" ]; then
   nmcli d wifi connect $2 password $3 # with pass
  else
   nmcli d wifi connect $2 # without pass
  fi

 # disconnect from all networks
 elif [ $1 == "disconnect" ]; then

   # in green, specify that all further output is from nmcli
  tput setaf 2; echo "NMCLI"
  
  # attempt to disconnect from given network
  nmcli c down $2

 # list all networks
 elif [ $1 == "list" ]; then

  # in green, specify that all further output is from nmcli
  tput setaf 2; echo "NMCLI"

  # list all available wifi networks
  nmcli d wifi list

 # incorrect syntax
 else
  syntax_error "Unknown action."
 fi

else
 syntax_error "No action was specified."
fi


