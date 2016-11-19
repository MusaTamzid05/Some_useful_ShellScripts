#!/bin/bash

sudo apt-get update
sudo apt-get updgrade
audo apt-get install openssh-server

# type sudo vim /etc/ssh/sshd_config and change the default port that ssh listen to something that is 2000 >
# then restart the ssh setting by typing => sudo ssh restart => the output will show you the port number of the ssh running
# then start the server by typing ssh -p new_port localhost
# stop the ssh server =>  sudo ssh stop  (Dont forget to stop the server!!)


