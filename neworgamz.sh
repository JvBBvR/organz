#!/bin/bash 
shopt -s nocaseglob nocasematch
direct=$1 
if [ -d "$direct" ] 
then 
	echo "organizing the $direct directory..."
	cd $direct || exit 1 
	mkdir -p Audio Video Document Image
else
	echo "Failed! Because $direct is not an existing directory."
	exit 1 
fi 

for file in *
do
	if [ -f "$file" ]
	then 
		case "$file" in

               		*.mp3|*.wav|*.flac|*.aac|*.aax|*.m4a|*.wma|*.ogg)
                	echo "Moving audio: $file"
                	mv -- "$file" Audio/
                	;;
			*.qt|*.mov|*.ogv|*.vob|*.flv|*.mkv|*.webm|*.wmv|*.mp4|*.m4p|*.m4v|*.3g2|*.svi|*.gifv)
                	echo "Moving video: $file"
                	mv -- "$file" Video/
                	;;
			*.png|*.jpeg|*.jpg|*.gif|*.jfif|*.jxl|*.webp)
                	echo "Moving image: $file"
                	mv -- "$file" Image/
                	;;
			*)
                	echo "Moving document: $file"
                	mv -- "$file" Document/
                	;;
		esac
	fi 
done 
echo "organization finished!" 

