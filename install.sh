#!/bin/bash -i

# This script installs DotupBashSettings into your script folder

# bash <(wget -qO- https://raw.githubusercontent.com/dotupNET/DotupBashSettings/master/BashSettings.sh)

cd /tmp
rm DotupBashEssentials*
wget https://raw.githubusercontent.com/dotupNET/DotupBashEssentials/master/DotupBashEssentials.sh

. DotupBashEssentials.sh

wget https://raw.githubusercontent.com/dotupNET/DotupBashSettings/master/BashSettings.sh

scriptFolder="${HOME}/.dotup/scripts"
scriptFolder=$(Ask "Enter path to store script" $scriptFolder)
targetFile="$scriptFolder/BashSettings.sh"

mkdir -p $scriptFolder

if [ -f "$targetFile" ]; then
  rm "$targetFile"
  yecho "Existing $targetFile deleted"
fi

mv BashSettings.sh "$scriptFolder"

gecho "Installation completed. $targetFile"