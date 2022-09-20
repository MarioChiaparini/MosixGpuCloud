#!/bin/bash

############
#USERS INFO#
############

USERNAME="$USER"

function get-ip{
    echo USERNAME 
    /sbin/ifconfig
    HOSTS = /etc/hosts 
    if HOSTS == "login"
    then 
    /sbin/hostanme -I 
    fi
}

USERS=$(lastlog -t 365|cut -f1 -d " "|uniq|grep -v "stud"|grep -v "phylo"|grep -v "Username"|wc -l)
printf "\n$(tput setab 4)Albiorix has had $USERS active users the last 12 months.$(tput sgr 0)\n"
