#!/bin/bash


clear
echo "What do you want to build?"
echo "=========================="
echo "1. Create PDF with Eisvogel"
echo "2. Create beautiful HTML file (uses generate-md)"
echo "3. Create PDF with regular LaTeX"
echo "---------------------------------"

read -p "Please select your option: "$'\n' option
echo "Here are the Markdown files you can convert"
ls *.md
read -p "Would you like to convert all MD files? (y/n)" $'\n' answer

if [ "$answer" == "y" ]; then
	#read -p "Output filename: " output
	for file in $(ls *.md); 
	do
		pandoc $file -o $file.pdf --template eisvogel --highlight-style tango --include-in-header ~/inline_code.tex &
	done
	echo "Should be done.."
	#return 0 this is to be done in the bashrc
	exit
fi

read -p "What is the name of your file: " filename

if [ "$option" -gt 3 ]; then
	echo "There is no such option."
	return 0
fi

if [ "$option" == "1" ]; then
	read -p "Output name:" output
	pandoc $filename -o $output --template eisvogel --highlight-style tango --include-in-header ~/inline_code.tex
	
elif [ "$option" == "2" ]; then
	read -p "Output name:" output
	generate-md --layout witex --input $filename --output $output

elif [ "$option" == "3" ]; then
	read -p "Output name:" output
	pandoc $filename -o $output

fi
