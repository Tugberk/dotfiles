#aliases

alias bashrc="nano ~/.bashrc"
alias refresh="source ~/.bashrc"
alias ..="cd .."


topdf() {
  pandoc $1 -o $2 --template eisvogel --highlight-style tango --include-in-header inline_code.tex
}

tohtml() {
  generate-md --layout witex --input $1 --output $2
}

text() {

        if [ "$#" -lt 2 ]
        then
                echo "please give necessary number of args"
                echo "text filename title [-c]"
                exit
        fi

        if [ "$#" -gt 3 ]
        then
                echo "you gave too many arguments"
                echo "text filename title [-c]"
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
