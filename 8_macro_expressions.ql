import cpp

from MacroInvocation m
where m.getMacroName() = "ntohs"
   or m.getMacroName() = "ntohl"
   or m.getMacroName() = "ntohll"
select m.getExpr(), "The marco expresion"
