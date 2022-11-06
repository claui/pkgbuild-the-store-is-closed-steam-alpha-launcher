#!/usr/bin/env bash
set -eu

STEAM_APPDIR="${XDG_DATA_HOME:-"${HOME}/.local/share"}/Steam/steamapps/common"
EXE="${STEAM_APPDIR}/The Store is Closed ALPHA Playtest/SCP3008.exe"
PKG_USER_DATA_HOME="${XDG_DATA_HOME:-"${HOME}/.local/share"}/SCP3008"

export WINEARCH='win64'
export WINEPREFIX="${PKG_USER_DATA_HOME}/wine"
wine "${EXE}"
