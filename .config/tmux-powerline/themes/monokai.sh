# Generated with Gemini on May 3 2025

thm_bg="#272823"
thm_fg="#d6d6d6"
thm_cyan="#6c99bb" # Using Blue as the closest match
thm_black="#272823"
thm_gray="#797979"
thm_magenta="#9e86c8"
thm_pink="#b05279"
thm_blue="#6c99bb"
thm_black4="#797979" # Using Comments color for a darker shade
rosewater="#d6d6d6"  # Using White as a lighter neutral
flamingo="#b05279"
pink="#b05279"
mauve="#9e86c8"
red="#e87d3e"    # Using Orange as a vibrant red alternative
maroon="#e87d3e" # Using Orange as a close Monokai equivalent
peach="#e5b567"
yellow="#e5b567"
green="#b4d273"
teal="#6c99bb" # Using Blue as a close Monokai equivalent
sky="#6c99bb"
sapphire="#6c99bb"
blue="#6c99bb"
lavender="#9e86c8"
text="#d6d6d6"
subtext1="#bababa" # A slightly darker shade of White
subtext0="#a0a0a0" # An even darker shade
overlay2="#797979"
overlay1="#606060" # A darker shade of Comments
overlay0="#474747" # Even darker
surface2="#474747"
surface1="#3a3a3a" # Slightly lighter than background
surface0="#272823"
base="#272823"
mantle="#272823"
crust="#272823"
eggplant="#9e86c8"
sky_blue="#6c99bb"
spotify_green="#b4d273"
spotify_black="#272823"

# shellcheck shell=bash
# Default Theme
# If changes made here does not take effect, then try to re-create the tmux session to force reload.

if patched_font_in_use; then
    TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
    TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
    TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
    TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
else
    TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
    TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
    TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
    TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

# See Color formatting section below for details on what colors can be used here.
TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'#272823'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'#d6d6d6'}
# shellcheck disable=SC2034
TMUX_POWERLINE_SEG_AIR_COLOR=$(air_color)

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

# See `man tmux` for additional formatting options for the status line.
# The `format regular` and `format inverse` functions are provided as conveniences

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_CURRENT" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_CURRENT=(
        "#[$(format inverse)]"
        "$TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR"
        " #I#F "
        "$TMUX_POWERLINE_SEPARATOR_RIGHT_THIN"
        " #W "
        "#[$(format regular)]"
        "$TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR"
    )
fi

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_STYLE" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_STYLE=(
        "$(format regular)"
    )
fi

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_FORMAT" ]; then
    TMUX_POWERLINE_WINDOW_STATUS_FORMAT=(
        "#[$(format regular)]"
        "  #I#{?window_flags,#F, } "
        "$TMUX_POWERLINE_SEPARATOR_RIGHT_THIN"
        " #W "
    )
fi

# shellcheck disable=SC1143,SC2128
if [ -z "$TMUX_POWERLINE_LEFT_STATUS_SEGMENTS" ]; then
    TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
        "hostname $thm_blue $thm_bg"
        "tmux_session_info $green $thm_bg"
        "mode_indicator $thm_bg $thm_fg"
        #"ifstat 30 255"
        #"ifstat_sys 30 255"
        # "vcs_branch brightcyan black"
        #"vcs_compare 60 255"
        # "vcs_staged brightred brightwhite"
        # "vcs_modified red brightwhite"
        #"vcs_others 245 0"
    )
fi

# shellcheck disable=SC1143,SC2128
if [ -z "$TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS" ]; then
    TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
        "vpn 24 $thm_fg default_separator no_sep_bg_color no_sep_fg_color"
        "wan_ip $thm_bg $thm_fg default_separator no_sep_bg_color no_sep_fg_color right_disable"
        "lan_ip $thm_bg $thm_fg default_separator no_sep_bg_color no_sep_fg_color left_disable"
        "battery $thm_magenta $thm_bg"
        "date_day $thm_bg $thm_fg default_separator no_sep_bg_color no_sep_fg_color"
        "date $thm_bg $thm_fg · $thm_bg $thm_fg"
        "time $thm_bg $thm_fg · $thm_bg $thm_fg"
    )
fi
