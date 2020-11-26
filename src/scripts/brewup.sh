#!/bin/sh

# make executable by doing
# chmod +x brewup.sh



# set up a daily cronhjob 😱

# https://davidwalsh.name/cron-job -------------------------------------

# * * * * * /path/to/script-to-run.sh
# (minute) (hour) (day of month) (month of year) (day of week) (script)
# Run task on weekdays only
# * * * * mon,tue,wed,thu,fri /path/to/script-to-run.sh


# I run this for a regular update every 8 hours – that should catch at
# least one window where my machine is running

# 0 */8 * * * /path/to/brewup.sh

# ----------------------------------------------------------------------

# https://code-maven.com/display-notification-from-the-mac-command-line
osascript -e 'display notification "running brewup"'
date >> ~/.brewuplog
brew update >> ~/.brewuplog
brew upgrade >> ~/.brewuplog
brew cleanup >> ~/.brewuplog
brew doctor >> ~/.brewuplog
brew list --formula > ~/.brewlist-formula.txt
brew list --cask > ~/.brewlist-cask.txt