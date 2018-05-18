#!/bin/bash
if $(tmux has-session 2>/dev/null); then tmux -2u att; exit; fi
tmux -2u att
