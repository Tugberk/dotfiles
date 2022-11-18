#!/bin/bash
clear
echo "create_text_v1"
echo "=========================="
echo "1. Empty text without a cover page"
echo "2. Empty text with a cover page"
echo "3. Empty Question and Answers page"
echo -e "\n"
echo -e "\n"


read -p "Please select your option: "$'\n'  option

if [ "$option" -gt 3 ]; then
	echo "There is no such option!"
	return 0
fi

read -p "What is the name of the file?"$'\n' name
read -p "What is the title?"$'\n' title

#create something for each option

if [ "$option" == "1" ]; then
	touch $name
	echo "---" >> $name
	echo "title: $title" >> $name
	echo "author: Dr. Tuğberk Kocatekin" >> $name
	echo "fontfamily: lmodern" >> $name
	echo "linkcolor: blue" >> $name
	echo "disable-header-and-footer: true" >> $name
	echo "---" >> $name
	echo -e "\n\n" >> $name
	echo "# $title" >> $name

elif [ "$option" == "2" ]; then
	touch $name
	echo "---" >> $name
	echo "title: $title" >> $name
	echo "author: Dr. Tuğberk Kocatekin" >> $name
	echo "subtitle: " >> $name
	echo "titlepage: true" >> $name
	echo "fontfamily: lmodern" >> $name
	echo "linkcolor: blue" >> $name
	echo "disable-header-and-footer: true" >> $name
	echo "---" >> $name
	echo -e "\n\n" >> $name
	echo "# $title" >> $name
elif [ "$option" == "3" ]; then
	touch $name
	echo "---" >> $name
	echo "title: $title" >> $name
	echo "fontfamily: lmodern" >> $name
	echo "linkcolor: blue" >> $name
	echo "disable-header-and-footer: true" >> $name
	echo "---" >> $name
	echo -e "\n\n" >> $name
	echo "# Questions and Answers" >> $name
	echo -e "\n" >> $name
	echo "## Questions" >> $name
	echo -e "\n" >> $name
	echo "## Answers" >> $name
	
fi

