#!/bin/bash
result="${PWD##*/}";
if [ "$result" = "project_website" ]; then
	echo "Changing [local] file permissions..."
	find . -type f -exec chmod 664 {} \;

	echo "Changin [local] directory permissions..."
	find *  -type d -exec chmod 775 {} \;

	echo "Uploading the files to UCL www server...";
	scp -r . lzannett@newgate.cs.ucl.ac.uk:/cs/student/www/2016/group2
fi