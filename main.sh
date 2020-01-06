#!/usr/bin/env bash
#================================================================================#
#   Bash Template
#   Copyright (C) 2015 David Hayes [contact@evidex.me]
#   
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#   
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#================================================================================#
set -o errexit              # Exit if any command returns a non-true status
set -o pipefail             # Exit when part of pipe command fails
set -o nounset              # Exit on unset variables

#================================================================================#
# CONFIGURATION
#================================================================================#
# Global configuration options should be UPPER case and explicitly declared
declare -r GLOBAL_CONF="foobar"     
__DIR__="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__FILE__="${__DIR__}/$(basename "${BASH_SOURCE[0]}")"
__EXT__="${__FILE__##*.}"
__BASE__="$(basename "${__FILE__}" ."${__EXT__}")"

#================================================================================#
# STANDARD FUNCTIONS
#================================================================================#
function info  { logger -sp user.info $1 ;}
function debug { logger -sp user.debug $1 ;}
function err   { logger -sp user.err $1 ;}
#================================================================================#
# FUNCTIONS
#================================================================================#
function foo {
    # First few lines should be a plain description of what the function does. 
    #
    # $1: <type> <name> <desc>
    # 
    # Returns: Explain type, and expected content. 
    local -i my_local_int=500       # Make local variables, very local
}


#================================================================================#
# MAIN
#================================================================================#
function main {
   echo 
}
main "$@"
#================================================================================#
# EOF 
#================================================================================#

# I have a vast amount to learn about bash scripts, but it's a start at least.
