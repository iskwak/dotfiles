let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }
let g:lightline.component_function = {
    \   'gitbranch': 'FugitiveHead'
    \ }
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'fugitive' ], 
    \         [ 'gitbranch', 'readonly', 'relativepath', 'modified' ],
    \         [ 'ctrlpmark' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'percent' ] ],
    \ }
let g:lightline.inactive = {
    \ 'left': [ ['relativepath', 'modified'] ],
    \ 'right': [ ['lineinfo'], ['percent'] ],
    \ }
