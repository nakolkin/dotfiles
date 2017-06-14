# path, the 0 in the filename causes this to load first
path=(
  $path
  $HOME/.yadr/bin
  $HOME/.yadr/bin/yadr
)
export PATH=$PATH:$HOME/.yadr/bin:$HOME/.yadr/bin/yadr
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"
#export PHANTOMJS_BIN=/usr/local/Cellar/phantomjs/1.9.8/bin
export SPARK_HOME=/Users/tema/devel/spark-2.1.0 


export PATH=$PATH:$P4_HOME
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/devel/mip-db/docker_scripts" #docker specific script
