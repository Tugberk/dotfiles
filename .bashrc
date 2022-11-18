#aliases

alias bashrc="nano ~/.bashrc"
alias refresh="source ~/.bashrc"
alias ..="cd .."


mcd() {
  mkdir $1
  cd $1
}
  

topdf() {
  if [ "$#" -lt 2 ] || [ "$#" -gt 2 ]
  then
    echo "you have either gave less or more arguments than necessary"
    echo "usage: topdf file.md out.pdf"
    return 0
  fi
  pandoc $1 -o $2 --template eisvogel --highlight-style tango --include-in-header inline_code.tex
}

tohtml() {
  if [ "$#" -lt 2 ] || [ "$#" -gt 2 ]
  then
    echo "you have either gave less or more arguments than necessary"
    echo "usage: tohtml file.md out"
    return 0
  fi
  generate-md --layout witex --input $1 --output $2
}

text() {

        if [ "$#" -lt 2 ] || [ "" -gt 3]
        then
                echo "Wrong use of the command: Too less or more variables"
                echo 'Correct usage: text filename "title" [-c]'
                exit
        fi

        touch $1
        echo "---" >> $1

        if [ "$3" == "-c" ]
                then
                        echo "title: $2" >> $1
                        echo "author: Dr. Tuğberk Kocatekin" >> $1
                        echo "subtitle: " >> $1
                        echo "titlepage: true" >> $1
                else
                        echo "title: $2" >> $1
                        echo "author: Dr. Tuğberk Kocatekin" >> $1
        fi

        echo "fontfamily: lmodern" >> $1
        echo "linkcolor: blue" >> $1
        echo "disable-header-and-footer: true" >> $1
        echo "---" >> $1
        echo -e "\n" >> $1
        echo "# $2" >> $1

}
