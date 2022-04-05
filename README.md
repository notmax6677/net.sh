# net.sh

This is a simple wifi network tool with a few functions to simplify your life as much as it can, when it comes to managing wifi networks in a linux shell.

For idiots like me, it can be extremely torturing to have to deal with stuff like this. It comes in handy when running a window manager like i3 on a laptop.. without ethernet.. it can be a pain in the ass to manage your connections without a built in out-of-the-box network manager that other systems may have, like ones running KDE, GNOME, or XFCE.

## Prerequisites
* nmcli
* tput

You probably have these installed on your linux system anyways lol

## Installation
Literally just curl, wget, or download net.sh and add it to your path, wherever that may be.

wget:
```sh
wget https://raw.githubusercontent.com/notmax6677/net.sh/main/net.sh
```

curl:
```sh
curl https://raw.githubusercontent.com/notmax6677/net.sh/main/net.sh -o net.sh
```

You will probably need to make it an executable too:
```sh
chmod +x net.sh
```

For the sake of not having to write the extension every time you use the program, you can just remove it:
```sh
mv PATH_TO_FOLDER/net.sh PATH_TO_FOLDER/net
```

## Usage
Now, we can finally get our hands on this and start using it.

##### Connecting to a network (with password)
```sh
./net connect NETWORK_NAME PASSWORD
```

#### Connecting to a network (without password)
```sh
./net connect NETWORK_NAME
```

#### Disconnecting from a network
```sh
./net disconnect NETWORK_NAME
```

And finally...

#### List nearby/available networks
A nice bonus from this is that NMCLI will actually print an asterisk next to the connection that you are currently connected to, if there is one.
```sh
./net list
```

And that's all, go crazy with this lol
