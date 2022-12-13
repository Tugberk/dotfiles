#aliases

alias bashrc="nano ~/.bashrc"
alias refresh="source ~/.bashrc"
alias ..="cd .."

#everytime i open the bash- name changes


create() {

  if [ "$1" == "beamer" ] 
  then
    cp ~/templates/beamer.md $2
    nano $2
  fi
  
  if [ "$1" == "eisvogel" ]
  then
    cp ~/templates/eisvogel.md $2
    nano $2
  fi
  
  if [ "$1" == "text" ]
  then
    cp ~/templates/simple.md $2
  fi
 }
 


beamer() {
  FOO=$(uuidgen | tr -d "-")
  pandoc -t beamer -s $1.md -o $FOO.pdf && xdg-open $FOO.pdf
  }


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


