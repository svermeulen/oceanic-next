" ===============================================================
" OceanicNext
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  " set background=dark
  " hi clear
  " if exists("syntax_on")
  "   syntax reset
  " endif
  let g:colors_name="OceanicNext"
" }}}
" {{{ Italics
  let g:oceanic_next_terminal_italic = get(g:, 'oceanic_next_terminal_italic', 0)
  let s:italic = ""
  if g:oceanic_next_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:oceanic_next_terminal_bold = get(g:, 'oceanic_next_terminal_bold', 0)
  let s:bold = ""
  if g:oceanic_next_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" {{{ Colors

" }}}
" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold', '',       '',       'bold',      '')
call <sid>hi('Debug', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('Directory', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('ErrorMsg', ['#ec5f67', '203'], ['#1b2b34', '235'], '',          '')
call <sid>hi('Exception', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('FoldColumn', ['#6699cc', '68'], ['#1b2b34', '235'], '',          '')
call <sid>hi('Folded', ['#ab7967', '137'], ['#343d46', '237'], s:italic,    '')
" call <sid>hi('Folded', ['#65737e', '243'], ['#343d46', '237'], s:italic,    '')
call <sid>hi('IncSearch', ['#65737e', '243'], ['#fac863', '221'], '',          '')
call <sid>hi('Italic', '',       '',       s:italic,    '')

call <sid>hi('Macro', ['#ec5f67', '203'], '',       '',          '')
"call <sid>hi('MatchParen', ['#c0c5ce', '251'], ['#65737e', '243'], '',          '')
hi! MatchParen gui=NONE,standout term=NONE,standout guifg=#de935f guibg=#555555
call <sid>hi('ModeMsg', ['#99c794', '114'], '',       '',          '')
call <sid>hi('MoreMsg', ['#99c794', '114'], '',       '',          '')
call <sid>hi('Question', ['#6699cc', '68'], '',       '',          '')
"call <sid>hi('Search', ['#65737e', '243'], ['#fac863', '221'], '',          '')
hi! Search gui=NONE,underline term=NONE,underline guifg=#f0c674 guibg=#282a2e
call <sid>hi('SpecialKey', ['#65737e', '243'], '',       '',          '')
call <sid>hi('TooLong', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('Underlined', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('Visual', '',       ['#4f5b66', '240'], '',          '')
call <sid>hi('VisualNOS', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('WarningMsg', ['#fac863', '221'], '',       '',          '')
call <sid>hi('WildMenu', ['#ffffff', '15'], ['#6699cc', '68'], '',          '')
call <sid>hi('Title', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('Conceal', ['#6699cc', '68'], ['#1b2b34', '235'], '',          '')
"call <sid>hi('Cursor', ['#1b2b34', '235'], ['#c0c5ce', '251'], '',          '')
hi! Cursor gui=NONE term=NONE guifg=#1d1f21 guibg=#cc6666
call <sid>hi('NonText', ['#65737e', '243'], '',       '',          '')
call <sid>hi('Normal', ['#c0c5ce', '251'], ['#1b2b34', '235'], '',          '')
call <sid>hi('EndOfBuffer', ['#c0c5ce', '251'], ['#1b2b34', '235'], '',          '')
call <sid>hi('LineNr', ['#65737e', '243'], ['#1b2b34', '235'], '',          '')
call <sid>hi('SignColumn', ['#1b2b34', '235'], ['#1b2b34', '235'], '',          '')
call <sid>hi('StatusLine', ['#343d46', '237'], ['#65737e', '243'], '',          '')
call <sid>hi('StatusLineNC', ['#65737e', '243'], ['#343d46', '237'], '',          '')
call <sid>hi('VertSplit', ['#1b2b34', '235'], ['#4f5b66', '240'], '',          '')
call <sid>hi('ColorColumn', '',       ['#343d46', '237'], '',          '')
call <sid>hi('CursorColumn', '',       ['#343d46', '237'], '',          '')
call <sid>hi('CursorLine', '',       ['#343d46', '237'], 'NONE',      '')
call <sid>hi('CursorLineNR', ['#1b2b34', '235'], ['#1b2b34', '235'], '',          '')
call <sid>hi('CursorLineNr', ['#65737e', '243'], ['#343d46', '237'], '',          '')
call <sid>hi('PMenu', ['#a7adba', '145'], ['#343d46', '237'], '',          '')
call <sid>hi('PMenuSel', ['#ffffff', '15'], ['#336699', '68'], '',          '')
call <sid>hi('PmenuSbar', '',       ['#4f5b66', '240'], '',          '')
call <sid>hi('PmenuThumb', '',       ['#d8dee9', '253'], '',          '')
call <sid>hi('TabLine', ['#65737e', '243'], ['#343d46', '237'], '',          '')
call <sid>hi('TabLineFill', ['#65737e', '243'], ['#343d46', '237'], '',          '')
call <sid>hi('TabLineSel', ['#99c794', '114'], ['#343d46', '237'], '',          '')
call <sid>hi('helpExample', ['#fac863', '221'], '',       '',          '')
call <sid>hi('helpCommand', ['#fac863', '221'], '',       '',          '')

" Standard syntax highlighting
call <sid>hi('Boolean', ['#7FFFD4', '209'], '',       '',          '')
call <sid>hi('Character', ['#9ACD32', '203'], '',       '',          '')
" call <sid>hi('Comment', ['#65737e', '243'], '',       s:italic,    '')
call <sid>hi('Comment', ['#7c8a96', '243'], '',       s:italic,    '')
call <sid>hi('Conditional', ['#f99157', '176'], '',       '',          '')
call <sid>hi('Constant', ['#f99157', '209'], '',       '',          '')
call <sid>hi('Define', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('Delimiter', ['#ab7967', '137'], '',       '',          '')
call <sid>hi('Float', ['#99c794', '209'], '',       '',          '')
call <sid>hi('Function', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('Identifier', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('Include', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('Keyword', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('Label', ['#fac863', '221'], '',       '',          '')
call <sid>hi('Number', ['#99c794', '209'], '',       '',          '')
call <sid>hi('Operator', ['#6495ED', '251'], '',       '',          '')
call <sid>hi('PreProc', ['#fac863', '221'], '',       '',          '')
call <sid>hi('Repeat', ['#FF69B4', '221'], '',       '',          '')
call <sid>hi('Special', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('SpecialChar', ['#ab7967', '137'], '',       '',          '')
call <sid>hi('Statement', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('StorageClass', ['#97d8ca', '221'], '',       '',          '')
call <sid>hi('String', ['#99c794', '114'], '',       '',          '')
call <sid>hi('Structure', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('Tag', ['#fac863', '221'], '',       '',          '')
call <sid>hi('Todo', ['#fac863', '221'], ['#343d46', '237'], '',          '')
call <sid>hi('Type', ['#97d8ca', '221'], '',       '',          '')
call <sid>hi('Typedef', ['#97d8ca', '221'], '',       '',          '')

call <sid>hi('SpellBad', '',       '',       'undercurl', '')
call <sid>hi('SpellLocal', '',       '',       'undercurl', '')
call <sid>hi('SpellCap', '',       '',       'undercurl', '')
call <sid>hi('SpellRare', '',       '',       'undercurl', '')

call <sid>hi('csClass', ['#97d8ca', '221'], '',       '',          '')
call <sid>hi('csAttribute', ['#97d8ca', '221'], '',       '',          '')
call <sid>hi('csModifier', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('csType', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('csUnspecifiedStatement', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('csContextualStatement', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('csNewDecleration', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('cOperator', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('cPreCondit', ['#c594c5', '176'], '',       '',          '')

call <sid>hi('cssColor', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('cssBraces', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('cssClassName', ['#c594c5', '176'], '',       '',          '')


call <sid>hi('DiffAdd', ['#99c794', '114'], ['#343d46', '237'], '',          '')
call <sid>hi('DiffChange', ['#65737e', '243'], ['#343d46', '237'], '',          '')
call <sid>hi('DiffDelete', ['#ec5f67', '203'], ['#343d46', '237'], '',          '')
call <sid>hi('DiffText', ['#6699cc', '68'], ['#343d46', '237'], '',          '')
call <sid>hi('DiffAdded', ['#ffffff', '15'], ['#99c794', '114'], '',          '')
call <sid>hi('DiffFile', ['#ec5f67', '203'], ['#1b2b34', '235'], '',          '')
call <sid>hi('DiffNewFile', ['#99c794', '114'], ['#1b2b34', '235'], '',          '')
call <sid>hi('DiffLine', ['#6699cc', '68'], ['#1b2b34', '235'], '',          '')
call <sid>hi('DiffRemoved', ['#ffffff', '15'], ['#ec5f67', '203'], '',          '')
call <sid>hi('Error', ['#ec5f67', '203'], ['#492626', '203'],   'undercurl',          '')
" call <sid>hi('NvimInternalError', ['#ec5f67', '203'], ['NONE', 'NONE'],   '',          '')
" call <sid>hi('NvimInternalError', ['#ec5f67', '203'], ['NONE', 'NONE'],   '',          '')
call <sid>hi('gitCommitOverflow', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('gitCommitSummary', ['#99c794', '114'], '',       '',          '')

call <sid>hi('htmlBold', ['#fac863', '221'], '',       '',          '')
call <sid>hi('htmlItalic', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('htmlTag', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('htmlEndTag', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('htmlArg', ['#fac863', '221'], '',       '',          '')
call <sid>hi('htmlTagName', ['#d8dee9', '253'], '',       '',          '')

call <sid>hi('javaScript', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('javaScriptNumber', ['#f99157', '209'], '',       '',          '')
call <sid>hi('javaScriptBraces', ['#c0c5ce', '251'], '',       '',          '')

call <sid>hi('markdownCode', ['#99c794', '114'], '',       '',          '')
call <sid>hi('markdownCodeBlock', ['#99c794', '114'], '',       '',          '')
call <sid>hi('markdownHeadingDelimiter', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('markdownItalic', ['#c594c5', '176'], '',       s:italic,    '')
call <sid>hi('markdownBold', ['#fac863', '221'], '',       s:bold,      '')
call <sid>hi('markdownCodeDelimiter', ['#ab7967', '137'], '',       s:italic,    '')
call <sid>hi('markdownError', ['#c0c5ce', '251'], ['#1b2b34', '235'], '',          '')

call <sid>hi('NeomakeErrorSign', ['#ec5f67', '203'], ['#1b2b34', '235'], '',          '')
call <sid>hi('NeomakeWarningSign', ['#fac863', '221'], ['#1b2b34', '235'], '',          '')
call <sid>hi('NeomakeInfoSign', ['#ffffff', '15'], ['#1b2b34', '235'], '',          '')
call <sid>hi('NeomakeError', ['#ec5f67', '203'], '',       'undercurl', ['#ec5f67', '203'])
call <sid>hi('NeomakeWarning', ['#ec5f67', '203'], '',       'undercurl', ['#ec5f67', '203'])

call <sid>hi('ALEErrorSign', ['#ec5f67', '203'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('ALEWarningSign', ['#fac863', '221'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('ALEInfoSign', ['#ffffff', '15'], ['#1b2b34', '235'], s:bold,      '')

call <sid>hi('NERDTreeExecFile', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('NERDTreeDirSlash', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('NERDTreeOpenable', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('NERDTreeFile', '',       ['NONE', 'NONE'],   '',          '')
call <sid>hi('NERDTreeFlags', ['#6699cc', '68'], '',       '',          '')

call <sid>hi('phpComparison', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('phpParent', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('phpMemberSelector', ['#c0c5ce', '251'], '',       '',          '')

call <sid>hi('pythonRepeat', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('pythonOperator', ['#c594c5', '176'], '',       '',          '')

call <sid>hi('rubyConstant', ['#fac863', '221'], '',       '',          '')
call <sid>hi('rubySymbol', ['#99c794', '114'], '',       '',          '')
call <sid>hi('rubyAttribute', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('rubyInterpolation', ['#99c794', '114'], '',       '',          '')
call <sid>hi('rubyInterpolationDelimiter', ['#ab7967', '137'], '',       '',          '')
call <sid>hi('rubyStringDelimiter', ['#99c794', '114'], '',       '',          '')
call <sid>hi('rubyRegexp', ['#62b3b2', '73'], '',       '',          '')

call <sid>hi('sassidChar', ['#ec5f67', '203'], '',       '',          '')
call <sid>hi('sassClassChar', ['#f99157', '209'], '',       '',          '')
call <sid>hi('sassInclude', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('sassMixing', ['#c594c5', '176'], '',       '',          '')
call <sid>hi('sassMixinName', ['#6699cc', '68'], '',       '',          '')

call <sid>hi('vimfilerLeaf', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('vimfilerNormalFile', ['#c0c5ce', '251'], ['#1b2b34', '235'], '',          '')
call <sid>hi('vimfilerOpenedFile', ['#6699cc', '68'], '',       '',          '')
call <sid>hi('vimfilerClosedFile', ['#6699cc', '68'], '',       '',          '')

call <sid>hi('GitGutterAdd', ['#99c794', '114'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('GitGutterChange', ['#6699cc', '68'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('GitGutterDelete', ['#ec5f67', '203'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('GitGutterChangeDelete', ['#c594c5', '176'], ['#1b2b34', '235'], s:bold,      '')

call <sid>hi('SignifySignAdd', ['#99c794', '114'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('SignifySignChange', ['#6699cc', '68'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('SignifySignDelete', ['#ec5f67', '203'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('SignifySignChangeDelete', ['#c594c5', '176'], ['#1b2b34', '235'], s:bold,      '')
call <sid>hi('SignifySignDeleteFirstLine', ['#ec5f67', '203'], ['#1b2b34', '235'], s:bold,      '')

call <sid>hi('xmlTag', ['#62b3b2', '73'], '',       '',          '')
call <sid>hi('xmlTagName', ['#c0c5ce', '251'], '',       '',          '')
call <sid>hi('xmlEndTag', ['#62b3b2', '73'], '',       '',          '')


" }}}

let g:terminal_color_0=['#1b2b34', '235'][0]
let g:terminal_color_8=['#1b2b34', '235'][0]

let g:terminal_color_1=['#ec5f67', '203'][0]
let g:terminal_color_9=['#ec5f67', '203'][0]

let g:terminal_color_2=['#99c794', '114'][0]
let g:terminal_color_10=['#99c794', '114'][0]

let g:terminal_color_3=['#fac863', '221'][0]
let g:terminal_color_11=['#fac863', '221'][0]

let g:terminal_color_4=['#6699cc', '68'][0]
let g:terminal_color_12=['#6699cc', '68'][0]

let g:terminal_color_5=['#c594c5', '176'][0]
let g:terminal_color_13=['#c594c5', '176'][0]

let g:terminal_color_6=['#62b3b2', '73'][0]
let g:terminal_color_14=['#62b3b2', '73'][0]

let g:terminal_color_7=['#c0c5ce', '251'][0]
let g:terminal_color_15=['#c0c5ce', '251'][0]

let g:terminal_color_background=['#1b2b34', '235'][0]
let g:terminal_color_foreground=['#ffffff', '15'][0]

