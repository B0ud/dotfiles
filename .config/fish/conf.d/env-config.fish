# Env Variable
set -x GRAALVM_HOME /usr/lib/jvm/graalvm
set -x JAVA_HOME (readlink -f /usr/bin/java | sed "s:bin/java::")
set -x PATH $PATH ~/.npm-global/bin
set -x PATH $PATH /home/boud/.minishift/cache/oc/v3.11.0/linux 
set -x PATH $PATH /home/boud/Openshift
set -x PATH $PATH $GRAALVM_HOME/bin

#set -x LC_ALL  fr_FR.utf8
#set -x LANG    fr_FR.utf8
#set -x LANGUAGE   fr_FR.utf8
set -x LC_CTYPE fr_FR.utf8