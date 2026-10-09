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
fi 
mv -v *.mp3 Audio/
mv -v *.wav Audio/ 
mv -v *.flac Audio/ 
mv -v *.aac Audio/
mv -v *.aax Audio/
mv -v *.m4a Audio/
mv -v *.wma Audio/
mv -v *.ogg Audio/

