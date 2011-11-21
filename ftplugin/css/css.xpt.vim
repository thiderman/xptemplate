XPTemplate priority=lang

let s:f = g:XPTfuncs()

XPTvar $VOID_LINE  /* void */;
XPTvar $CURSOR_PH  /* cursor */

XPTvar $CL  /*
XPTvar $CM   *
XPTvar $CR   */

XPTinclude
      \ _common/common
      \ _comment/doubleSign


" ========================= Function and Variables =============================

fun! s:f.css_braced_post()
  let v = self.V()
  let v = substitute( v, '^\s*$', '', 'g' )

  if v =~ '^\s*\w\+('
    let name = matchstr( v, '^\s*\zs\w\+(' )
    return self.Build( ' ' . name . self.ItemCreate( '', {}, {} ) . ')' )
  else
    return v
  endif
endfunction

" ================================= Snippets ===================================



XPT w " width
width: `auto^;

XPT h " height
height: `100%^;


XPT backrep " background-repeat
XSET rep=Choose(['repeat', 'repeat-x','repeat-y','no-repeat'])
background-repeat: `rep^;


XPT az " azimuth
XSET azim=Choose(['left-side', 'far-left', 'left', 'center-left', 'center', 'center-right', 'right', 'far-right', 'right-side', 'behind', 'leftwards', 'rightwards'])
azimuth: `azim^;


XPT backpos " background-position
XSET horiz=Choose(['left', 'center', 'right'])
XSET horiz|post=SV('^\s*$', '', 'g')
XSET vert=Choose(['top', 'center', 'bottom'])
XSET vert|post=SV('^\s*$', '', 'g')
background-position:` `vert`^` `horiz`^;


XPT bd " border
XSET pos=ChooseStr( '-top', '-right', '-bottom', '-left' )
XSET thick=Choose(['thin', 'thick', 'medium'])
XSET thick|post=SV('^\s*$', '', 'g')
XSET kind=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
XSET kind|post=SV('^\s*$', '', 'g')
XSET color=Choose(['rgb()', '#', 'transparent'])
XSET color|post=css_braced_post()
border`pos^:` `thick^` `kind^` `color^;


XPT bga " background-attachment
XSET selec=Choose(['scroll', 'fixed'])
background-attachment: `selec^;


XPT bgc " background-color
XSET selec=Choose(['transparent', 'rgb()', '#'])
XSET selec|post=css_braced_post()
background-color:` `selec^;


XPT bgi " background-image
XSET selec=Choose(['url()', 'none'])
XSET selec|post=css_braced_post()
background-image:` `selec^;


XPT bgr " background-repeat
XSET selec=Choose(['repeat', 'repeat-x','repeat-y','no-repeat'])
background-repeat: `selec^;


XPT bg " background
XSET selec=Choose(['url()', 'scroll', 'fixed', 'transparent', 'rgb()', '#', 'none', 'top', 'center', 'bottom' , 'left', 'right', 'repeat', 'repeat-x', 'repeat-y', 'no-repeat'])
XSET selec|post=css_braced_post()
background:` `selec^;


XPT bcl " border-collapse
XSET selec=Choose(['collapse', 'separate'])
border-collapse: `selec^;


XPT bc " border-color
XSET selec=Choose(['rgb()', '#', 'transparent'])
XSET selec|post=css_braced_post()
border-color:` `selec^;


XPT bs " border-spacing
XSET select_disabled=Choose([''])
border-spacing: `select^;


XPT bst " border-style
XSET selec=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
border-style: `selec^;


XPT bw " border-width
XSET selec=Choose(['thin', 'thick', 'medium'])
border-width: `selec^;


XPT b " bottom
XSET selec=Choose(['auto'])
bottom: `selec^;


XPT cs " caption-side
XSET selec=Choose(['top', 'bottom'])
caption-side: `selec^;


XPT cl " clear
XSET selec=Choose(['both', 'left', 'right', 'none'])
clear: `selec^;


XPT clip " clip
XSET selec=Choose(['auto', 'rect('])
clip: `selec^;


XPT c " color
XSET selec=Choose(['rgb()', '#'])
XSET selec|post=css_braced_post()
color:` `selec^;


XPT con " content
XSET selec=Choose(['normal', 'attr(', 'open-quote', 'close-quote', 'no-open-quote', 'no-close-quote'])
content: `selec^;


XPT cur " cursor
XSET selec=Choose(['url()', 'auto', 'crosshair', 'default', 'pointer', 'move', 'e-resize', 'ne-resize', 'nw-resize', 'n-resize', 'se-resize', 'sw-resize', 's-resize', 'w-resize', 'text', 'wait', 'help', 'progress'])
XSET selec|post=css_braced_post()
cursor:` `selec^;


