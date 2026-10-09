#!/bin/bash 
shopt -s nocaseglob
direct=$1
echo "organizing directory: $direct"
if [ -d "$direct" ]
then 
	cd $direct || exit 1
	mkdir -p Audio/ Image/ Video/ Document/
else	
	echo "Erorr! $direct is not a directory"
	exit 1
fi
echo "organizing Audio Files..."
mv *.mp3 Audio/
mv *.wav Audio/ 
mv *.flac Audio/ 
mv *.aac Audio/
mv *.aax Audio/
mv *.m4a Audio/
mv *.wma Audio/
mv *.ogg Audio/
echo "organizing Video Files..."
mv *.qt Video/
mv *.mov Video/
mv *.gif Video/
mv *.ogv Video/
mv *.vob Video/
mv *.flv Video/
mv *.mkv Video/
mv *.webm Video/
mv *.wmv Video/
mv *.mp4 Video/
mv *.m4p Video/
mv *.m4v Video/
mv *.3g2 Video/
mv *.svi Video/
mv *.gifv Video/


