echo "Starting..."
SHOUR="$(date +"%H")" 
SMINUTE="$(date +"%M")" 
SSE="$(date +"%S")"
echo "$SHOUR:$SMINUTE:$SSE"
echo "Files downloading"
echo ""
echo ""
git clone https://github.com/FvtihAkar/dotfiles.git
clear
sudo rm -r ./dotfiles/.git
clear
echo "Files downloaded copying to config dir"
echo ""
echo ""
EHOUR="$(date +"%H")" 
EMINUTE="$(date +"%M")" 
ESE="$(date +"%S")"
cp -r -f ./dotfiles/.config/* $HOME/.config/
cp -r -f ./dotfiles/.zshrc $HOME/
echo $(($EHOUR-$SHOUR)) Hour $(($EMINUTE-$SMINUTE)) Minute $(($ESE-$SSE))
