# path, the 0 in the filename causes this to load first

pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"

#custom
pathAppend "$HOME/.rvm/bin" # Add RVM to PATH for scripting
pathAppend "$HOME/devel/mip-db/docker_scripts" #docker specific script
pathAppend "/usr/local/opt/mysql@5.6/bin"

export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"
#export PHANTOMJS_BIN=/usr/local/Cellar/phantomjs/1.9.8/bin
export SPARK_HOME=/Users/tema/devel/spark-2.1.0 
