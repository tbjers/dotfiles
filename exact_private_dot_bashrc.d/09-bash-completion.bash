#!/usr/bin/env bash

bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set colored-stats on'
bind 'set colored-completion-prefix on'
bind 'set history-size 0'
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
