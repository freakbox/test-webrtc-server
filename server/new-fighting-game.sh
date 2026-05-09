#!/bin/sh
printf '\033c\033]0;%s\a' new-fighting-game
base_path="$(dirname "$(realpath "$0")")"
"$base_path/new-fighting-game.x86_64" "$@"