XPT dir " direction
XSET selec=Choose(['ltr', 'rtl'])
direction: `selec^;


XPT d " display
XSET selec=Choose(['inline', 'block', 'list-item', 'run-in', 'inline-block', 'table', 'inline-table', 'table-row-group', 'table-header-group', 'table-footer-group', 'table-row', 'table-column-group', 'table-column', 'table-cell', 'table-caption', 'none'])
display: `selec^;


XPT elev " elevation
XSET selec=Choose(['below', 'level', 'above', 'higher', 'lower'])
elevation: `selec^;


XPT e " empty-cells
XSET selec=Choose(['show', 'hide'])
empty-cells: `selec^;


XPT fl " float
XSET selec=Choose(['left', 'right', 'none'])
float: `selec^;


XPT ff " font-family
XSET selec=Choose(['sans-serif', 'serif', 'monospace', 'cursive', 'fantasy'])
font-family: `selec^;


XPT fz " font-size
XSET selec=Choose(['xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large', 'larger', 'smaller'])
font-size: `selec^;


XPT fs " font-style
XSET selec=Choose(['normal', 'italic', 'oblique'])
font-style: `selec^;


XPT fv " font-variant
XSET selec=Choose(['normal', 'small-caps'])
font-variant: `selec^;


XPT fw " font-weight
XSET selec=Choose(['normal', 'bold', 'bolder', 'lighter'])
font-weight: `selec^;


XPT f " font
XSET kind=Choose(['normal', 'italic', 'oblique', 'small-caps', 'bold', 'bolder', 'lighter'])
XSET kind|post=SV('^\s*$', '', 'g')
XSET size=Choose(['xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large', 'larger', 'smaller'])
XSET size|post=SV('^\s*$', '', 'g')
XSET font=Choose(['sans-serif', 'serif', 'monospace', 'cursive', 'fantasy', 'caption', 'icon', 'menu', 'message-box', 'small-caption', 'status-bar'])
XSET font|post=SV('^\s*$', '', 'g')
font:` `kind`^` `size`^` `font`^;


XPT ls " letter-spacing
XSET selec=Choose(['normal'])
letter-spacing: `selec^;


XPT lh " line-height
XSET selec=Choose(['normal'])
line-height: `selec^;


XPT lsi " list-style-image
XSET selec=Choose(['url()', 'none'])
XSET selec|post=css_braced_post()
list-style-image:` `selec^;


XPT lsp " list-style-position
XSET selec=Choose(['inside', 'outside'])
list-style-position: `selec^;


XPT lst " list-style-type
XSET selec=Choose(['disc', 'circle', 'square', 'decimal', 'decimal-leading-zero', 'lower-roman', 'upper-roman', 'lower-latin', 'upper-latin', 'none'])
list-style-type: `selec^;


XPT m " margin
margin: `10px^ `auto^;

XPT mt " margin-top
margin-top: `^;

XPT mr " margin-right
margin-right: `^;

XPT mb " margin-bottom
margin-bottom: `^;

XPT ml " margin-left
margin-left: `^;


XPT p " padding
padding: `^;

XPT pt " padding-top
padding-top: `^;

XPT pr " padding-right
padding-right: `^;

XPT pb " padding-bottom
padding-bottom: `^;

XPT pl " padding-left
padding-left: `^;


XPT maxh " max-height
XSET selec=Choose(['auto'])
max-height: `selec^;


XPT maxw " max-width
XSET selec=Choose(['none'])
max-width: `selec^;


XPT minh " min-height
XSET selec=Choose(['none'])
min-height: `selec^;


XPT minw " min-width
XSET selec=Choose(['none'])
min-width: `selec^;

XPT ol " outline
XSET color=Choose(['rgb()', '#'])
XSET color|post=css_braced_post()
XSET style=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
XSET style|post=SV('^\s*$', '', 'g')
XSET width=Choose(['thin', 'thick', 'medium'])
XSET width|post=SV('^\s*$', '', 'g')
outline:` `width`^` `style`^` `color`^;

XPT olc " outline-color
XSET selec=Choose(['rgb()', '#'])
XSET selec|post=css_braced_post()
outline-color:` `selec^;


XPT ols " outline-style
XSET selec=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
outline-style: `selec^;


XPT olw " outline-width
XSET selec=Choose(['thin', 'thick', 'medium'])
outline-width: `selec^;


XPT o " overflow
XSET selec=Choose(['visible', 'hidden', 'scroll', 'auto'])
overflow: `selec^;


