# path, the 0 in the filename causes this to load first
path=(
  $path
  $HOME/.yadr/bin
  $HOME/.yadr/bin/yadr
)

export PATH=$PATH:$HOME/.yadr/bin:$HOME/.yadr/bin/yadr
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"
#export PHANTOMJS_BIN=/usr/local/Cellar/phantomjs/1.9.8/bin

export P4_HOME=/Users/tema/bin
export P4PORT=source.corp.agkn.net:1666
export P4USER=artem
export P4PASSWD=artem
export P4CLIENT=artem-temamac
export PATH=$PATH:$P4_HOME
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Boot2docker environment
# export DOCKER_HOST=tcp://$(boot2docker ip):2376 
# export DOCKER_CERT_PATH=/Users/tema/.boot2docker/certs/boot2docker-vm 
# export DOCKER_TLS_VERIFY=1
# export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

