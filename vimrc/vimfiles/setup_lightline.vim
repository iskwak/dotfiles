let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'fugitive' ], [ 'readonly', 'relativepath', 'modified' ], [ 'ctrlpmark' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'percent' ] ],
    \ }
let g:lightline.inactive = {
    \ 'left': [ ['relativepath', 'modified'] ],
    \ 'right': [ ['lineinfo'], ['percent'] ],
    \ }
