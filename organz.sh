#!/bin/bash 
shopt -s nocaseglob
direct=$1
echo "organizing directory: $direct"
if [ -d "$direct" ]
then 
	cd $direct || exit 1
	mkdir -p Audio/ Images/ Videos/ Documents/
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
mv *.qt Audio/
mv *.mov Audio/
mv *.gif Audio/
mv *.ogv Audio/
mv *.vob Audio/
mv *.flv Audio/
mv *.mkv Audio/
mv *.webm Audio/
mv *.wmv Audio/
mv *.mp4 Audio/
mv *.m4p Audio/
mv *.m4v Audio/
mv *.3g2 Audio/
mv *.svi Audio/
mv *.gifv Audio/


