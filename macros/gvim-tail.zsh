#!/bin/zsh
#------------------------------------------------------------------------------
#  Description: Works like "tail -f" .
#   Maintainer: Martin Krischik (krischik@users.sourceforge.net)
#               Jason Heddings (vim at heddway dot com)
#    Copyright: (C) 2006 … 2022 Martin Krischik
#      Version: 3.0
#      History: 22.09.2006 MK Improve for vim 7.0
#               15.10.2006 MK Bram's suggestion for runtime integration
#		05.11.2006 MK Bram suggested to save on spaces
#               07.11.2006 MK Tabbed Tail
#               31.12.2006 MK Bug fixing
#               01.01.2007 MK Bug fixing
#               17.11.2007 Now with Startup Scripts.
#               17.11.2022 Add macros to dain bundle
#    Help Page: tail.txt
#------------------------------------------------------------------------------

setopt X_Trace;

for I ; do
    if
        gvim --servername "tail" --remote-send ":TabTail ${I}<CR>";
    then
        ; # do nothing
    else
        gvim --servername "tail" --remote-silent +":TabTail %<CR>" "${I}"
    fi
done;

#------------------------------------------------------------------------------
#   Vim is Charityware - see ":help license" or uganda.txt for licence details.
#------------------------------------------------------------------------------
# vim: set nowrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab :
# vim: set textwidth=0 filetype=zsh foldmethod=marker nospell :
