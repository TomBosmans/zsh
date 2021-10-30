#!/usr/bin/env zsh

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# COLORS
local nord0_term="-1"
local nord1_term="0"
local nord3_term="8"
local nord5_term="7"
local nord6_term="15"
local nord7_term="14"
local nord8_term="6"
local nord9_term="4"
local nord10_term="12"
local nord11_term="1"
local nord12_term="11"
local nord13_term="3"
local nord14_term="2"
local nord15_term="5"

local colors=" --color=bg+:$nord1_term,bg:$nord0_term,spinner:$nord9_term,hl:$nord3_term"\
" --color=fg:$nord5_term,header:$nord8_term,info:$nord10_term,pointer:$nord9_term"\
" --color=marker:$nord9_term,fg+:$nord6_term,prompt:$nord9_term,hl+:$nord9_term"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
$colors

applicationLauncher() {
  ls ~/.local/share/applications |\
  fzf --reverse \
      --bind 'enter:execute(gtk-launch {})+abort'
}
