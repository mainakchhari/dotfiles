# Installation

## Dependencies

- `~/.config/tmux-powerline/config.sh` should be present

## Imports

Ensure that your `~/.tmux.conf` points to the right file like so:

```bash
# (re)load config file (change file location to your tmux.conf)
bind r source-file ~/.config/tmux/tmux.conf
```

Then, type this in terminal if tmux is already running

```bash
tmux source ~/.tmux.conf
```

## Installing plugins

1. Add new plugin to `~/.tmux.conf` with `set -g @plugin '...'`
2. Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin.

You're good to go! The plugin was cloned to `~/.tmux/plugins/` dir and sourced.

## Uninstalling plugins

1. Remove (or comment out) plugin from the list.
2. Press `prefix` + <kbd>alt</kbd> + <kbd>u</kbd> (lowercase u as in **u**ninstall) to remove the plugin.

All the plugins are installed to `~/.tmux/plugins/` so alternatively you can
find plugin directory there and remove it.

## Key bindings

`prefix` + <kbd>I</kbd>

- Installs new plugins from GitHub or any other git repository
- Refreshes TMUX environment

`prefix` + <kbd>U</kbd>

- updates plugin(s)

`prefix` + <kbd>alt</kbd> + <kbd>u</kbd>

- remove/uninstall plugins not on the plugin list
