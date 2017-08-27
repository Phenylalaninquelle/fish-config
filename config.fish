## aliases
alias update "sudo apt update; sudo apt upgrade -y"

## environment variables
set -gx JAVA_HOME "/usr/lib/jvm/java-8-oracle/jre"

set -gx BOOST_ROOT "/opt/boost/boost_1_61_0"

## PATH adjustments
set -l PATH_OPT_BIN "/opt/bin"

set -l PATH_USER_BIN "/home/jan/bin"

set -gx PATH $PATH $PATH_OPT_BIN $PATH_USER_BIN
