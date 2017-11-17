month=`date "+%Y-%m"`
datetime=`date "+%Y-%m-%d-%Hh%Mm%Ss"`
destination="$HOME/Pictures/Screenshots/$month"
mkdir -p $destination
screencapture $@ "$destination/$datetime.png"
:
