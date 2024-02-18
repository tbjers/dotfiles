#!/usr/bin/env bash

term_program="${TERM_PROGRAM:-$TERMINAL_EMULATOR}"
term_program="${term_program%%-*}"
term_program="${term_program%%.*}"
term_program="${term_program,,}"

export EDITOR_TERMINAL="${term_program}"
