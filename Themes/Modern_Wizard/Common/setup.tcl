## $Id$
##
## BEGIN LICENSE BLOCK
##
## Copyright (C) 2002  Damon Courtney
##
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License
## version 2 as published by the Free Software Foundation.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License version 2 for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the
##     Free Software Foundation, Inc.
##     51 Franklin Street, Fifth Floor
##     Boston, MA  02110-1301, USA.
##
## END LICENSE BLOCK

proc ::ThemeSetup {} {

    global _FG
    global _BG
    set _FG [style default . -foreground]
    set _BG [style default . -background]

    option add *font  TkTextFont

    if {$::tcl_platform(platform) ne "windows"} {
       	option add *background          $_BG
       	option add *foreground          $_FG
       	option add *selectForeground    [style default . -selectforeground]
       	option add *selectBackground    [style default . -selectbackground]

       	option add *Listbox.background  $_BG
       	option add *Listbox.foreground  $_FG

       	option add *Entry.background    $_BG
       	option add *Entry.foreground    $_FG
       	option add *Entry.borderWidth   1

       	option add *Text.background     $_BG
       	option add *Text.foreground     $_FG
    }
}
