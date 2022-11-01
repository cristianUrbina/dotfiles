local gset = vim.api.nvim_set_var
--gset('airline#extensions#branch#enabled', '1')
--gset('airline#extensions#branch#format', '0')
--gset('airline#extensions#hunks#enabled', 1)
--gset('airline#extensions#hunks#non_zero_only', 0)
--gset('airline#extensions#hunks#hunk_symbols', "['+', '~', '-']")
--gset('airline_powerline_fonts', 1)

-- Airline config
-- Smarter tab line
gset('airline#extensions#tabline#enabled', 1)
gset('airline#extensions#tabline#formatter', 'unique_tail_improved')

-- Unicode symbols
gset('airline_left_sep', '')
gset('airline_right_sep', '')

local airline_symbols = {
    linenr = '  ', 
    colnr = '   ', 
    branch = ''
}

gset('airline_symbols', airline_symbols)

-- Airline theme config
-- theme config is setted in its own color scheme config file