XPT pbi " page-break-inside
XSET selec=Choose(['auto', 'avoid'])
page-break-inside: `selec^;


XPT pi " pitch
XSET selec=Choose(['x-low', 'low', 'medium', 'high', 'x-high'])
pitch: `selec^;


XPT pd " play-during
XSET selec=Choose(['url()', 'mix', 'repeat', 'auto', 'none'])
XSET selec|post=css_braced_post()
play-during:` `selec^;


XPT pos " position
XSET selec=Choose(['static', 'relative', 'absolute', 'fixed'])
position: `selec^;


XPT quotes " quotes
XSET selec=Choose(['none'])
quotes: `selec^;


XPT sph " speak-header
XSET selec=Choose(['once', 'always'])
speak-header: `selec^;


XPT spn " speak-numeral
XSET selec=Choose(['digits', 'continuous'])
speak-numeral: `selec^;


XPT spp " speak-punctuation
XSET selec=Choose(['code', 'none'])
speak-punctuation: `selec^;


XPT sp " speak
XSET selec=Choose(['normal', 'none', 'spell-out'])
speak: `selec^;


XPT spr " speech-rate
XSET selec=Choose(['x-slow', 'slow', 'medium', 'fast', 'x-fast', 'faster', 'slower'])
speech-rate: `selec^;


XPT tl " table-layout
XSET selec=Choose(['auto', 'fixed'])
table-layout: `selec^;


XPT ti " text-indent
text-indent: `^;`cursor^

XPT ta " text-align
XSET selec=Choose(['left', 'right', 'center', 'justify'])
text-align: `selec^;


XPT td " text-decoration
XSET selec=Choose(['none', 'underline', 'overline', 'line-through', 'blink'])
text-decoration: `selec^;


XPT tt " text-transform
XSET selec=Choose(['capitalize', 'uppercase', 'lowercase', 'none'])
text-transform: `selec^;


XPT t " top
XSET selec=Choose(['auto'])
top: `selec^;


XPT ub " unicode-bidi
XSET selec=Choose(['normal', 'embed', 'bidi-override'])
unicode-bidi: `selec^;


XPT va " vertical-align
XSET selec=Choose(['baseline', 'sub', 'super', 'top', 'text-top', 'middle', 'bottom', 'text-bottom'])
vertical-align: `selec^;


XPT v " visibility
XSET selec=Choose(['visible', 'hidden', 'collapse'])
visibility: `selec^;


XPT vol " volume
XSET selec=Choose(['silent', 'x-soft', 'soft', 'medium', 'loud', 'x-loud'])
volume: `selec^;


XPT ws " white-space
XSET selec=Choose(['normal', 'pre', 'nowrap', 'pre-wrap', 'pre-line'])
white-space: `selec^;


XPT wordspacing " word-spacing
XSET selec=Choose(['normal'])
word-spacing: `selec^;


XPT z " z-index
XSET selec=Choose(['auto'])
z-index: `selec^;


XPT btc " border-top-color
XSET col=Choose(['rgb()', '#', 'transparent'])
XSET col|post=css_braced_post()
border-top-color:` `col^;

XPT bbc " border-bottom-color
XSET col=Choose(['rgb()', '#', 'transparent'])
XSET col|post=css_braced_post()
border-bottom-color:` `col^;

XPT brc " border-right-color
XSET col=Choose(['rgb()', '#', 'transparent'])
XSET col|post=css_braced_post()
border-right-color:` `col^;

XPT blc " border-left-color
XSET col=Choose(['rgb()', '#', 'transparent'])
XSET col|post=css_braced_post()
border-left-color:` `col^;

XPT bts " border-top-style
XSET col=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
border-top-style: `col^;

XPT bbs " border-bottom-style
XSET col=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
border-bottom-style: `col^;

XPT brs " border-right-style
XSET col=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
border-right-style: `col^;

XPT bls " border-left-style
XSET col=Choose(['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'])
border-left-style: `col^;

XPT btw " border-top-width
XSET col=Choose(['rgb()', '#', 'transparent'])
XSET col|post=css_braced_post()
border-top-width:` `col^;

XPT bbw " border-bottom-width
XSET col=Choose(['thin', 'thick', 'medium'])
border-bottom-width: `col^;

XPT brw " border-right-width
XSET col=Choose(['thin', 'thick', 'medium'])
border-right-width: `col^;

XPT blw " border-left-width
XSET col=Choose(['thin', 'thick', 'medium'])
border-left-width: `col^;

XPT pba " page-break-after
XSET what=Choose(['auto', 'always', 'avoid', 'left', 'right'])
page-break-after: `what^;

XPT pbb " page-break-before
XSET what=Choose(['auto', 'always', 'avoid', 'left', 'right'])
page-break-before: `what^;

