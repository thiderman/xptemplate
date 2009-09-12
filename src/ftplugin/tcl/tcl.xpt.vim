XPTemplate priority=lang mark=~^

let [s:f, s:v] = XPTcontainer() 
 
XPTvar $TRUE          1
XPTvar $FALSE         0
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL
XPTvar $VOID_LINE /* void */;
XPTvar $IF_BRACKET_STL \n

XPTinclude 
      \ _common/common


" ========================= Function and Variables =============================


" ================================= Snippets ===================================

XPTemplateDef


XPT tcl hint=#!/bin/sh\ ..\ exec\ tclsh..
#!/bin/sh
#\
exec tclsh "$0" "$@""
                        

XPT for hint=for\ {...}
for {set ~i^ ~x^} {$~i^ <= ~len^} {incr ~i^} {
      ~cursor^
}                                              
                                               

XPT foreach hint=foreach\ i\ var\ {...
foreach ~i^ ~var^ {
      ~cursor^
}


XPT while hint=while\ {i\ <=\ ?}\ {...
while {~i^ <= ~len^} {
      ~cursor^
}


XPT if hint=if\ {\ ...\ }\ {\ ...
if {~a^} {
      ~cursor^
}


XPT elseif hint=elseif\ {...
elseif {~a^} {
      ~cursor^
}


XPT else hint=else\ {...
else {
      ~cursor^
}


XPT switch hint=switch\ ...\ {... 
switch ~var^ {
      ~1^     { ~body1^ }
      ~2^     { ~body2^ }
      ~3^     { ~body3^ }
      default { ~body4^ }
}


XPT proc hint=proc\ ***\ {...
proc ~name^ {~args^} {
      ~cursor^
}


XPT regexp hint=regexp\ ...\ match
regexp ~r^ ~str^ match ~vars^


XPT regsub hint=regsub\ ...
regsub ~in^ ~str^ ~out^


