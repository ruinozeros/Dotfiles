" Rainbow plugin

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow_conf = {'guis': ['bold']}
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
let g:rainbow_conf = {
\	'guifgs': ['#858580', '#8FBCBB', '#D08770', '#A3BE8C', '#EBCB8B', '#B48EAD', '#80a880', '#887070'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\       'vimwiki': 0,
\       'nerdtree': 0,
\       'tagbar': 0,
\	}
\}

