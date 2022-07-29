# Env Variable
set -x GRAALVM_HOME /usr/lib/jvm/graalvm
set -x JAVA_HOME (readlink -f /usr/bin/java | sed "s:bin/java::")
set -x PATH $PATH ~/node/.npm-global/bin
set -x PATH $PATH /home/boud/.minishift/cache/oc/v3.11.0/linux 
set -x PATH $PATH /home/boud/Openshift
set -x PATH $PATH $GRAALVM_HOME/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH /opt/kafka_2.12-2.5.0/bin


#set -x LC_ALL  fr_FR.utf8
#set -x LANG    fr_FR.utf8
#set -x LANGUAGE   fr_FR.utf8
set -x LC_CTYPE fr_FR.utf8
#set -x TERM xterm-256color 
alias ssh "env TERM=xterm-256color ssh"
alias vssh "env TERM=xterm-256color vagrant ssh"

