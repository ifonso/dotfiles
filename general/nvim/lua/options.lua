require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- soft wrap estilo helix: quebra em palavras, mantém indentação e marca a continuação
local o = vim.opt
o.wrap = true
o.linebreak = true -- quebra entre palavras, não no meio
o.breakindent = true -- continuação alinhada com a indentação da linha
o.showbreak = "↪ " -- indicador de continuação
o.smoothscroll = true -- rola por linha visual em linhas quebradas

-- mantém sempre 6 linhas visíveis acima/abaixo do cursor (exceto no início/fim do arquivo)
o.scrolloff = 6
