# Load any user customizations prior to load
#
if [ -d $HOME/.zsh.before/ ]; then
  if [ "$(ls -A $HOME/.zsh.before/)" ]; then
    for config_file ($HOME/.zsh.before/*.zsh) source $config_file
  fi
fi

#szh completions
source /usr/local/share/zsh/site-functions/_aws
source /usr/local/share/zsh/site-functions/_docker
source /usr/local/share/zsh/site-functions/_docker-compose
