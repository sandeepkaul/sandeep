#!/bin/bash
alias l="ls -ltrFh"

# IDE shortcuts
alias eclipse_for_c='cd /opt/eclipse/cpp-2020-03/eclipse; ./eclipse'
alias eclipse_for_java='cd /opt/eclipse/eclipse-java; ./eclipse'

#Source Shortcuts
alias reload='source ~/.bash_aliases; source /etc/environment;source ~/.bash_paths'


#Build Shortcuts
alias mcit='mvn -T 4 clean install -Dmaven.test.skip -Dfindbugs.skip=true'
alias mcio='mvn -T 4 clean install -o'
alias mci='mvn -T 4 clean install'

#Command Shortcuts
alias s='git status'
alias c='clear'


#Start servers
alias zookeeper_start='cd /opt/kafka/kafka_2.12-2.5.0;sh bin/zookeeper-server-start.sh config/zookeeper.properties &'
alias kafka_start='cd /opt/kafka/kafka_2.12-2.5.0;sh bin/kafka-server-start.sh config/server.properties &'
alias kafka_and_zookeeper_start='cd /opt/kafka/kafka_2.12-2.5.0;(sh bin/zookeeper-server-start.sh config/zookeeper.properties & ); sleep 5; (sh bin/kafka-server-start.sh config/server.properties &);'
alias zookeeper_and_kafka_start='kafka_and_zookeeper_start'



#Functions
alias pp='ps -aef | grep '
function title {
    echo -ne "\033]0;"$*"\007"
}

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

