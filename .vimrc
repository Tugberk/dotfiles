set number
set visualbell
set wrap
set noerrorbells
set encoding=utf-8

function Q(...)
	for i in range(1,a:1) | put = '**Q'.i.':**' | endfor
endfunction

function A(...)
	for i in range(1,a:1) | put = '**A'.i.':**' | endfor
endfunction

"these functions above are for writing markdown flavored Q and A
