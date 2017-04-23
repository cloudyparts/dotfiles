" Name:       vashon 
" Maintainer: Patrick Devlin <stdio@gmail.com>
" URL:        
" Version:    
" Modified:   2017/03/26
" ----------------------------------------------------

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
let g:colors_name="vashon"


hi Normal           guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi Comment          guifg=#86929b     guibg=#000000     gui=italic    guisp=none
hi Conditional      guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi Constant         guifg=#a073cc     guibg=#000000     gui=none      guisp=none
hi Error            guifg=#d39745     guibg=#000000     gui=none      guisp=none
hi Identifier       guifg=#678cb1     guibg=#000000     gui=none      guisp=none
hi Ignore           guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi Operator         guifg=#d5cb7d     guibg=#000000     gui=none      guisp=none
hi Preproc          guifg=#a073cc     guibg=#000000     gui=none      guisp=none
hi Repeat           guifg=#85d23d     guibg=#000000     gui=none      guisp=none
hi Special          guifg=#85d23d     guibg=#000000     gui=none      guisp=none
hi Statement        guifg=#85d23d     guibg=#000000     gui=none      guisp=none
hi Number           guifg=#d5a400     guibg=#000000     gui=none      guisp=none
hi Boolean          guifg=#5ab9b2     guibg=#000000     gui=none      guisp=none
hi String           guifg=#FF850a     guibg=#000000     gui=none      guisp=none
hi Character        guifg=#FF850a     guibg=#000000     gui=none      guisp=none
hi Title            guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi Todo             guifg=#000000     guibg=#c4c8cc     gui=none      guisp=none
hi Type             guifg=#678cb1     guibg=#000000     gui=none      guisp=none
hi Underline        guifg=#5899c0     guibg=#000000     gui=none      guisp=none
hi Cursor           guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi CursorIM         guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi CursorLine       guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi CursorColumn     guifg=#c4c8cc     guibg=#000000     gui=none      guisp=none
hi Directory        guifg=#5899c0     guibg=#000000     gui=none      guisp=none
hi ErrorMsg         guifg=#24333a     guibg=#000000     gui=none      guisp=none
hi FoldColumn       guifg=#24333a     guibg=#000000     gui=none      guisp=none
hi Folded           guifg=#000000     guibg=#a073cc     gui=none      guisp=none
hi IncSearch        guifg=#a073cc     guibg=#000000     gui=none      guisp=none
hi LineNr           guifg=#86929b     guibg=#111111     gui=none      guisp=none
hi MatchParen       guifg=#000000     guibg=#5ab9be     gui=none      guisp=none
hi ModeMsg          guifg=#FF850a     guibg=#000000     gui=none      guisp=none
hi MoreMsg          guifg=#FF850a     guibg=#000000     gui=none      guisp=none
hi NonText          guifg=#374043     guibg=#000000     gui=none      guisp=none
hi Pmenu            guifg=#a073cc     guibg=#86929b     gui=none      guisp=none
hi PmenuSel         guifg=#24333a     guibg=#678cb1     gui=none      guisp=none
hi Question         guifg=#a073cc     guibg=#000000     gui=none      guisp=none
hi Search           guifg=#a073cc     guibg=#000000     gui=none      guisp=none
hi SpecialKey       guifg=#5899c0     guibg=#000000     gui=none      guisp=none
hi StatusLine       guifg=#ffffff     guibg=#3c5975     gui=none      guisp=none
hi StatusLineNC     guifg=#ffffff     guibg=#86929b     gui=none      guisp=none
hi TabLine          guifg=#86929b     guibg=#000000     gui=none      guisp=none
hi TabLineFill      guifg=#000000     guibg=#24333a     gui=none      guisp=none
hi TabLineSel       guifg=#a073cc     guibg=#24333a     gui=none      guisp=none
hi Tooltip          guifg=#678cb1     guibg=#86929b     gui=none      guisp=none
hi VertSplit        guifg=#a073cc     guibg=#24333a     gui=none      guisp=none
hi Visual           guifg=#c4c8cc     guibg=#a073cc     gui=none      guisp=none
hi VisualNOS                          guibg=#000000     gui=none      guisp=none
hi WarningMsg       guifg=#ff850a     guibg=#000000     gui=none      guisp=none
hi WildMenu         guifg=#e1c70d     guibg=#ff850a     gui=none      guisp=none

