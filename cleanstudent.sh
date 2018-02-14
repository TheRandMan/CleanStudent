#!/bin/sh
#place this file in /usr/local/libexec/
#Remove Chrome Files
#rm -r /Users/student/Library/Application\ Support/Google/Chrome/Default

#Copy Fresh Chrome Files
#cp -R /Users/student/Library/Fresh/Default /Users/student/Library/Application\ Support/Google/Chrome/
#
#
#Begin
#
#Make To Be Deleted older if doesn't exist
if [! -d "/Users/student/.TBD" ]; then
	mkdir -r /Users/student/.TBD
fi

#Move limbo folder to TBD if it exists
if [ -d "/Users/student/.limbo" ]; then
  mv -r /Users/student/.limbo /Users/student/.TBD
fi

#remake limbo folder
mkdir /Users/student/.limbo/

#Move all files from Student Home Folder to limbo folder
mv -r /Users/student/ /Users/student/.limbo/

#Make student Documents folder
mk /Users/student/Documents

#Make student Downloads folder
mk /Users/student/Downloads

#Delete To Be Deleted folder
rm -r /Users/student/.TBD
