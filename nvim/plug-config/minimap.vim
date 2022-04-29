" Configuracion de minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1

" Mapeo de teclas de minimap
nmap <leader>mc :MinimapClose<CR>
nmap <leader>mr :MinimapRefresh<CR>
nmap <leader>mo :Minimap<CR>

" Eliminacion de search highlight
nnoremap <silent> ,. :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>
nnoremap <silent> ., :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>
