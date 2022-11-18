#aliases

alias bashrc="nano ~/.bashrc"
alias refresh="source ~/.bashrc"
alias ..="cd .."


topdf() {
  pandoc $1 -o $2.pdf --template eisvogel --highlight-style tango --include-in-header inline_code.tex
}

tohtml() {
  generate-md --layout witex --input $1 --output $2
}

