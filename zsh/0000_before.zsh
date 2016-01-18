# Load any user customizations prior to load
#
if [ -d $HOME/.zsh.before/ ]; then
  if [ "$(ls -A $HOME/.zsh.before/)" ]; then
    for config_file ($HOME/.zsh.before/*.zsh) source $config_file
  fi
fi

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.3.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
  # export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# aws cli zsh completion
source /usr/local/share/zsh/site-functions/_aws

# Run the following in your shell to set the Docker env
# eval "$(docker-machine env default)"