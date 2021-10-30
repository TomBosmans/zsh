function add_file() {
  [ -f "$HOME/.zsh/$1" ] && source "$HOME/.zsh/$1"
}

function add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  if [ -d "$HOME/.zsh/plugins/$PLUGIN_NAME" ]; then
    # For plugins
    add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
    add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
  else
    git clone "https://github.com/$1.git" "$HOME/.zsh/plugins/$PLUGIN_NAME"
  fi
}
