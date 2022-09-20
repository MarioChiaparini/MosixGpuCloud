#!/bin/sh -
#################
# CLUSTER ENV   #
#################

USER="$USER"
command=$(basename $0)

#checking the respective nodes 

function check-nodes{
    echo $USER 
    grep "login" /etc/hosts && \
    grep "nodes" /etc/hostos 
}

function running-nodes{
    echo $USER
    if ["$1"]
    then 
      File=$1
    else 
      echo -n "File name:"
      read FIle 
    fi 

    echo "Who is up"
    for worker in $(worker)
    do
      echo "$worker..."
      ping $worker -c | grep "packet loss"
    done 
}

function node-hostname{
    grep "node" /etc/hosts 
}




