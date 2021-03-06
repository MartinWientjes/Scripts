#!/bin/sh

# fus
# This script uses OS X's "Fast User Switching"
# to switch to the user whose username is specified as a command-line arg.
# If no arg is specified, it brings up the login window.
#
# Based on a script on the MacOSXHints site:
# http://www.macosxhints.com/article.php?story=20031102031045417
#
# Cameron Hayne (macdev@hayne.net)  Feb 2004

MENUEXTRAS="/System/Library/CoreServices/Menu Extras"
CGSESSION="$MENUEXTRAS/User.menu/Contents/Resources/CGSession"

if [[ -z $1 ]]; then
    "$CGSESSION" -suspend
else
    USERID=`id -u $1`;
    if [[ -z $USERID ]]; then
        exit -1;
    fi;
    "$CGSESSION" -switchToUserID $USERID
fi;
