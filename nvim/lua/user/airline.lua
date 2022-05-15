-- Variables
local g = vim.g
local o = vim.o

g['airline#extensions#tabline#enabled'] = 1 -- Habilita la barra de buffers
g.airline_powerline_fonts = 1 -- Habilita las funtes de powerline en airline
g['airline#extensions#tabline#formatter'] = 'unique_tail' -- Formato de como se presentana los buffers
o.termguicolors = true -- Color de fuente y de los cursores de linea
o.showtabline = 2 -- Siempre muestra los tabs
o.showmode = false -- Quita el --INSERT--
